############################################################
# R-project                                                #
# Program      : b2-Decoration.r                           #
# Protocol     :                                           #
# Date         : <2020/03/24 (Tue) 09:08>                  #
# Last         :                                           #
# Programmer   : yoshifumi ukyo                            #
#                                                          #
############################################################
# [Ver.0000]                                               #
# Memorandom   :                                           #
#                                                          #
############################################################


#----- clean-up working directory 
rm(list = (ls(all = TRUE)))
#----- library assignment 
base_dir <- ""
setwd(base_dir)
set.seed(4369)


#----- read dataset 
d <- read.table(file = paste0(base_dir, "/data/a1-SimulatedDS.csv"), sep = ",", 
                header = TRUE, stringsAsFactors = FALSE)

d_8wk <- subset(d, AVISIT == "Week8")


#----- output 1
library(ggplot2)
p <- ggplot(data = d_8wk, aes(x = BASE, y = AVAL))
p <- p + geom_point() 

p <- p + xlab("Baseline VAS")
p <- p + ylab("VAS at Week 8")

p <- p + theme(axis.title = element_text(size = 14, colour = "black"))
p <- p + theme(axis.text = element_text(size = 14, colour = "black"))

p <- p + theme(axis.title.x = element_text(size = 14, colour = "black"))
p <- p + theme(axis.title.y = element_text(size = 14, colour = "black"))
p <- p + theme(axis.text.x = element_text(size = 14, colour = "black"))
p <- p + theme(axis.text.y = element_text(size = 14, colour = "black"))

plot(p)




#----- output 2 
library(ggplot2)
p <- ggplot(data = d_8wk, aes(x = BASE, y = AVAL))
p <- p + geom_point() 
p <- p + xlab("Baseline VAS")
p <- p + ylab("VAS at Week 8")
p <- p + theme(axis.title = element_text(size = 14, colour = "black"))
p <- p + theme(axis.text = element_text(size = 14, colour = "black"))
ggsave(file = paste0(base_dir, "/output/b2-01-geom-point.png"), 
       plot = p, width = 5, height = 5)


#----- Ž²–Ú·‚è‚Ì’²®
library(ggplot2)
p <- ggplot(data = d_8wk, aes(x = BASE, y = AVAL))
p <- p + geom_point() 
p <- p + xlab("Baseline VAS")
p <- p + ylab("VAS at Week 8")
p <- p + scale_x_continuous(limits = c(0, 100), breaks = c(0, 25, 50, 75, 100))
p <- p + scale_y_continuous(limits = c(0, 100), breaks = c(0, 25, 50, 75, 100))
p <- p + theme(axis.title = element_text(size = 14, colour = "black"))
p <- p + theme(axis.text = element_text(size = 14, colour = "black"))
ggsave(file = paste0(base_dir, "/output/b2-02-geom-point.png"), 
       plot = p, width = 5, height = 5)


#----- ŽQÆü
library(ggplot2)
p <- ggplot(data = d_8wk, aes(x = BASE, y = AVAL))
p <- p + geom_point() 
p <- p + geom_vline(xintercept = 60, linetype = "dotted", colour = "red", size = 1.5)
p <- p + xlab("Baseline VAS")
p <- p + ylab("VAS at Week 8")
p <- p + scale_x_continuous(limits = c(0, 100), breaks = c(0, 25, 50, 75, 100))
p <- p + scale_y_continuous(limits = c(0, 100), breaks = c(0, 25, 50, 75, 100))
p <- p + theme(axis.title = element_text(size = 14, colour = "black"))
p <- p + theme(axis.text = element_text(size = 14, colour = "black"))
ggsave(file = paste0(base_dir, "/output/b2-03-geom-point.png"), 
       plot = p, width = 5, height = 5)



#----- FÊ’²®
library(ggplot2)
p <- ggplot(data = d_8wk, aes(x = BASE, y = AVAL))
p <- p + theme_bw() 
p <- p + theme(panel.grid = element_blank())
p <- p + geom_point(colour = "blue", alpha = 0.3, size = 2.0) 
p <- p + geom_vline(xintercept = 60, linetype = "dotted", colour = "red", size = 1.5)
p <- p + xlab("Baseline VAS")
p <- p + ylab("VAS at Week 8")
p <- p + scale_x_continuous(limits = c(0, 100), breaks = c(0, 25, 50, 75, 100))
p <- p + scale_y_continuous(limits = c(0, 100), breaks = c(0, 25, 50, 75, 100))
p <- p + theme(axis.title = element_text(size = 14, colour = "black"))
p <- p + theme(axis.text = element_text(size = 14, colour = "black"))
ggsave(file = paste0(base_dir, "/output/b2-04-geom-point.png"), 
       plot = p, width = 5, height = 5)



