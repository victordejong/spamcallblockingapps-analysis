package b;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:b/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f329a = Logger.getLogger(k.class.getName());

    private k() {
    }

    public static d a(p pVar) {
        if (pVar != null) {
            return new l(pVar);
        }
        throw new IllegalArgumentException("sink == null");
    }

    public static e a(q qVar) {
        if (qVar != null) {
            return new m(qVar);
        }
        throw new IllegalArgumentException("source == null");
    }

    public static p a(Socket socket) {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        final a c = c(socket);
        final OutputStream outputStream = socket.getOutputStream();
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        final p pVar = new p() { // from class: b.k.1
            @Override // b.p
            public final r a() {
                return r.this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v15, types: [long] */
            /* JADX WARN: Type inference failed for: r9v2 */
            /* JADX WARN: Type inference failed for: r9v3 */
            /* JADX WARN: Type inference failed for: r9v4 */
            /* JADX WARN: Unknown variable types count: 1 */
            @Override // b.p
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void a_(b.c r8, long r9) {
                /*
                    r7 = this;
                    r0 = r8
                    long r0 = r0.f318b
                    r1 = 0
                    r2 = r9
                    b.s.a(r0, r1, r2)
                L_0x0009:
                    r0 = r9
                    r1 = 0
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 <= 0) goto L_0x0086
                    r0 = r7
                    b.r r0 = b.r.this
                    r0.g()
                    r0 = r8
                    b.n r0 = r0.f317a
                    r11 = r0
                    r0 = r9
                    r1 = r11
                    int r1 = r1.c
                    r2 = r11
                    int r2 = r2.f340b
                    int r1 = r1 - r2
                    long r1 = (long) r1
                    long r0 = java.lang.Math.min(r0, r1)
                    int r0 = (int) r0
                    r12 = r0
                    r0 = r7
                    java.io.OutputStream r0 = r5
                    r1 = r11
                    byte[] r1 = r1.f339a
                    r2 = r11
                    int r2 = r2.f340b
                    r3 = r12
                    r0.write(r1, r2, r3)
                    r0 = r11
                    r1 = r11
                    int r1 = r1.f340b
                    r2 = r12
                    int r1 = r1 + r2
                    r0.f340b = r1
                    r0 = r9
                    r1 = r12
                    long r1 = (long) r1
                    long r0 = r0 - r1
                    r13 = r0
                    r0 = r8
                    r1 = r8
                    long r1 = r1.f318b
                    r2 = r12
                    long r2 = (long) r2
                    long r1 = r1 - r2
                    r0.f318b = r1
                    r0 = r13
                    r9 = r0
                    r0 = r11
                    int r0 = r0.f340b
                    r1 = r11
                    int r1 = r1.c
                    if (r0 != r1) goto L_0x0009
                    r0 = r8
                    r1 = r11
                    b.n r1 = r1.a()
                    r0.f317a = r1
                    r0 = r11
                    b.o.a(r0)
                    r0 = r13
                    r9 = r0
                    goto L_0x0009
                L_0x0086:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: b.k.AnonymousClass1.a_(b.c, long):void");
            }

            @Override // b.p, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                outputStream.close();
            }

            @Override // b.p, java.io.Flushable
            public final void flush() {
                outputStream.flush();
            }

            public final String toString() {
                return "sink(" + outputStream + ")";
            }
        };
        return new p() { // from class: b.a.1
            @Override // b.p
            public final r a() {
                return c;
            }

            @Override // b.p
            public final void a_(c cVar, long j) {
                c.c();
                try {
                    try {
                        pVar.a_(cVar, j);
                        c.a(true);
                    } catch (IOException e) {
                        throw c.a(e);
                    }
                } catch (Throwable th) {
                    c.a(false);
                    throw th;
                }
            }

            @Override // b.p, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                c.c();
                try {
                    try {
                        pVar.close();
                        c.a(true);
                    } catch (IOException e) {
                        throw c.a(e);
                    }
                } catch (Throwable th) {
                    c.a(false);
                    throw th;
                }
            }

            @Override // b.p, java.io.Flushable
            public final void flush() {
                c.c();
                try {
                    try {
                        pVar.flush();
                        c.a(true);
                    } catch (IOException e) {
                        throw c.a(e);
                    }
                } catch (Throwable th) {
                    c.a(false);
                    throw th;
                }
            }

            public final String toString() {
                return "AsyncTimeout.sink(" + pVar + ")";
            }
        };
    }

    public static q b(Socket socket) {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        final a c = c(socket);
        final InputStream inputStream = socket.getInputStream();
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        final q qVar = new q() { // from class: b.k.2
            @Override // b.q
            public final long a(c cVar, long j) {
                long j2 = 0;
                if (j < 0) {
                    throw new IllegalArgumentException("byteCount < 0: " + j);
                }
                if (j != 0) {
                    r.this.g();
                    n d = cVar.d(1);
                    int read = inputStream.read(d.f339a, d.c, (int) Math.min(j, 2048 - d.c));
                    if (read == -1) {
                        j2 = -1;
                    } else {
                        d.c += read;
                        cVar.f318b += read;
                        j2 = read;
                    }
                }
                return j2;
            }

            @Override // b.q
            public final r a() {
                return r.this;
            }

            @Override // b.q, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                inputStream.close();
            }

            public final String toString() {
                return "source(" + inputStream + ")";
            }
        };
        return new q() { // from class: b.a.2
            @Override // b.q
            public final long a(c cVar, long j) {
                c.c();
                try {
                    try {
                        long a2 = qVar.a(cVar, j);
                        c.a(true);
                        return a2;
                    } catch (IOException e) {
                        throw c.a(e);
                    }
                } catch (Throwable th) {
                    c.a(false);
                    throw th;
                }
            }

            @Override // b.q
            public final r a() {
                return c;
            }

            @Override // b.q, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                try {
                    try {
                        qVar.close();
                        c.a(true);
                    } catch (IOException e) {
                        throw c.a(e);
                    }
                } catch (Throwable th) {
                    c.a(false);
                    throw th;
                }
            }

            public final String toString() {
                return "AsyncTimeout.source(" + qVar + ")";
            }
        };
    }

    private static a c(final Socket socket) {
        return new a() { // from class: b.k.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // b.a
            public final void a() {
                try {
                    socket.close();
                } catch (Exception e) {
                    k.f329a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e);
                }
            }
        };
    }
}
