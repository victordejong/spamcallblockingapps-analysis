package com.b.a.a.b;

import b.e;
import b.q;
import b.r;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/b/a/a/b/p.class */
public final class p {
    static final /* synthetic */ boolean i;

    /* renamed from: b  reason: collision with root package name */
    long f3279b;
    final int c;
    final o d;
    List<d> e;
    public final b f;
    final a g;
    private final List<d> j;

    /* renamed from: a  reason: collision with root package name */
    long f3278a = 0;
    public final c h = new c();
    private final c k = new c();
    private com.b.a.a.b.a l = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/b/p$a.class */
    public final class a implements b.p {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ boolean f3280a;
        private final b.c c = new b.c();
        private boolean d;
        private boolean e;

        static {
            f3280a = !p.class.desiredAssertionStatus();
        }

        a() {
        }

        private void a(boolean z) {
            long min;
            synchronized (p.this) {
                p.this.k.c();
                while (p.this.f3279b <= 0 && !this.e && !this.d && p.this.l == null) {
                    p.this.f();
                }
                p.this.k.b();
                p.h(p.this);
                min = Math.min(p.this.f3279b, this.c.f318b);
                p.this.f3279b -= min;
            }
            p.this.d.a(p.this.c, z && min == this.c.f318b, this.c, min);
        }

        @Override // b.p
        public final r a() {
            return p.this.k;
        }

        @Override // b.p
        public final void a_(b.c cVar, long j) {
            if (f3280a || !Thread.holdsLock(p.this)) {
                this.c.a_(cVar, j);
                while (this.c.f318b >= 16384) {
                    a(false);
                }
                return;
            }
            throw new AssertionError();
        }

