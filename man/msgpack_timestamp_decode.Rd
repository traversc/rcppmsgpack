% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.r
\name{msgpack_timestamp_decode}
\alias{msgpack_timestamp_decode}
\alias{msgpackTimestampDecode}
\title{'MsgPack' Timestamp}
\usage{
msgpack_timestamp_decode(x, posix = T, tz = "UTC")

msgpackTimestampDecode(x, posix = T, tz = "UTC")
}
\arguments{
\item{x}{A raw vector with attriubte EXT = -1, following the 'MsgPack' timestamp specifications.}

\item{posix}{Return a POSIXct object.  Otherwise, return a list with seconds and nanoseconds since 1970-01-01 00:00:00.}

\item{tz}{If returning a POSIXct, set the timezone.  Note that this doesn't change the underlying value.}
}
\value{
A POSIXct or list.  
mt <- Sys.time()
attr(mt, "tzone") <- "UTC"
mp <- msgpack_pack(msgpack_timestamp_encode(mt))
mtu <- msgpack_timestamp_decode(msgpack_unpack(mp))
identical(mt, mtu)
}
\description{
Decodes a timestamp from the 'MsgPack' extension specifications.
}
