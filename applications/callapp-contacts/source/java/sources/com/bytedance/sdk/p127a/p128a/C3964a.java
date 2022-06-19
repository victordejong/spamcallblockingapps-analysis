package com.bytedance.sdk.p127a.p128a;

import android.support.p008v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bytedance.sdk.a.a.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/a.class */
public class C3964a extends C3991t {

    /* renamed from: a */
    static C3964a f14405a;

    /* renamed from: b */
    private static final long f14406b;

    /* renamed from: d */
    private static final long f14407d;

    /* renamed from: e */
    private boolean f14408e;

    /* renamed from: f */
    private C3964a f14409f;

    /* renamed from: g */
    private long f14410g;

    /* renamed from: com.bytedance.sdk.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/a$a.class */
    public static final class C3967a extends Thread {
        C3967a() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0024, code lost:
            r0.mo36715a_();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                r3 = this;
            L0:
                java.lang.Class<com.bytedance.sdk.a.a.a> r0 = com.bytedance.sdk.p127a.p128a.C3964a.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L30
                com.bytedance.sdk.a.a.a r0 = com.bytedance.sdk.p127a.p128a.C3964a.m37138d()     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L30
                r4 = r0
                r0 = r4
                if (r0 != 0) goto L11
                java.lang.Class<com.bytedance.sdk.a.a.a> r0 = com.bytedance.sdk.p127a.p128a.C3964a.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
                goto L0
            L11:
                r0 = r4
                com.bytedance.sdk.a.a.a r1 = com.bytedance.sdk.p127a.p128a.C3964a.f14405a     // Catch: java.lang.Throwable -> L2a
                if (r0 != r1) goto L20
                r0 = 0
                com.bytedance.sdk.p127a.p128a.C3964a.f14405a = r0     // Catch: java.lang.Throwable -> L2a
                java.lang.Class<com.bytedance.sdk.a.a.a> r0 = com.bytedance.sdk.p127a.p128a.C3964a.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
                return
            L20:
                java.lang.Class<com.bytedance.sdk.a.a.a> r0 = com.bytedance.sdk.p127a.p128a.C3964a.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
                r0 = r4
                r0.mo36715a_()     // Catch: java.lang.InterruptedException -> L30
                goto L0
            L2a:
                r4 = move-exception
                java.lang.Class<com.bytedance.sdk.a.a.a> r0 = com.bytedance.sdk.p127a.p128a.C3964a.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
                r0 = r4
                throw r0     // Catch: java.lang.InterruptedException -> L30
            L30:
                r4 = move-exception
                goto L0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.p127a.p128a.C3964a.C3967a.run():void");
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f14406b = millis;
        f14407d = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    /* renamed from: a */
    private static void m37145a(C3964a c3964a, long j, boolean z) {
        synchronized (C3964a.class) {
            try {
                if (f14405a == null) {
                    f14405a = new C3964a();
                    C3967a c3967a = new C3967a();
                    c3967a.setName("tt_pangle_thread_watch_dog");
                    c3967a.start();
                }
                long nanoTime = System.nanoTime();
                int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i != 0 && z) {
                    c3964a.f14410g = Math.min(j, c3964a.mo37021c_() - nanoTime) + nanoTime;
                } else if (i != 0) {
                    c3964a.f14410g = j + nanoTime;
                } else if (!z) {
                    throw new AssertionError();
                } else {
                    c3964a.f14410g = c3964a.mo37021c_();
                }
                long m37139b = c3964a.m37139b(nanoTime);
                C3964a c3964a2 = f14405a;
                while (true) {
                    C3964a c3964a3 = c3964a2.f14409f;
                    if (c3964a3 == null || m37139b < c3964a3.m37139b(nanoTime)) {
                        break;
                    }
                    c3964a2 = c3964a2.f14409f;
                }
                c3964a.f14409f = c3964a2.f14409f;
                c3964a2.f14409f = c3964a;
                if (c3964a2 != f14405a) {
                    return;
                }
                C3964a.class.notify();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private static boolean m37146a(C3964a c3964a) {
        synchronized (C3964a.class) {
            try {
                C3964a c3964a2 = f14405a;
                while (true) {
                    C3964a c3964a3 = c3964a2;
                    if (c3964a3 == null) {
                        return true;
                    }
                    C3964a c3964a4 = c3964a3.f14409f;
                    if (c3964a4 == c3964a) {
                        c3964a3.f14409f = c3964a.f14409f;
                        c3964a.f14409f = null;
                        return false;
                    }
                    c3964a2 = c3964a4;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private long m37139b(long j) {
        return this.f14410g - j;
    }

    /* renamed from: d */
    static C3964a m37138d() throws InterruptedException {
        C3964a c3964a = f14405a.f14409f;
        if (c3964a == null) {
            long nanoTime = System.nanoTime();
            C3964a.class.wait(f14406b);
            if (f14405a.f14409f == null && System.nanoTime() - nanoTime >= f14407d) {
                return f14405a;
            }
            return null;
        }
        long m37139b = c3964a.m37139b(System.nanoTime());
        if (m37139b > 0) {
            long j = m37139b / 1000000;
            C3964a.class.wait(j, (int) (m37139b - (1000000 * j)));
            return null;
        }
        f14405a.f14409f = c3964a.f14409f;
        c3964a.f14409f = null;
        return c3964a;
    }

    /* renamed from: a */
    public final AbstractC3989r m37144a(final AbstractC3989r abstractC3989r) {
        return new AbstractC3989r() { // from class: com.bytedance.sdk.a.a.a.1
            @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r
            /* renamed from: a */
            public C3991t mo36723a() {
                return C3964a.this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v22, types: [long] */
            /* JADX WARN: Type inference failed for: r0v26, types: [long] */
            /* JADX WARN: Type inference failed for: r9v1 */
            /* JADX WARN: Type inference failed for: r9v2 */
            /* JADX WARN: Type inference failed for: r9v3 */
            @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r
            /* renamed from: a_ */
            public void mo36721a_(C3969c c3969c, long j) throws IOException {
                char c;
                C3993u.m37014a(c3969c.f14419b, 0L, j);
                ?? r9 = j;
                while (true) {
                    char c2 = 0;
                    if (r9 > 0) {
                        C3986o c3986o = c3969c.f14418a;
                        while (true) {
                            C3986o c3986o2 = c3986o;
                            c = c2;
                            if (c2 >= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                                break;
                            }
                            c2 += c3986o2.f14453c - c3986o2.f14452b;
                            if (c2 >= r9) {
                                c = r9;
                                break;
                            }
                            c3986o = c3986o2.f14456f;
                        }
                        C3964a.this.m37147a();
                        try {
                            try {
                                abstractC3989r.mo36721a_(c3969c, c);
                                r9 -= c;
                                C3964a.this.m37141a(true);
                            } catch (IOException e) {
                                throw C3964a.this.m37142a(e);
                            }
                        } catch (Throwable th) {
                            C3964a.this.m37141a(false);
                            throw th;
                        }
                    } else {
                        return;
                    }
                }
            }

            @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                C3964a.this.m37147a();
                try {
                    try {
                        abstractC3989r.close();
                        C3964a.this.m37141a(true);
                    } catch (IOException e) {
                        throw C3964a.this.m37142a(e);
                    }
                } catch (Throwable th) {
                    C3964a.this.m37141a(false);
                    throw th;
                }
            }

            @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r, java.io.Flushable
            public void flush() throws IOException {
                C3964a.this.m37147a();
                try {
                    try {
                        abstractC3989r.flush();
                        C3964a.this.m37141a(true);
                    } catch (IOException e) {
                        throw C3964a.this.m37142a(e);
                    }
                } catch (Throwable th) {
                    C3964a.this.m37141a(false);
                    throw th;
                }
            }

            public String toString() {
                return "AsyncTimeout.sink(" + abstractC3989r + ")";
            }
        };
    }

    /* renamed from: a */
    public final AbstractC3990s m37143a(final AbstractC3990s abstractC3990s) {
        return new AbstractC3990s() { // from class: com.bytedance.sdk.a.a.a.2
            @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
            /* renamed from: a */
            public long mo36719a(C3969c c3969c, long j) throws IOException {
                C3964a.this.m37147a();
                try {
                    try {
                        long mo36719a = abstractC3990s.mo36719a(c3969c, j);
                        C3964a.this.m37141a(true);
                        return mo36719a;
                    } catch (IOException e) {
                        throw C3964a.this.m37142a(e);
                    }
                } catch (Throwable th) {
                    C3964a.this.m37141a(false);
                    throw th;
                }
            }

            @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
            /* renamed from: a */
            public C3991t mo36720a() {
                return C3964a.this;
            }

            @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                C3964a.this.m37147a();
                try {
                    try {
                        abstractC3990s.close();
                        C3964a.this.m37141a(true);
                    } catch (IOException e) {
                        throw C3964a.this.m37142a(e);
                    }
                } catch (Throwable th) {
                    C3964a.this.m37141a(false);
                    throw th;
                }
            }

            public String toString() {
                return "AsyncTimeout.source(" + abstractC3990s + ")";
            }
        };
    }

    /* renamed from: a */
    final IOException m37142a(IOException iOException) throws IOException {
        return !m37140b() ? iOException : mo36714b(iOException);
    }

    /* renamed from: a */
    public final void m37147a() {
        if (!this.f14408e) {
            long b_ = mo37023b_();
            boolean c = mo37022c();
            if (b_ == 0 && !c) {
                return;
            }
            this.f14408e = true;
            m37145a(this, b_, c);
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit");
    }

    /* renamed from: a */
    final void m37141a(boolean z) throws IOException {
        if (!m37140b() || !z) {
            return;
        }
        throw mo36714b((IOException) null);
    }

    /* renamed from: a_ */
    protected void mo36715a_() {
    }

    /* renamed from: b */
    protected IOException mo36714b(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* renamed from: b */
    public final boolean m37140b() {
        if (!this.f14408e) {
            return false;
        }
        this.f14408e = false;
        return m37146a(this);
    }
}
