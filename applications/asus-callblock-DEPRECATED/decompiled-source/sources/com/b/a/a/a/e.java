package com.b.a.a.a;

import b.k;
import b.p;
import b.q;
import b.r;
import com.android.vcard.VCardBuilder;
import com.b.a.a.h;
import com.b.a.i;
import com.b.a.j;
import com.b.a.p;
import com.b.a.w;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    final j f3194a;

    /* renamed from: b  reason: collision with root package name */
    final i f3195b;
    public final b.e c;
    final b.d d;
    int e = 0;
    int f = 0;
    private final Socket g;

    /* loaded from: classes-dex2jar.jar:com/b/a/a/a/e$a.class */
    private abstract class a implements q {

        /* renamed from: a  reason: collision with root package name */
        protected boolean f3196a;

        private a() {
        }

        /* synthetic */ a(e eVar, byte b2) {
            this();
        }

        @Override // b.q
        public final r a() {
            return e.this.c.a();
        }

        protected final void a(boolean z) {
            if (e.this.e != 5) {
                throw new IllegalStateException("state: " + e.this.e);
            }
            e.this.e = 0;
            if (z && e.this.f == 1) {
                e.this.f = 0;
                com.b.a.a.a.f3188b.a(e.this.f3194a, e.this.f3195b);
            } else if (e.this.f == 2) {
                e.this.e = 6;
                e.this.f3195b.c.close();
            }
        }

        protected final void b() {
            h.a(e.this.f3195b.c);
            e.this.e = 6;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/a/e$b.class */
    public final class b implements p {

        /* renamed from: b  reason: collision with root package name */
        private boolean f3199b;

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ b(e eVar, byte b2) {
            this();
        }

        @Override // b.p
        public final r a() {
            return e.this.d.a();
        }

        @Override // b.p
        public final void a_(b.c cVar, long j) {
            if (this.f3199b) {
                throw new IllegalStateException("closed");
            } else if (j != 0) {
                e.this.d.i(j);
                e.this.d.b(VCardBuilder.VCARD_END_OF_LINE);
                e.this.d.a_(cVar, j);
                e.this.d.b(VCardBuilder.VCARD_END_OF_LINE);
            }
        }

        @Override // b.p, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            synchronized (this) {
                if (!this.f3199b) {
                    this.f3199b = true;
                    e.this.d.b("0\r\n\r\n");
                    e.this.e = 3;
                }
            }
        }

        @Override // b.p, java.io.Flushable
        public final void flush() {
            synchronized (this) {
                if (!this.f3199b) {
                    e.this.d.flush();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/a/e$c.class */
    public final class c extends a {
        private long d = -1;
        private boolean e = true;
        private final g f;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(g gVar) {
            super(e.this, (byte) 0);
            this.f = gVar;
        }

        /* JADX WARN: Code restructure failed: missing block: B:37:0x0114, code lost:
            if (r7.e != false) goto L_0x0117;
         */
        @Override // b.q
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long a(b.c r8, long r9) {
            /*
                Method dump skipped, instructions count: 339
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.b.a.a.a.e.c.a(b.c, long):long");
        }

        @Override // b.q, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (!this.f3196a) {
                if (this.e && !h.a((q) this, TimeUnit.MILLISECONDS)) {
                    b();
                }
                this.f3196a = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/a/e$d.class */
    public final class d implements p {

        /* renamed from: b  reason: collision with root package name */
        private boolean f3201b;
        private long c;

        private d(long j) {
            this.c = j;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ d(e eVar, long j, byte b2) {
            this(j);
        }

        @Override // b.p
        public final r a() {
            return e.this.d.a();
        }

        @Override // b.p
        public final void a_(b.c cVar, long j) {
            if (this.f3201b) {
                throw new IllegalStateException("closed");
            }
            h.a(cVar.f318b, j);
            if (j > this.c) {
                throw new ProtocolException("expected " + this.c + " bytes but received " + j);
            }
            e.this.d.a_(cVar, j);
            this.c -= j;
        }

        @Override // b.p, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (!this.f3201b) {
                this.f3201b = true;
                if (this.c > 0) {
                    throw new ProtocolException("unexpected end of stream");
                }
                e.this.e = 3;
            }
        }

        @Override // b.p, java.io.Flushable
        public final void flush() {
            if (!this.f3201b) {
                e.this.d.flush();
            }
        }
    }

    /* renamed from: com.b.a.a.a.e$e  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/a/e$e.class */
    private final class C0089e extends a {
        private long d;

        public C0089e(long j) {
            super(e.this, (byte) 0);
            this.d = j;
            if (this.d == 0) {
                a(true);
            }
        }

        @Override // b.q
        public final long a(b.c cVar, long j) {
            long a2 = -1;
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.f3196a) {
                throw new IllegalStateException("closed");
            } else {
                if (this.d != 0) {
                    a2 = e.this.c.a(cVar, Math.min(this.d, j));
                    if (a2 == -1) {
                        b();
                        throw new ProtocolException("unexpected end of stream");
                    }
                    this.d -= a2;
                    if (this.d == 0) {
                        a(true);
                    }
                }
                return a2;
            }
        }

        @Override // b.q, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (!this.f3196a) {
                if (this.d != 0 && !h.a((q) this, TimeUnit.MILLISECONDS)) {
                    b();
                }
                this.f3196a = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/a/e$f.class */
    public final class f extends a {
        private boolean d;

        private f() {
            super(e.this, (byte) 0);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ f(e eVar, byte b2) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v2 */
        /* JADX WARN: Type inference failed for: r8v3, types: [long] */
        /* JADX WARN: Type inference failed for: r8v4 */
        /* JADX WARN: Type inference failed for: r8v5 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // b.q
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long a(b.c r7, long r8) {
            /*
                r6 = this;
                r0 = -1
                r10 = r0
                r0 = r8
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x0023
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                r1 = r0
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r3 = r2
                java.lang.String r4 = "byteCount < 0: "
                r3.<init>(r4)
                r3 = r8
                java.lang.StringBuilder r2 = r2.append(r3)
                java.lang.String r2 = r2.toString()
                r1.<init>(r2)
                throw r0
            L_0x0023:
                r0 = r6
                boolean r0 = r0.f3196a
                if (r0 == 0) goto L_0x0034
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "closed"
                r1.<init>(r2)
                throw r0
            L_0x0034:
                r0 = r6
                boolean r0 = r0.d
                if (r0 == 0) goto L_0x0040
                r0 = r10
                r8 = r0
            L_0x003e:
                r0 = r8
                return r0
            L_0x0040:
                r0 = r6
                com.b.a.a.a.e r0 = com.b.a.a.a.e.this
                b.e r0 = r0.c
                r1 = r7
                r2 = r8
                long r0 = r0.a(r1, r2)
                r8 = r0
                r0 = r8
                r1 = -1
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0067
                r0 = r6
                r1 = 1
                r0.d = r1
                r0 = r6
                r1 = 0
                r0.a(r1)
                r0 = r10
                r8 = r0
                goto L_0x003e
            L_0x0067:
                goto L_0x003e
            */
            throw new UnsupportedOperationException("Method not decompiled: com.b.a.a.a.e.f.a(b.c, long):long");
        }

        @Override // b.q, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (!this.f3196a) {
                if (!this.d) {
                    b();
                }
                this.f3196a = true;
            }
        }
    }

    public e(j jVar, i iVar, Socket socket) {
        this.f3194a = jVar;
        this.f3195b = iVar;
        this.g = socket;
        this.c = k.a(k.b(socket));
        this.d = k.a(k.a(socket));
    }

    public final q a(long j) {
        if (this.e != 4) {
            throw new IllegalStateException("state: " + this.e);
        }
        this.e = 5;
        return new C0089e(j);
    }

    public final void a() {
        this.d.flush();
    }

    public final void a(int i, int i2) {
        if (i != 0) {
            this.c.a().a(i, TimeUnit.MILLISECONDS);
        }
        if (i2 != 0) {
            this.d.a().a(i2, TimeUnit.MILLISECONDS);
        }
    }

    public final void a(p.a aVar) {
        while (true) {
            String l = this.c.l();
            if (l.length() != 0) {
                com.b.a.a.a.f3188b.a(aVar, l);
            } else {
                return;
            }
        }
    }

    public final void a(com.b.a.p pVar, String str) {
        if (this.e != 0) {
            throw new IllegalStateException("state: " + this.e);
        }
        this.d.b(str).b(VCardBuilder.VCARD_END_OF_LINE);
        int length = pVar.f3336a.length / 2;
        for (int i = 0; i < length; i++) {
            this.d.b(pVar.a(i)).b(": ").b(pVar.b(i)).b(VCardBuilder.VCARD_END_OF_LINE);
        }
        this.d.b(VCardBuilder.VCARD_END_OF_LINE);
        this.e = 1;
    }

    public final boolean b() {
        boolean z = false;
        try {
            int soTimeout = this.g.getSoTimeout();
            this.g.setSoTimeout(1);
            if (this.c.d()) {
                this.g.setSoTimeout(soTimeout);
            } else {
                this.g.setSoTimeout(soTimeout);
                z = true;
            }
        } catch (SocketTimeoutException e) {
            z = true;
        } catch (IOException e2) {
        }
        return z;
    }

    public final w.a c() {
        p a2;
        w.a aVar;
        if (this.e == 1 || this.e == 3) {
            do {
                try {
                    a2 = p.a(this.c.l());
                    aVar = new w.a();
                    aVar.f3353b = a2.f3222a;
                    aVar.c = a2.f3223b;
                    aVar.d = a2.c;
                    p.a aVar2 = new p.a();
                    a(aVar2);
                    aVar2.a(j.d, a2.f3222a.toString());
                    aVar.a(aVar2.a());
                } catch (EOFException e) {
                    IOException iOException = new IOException("unexpected end of stream on " + this.f3195b + " (recycle count=" + com.b.a.a.a.f3188b.b(this.f3195b) + ")");
                    iOException.initCause(e);
                    throw iOException;
                }
            } while (a2.f3223b == 100);
            this.e = 4;
            return aVar;
        }
        throw new IllegalStateException("state: " + this.e);
    }
}
