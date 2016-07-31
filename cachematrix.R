## this is a function that creates a matrix object that cache its inverse

makeCacheMatrix <- function(x = matrix()) pizza <-NULL {
set<- function(y) {
  x <<- y
  pizza <<-NULL
}
get <- function()x
setinv <- function(party) pizza <<- party 
getinv<- function() pizza
list(set=set, get=get, setinv=setinv, getinv=getinv)}



## this is a funtion that calculates the inverse matrix that was created in makeChacheMatrix
cacheSolve <- function(x, ...) {
  pizza <- x$getinv()
  if(!is.null(pizza)) {
    message("retrieving cached data")
    return(pizza)
  }
  data <- x$get()
  pizza <- solve(data)
  x$setinv(pizza)
  pizza
}

