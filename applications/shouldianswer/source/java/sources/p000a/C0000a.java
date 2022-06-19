package p000a;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
/* renamed from: a.a */
/* loaded from: classes-dex2jar.jar:a/a.class */
public class C0000a extends C0027t {
    @Nullable

    /* renamed from: b */
    static C0000a f1b;

    /* renamed from: e */
    private boolean f3e;
    @Nullable

    /* renamed from: f */
    private C0000a f4f;

    /* renamed from: g */
    private long f5g;

    /* renamed from: a */
    private static final long f0a = TimeUnit.SECONDS.toMillis(60);

    /* renamed from: d */
    private static final long f2d = TimeUnit.MILLISECONDS.toNanos(f0a);

    /* renamed from: a.a$a */
    /* loaded from: classes-dex2jar.jar:a/a$a.class */
    public static final class C0003a extends Thread {
        C0003a() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0024, code lost:
            r0.mo2083a();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
            L0:
                java.lang.Class<a.a> r0 = p000a.C0000a.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L30
                a.a r0 = p000a.C0000a.m8152e()     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L30
                r4 = r0
                r0 = r4
                if (r0 != 0) goto L11
                java.lang.Class<a.a> r0 = p000a.C0000a.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
                goto L0
            L11:
                r0 = r4
                a.a r1 = p000a.C0000a.f1b     // Catch: java.lang.Throwable -> L2a
                if (r0 != r1) goto L20
                r0 = 0
                p000a.C0000a.f1b = r0     // Catch: java.lang.Throwable -> L2a
                java.lang.Class<a.a> r0 = p000a.C0000a.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
                return
            L20:
                java.lang.Class<a.a> r0 = p000a.C0000a.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
                r0 = r4
                r0.mo2083a()     // Catch: java.lang.InterruptedException -> L30
                goto L0
            L2a:
                r4 = move-exception
                java.lang.Class<a.a> r0 = p000a.C0000a.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
                r0 = r4
                throw r0     // Catch: java.lang.InterruptedException -> L30
            L30:
                r4 = move-exception
                goto L0
            */
            throw new UnsupportedOperationException("Method not decompiled: p000a.C0000a.C0003a.run():void");
        }
    }

    /* renamed from: a */
    private static void m8159a(C0000a c0000a, long j, boolean z) {
        synchronized (C0000a.class) {
            try {
                if (f1b == null) {
                    f1b = new C0000a();
                    new C0003a().start();
                }
                long nanoTime = System.nanoTime();
                int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i != 0 && z) {
                    c0000a.f5g = Math.min(j, c0000a.mo8035d() - nanoTime) + nanoTime;
                } else if (i != 0) {
                    c0000a.f5g = j + nanoTime;
                } else if (!z) {
                    throw new AssertionError();
                } else {
                    c0000a.f5g = c0000a.mo8035d();
                }
                long m8155b = c0000a.m8155b(nanoTime);
                C0000a c0000a2 = f1b;
                while (c0000a2.f4f != null && m8155b >= c0000a2.f4f.m8155b(nanoTime)) {
                    c0000a2 = c0000a2.f4f;
                }
                c0000a.f4f = c0000a2.f4f;
                c0000a2.f4f = c0000a;
                if (c0000a2 == f1b) {
                    C0000a.class.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private static boolean m8160a(C0000a c0000a) {
        synchronized (C0000a.class) {
            try {
                for (C0000a c0000a2 = f1b; c0000a2 != null; c0000a2 = c0000a2.f4f) {
                    if (c0000a2.f4f == c0000a) {
                        c0000a2.f4f = c0000a.f4f;
                        c0000a.f4f = null;
                        return false;
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private long m8155b(long j) {
        return this.f5g - j;
    }

    @Nullable
    /* renamed from: e */
    static C0000a m8152e() {
        C0000a c0000a = f1b.f4f;
        if (c0000a == null) {
            long nanoTime = System.nanoTime();
            C0000a.class.wait(f0a);
            C0000a c0000a2 = null;
            if (f1b.f4f == null) {
                c0000a2 = null;
                if (System.nanoTime() - nanoTime >= f2d) {
                    c0000a2 = f1b;
                }
            }
            return c0000a2;
        }
        long m8155b = c0000a.m8155b(System.nanoTime());
        if (m8155b > 0) {
            long j = m8155b / 1000000;
            C0000a.class.wait(j, (int) (m8155b - (1000000 * j)));
            return null;
        }
        f1b.f4f = c0000a.f4f;
        c0000a.f4f = null;
        return c0000a;
    }

    /* renamed from: a */
    public final AbstractC0025r m8158a(final AbstractC0025r abstractC0025r) {
        return new AbstractC0025r() { // from class: a.a.1
            @Override // p000a.AbstractC0025r
            /* renamed from: a */
            public C0027t mo2091a() {
                return C0000a.this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v22, types: [long] */
            /* JADX WARN: Type inference failed for: r0v26, types: [long] */
            /* JADX WARN: Type inference failed for: r9v1 */
            /* JADX WARN: Type inference failed for: r9v2 */
            /* JADX WARN: Type inference failed for: r9v3 */
            @Override // p000a.AbstractC0025r
            /* renamed from: a_ */
            public void mo2089a_(C0005c c0005c, long j) {
                char c;
                C0029u.m8026a(c0005c.f14b, 0L, j);
                ?? r9 = j;
                while (true) {
                    char c2 = 0;
                    if (r9 > 0) {
                        C0022o c0022o = c0005c.f13a;
                        while (true) {
                            C0022o c0022o2 = c0022o;
                            c = c2;
                            if (c2 >= 65536) {
                                break;
                            }
                            c2 += c0022o2.f48c - c0022o2.f47b;
                            if (c2 >= r9) {
                                c = r9;
                                break;
                            }
                            c0022o = c0022o2.f51f;
                        }
                        C0000a.this.m8153c();
                        try {
                            try {
                                abstractC0025r.mo2089a_(c0005c, c);
                                r9 -= c;
                                C0000a.this.m8156a(true);
                            } catch (IOException e) {
                                throw C0000a.this.m8154b(e);
                            }
                        } catch (Throwable th) {
                            C0000a.this.m8156a(false);
                            throw th;
                        }
                    } else {
                        return;
                    }
                }
            }

            @Override // p000a.AbstractC0025r, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                C0000a.this.m8153c();
                try {
                    try {
                        abstractC0025r.close();
                        C0000a.this.m8156a(true);
                    } catch (IOException e) {
                        throw C0000a.this.m8154b(e);
                    }
                } catch (Throwable th) {
                    C0000a.this.m8156a(false);
                    throw th;
                }
            }

            @Override // p000a.AbstractC0025r, java.io.Flushable
            public void flush() {
                C0000a.this.m8153c();
                try {
                    try {
                        abstractC0025r.flush();
                        C0000a.this.m8156a(true);
                    } catch (IOException e) {
                        throw C0000a.this.m8154b(e);
                    }
                } catch (Throwable th) {
                    C0000a.this.m8156a(false);
                    throw th;
                }
            }

            public String toString() {
                return "AsyncTimeout.sink(" + abstractC0025r + ")";
            }
        };
    }

    /* renamed from: a */
    public final AbstractC0026s m8157a(final AbstractC0026s abstractC0026s) {
        return new AbstractC0026s() { // from class: a.a.2
            @Override // p000a.AbstractC0026s
            /* renamed from: a */
            public long mo2087a(C0005c c0005c, long j) {
                C0000a.this.m8153c();
                try {
                    try {
                        long mo2087a = abstractC0026s.mo2087a(c0005c, j);
                        C0000a.this.m8156a(true);
                        return mo2087a;
                    } catch (IOException e) {
                        throw C0000a.this.m8154b(e);
                    }
                } catch (Throwable th) {
                    C0000a.this.m8156a(false);
                    throw th;
                }
            }

            @Override // p000a.AbstractC0026s
            /* renamed from: a */
            public C0027t mo2088a() {
                return C0000a.this;
            }

            @Override // p000a.AbstractC0026s, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    try {
                        abstractC0026s.close();
                        C0000a.this.m8156a(true);
                    } catch (IOException e) {
                        throw C0000a.this.m8154b(e);
                    }
                } catch (Throwable th) {
                    C0000a.this.m8156a(false);
                    throw th;
                }
            }

            public String toString() {
                return "AsyncTimeout.source(" + abstractC0026s + ")";
            }
        };
    }

    /* renamed from: a */
    protected IOException mo2082a(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* renamed from: a */
    protected void mo2083a() {
    }

    /* renamed from: a */
    final void m8156a(boolean z) {
        if (!m8151o_() || !z) {
            return;
        }
        throw mo2082a((IOException) null);
    }

    /* renamed from: b */
    final IOException m8154b(IOException iOException) {
        return !m8151o_() ? iOException : mo2082a(iOException);
    }

    /* renamed from: c */
    public final void m8153c() {
        if (!this.f3e) {
            long p_ = mo8033p_();
            boolean q_ = mo8032q_();
            if (p_ == 0 && !q_) {
                return;
            }
            this.f3e = true;
            m8159a(this, p_, q_);
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit");
    }

    /* renamed from: o_ */
    public final boolean m8151o_() {
        if (!this.f3e) {
            return false;
        }
        this.f3e = false;
        return m8160a(this);
    }
}
