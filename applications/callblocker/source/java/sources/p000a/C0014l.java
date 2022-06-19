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
public final class C0014l {

    /* renamed from: a */
    static final Logger f32a = Logger.getLogger(C0014l.class.getName());

    private C0014l() {
    }

    /* renamed from: a */
    public static AbstractC0006d m22523a(AbstractC0023r abstractC0023r) {
        return new C0018m(abstractC0023r);
    }

    /* renamed from: a */
    public static AbstractC0007e m22522a(AbstractC0024s abstractC0024s) {
        return new C0019n(abstractC0024s);
    }

    /* renamed from: a */
    private static AbstractC0023r m22519a(final OutputStream outputStream, final C0025t c0025t) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        if (c0025t != null) {
            return new AbstractC0023r() { // from class: a.l.1
                @Override // p000a.AbstractC0023r
                /* renamed from: a */
                public C0025t mo408a() {
                    return c0025t;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v15, types: [long] */
                /* JADX WARN: Type inference failed for: r9v0, types: [long] */
                /* JADX WARN: Type inference failed for: r9v1 */
                /* JADX WARN: Type inference failed for: r9v2 */
                /* JADX WARN: Type inference failed for: r9v3 */
                /* JADX WARN: Type inference failed for: r9v4 */
                @Override // p000a.AbstractC0023r
                /* renamed from: a_ */
                public void mo406a_(C0005c c0005c, long j) {
                    C0027u.m22450a(c0005c.f14b, 0L, j);
                    while (j > 0) {
                        c0025t.mo22452g();
                        C0020o c0020o = c0005c.f13a;
                        int min = (int) Math.min((long) j, c0020o.f46c - c0020o.f45b);
                        outputStream.write(c0020o.f44a, c0020o.f45b, min);
                        c0020o.f45b += min;
                        ?? r0 = j - min;
                        c0005c.f14b -= min;
                        j = r0;
                        if (c0020o.f45b == c0020o.f46c) {
                            c0005c.f13a = c0020o.m22478b();
                            C0021p.m22475a(c0020o);
                            j = r0;
                        }
                    }
                }

                @Override // p000a.AbstractC0023r, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    outputStream.close();
                }

                @Override // p000a.AbstractC0023r, java.io.Flushable
                public void flush() {
                    outputStream.flush();
                }

                public String toString() {
                    return "sink(" + outputStream + ")";
                }
            };
        }
        throw new IllegalArgumentException("timeout == null");
    }

    /* renamed from: a */
    public static AbstractC0023r m22517a(Socket socket) {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getOutputStream() == null) {
            throw new IOException("socket's output stream == null");
        }
        C0000a m22515c = m22515c(socket);
        return m22515c.m22582a(m22519a(socket.getOutputStream(), m22515c));
    }

    /* renamed from: a */
    public static AbstractC0024s m22521a(InputStream inputStream) {
        return m22520a(inputStream, new C0025t());
    }

    /* renamed from: a */
    private static AbstractC0024s m22520a(final InputStream inputStream, final C0025t c0025t) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (c0025t != null) {
            return new AbstractC0024s() { // from class: a.l.2
                /* JADX WARN: Type inference failed for: r0v23, types: [long] */
                @Override // p000a.AbstractC0024s
                /* renamed from: a */
                public long mo90a(C0005c c0005c, long j) {
                    char c;
                    if (j < 0) {
                        throw new IllegalArgumentException("byteCount < 0: " + j);
                    }
                    if (j == 0) {
                        c = 0;
                    } else {
                        try {
                            c0025t.mo22452g();
                            C0020o m22553e = c0005c.m22553e(1);
                            int read = inputStream.read(m22553e.f44a, m22553e.f46c, (int) Math.min(j, 8192 - m22553e.f46c));
                            if (read == -1) {
                                c = 65535;
                            } else {
                                m22553e.f46c += read;
                                c0005c.f14b += read;
                                c = read;
                            }
                        } catch (AssertionError e) {
                            if (!C0014l.m22518a(e)) {
                                throw e;
                            }
                            throw new IOException(e);
                        }
                    }
                    return c;
                }

                @Override // p000a.AbstractC0024s
                /* renamed from: a */
                public C0025t mo405a() {
                    return c0025t;
                }

                @Override // p000a.AbstractC0024s, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    inputStream.close();
                }

                public String toString() {
                    return "source(" + inputStream + ")";
                }
            };
        }
        throw new IllegalArgumentException("timeout == null");
    }

    /* renamed from: a */
    static boolean m22518a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: b */
    public static AbstractC0024s m22516b(Socket socket) {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getInputStream() == null) {
            throw new IOException("socket's input stream == null");
        }
        C0000a m22515c = m22515c(socket);
        return m22515c.m22581a(m22520a(socket.getInputStream(), m22515c));
    }

    /* renamed from: c */
    private static C0000a m22515c(final Socket socket) {
        return new C0000a() { // from class: a.l.3
            @Override // p000a.C0000a
            /* renamed from: a */
            protected IOException mo400a(@Nullable IOException iOException) {
                SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }

            @Override // p000a.C0000a
            /* renamed from: a */
            protected void mo401a() {
                try {
                    socket.close();
                } catch (AssertionError e) {
                    if (!C0014l.m22518a(e)) {
                        throw e;
                    }
                    C0014l.f32a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e);
                } catch (Exception e2) {
                    C0014l.f32a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e2);
                }
            }
        };
    }
}
