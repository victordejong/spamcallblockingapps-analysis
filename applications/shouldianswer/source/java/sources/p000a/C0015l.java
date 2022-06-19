package p000a;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
/* renamed from: a.l */
/* loaded from: classes-dex2jar.jar:a/l.class */
public final class C0015l {

    /* renamed from: a */
    static final Logger f33a = Logger.getLogger(C0015l.class.getName());

    private C0015l() {
    }

    /* renamed from: a */
    public static AbstractC0007d m8099a(AbstractC0025r abstractC0025r) {
        return new C0019m(abstractC0025r);
    }

    /* renamed from: a */
    public static AbstractC0008e m8098a(AbstractC0026s abstractC0026s) {
        return new C0020n(abstractC0026s);
    }

    /* renamed from: a */
    private static AbstractC0025r m8095a(final OutputStream outputStream, final C0027t c0027t) {
        if (outputStream != null) {
            if (c0027t == null) {
                throw new IllegalArgumentException("timeout == null");
            }
            return new AbstractC0025r() { // from class: a.l.1
                @Override // p000a.AbstractC0025r
                /* renamed from: a */
                public C0027t mo2091a() {
                    return c0027t;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v17, types: [long] */
                /* JADX WARN: Type inference failed for: r9v0, types: [long] */
                /* JADX WARN: Type inference failed for: r9v1 */
                /* JADX WARN: Type inference failed for: r9v2 */
                /* JADX WARN: Type inference failed for: r9v3 */
                /* JADX WARN: Type inference failed for: r9v4 */
                @Override // p000a.AbstractC0025r
                /* renamed from: a_ */
                public void mo2089a_(C0005c c0005c, long j) {
                    C0029u.m8026a(c0005c.f14b, 0L, j);
                    while (j > 0) {
                        c0027t.mo8028g();
                        C0022o c0022o = c0005c.f13a;
                        int min = (int) Math.min((long) j, c0022o.f48c - c0022o.f47b);
                        outputStream.write(c0022o.f46a, c0022o.f47b, min);
                        c0022o.f47b += min;
                        long j2 = min;
                        ?? r0 = j - j2;
                        c0005c.f14b -= j2;
                        j = r0;
                        if (c0022o.f47b == c0022o.f48c) {
                            c0005c.f13a = c0022o.m8054b();
                            C0023p.m8051a(c0022o);
                            j = r0;
                        }
                    }
                }

                @Override // p000a.AbstractC0025r, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    outputStream.close();
                }

                @Override // p000a.AbstractC0025r, java.io.Flushable
                public void flush() {
                    outputStream.flush();
                }

                public String toString() {
                    return "sink(" + outputStream + ")";
                }
            };
        }
        throw new IllegalArgumentException("out == null");
    }

    /* renamed from: a */
    public static AbstractC0025r m8093a(Socket socket) {
        if (socket != null) {
            if (socket.getOutputStream() == null) {
                throw new IOException("socket's output stream == null");
            }
            C0000a m8091c = m8091c(socket);
            return m8091c.m8158a(m8095a(socket.getOutputStream(), m8091c));
        }
        throw new IllegalArgumentException("socket == null");
    }

    /* renamed from: a */
    public static AbstractC0026s m8097a(InputStream inputStream) {
        return m8096a(inputStream, new C0027t());
    }

    /* renamed from: a */
    private static AbstractC0026s m8096a(final InputStream inputStream, final C0027t c0027t) {
        if (inputStream != null) {
            if (c0027t == null) {
                throw new IllegalArgumentException("timeout == null");
            }
            return new AbstractC0026s() { // from class: a.l.2
                @Override // p000a.AbstractC0026s
                /* renamed from: a */
                public long mo2087a(C0005c c0005c, long j) {
                    int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                    if (i < 0) {
                        throw new IllegalArgumentException("byteCount < 0: " + j);
                    } else if (i == 0) {
                        return 0L;
                    } else {
                        try {
                            c0027t.mo8028g();
                            C0022o m8128e = c0005c.m8128e(1);
                            int read = inputStream.read(m8128e.f46a, m8128e.f48c, (int) Math.min(j, 8192 - m8128e.f48c));
                            if (read == -1) {
                                return -1L;
                            }
                            m8128e.f48c += read;
                            long j2 = read;
                            c0005c.f14b += j2;
                            return j2;
                        } catch (AssertionError e) {
                            if (!C0015l.m8094a(e)) {
                                throw e;
                            }
                            throw new IOException(e);
                        }
                    }
                }

                @Override // p000a.AbstractC0026s
                /* renamed from: a */
                public C0027t mo2088a() {
                    return c0027t;
                }

                @Override // p000a.AbstractC0026s, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    inputStream.close();
                }

                public String toString() {
                    return "source(" + inputStream + ")";
                }
            };
        }
        throw new IllegalArgumentException("in == null");
    }

    /* renamed from: a */
    static boolean m8094a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: b */
    public static AbstractC0026s m8092b(Socket socket) {
        if (socket != null) {
            if (socket.getInputStream() == null) {
                throw new IOException("socket's input stream == null");
            }
            C0000a m8091c = m8091c(socket);
            return m8091c.m8157a(m8096a(socket.getInputStream(), m8091c));
        }
        throw new IllegalArgumentException("socket == null");
    }

    /* renamed from: c */
    private static C0000a m8091c(final Socket socket) {
        return new C0000a() { // from class: a.l.3
            @Override // p000a.C0000a
            /* renamed from: a */
            protected IOException mo2082a(@Nullable IOException iOException) {
                SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }

            @Override // p000a.C0000a
            /* renamed from: a */
            protected void mo2083a() {
                try {
                    socket.close();
                } catch (AssertionError e) {
                    if (!C0015l.m8094a(e)) {
                        throw e;
                    }
                    Logger logger = C0015l.f33a;
                    Level level = Level.WARNING;
                    logger.log(level, "Failed to close timed out socket " + socket, (Throwable) e);
                } catch (Exception e2) {
                    Logger logger2 = C0015l.f33a;
                    Level level2 = Level.WARNING;
                    logger2.log(level2, "Failed to close timed out socket " + socket, (Throwable) e2);
                }
            }
        };
    }
}
