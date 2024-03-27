#!/bin/bash
#SBATCH --job-name=autoprompt_1
#SBATCH --partition=seas_gpu,gpu_requeue,serial_requeue,gpu
#SBATCH -n 16 # Number of cores
#SBATCH --gres=gpu:2
#SBATCH --constraint="a100"
#SBATCH -N 1 # Ensure that all cores are on one machine
#SBATCH -t 0-08:00 # Runtime in D-HH:MM
#SBATCH --mem=32G # Memory pool for all cores in MB
#SBATCH -o pytorch_%j.out   # File to which STDOUT will be written, %j inserts jobid
#SBATCH -e pytorch_%j.err   # File to which STDERR will be written, %j inserts jobid

#python score_model_train.py
python mixtral.py
#python check_gpu.py
