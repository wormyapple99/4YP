function [fitness, gene_to_fitness] = simulator(mu, a, realFlag)
    % a = random tune param
    % mu = mutation rate

    % constant parameters
    n = 4; % number of genes 
    N = 10^8; % population size
    numGen = 600;
    selective_pressure = 1;
    
    if realFlag
        gene_to_fitness =  assignFitness(n, a);    % maps genotype to fitness value
        [fitness, ~] = adaptiveWalk(gene_to_fitness, N, mu, numGen, selective_pressure);
    else
        gene_to_fitness = constructSimpleFitnessLandscape(n, a); 
        fitness = modelAdaptiveWalk(gene_to_fitness.values(), N, mu, numGen, selective_pressure);
    end
    
    %
    
end