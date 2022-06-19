package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
/* loaded from: classes2-dex2jar.jar:okio/Okio.class */
public final class Okio {
    static final Logger logger = Logger.getLogger(Okio.class.getName());

    private Okio() {
    }

    public static Sink appendingSink(File file) {
        if (file != null) {
            return sink(new FileOutputStream(file, true));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static Sink blackhole() {
        return new Sink() { // from class: okio.Okio.3
            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // okio.Sink, java.io.Flushable
            public void flush() {
            }

            @Override // okio.Sink
            public Timeout timeout() {
                return Timeout.NONE;
            }

            @Override // okio.Sink
            public void write(Buffer buffer, long j) {
                buffer.skip(j);
            }
        };
    }

    public static BufferedSink buffer(Sink sink) {
        return new RealBufferedSink(sink);
    }

    public static BufferedSource buffer(Source source) {
        return new RealBufferedSource(source);
    }

    static boolean isAndroidGetsocknameError(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static Sink sink(File file) {
        if (file != null) {
            return sink(new FileOutputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static Sink sink(OutputStream outputStream) {
        return sink(outputStream, new Timeout());
    }

    private static Sink sink(final OutputStream outputStream, final Timeout timeout) {
        if (outputStream != null) {
            if (timeout == null) {
                throw new IllegalArgumentException("timeout == null");
            }
            return new Sink() { // from class: okio.Okio.1
                @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    outputStream.close();
                }

                @Override // okio.Sink, java.io.Flushable
                public void flush() {
                    outputStream.flush();
                }

                @Override // okio.Sink
                public Timeout timeout() {
                    return timeout;
                }

                public String toString() {
                    return "sink(" + outputStream + ")";
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v20, types: [long] */
                /* JADX WARN: Type inference failed for: r9v0, types: [long] */
                /* JADX WARN: Type inference failed for: r9v1 */
                /* JADX WARN: Type inference failed for: r9v2 */
                /* JADX WARN: Type inference failed for: r9v3 */
                /* JADX WARN: Type inference failed for: r9v4 */
                @Override // okio.Sink
                public void write(Buffer buffer, long j) {
                    Util.checkOffsetAndCount(buffer.size, 0L, j);
                    while (j > 0) {
                        timeout.throwIfReached();
                        Segment segment = buffer.head;
                        int min = (int) Math.min((long) j, segment.limit - segment.pos);
                        outputStream.write(segment.data, segment.pos, min);
                        int i = segment.pos + min;
                        segment.pos = i;
                        long j2 = min;
                        ?? r0 = j - j2;
                        buffer.size -= j2;
                        j = r0;
                        if (i == segment.limit) {
                            buffer.head = segment.pop();
                            SegmentPool.recycle(segment);
                            j = r0;
                        }
                    }
                }
            };
        }
        throw new IllegalArgumentException("out == null");
    }

    public static Sink sink(Socket socket) {
        if (socket != null) {
            if (socket.getOutputStream() == null) {
                throw new IOException("socket's output stream == null");
            }
            AsyncTimeout timeout = timeout(socket);
            return timeout.sink(sink(socket.getOutputStream(), timeout));
        }
        throw new IllegalArgumentException("socket == null");
    }

    @IgnoreJRERequirement
    public static Sink sink(Path path, OpenOption... openOptionArr) {
        if (path != null) {
            return sink(Files.newOutputStream(path, openOptionArr));
        }
        throw new IllegalArgumentException("path == null");
    }

    public static Source source(File file) {
        if (file != null) {
            return source(new FileInputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static Source source(InputStream inputStream) {
        return source(inputStream, new Timeout());
    }

    private static Source source(final InputStream inputStream, final Timeout timeout) {
        if (inputStream != null) {
            if (timeout == null) {
                throw new IllegalArgumentException("timeout == null");
            }
            return new Source() { // from class: okio.Okio.2
                @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    inputStream.close();
                }

                @Override // okio.Source
                public long read(Buffer buffer, long j) {
                    int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                    if (i < 0) {
                        throw new IllegalArgumentException("byteCount < 0: " + j);
                    } else if (i == 0) {
                        return 0L;
                    } else {
                        try {
                            timeout.throwIfReached();
                            Segment writableSegment = buffer.writableSegment(1);
                            int read = inputStream.read(writableSegment.data, writableSegment.limit, (int) Math.min(j, 8192 - writableSegment.limit));
                            if (read == -1) {
                                return -1L;
                            }
                            writableSegment.limit += read;
                            long j2 = read;
                            buffer.size += j2;
                            return j2;
                        } catch (AssertionError e) {
                            if (!Okio.isAndroidGetsocknameError(e)) {
                                throw e;
                            }
                            throw new IOException(e);
                        }
                    }
                }

                @Override // okio.Source
                public Timeout timeout() {
                    return timeout;
                }

                public String toString() {
                    return "source(" + inputStream + ")";
                }
            };
        }
        throw new IllegalArgumentException("in == null");
    }

    public static Source source(Socket socket) {
        if (socket != null) {
            if (socket.getInputStream() == null) {
                throw new IOException("socket's input stream == null");
            }
            AsyncTimeout timeout = timeout(socket);
            return timeout.source(source(socket.getInputStream(), timeout));
        }
        throw new IllegalArgumentException("socket == null");
    }

    @IgnoreJRERequirement
    public static Source source(Path path, OpenOption... openOptionArr) {
        if (path != null) {
            return source(Files.newInputStream(path, openOptionArr));
        }
        throw new IllegalArgumentException("path == null");
    }

    private static AsyncTimeout timeout(final Socket socket) {
        return new AsyncTimeout() { // from class: okio.Okio.4
            @Override // okio.AsyncTimeout
            protected IOException newTimeoutException(IOException iOException) {
                SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }

            @Override // okio.AsyncTimeout
            protected void timedOut() {
                try {
                    socket.close();
                } catch (AssertionError e) {
                    if (!Okio.isAndroidGetsocknameError(e)) {
                        throw e;
                    }
                    Logger logger2 = Okio.logger;
                    Level level = Level.WARNING;
                    logger2.log(level, "Failed to close timed out socket " + socket, (Throwable) e);
                } catch (Exception e2) {
                    Logger logger3 = Okio.logger;
                    Level level2 = Level.WARNING;
                    logger3.log(level2, "Failed to close timed out socket " + socket, (Throwable) e2);
                }
            }
        };
    }
}
