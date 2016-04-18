# ********* EXERCISE 2 ****************
# The function below scales a vector so it falls in the range [0,1].
# How would you apply it to every column of a data frame? How would you apply
# it to every numeric column in a data frame?

scale01 <- function(x){
  rng <- range(x, na.rm= TRUE)
  (x - rng[1])/(rng[2] - rng[1])
}

# building two dataframes for testing
trial <- data.frame(x=runif(20), y=c(1:20), z=c(-9:10), t=rnorm(20))
trial2 <- data.frame(x=runif(20), y=c(1:20), z=c(-9:10), t=as.character(rnorm(20)))

lapply(trial, scale01) # applying scale01() to all columns of a data frame
lapply(lapply(trial2, is.numeric), scale01) # not yet working...
