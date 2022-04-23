package com.bytedance.sdk.a.a;

import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    static final Logger f7802a = Logger.getLogger(l.class.getName());

    private l() {
    }

    public static d a(r rVar) {
        return new m(rVar);
    }

    public static e a(s sVar) {
        return new n(sVar);
    }

    private static r a(final OutputStream outputStream, final t tVar) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        } else if (tVar != null) {
            return new r() { // from class: com.bytedance.sdk.a.a.l.1
                @Override // com.bytedance.sdk.a.a.r
                public final t a() {
                    return t.this;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v17, types: [long] */
                /* JADX WARN: Type inference failed for: r9v2 */
                /* JADX WARN: Type inference failed for: r9v3 */
                /* JADX WARN: Type inference failed for: r9v4 */
                /* JADX WARN: Unknown variable types count: 1 */
                @Override // com.bytedance.sdk.a.a.r
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void a_(com.bytedance.sdk.a.a.c r8, long r9) throws java.io.IOException {
                    /*
                        r7 = this;
                        r0 = r8
                        long r0 = r0.f7785b
                        r1 = 0
                        r2 = r9
                        com.bytedance.sdk.a.a.u.a(r0, r1, r2)
                    L_0x0009:
                        r0 = r9
                        r1 = 0
                        int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                        if (r0 <= 0) goto L_0x0089
                        r0 = r7
                        com.bytedance.sdk.a.a.t r0 = com.bytedance.sdk.a.a.t.this
                        r0.g()
                        r0 = r8
                        com.bytedance.sdk.a.a.o r0 = r0.f7784a
                        r11 = r0
                        r0 = r9
                        r1 = r11
                        int r1 = r1.f7817c
                        r2 = r11
                        int r2 = r2.f7816b
                        int r1 = r1 - r2
                        long r1 = (long) r1
                        long r0 = java.lang.Math.min(r0, r1)
                        int r0 = (int) r0
                        r12 = r0
                        r0 = r7
                        java.io.OutputStream r0 = r5
                        r1 = r11
                        byte[] r1 = r1.f7815a
                        r2 = r11
                        int r2 = r2.f7816b
                        r3 = r12
                        r0.write(r1, r2, r3)
                        r0 = r11
                        r1 = r11
                        int r1 = r1.f7816b
                        r2 = r12
                        int r1 = r1 + r2
                        r0.f7816b = r1
                        r0 = r12
                        long r0 = (long) r0
                        r13 = r0
                        r0 = r9
                        r1 = r13
                        long r0 = r0 - r1
                        r15 = r0
                        r0 = r8
                        r1 = r8
                        long r1 = r1.f7785b
                        r2 = r13
                        long r1 = r1 - r2
                        r0.f7785b = r1
                        r0 = r15
                        r9 = r0
                        r0 = r11
                        int r0 = r0.f7816b
                        r1 = r11
                        int r1 = r1.f7817c
                        if (r0 != r1) goto L_0x0009
                        r0 = r8
                        r1 = r11
                        com.bytedance.sdk.a.a.o r1 = r1.b()
                        r0.f7784a = r1
                        r0 = r11
                        com.bytedance.sdk.a.a.p.a(r0)
                        r0 = r15
                        r9 = r0
                        goto L_0x0009
                    L_0x0089:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.a.l.AnonymousClass1.a_(com.bytedance.sdk.a.a.c, long):void");
                }

                @Override // com.bytedance.sdk.a.a.r, java.io.Closeable, java.lang.AutoCloseable
                public final void close() throws IOException {
                    outputStream.close();
                }

                @Override // com.bytedance.sdk.a.a.r, java.io.Flushable
                public final void flush() throws IOException {
                    outputStream.flush();
                }

                public final String toString() {
                    return "sink(" + outputStream + ")";
                }
            };
        } else {
            throw new IllegalArgumentException("timeout == null");
        }
    }

    public static r a(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        } else if (socket.getOutputStream() != null) {
            a c2 = c(socket);
            return c2.a(a(socket.getOutputStream(), c2));
        } else {
            throw new IOException("socket's output stream == null");
        }
    }

    public static s a(InputStream inputStream) {
        return a(inputStream, new t());
    }

    private static s a(final InputStream inputStream, final t tVar) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        } else if (tVar != null) {
            return new s() { // from class: com.bytedance.sdk.a.a.l.2
                @Override // com.bytedance.sdk.a.a.s
                public final long a(c cVar, long j) throws IOException {
                    int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                    if (i < 0) {
                        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
                    } else if (i == 0) {
                        return 0L;
                    } else {
                        try {
                            t.this.g();
                            o e = cVar.e(1);
                            int read = inputStream.read(e.f7815a, e.f7817c, (int) Math.min(j, PropertyFlags.UNSIGNED - e.f7817c));
                            if (read == -1) {
                                return -1L;
                            }
                            e.f7817c += read;
                            long j2 = read;
                            cVar.f7785b += j2;
                            return j2;
                        } catch (AssertionError e2) {
                            if (l.a(e2)) {
                                throw new IOException(e2);
                            }
                            throw e2;
                        }
                    }
                }

                @Override // com.bytedance.sdk.a.a.s
                public final t a() {
                    return t.this;
                }

                @Override // com.bytedance.sdk.a.a.s, java.io.Closeable, java.lang.AutoCloseable
                public final void close() throws IOException {
                    inputStream.close();
                }

                public final String toString() {
                    return "source(" + inputStream + ")";
                }
            };
        } else {
            throw new IllegalArgumentException("timeout == null");
        }
    }

    static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static s b(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        } else if (socket.getInputStream() != null) {
            a c2 = c(socket);
            return c2.a(a(socket.getInputStream(), c2));
        } else {
            throw new IOException("socket's input stream == null");
        }
    }

    private static a c(final Socket socket) {
        return new a() { // from class: com.bytedance.sdk.a.a.l.3
            @Override // com.bytedance.sdk.a.a.a
            protected final void a_() {
                try {
                    socket.close();
                } catch (AssertionError e) {
                    if (l.a(e)) {
                        Logger logger = l.f7802a;
                        Level level = Level.WARNING;
                        logger.log(level, "Failed to close timed out socket " + socket, (Throwable) e);
                        return;
                    }
                    throw e;
                } catch (Exception e2) {
                    Logger logger2 = l.f7802a;
                    Level level2 = Level.WARNING;
                    logger2.log(level2, "Failed to close timed out socket " + socket, (Throwable) e2);
                }
            }

            @Override // com.bytedance.sdk.a.a.a
            protected final IOException b(IOException iOException) {
                SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }
        };
    }
}
