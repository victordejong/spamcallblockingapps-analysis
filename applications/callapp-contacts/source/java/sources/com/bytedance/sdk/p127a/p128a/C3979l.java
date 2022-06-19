package com.bytedance.sdk.p127a.p128a;

import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.bytedance.sdk.a.a.l */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/l.class */
public final class C3979l {

    /* renamed from: a */
    static final Logger f14438a = Logger.getLogger(C3979l.class.getName());

    private C3979l() {
    }

    /* renamed from: a */
    public static AbstractC3971d m37086a(AbstractC3989r abstractC3989r) {
        return new C3983m(abstractC3989r);
    }

    /* renamed from: a */
    public static AbstractC3972e m37085a(AbstractC3990s abstractC3990s) {
        return new C3984n(abstractC3990s);
    }

    /* renamed from: a */
    private static AbstractC3989r m37082a(final OutputStream outputStream, final C3991t c3991t) {
        if (outputStream != null) {
            if (c3991t == null) {
                throw new IllegalArgumentException("timeout == null");
            }
            return new AbstractC3989r() { // from class: com.bytedance.sdk.a.a.l.1
                @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r
                /* renamed from: a */
                public final C3991t mo36723a() {
                    return c3991t;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v17, types: [long] */
                /* JADX WARN: Type inference failed for: r9v0, types: [long] */
                /* JADX WARN: Type inference failed for: r9v1 */
                /* JADX WARN: Type inference failed for: r9v2 */
                /* JADX WARN: Type inference failed for: r9v3 */
                /* JADX WARN: Type inference failed for: r9v4 */
                @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r
                /* renamed from: a_ */
                public final void mo36721a_(C3969c c3969c, long j) throws IOException {
                    C3993u.m37014a(c3969c.f14419b, 0L, j);
                    while (j > 0) {
                        c3991t.mo37016g();
                        C3986o c3986o = c3969c.f14418a;
                        int min = (int) Math.min((long) j, c3986o.f14453c - c3986o.f14452b);
                        outputStream.write(c3986o.f14451a, c3986o.f14452b, min);
                        c3986o.f14452b += min;
                        long j2 = min;
                        ?? r0 = j - j2;
                        c3969c.f14419b -= j2;
                        j = r0;
                        if (c3986o.f14452b == c3986o.f14453c) {
                            c3969c.f14418a = c3986o.m37042b();
                            C3987p.m37039a(c3986o);
                            j = r0;
                        }
                    }
                }

                @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r, java.io.Closeable, java.lang.AutoCloseable
                public final void close() throws IOException {
                    outputStream.close();
                }

                @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r, java.io.Flushable
                public final void flush() throws IOException {
                    outputStream.flush();
                }

                public final String toString() {
                    return "sink(" + outputStream + ")";
                }
            };
        }
        throw new IllegalArgumentException("out == null");
    }

    /* renamed from: a */
    public static AbstractC3989r m37080a(Socket socket) throws IOException {
        if (socket != null) {
            if (socket.getOutputStream() == null) {
                throw new IOException("socket's output stream == null");
            }
            C3964a m37078c = m37078c(socket);
            return m37078c.m37144a(m37082a(socket.getOutputStream(), m37078c));
        }
        throw new IllegalArgumentException("socket == null");
    }

    /* renamed from: a */
    public static AbstractC3990s m37084a(InputStream inputStream) {
        return m37083a(inputStream, new C3991t());
    }

    /* renamed from: a */
    private static AbstractC3990s m37083a(final InputStream inputStream, final C3991t c3991t) {
        if (inputStream != null) {
            if (c3991t == null) {
                throw new IllegalArgumentException("timeout == null");
            }
            return new AbstractC3990s() { // from class: com.bytedance.sdk.a.a.l.2
                @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
                /* renamed from: a */
                public final long mo36719a(C3969c c3969c, long j) throws IOException {
                    int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                    if (i >= 0) {
                        if (i == 0) {
                            return 0L;
                        }
                        try {
                            c3991t.mo37016g();
                            C3986o m37115e = c3969c.m37115e(1);
                            int read = inputStream.read(m37115e.f14451a, m37115e.f14453c, (int) Math.min(j, PropertyFlags.UNSIGNED - m37115e.f14453c));
                            if (read == -1) {
                                return -1L;
                            }
                            m37115e.f14453c += read;
                            long j2 = read;
                            c3969c.f14419b += j2;
                            return j2;
                        } catch (AssertionError e) {
                            if (!C3979l.m37081a(e)) {
                                throw e;
                            }
                            throw new IOException(e);
                        }
                    }
                    throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
                }

                @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
                /* renamed from: a */
                public final C3991t mo36720a() {
                    return c3991t;
                }

                @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s, java.io.Closeable, java.lang.AutoCloseable
                public final void close() throws IOException {
                    inputStream.close();
                }

                public final String toString() {
                    return "source(" + inputStream + ")";
                }
            };
        }
        throw new IllegalArgumentException("in == null");
    }

    /* renamed from: a */
    static boolean m37081a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: b */
    public static AbstractC3990s m37079b(Socket socket) throws IOException {
        if (socket != null) {
            if (socket.getInputStream() == null) {
                throw new IOException("socket's input stream == null");
            }
            C3964a m37078c = m37078c(socket);
            return m37078c.m37143a(m37083a(socket.getInputStream(), m37078c));
        }
        throw new IllegalArgumentException("socket == null");
    }

    /* renamed from: c */
    private static C3964a m37078c(final Socket socket) {
        return new C3964a() { // from class: com.bytedance.sdk.a.a.l.3
            @Override // com.bytedance.sdk.p127a.p128a.C3964a
            /* renamed from: a_ */
            protected final void mo36715a_() {
                try {
                    socket.close();
                } catch (AssertionError e) {
                    if (!C3979l.m37081a(e)) {
                        throw e;
                    }
                    Logger logger = C3979l.f14438a;
                    Level level = Level.WARNING;
                    logger.log(level, "Failed to close timed out socket " + socket, (Throwable) e);
                } catch (Exception e2) {
                    Logger logger2 = C3979l.f14438a;
                    Level level2 = Level.WARNING;
                    logger2.log(level2, "Failed to close timed out socket " + socket, (Throwable) e2);
                }
            }

            @Override // com.bytedance.sdk.p127a.p128a.C3964a
            /* renamed from: b */
            protected final IOException mo36714b(IOException iOException) {
                SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }
        };
    }
}