        @Override // b.p, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (f3280a || !Thread.holdsLock(p.this)) {
                synchronized (p.this) {
                    if (!this.d) {
                        if (!p.this.g.e) {
                            if (this.c.f318b > 0) {
                                while (this.c.f318b > 0) {
                                    a(true);
                                }
                            } else {
                                p.this.d.a(p.this.c, true, (b.c) null, 0L);
                            }
                        }
                        synchronized (p.this) {
                            this.d = true;
                        }
                        p.this.d.c();
                        p.f(p.this);
                        return;
                    }
                    return;
                }
            }
            throw new AssertionError();
        }

        @Override // b.p, java.io.Flushable
        public final void flush() {
            if (f3280a || !Thread.holdsLock(p.this)) {
                synchronized (p.this) {
                    p.h(p.this);
                }
                while (this.c.f318b > 0) {
                    a(false);
                }
                p.this.d.c();
                return;
            }
            throw new AssertionError();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/b/p$b.class */
    public final class b implements q {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ boolean f3282a;
        private final b.c c;
        private final b.c d;
        private final long e;
        private boolean f;
        private boolean g;

        static {
            f3282a = !p.class.desiredAssertionStatus();
        }

        private b(long j) {
            this.c = new b.c();
            this.d = new b.c();
            this.e = j;
        }

        /* synthetic */ b(p pVar, long j, byte b2) {
            this(j);
        }

        private void b() {
            p.this.h.c();
            while (this.d.f318b == 0 && !this.g && !this.f && p.this.l == null) {
                try {
                    p.this.f();
                } finally {
                    p.this.h.b();
                }
            }
        }

        @Override // b.q
        public final long a(b.c cVar, long j) {
            long a2;
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            synchronized (p.this) {
                b();
                if (this.f) {
                    throw new IOException("stream closed");
                } else if (p.this.l != null) {
                    throw new IOException("stream was reset: " + p.this.l);
                } else {
                    if (this.d.f318b == 0) {
                        a2 = -1;
                    } else {
                        a2 = this.d.a(cVar, Math.min(j, this.d.f318b));
                        p.this.f3278a += a2;
                        if (p.this.f3278a >= p.this.d.e.b() / 2) {
                            p.this.d.a(p.this.c, p.this.f3278a);
                            p.this.f3278a = 0L;
                        }
                        synchronized (p.this.d) {
                            p.this.d.c += a2;
                            if (p.this.d.c >= p.this.d.e.b() / 2) {
                                p.this.d.a(0, p.this.d.c);
                                p.this.d.c = 0L;
                            }
                        }
                    }
                    return a2;
                }
            }
        }

        @Override // b.q
        public final r a() {
            return p.this.h;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v0, types: [b.e] */
        /* JADX WARN: Type inference failed for: r7v0, types: [long] */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1 */
        /* JADX WARN: Type inference failed for: r9v2, types: [long] */
        /* JADX WARN: Type inference failed for: r9v4 */
        public final void a(e eVar, long j) {
            boolean z;
            boolean z2;
            long j2 = j;
            if (!f3282a) {
                j2 = j;
                if (Thread.holdsLock(p.this)) {
                    throw new AssertionError();
                }
            }
            while (j2 > 0) {
                synchronized (p.this) {
                    z = this.g;
                    z2 = this.d.f318b + j2 > this.e;
                }
                if (z2) {
                    eVar.g(j2);
                    p.this.b(com.b.a.a.b.a.FLOW_CONTROL_ERROR);
                    return;
                } else if (z) {
                    eVar.g(j2);
                    return;
                } else {
                    long a2 = eVar.a(this.c, j2);
                    if (a2 == -1) {
                        throw new EOFException();
                    }
                    j2 -= a2;
                    synchronized (p.this) {
                        boolean z3 = this.d.f318b == 0;
                        this.d.a(this.c);
                        if (z3) {
                            p.this.notifyAll();
                        }
                    }
                }
            }
        }

        @Override // b.q, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            synchronized (p.this) {
                this.f = true;
                this.d.n();
                p.this.notifyAll();
            }
            p.f(p.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/b/p$c.class */
    public final class c extends b.a {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // b.a
        public final void a() {
            p.this.b(com.b.a.a.b.a.CANCEL);
        }

        public final void b() {
            if (d()) {
                throw new InterruptedIOException("timeout");
            }
        }
    }

    static {
        i = !p.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(int i2, o oVar, boolean z, boolean z2, List<d> list) {
        if (oVar == null) {
            throw new NullPointerException("connection == null");
        } else if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        } else {
            this.c = i2;
            this.d = oVar;
            this.f3279b = oVar.f.b();
            this.f = new b(this, oVar.e.b(), (byte) 0);
            this.g = new a();
            this.f.g = z2;
            this.g.e = z;
            this.j = list;
        }
    }

    private boolean d(com.b.a.a.b.a aVar) {
        boolean z = false;
        if (i || !Thread.holdsLock(this)) {
            synchronized (this) {
                if (this.l == null) {
                    if (!this.f.g || !this.g.e) {
                        this.l = aVar;
                        notifyAll();
                        this.d.b(this.c);
                        z = true;
                    }
                }
            }
            return z;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        try {
            wait();
        } catch (InterruptedException e) {
            throw new InterruptedIOException();
        }
    }

    static /* synthetic */ void f(p pVar) {
        boolean z;
        boolean a2;
        if (i || !Thread.holdsLock(pVar)) {
            synchronized (pVar) {
                z = !pVar.f.g && pVar.f.f && (pVar.g.e || pVar.g.d);
                a2 = pVar.a();
            }
            if (z) {
                pVar.a(com.b.a.a.b.a.CANCEL);
            } else if (!a2) {
                pVar.d.b(pVar.c);
            }
        } else {
            throw new AssertionError();
        }
    }

    static /* synthetic */ void h(p pVar) {
        if (pVar.g.d) {
            throw new IOException("stream closed");
        } else if (pVar.g.e) {
            throw new IOException("stream finished");
        } else if (pVar.l != null) {
            throw new IOException("stream was reset: " + pVar.l);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j) {
        this.f3279b += j;
        if (j > 0) {
            notifyAll();
        }
    }

    public final void a(com.b.a.a.b.a aVar) {
        if (d(aVar)) {
            this.d.b(this.c, aVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003f, code lost:
        if (r2.e == null) goto L_0x0042;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a() {
        /*
            r2 = this;
            r0 = 0
            r3 = r0
            r0 = r2
            monitor-enter(r0)
            r0 = r2
            com.b.a.a.b.a r0 = r0.l     // Catch: all -> 0x0047
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0011
        L_0x000d:
            r0 = r2
            monitor-exit(r0)
            r0 = r3
            return r0
        L_0x0011:
            r0 = r2
            com.b.a.a.b.p$b r0 = r0.f     // Catch: all -> 0x0047
            boolean r0 = com.b.a.a.b.p.b.a(r0)     // Catch: all -> 0x0047
            if (r0 != 0) goto L_0x0025
            r0 = r2
            com.b.a.a.b.p$b r0 = r0.f     // Catch: all -> 0x0047
            boolean r0 = com.b.a.a.b.p.b.b(r0)     // Catch: all -> 0x0047
            if (r0 == 0) goto L_0x0042
        L_0x0025:
            r0 = r2
            com.b.a.a.b.p$a r0 = r0.g     // Catch: all -> 0x0047
            boolean r0 = com.b.a.a.b.p.a.a(r0)     // Catch: all -> 0x0047
            if (r0 != 0) goto L_0x0039
            r0 = r2
            com.b.a.a.b.p$a r0 = r0.g     // Catch: all -> 0x0047
            boolean r0 = com.b.a.a.b.p.a.b(r0)     // Catch: all -> 0x0047
            if (r0 == 0) goto L_0x0042
        L_0x0039:
            r0 = r2
            java.util.List<com.b.a.a.b.d> r0 = r0.e     // Catch: all -> 0x0047
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L_0x000d
        L_0x0042:
            r0 = 1
            r3 = r0
            goto L_0x000d
        L_0x0047:
            r4 = move-exception
            r0 = r2
            monitor-exit(r0)
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.a.b.p.a():boolean");
    }

    public final void b(com.b.a.a.b.a aVar) {
        if (d(aVar)) {
            this.d.a(this.c, aVar);
        }
    }

    public final boolean b() {
        boolean z = true;
        if (this.d.f3265b != ((this.c & 1) == 1)) {
            z = false;
        }
        return z;
    }

    public final List<d> c() {
        List<d> list;
        synchronized (this) {
            this.h.c();
            while (this.e == null && this.l == null) {
                f();
            }
            this.h.b();
            if (this.e != null) {
                list = this.e;
            } else {
                throw new IOException("stream was reset: " + this.l);
            }
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(com.b.a.a.b.a aVar) {
        synchronized (this) {
            if (this.l == null) {
                this.l = aVar;
                notifyAll();
            }
        }
    }

    public final b.p d() {
        synchronized (this) {
            if (this.e == null && !b()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        boolean a2;
        if (i || !Thread.holdsLock(this)) {
            synchronized (this) {
                this.f.g = true;
                a2 = a();
                notifyAll();
            }
            if (!a2) {
                this.d.b(this.c);
                return;
            }
            return;
        }
        throw new AssertionError();
    }
}
