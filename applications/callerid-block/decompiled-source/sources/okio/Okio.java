package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
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
            public void close() {
            }

            public void flush() {
            }

            public Timeout timeout() {
                return Timeout.NONE;
            }

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
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        } else if (timeout != null) {
            return new Sink() { // from class: okio.Okio.1
                public void close() {
                    outputStream.close();
                }

                public void flush() {
                    outputStream.flush();
                }

                public Timeout timeout() {
                    return timeout;
                }

                public String toString() {
                    return "sink(" + outputStream + ")";
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v20, types: [long] */
                /* JADX WARN: Type inference failed for: r9v2 */
                /* JADX WARN: Type inference failed for: r9v3 */
                /* JADX WARN: Type inference failed for: r9v4 */
                /* JADX WARN: Unknown variable types count: 1 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void write(okio.Buffer r8, long r9) {
                    /*
                        r7 = this;
                        r0 = r8
                        long r0 = r0.size
                        r1 = 0
                        r2 = r9
                        okio.Util.checkOffsetAndCount(r0, r1, r2)
                    L_0x0009:
                        r0 = r9
                        r1 = 0
                        int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                        if (r0 <= 0) goto L_0x008a
                        r0 = r7
                        okio.Timeout r0 = r4
                        r0.throwIfReached()
                        r0 = r8
                        okio.Segment r0 = r0.head
                        r11 = r0
                        r0 = r9
                        r1 = r11
                        int r1 = r1.limit
                        r2 = r11
                        int r2 = r2.pos
                        int r1 = r1 - r2
                        long r1 = (long) r1
                        long r0 = java.lang.Math.min(r0, r1)
                        int r0 = (int) r0
                        r12 = r0
                        r0 = r7
                        java.io.OutputStream r0 = r5
                        r1 = r11
                        byte[] r1 = r1.data
                        r2 = r11
                        int r2 = r2.pos
                        r3 = r12
                        r0.write(r1, r2, r3)
                        r0 = r11
                        int r0 = r0.pos
                        r1 = r12
                        int r0 = r0 + r1
                        r13 = r0
                        r0 = r11
                        r1 = r13
                        r0.pos = r1
                        r0 = r12
                        long r0 = (long) r0
                        r14 = r0
                        r0 = r9
                        r1 = r14
                        long r0 = r0 - r1
                        r16 = r0
                        r0 = r8
                        r1 = r8
                        long r1 = r1.size
                        r2 = r14
                        long r1 = r1 - r2
                        r0.size = r1
                        r0 = r16
                        r9 = r0
                        r0 = r13
                        r1 = r11
                        int r1 = r1.limit
                        if (r0 != r1) goto L_0x0009
                        r0 = r8
                        r1 = r11
                        okio.Segment r1 = r1.pop()
                        r0.head = r1
                        r0 = r11
                        okio.SegmentPool.recycle(r0)
                        r0 = r16
                        r9 = r0
                        goto L_0x0009
                    L_0x008a:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: okio.Okio.C31941.write(okio.Buffer, long):void");
                }
            };
        } else {
            throw new IllegalArgumentException("timeout == null");
        }
    }

    public static Sink sink(Socket socket) {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        } else if (socket.getOutputStream() != null) {
            AsyncTimeout timeout = timeout(socket);
            return timeout.sink(sink(socket.getOutputStream(), (Timeout) timeout));
        } else {
            throw new IOException("socket's output stream == null");
        }
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
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        } else if (timeout != null) {
            return new Source() { // from class: okio.Okio.2
                public void close() {
                    inputStream.close();
                }

                public long read(Buffer buffer, long j) {
                    if (j < 0) {
                        throw new IllegalArgumentException("byteCount < 0: " + j);
                    } else if (j == 0) {
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
                            if (Okio.isAndroidGetsocknameError(e)) {
                                throw new IOException(e);
                            }
                            throw e;
                        }
                    }
                }

                public Timeout timeout() {
                    return timeout;
                }

                public String toString() {
                    return "source(" + inputStream + ")";
                }
            };
        } else {
            throw new IllegalArgumentException("timeout == null");
        }
    }

    public static Source source(Socket socket) {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        } else if (socket.getInputStream() != null) {
            AsyncTimeout timeout = timeout(socket);
            return timeout.source(source(socket.getInputStream(), (Timeout) timeout));
        } else {
            throw new IOException("socket's input stream == null");
        }
    }

    @IgnoreJRERequirement
    public static Source source(Path path, OpenOption... openOptionArr) {
        if (path != null) {
            return source(Files.newInputStream(path, openOptionArr));
        }
        throw new IllegalArgumentException("path == null");
    }

    private static AsyncTimeout timeout(Socket socket) {
        return new 4(socket);
    }
}
