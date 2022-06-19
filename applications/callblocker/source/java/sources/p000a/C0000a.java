package p000a;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
/* renamed from: a.a */
/* loaded from: classes-dex2jar.jar:a/a.class */
public class C0000a extends C0025t {
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

        /* JADX WARN: Code restructure failed: missing block: B:19:0x002e, code lost:
            r0.mo401a();
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
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L17
                a.a r0 = p000a.C0000a.m22576e()     // Catch: java.lang.Throwable -> L11 java.lang.InterruptedException -> L17
                r4 = r0
                r0 = r4
                if (r0 != 0) goto L1b
                java.lang.Class<a.a> r0 = p000a.C0000a.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L11
                goto L0
            L11:
                r4 = move-exception
                java.lang.Class<a.a> r0 = p000a.C0000a.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L11
                r0 = r4
                throw r0     // Catch: java.lang.InterruptedException -> L17
            L17:
                r4 = move-exception
                goto L0
            L1b:
                r0 = r4
                a.a r1 = p000a.C0000a.f1b     // Catch: java.lang.Throwable -> L11
                if (r0 != r1) goto L2a
                r0 = 0
                p000a.C0000a.f1b = r0     // Catch: java.lang.Throwable -> L11
                java.lang.Class<a.a> r0 = p000a.C0000a.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L11
                return
            L2a:
                java.lang.Class<a.a> r0 = p000a.C0000a.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L11
                r0 = r4
                r0.mo401a()     // Catch: java.lang.InterruptedException -> L17
                goto L0
            */
            throw new UnsupportedOperationException("Method not decompiled: p000a.C0000a.C0003a.run():void");
        }
    }

    /* renamed from: a */
    private static void m22583a(C0000a c0000a, long j, boolean z) {
        synchronized (C0000a.class) {
            try {
                if (f1b == null) {
                    f1b = new C0000a();
                    new C0003a().start();
                }
                long nanoTime = System.nanoTime();
                if (j != 0 && z) {
                    c0000a.f5g = Math.min(j, c0000a.mo22456d() - nanoTime) + nanoTime;
                } else if (j != 0) {
                    c0000a.f5g = nanoTime + j;
                } else if (!z) {
                    throw new AssertionError();
                } else {
                    c0000a.f5g = c0000a.mo22456d();
                }
                long m22579b = c0000a.m22579b(nanoTime);
                C0000a c0000a2 = f1b;
                while (c0000a2.f4f != null && m22579b >= c0000a2.f4f.m22579b(nanoTime)) {
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

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0013, code lost:
        r4.f4f = r3.f4f;
        r3.f4f = null;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m22584a(p000a.C0000a r3) {
        /*
            java.lang.Class<a.a> r0 = p000a.C0000a.class
            monitor-enter(r0)
            a.a r0 = p000a.C0000a.f1b     // Catch: java.lang.Throwable -> L34
            r4 = r0
        L7:
            r0 = r4
            if (r0 == 0) goto L2f
            r0 = r4
            a.a r0 = r0.f4f     // Catch: java.lang.Throwable -> L34
            r1 = r3
            if (r0 != r1) goto L27
            r0 = r4
            r1 = r3
            a.a r1 = r1.f4f     // Catch: java.lang.Throwable -> L34
            r0.f4f = r1     // Catch: java.lang.Throwable -> L34
            r0 = r3
            r1 = 0
            r0.f4f = r1     // Catch: java.lang.Throwable -> L34
            r0 = 0
            r5 = r0
        L22:
            java.lang.Class<a.a> r0 = p000a.C0000a.class
            monitor-exit(r0)
            r0 = r5
            return r0
        L27:
            r0 = r4
            a.a r0 = r0.f4f     // Catch: java.lang.Throwable -> L34
            r4 = r0
            goto L7
        L2f:
            r0 = 1
            r5 = r0
            goto L22
        L34:
            r3 = move-exception
            java.lang.Class<a.a> r0 = p000a.C0000a.class
            monitor-exit(r0)
            r0 = r3
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000a.C0000a.m22584a(a.a):boolean");
    }

    /* renamed from: b */
    private long m22579b(long j) {
        return this.f5g - j;
    }

    @Nullable
    /* renamed from: e */
    static C0000a m22576e() {
        C0000a c0000a = f1b.f4f;
        if (c0000a == null) {
            long nanoTime = System.nanoTime();
            C0000a.class.wait(f0a);
            c0000a = null;
            if (f1b.f4f == null) {
                c0000a = null;
                if (System.nanoTime() - nanoTime >= f2d) {
                    c0000a = f1b;
                }
            }
        } else {
            long m22579b = c0000a.m22579b(System.nanoTime());
            if (m22579b > 0) {
                long j = m22579b / 1000000;
                C0000a.class.wait(j, (int) (m22579b - (1000000 * j)));
                c0000a = null;
            } else {
                f1b.f4f = c0000a.f4f;
                c0000a.f4f = null;
            }
        }
        return c0000a;
    }

    /* renamed from: G_ */
    public final boolean m22585G_() {
        boolean z = false;
        if (this.f3e) {
            this.f3e = false;
            z = m22584a(this);
        }
        return z;
    }

    /* renamed from: a */
    public final AbstractC0023r m22582a(final AbstractC0023r abstractC0023r) {
        return new AbstractC0023r() { // from class: a.a.1
            @Override // p000a.AbstractC0023r
            /* renamed from: a */
            public C0025t mo408a() {
                return C0000a.this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v21, types: [long] */
            /* JADX WARN: Type inference failed for: r0v25, types: [long] */
            /* JADX WARN: Type inference failed for: r9v1 */
            /* JADX WARN: Type inference failed for: r9v2 */
            /* JADX WARN: Type inference failed for: r9v3 */
            @Override // p000a.AbstractC0023r
            /* renamed from: a_ */
            public void mo406a_(C0005c c0005c, long j) {
                char c;
                C0027u.m22450a(c0005c.f14b, 0L, j);
                ?? r9 = j;
                while (r9 > 0) {
                    C0020o c0020o = c0005c.f13a;
                    char c2 = 0;
                    while (true) {
                        c = c2;
                        if (c2 >= 65536) {
                            break;
                        }
                        c2 += c0020o.f46c - c0020o.f45b;
                        if (c2 >= r9) {
                            c = r9;
                            break;
                        }
                        c0020o = c0020o.f49f;
                    }
                    C0000a.this.m22577c();
                    try {
                        try {
                            abstractC0023r.mo406a_(c0005c, c);
                            r9 -= c;
                            C0000a.this.m22580a(true);
                        } catch (IOException e) {
                            throw C0000a.this.m22578b(e);
                        }
                    } catch (Throwable th) {
                        C0000a.this.m22580a(false);
                        throw th;
                    }
                }
            }

            @Override // p000a.AbstractC0023r, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                C0000a.this.m22577c();
                try {
                    try {
                        abstractC0023r.close();
                        C0000a.this.m22580a(true);
                    } catch (IOException e) {
                        throw C0000a.this.m22578b(e);
                    }
                } catch (Throwable th) {
                    C0000a.this.m22580a(false);
                    throw th;
                }
            }

            @Override // p000a.AbstractC0023r, java.io.Flushable
            public void flush() {
                C0000a.this.m22577c();
                try {
                    try {
                        abstractC0023r.flush();
                        C0000a.this.m22580a(true);
                    } catch (IOException e) {
                        throw C0000a.this.m22578b(e);
                    }
                } catch (Throwable th) {
                    C0000a.this.m22580a(false);
                    throw th;
                }
            }

            public String toString() {
                return "AsyncTimeout.sink(" + abstractC0023r + ")";
            }
        };
    }

    /* renamed from: a */
    public final AbstractC0024s m22581a(final AbstractC0024s abstractC0024s) {
        return new AbstractC0024s() { // from class: a.a.2
            @Override // p000a.AbstractC0024s
            /* renamed from: a */
            public long mo90a(C0005c c0005c, long j) {
                C0000a.this.m22577c();
                try {
                    try {
                        long mo90a = abstractC0024s.mo90a(c0005c, j);
                        C0000a.this.m22580a(true);
                        return mo90a;
                    } catch (IOException e) {
                        throw C0000a.this.m22578b(e);
                    }
                } catch (Throwable th) {
                    C0000a.this.m22580a(false);
                    throw th;
                }
            }

            @Override // p000a.AbstractC0024s
            /* renamed from: a */
            public C0025t mo405a() {
                return C0000a.this;
            }

            @Override // p000a.AbstractC0024s, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    try {
                        abstractC0024s.close();
                        C0000a.this.m22580a(true);
                    } catch (IOException e) {
                        throw C0000a.this.m22578b(e);
                    }
                } catch (Throwable th) {
                    C0000a.this.m22580a(false);
                    throw th;
                }
            }

            public String toString() {
                return "AsyncTimeout.source(" + abstractC0024s + ")";
            }
        };
    }

    /* renamed from: a */
    protected IOException mo400a(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* renamed from: a */
    protected void mo401a() {
    }

    /* renamed from: a */
    final void m22580a(boolean z) {
        if (!m22585G_() || !z) {
            return;
        }
        throw mo400a((IOException) null);
    }

    /* renamed from: b */
    final IOException m22578b(IOException iOException) {
        if (m22585G_()) {
            iOException = mo400a(iOException);
        }
        return iOException;
    }

    /* renamed from: c */
    public final void m22577c() {
        if (this.f3e) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long H_ = mo22459H_();
        boolean I_ = mo22458I_();
        if (H_ == 0 && !I_) {
            return;
        }
        this.f3e = true;
        m22583a(this, H_, I_);
    }
}
