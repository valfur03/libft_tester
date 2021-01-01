#!/bin/bash

# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    args.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vfurmane <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/01 13:06:56 by vfurmane          #+#    #+#              #
#    Updated: 2021/01/01 13:06:56 by vfurmane         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Parse arguments
while [ $# -gt 0 ]
do
	case $1 in
		--nologs)
		NOLOGS=1
		shift;;
		-c|--check-files)
		CHECKFILES=1
		shift;;
		*)
		break;;
	esac
done

# Parse function names
while [ $# -gt 0 ]
do
	funcs+=("$1")
	shift
done
