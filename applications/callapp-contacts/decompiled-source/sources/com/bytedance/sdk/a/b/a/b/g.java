package com.bytedance.sdk.a.b.a.b;

import com.bytedance.sdk.a.b.a.b.f;
import com.bytedance.sdk.a.b.a.c.c;
import com.bytedance.sdk.a.b.a.e.b;
import com.bytedance.sdk.a.b.a.e.o;
import com.bytedance.sdk.a.b.ac;
import com.bytedance.sdk.a.b.e;
import com.bytedance.sdk.a.b.j;
import com.bytedance.sdk.a.b.p;
import com.bytedance.sdk.a.b.t;
import com.bytedance.sdk.a.b.v;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b/g.class */
public final class g {

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ boolean f7873d = true;

    /* renamed from: a  reason: collision with root package name */
    public final com.bytedance.sdk.a.b.a f7874a;

    /* renamed from: b  reason: collision with root package name */
    public final e f7875b;

    /* renamed from: c  reason: collision with root package name */
    public final p f7876c;
    private f.a e;
    private ac f;
    private final j g;
    private final Object h;
    private final f i;
    private int j;
    private c k;
    private boolean l;
    private boolean m;
    private boolean n;
    private c o;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b/g$a.class */
    public static final class a extends WeakReference<g> {

        /* renamed from: a  reason: collision with root package name */
        public final Object f7877a;

        a(g gVar, Object obj) {
            super(gVar);
            this.f7877a = obj;
        }
    }

    public g(j jVar, com.bytedance.sdk.a.b.a aVar, e eVar, p pVar, Object obj) {
        this.g = jVar;
        this.f7874a = aVar;
        this.f7875b = eVar;
        this.f7876c = pVar;
        this.i = new f(aVar, g(), eVar, pVar);
        this.h = obj;
    }

    private c a(int i, int i2, int i3, boolean z) throws IOException {
        c cVar;
        Socket f;
        c cVar2;
        boolean z2;
        ac acVar;
        boolean z3;
        c cVar3;
        boolean z4;
        c cVar4;
        Socket socket;
        f.a aVar;
        synchronized (this.g) {
            if (this.m) {
                throw new IllegalStateException("released");
            } else if (this.o != null) {
                throw new IllegalStateException("codec != null");
            } else if (!this.n) {
                cVar = this.k;
                f = f();
                cVar2 = this.k;
                socket = null;
                if (cVar2 != null) {
                    cVar = null;
                } else {
                    cVar2 = null;
                }
                if (!this.l) {
                    cVar = null;
                }
                if (cVar2 == null) {
                    com.bytedance.sdk.a.b.a.a.f7830a.a(this.g, this.f7874a, this, null);
                    c cVar5 = this.k;
                    if (cVar5 != null) {
                        cVar2 = cVar5;
                        z2 = true;
                        acVar = null;
                    } else {
                        acVar = this.f;
                    }
                } else {
                    acVar = null;
                }
                z2 = false;
            } else {
                throw new IOException("Canceled");
            }
        }
        com.bytedance.sdk.a.b.a.c.a(f);
        if (cVar != null) {
            this.f7876c.b(this.f7875b, cVar);
        }
        if (z2) {
            this.f7876c.a(this.f7875b, cVar2);
        }
        if (cVar2 != null) {
            return cVar2;
        }
        if (acVar != null || ((aVar = this.e) != null && aVar.a())) {
            z3 = false;
        } else {
            this.e = this.i.b();
            z3 = true;
        }
        synchronized (this.g) {
            if (!this.n) {
                cVar3 = cVar2;
                z4 = z2;
                if (z3) {
                    List<ac> c2 = this.e.c();
                    int size = c2.size();
                    int i4 = 0;
                    while (true) {
                        cVar3 = cVar2;
                        z4 = z2;
                        if (i4 >= size) {
                            break;
                        }
                        ac acVar2 = c2.get(i4);
                        com.bytedance.sdk.a.b.a.a.f7830a.a(this.g, this.f7874a, this, acVar2);
                        cVar3 = this.k;
                        if (cVar3 != null) {
                            this.f = acVar2;
                            z4 = true;
                            break;
                        }
                        i4++;
                    }
                }
                if (!z4) {
                    ac acVar3 = acVar;
                    if (acVar == null) {
                        acVar3 = this.e.b();
                    }
                    this.f = acVar3;
                    this.j = 0;
                    c cVar6 = new c(this.g, acVar3);
                    a(cVar6, false);
                    cVar3 = cVar6;
                }
            } else {
                throw new IOException("Canceled");
            }
        }
        if (z4) {
            this.f7876c.a(this.f7875b, cVar3);
            return cVar3;
        }
        cVar3.a(i, i2, i3, z, this.f7875b, this.f7876c);
        g().b(cVar3.a());
        synchronized (this.g) {
            this.l = true;
            com.bytedance.sdk.a.b.a.a.f7830a.b(this.g, cVar3);
            cVar4 = cVar3;
            if (cVar3.d()) {
                socket = com.bytedance.sdk.a.b.a.a.f7830a.a(this.g, this.f7874a, this);
                cVar4 = this.k;
            }
        }
        com.bytedance.sdk.a.b.a.c.a(socket);
        this.f7876c.a(this.f7875b, cVar4);
        return cVar4;
    }

    private c a(int i, int i2, int i3, boolean z, boolean z2) throws IOException {
        while (true) {
            c a2 = a(i, i2, i3, z);
            synchronized (this.g) {
                if (a2.f7861b == 0) {
                    return a2;
                }
                if (a2.a(z2)) {
                    return a2;
                }
                d();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0066, code lost:
        if (r4.k.f7860a != false) goto L_0x0069;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.net.Socket a(boolean r5, boolean r6, boolean r7) {
        /*
            r4 = this;
            boolean r0 = com.bytedance.sdk.a.b.a.b.g.f7873d
            if (r0 != 0) goto L_0x001b
            r0 = r4
            com.bytedance.sdk.a.b.j r0 = r0.g
            boolean r0 = java.lang.Thread.holdsLock(r0)
            if (r0 == 0) goto L_0x0013
            goto L_0x001b
        L_0x0013:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r1 = r0
            r1.<init>()
            throw r0
        L_0x001b:
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0027
            r0 = r4
            r1 = 0
            r0.o = r1
        L_0x0027:
            r0 = r6
            if (r0 == 0) goto L_0x0030
            r0 = r4
            r1 = 1
            r0.m = r1
        L_0x0030:
            r0 = r4
            com.bytedance.sdk.a.b.a.b.c r0 = r0.k
            r9 = r0
            r0 = r8
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x00af
            r0 = r5
            if (r0 == 0) goto L_0x0049
            r0 = r9
            r1 = 1
            r0.f7860a = r1
        L_0x0049:
            r0 = r8
            r10 = r0
            r0 = r4
            com.bytedance.sdk.a.b.a.c.c r0 = r0.o
            if (r0 != 0) goto L_0x00af
            r0 = r4
            boolean r0 = r0.m
            if (r0 != 0) goto L_0x0069
            r0 = r8
            r10 = r0
            r0 = r4
            com.bytedance.sdk.a.b.a.b.c r0 = r0.k
            boolean r0 = r0.f7860a
            if (r0 == 0) goto L_0x00af
        L_0x0069:
            r0 = r4
            r1 = r4
            com.bytedance.sdk.a.b.a.b.c r1 = r1.k
            r0.b(r1)
            r0 = r4
            com.bytedance.sdk.a.b.a.b.c r0 = r0.k
            java.util.List<java.lang.ref.Reference<com.bytedance.sdk.a.b.a.b.g>> r0 = r0.f7863d
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x00a7
            r0 = r4
            com.bytedance.sdk.a.b.a.b.c r0 = r0.k
            long r1 = java.lang.System.nanoTime()
            r0.e = r1
            com.bytedance.sdk.a.b.a.a r0 = com.bytedance.sdk.a.b.a.a.f7830a
            r1 = r4
            com.bytedance.sdk.a.b.j r1 = r1.g
            r2 = r4
            com.bytedance.sdk.a.b.a.b.c r2 = r2.k
            boolean r0 = r0.a(r1, r2)
            if (r0 == 0) goto L_0x00a7
            r0 = r4
            com.bytedance.sdk.a.b.a.b.c r0 = r0.k
            java.net.Socket r0 = r0.b()
            r10 = r0
            goto L_0x00aa
        L_0x00a7:
            r0 = 0
            r10 = r0
        L_0x00aa:
            r0 = r4
            r1 = 0
            r0.k = r1
        L_0x00af:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.b.a.b.g.a(boolean, boolean, boolean):java.net.Socket");
    }

    private void b(c cVar) {
        int size = cVar.f7863d.size();
        for (int i = 0; i < size; i++) {
            if (cVar.f7863d.get(i).get() == this) {
                cVar.f7863d.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    private Socket f() {
        if (f7873d || Thread.holdsLock(this.g)) {
            c cVar = this.k;
            if (cVar == null || !cVar.f7860a) {
                return null;
            }
            return a(false, false, true);
        }
        throw new AssertionError();
    }

    private d g() {
        return com.bytedance.sdk.a.b.a.a.f7830a.a(this.g);
    }

    public final c a() {
        c cVar;
        synchronized (this.g) {
            cVar = this.o;
        }
        return cVar;
    }

    public final c a(v vVar, t.a aVar, boolean z) {
        try {
            c a2 = a(aVar.b(), aVar.c(), aVar.d(), vVar.r(), z).a(vVar, aVar, this);
            synchronized (this.g) {
                this.o = a2;
            }
            return a2;
        } catch (IOException e) {
            throw new e(e);
        }
    }

    public final Socket a(c cVar) {
        if (!f7873d && !Thread.holdsLock(this.g)) {
            throw new AssertionError();
        } else if (this.o == null && this.k.f7863d.size() == 1) {
            Reference<g> reference = this.k.f7863d.get(0);
            Socket a2 = a(true, false, false);
            this.k = cVar;
            cVar.f7863d.add(reference);
            return a2;
        } else {
            throw new IllegalStateException();
        }
    }

    public final void a(c cVar, boolean z) {
        if (!f7873d && !Thread.holdsLock(this.g)) {
            throw new AssertionError();
        } else if (this.k == null) {
            this.k = cVar;
            this.l = z;
            cVar.f7863d.add(new a(this, this.h));
        } else {
            throw new IllegalStateException();
        }
    }

    public final void a(IOException iOException) {
        boolean z;
        Socket a2;
        c cVar;
        synchronized (this.g) {
            if (iOException instanceof o) {
                o oVar = (o) iOException;
                if (oVar.f8023a == b.REFUSED_STREAM) {
                    this.j++;
                }
                if (oVar.f8023a != b.REFUSED_STREAM || this.j > 1) {
                    this.f = null;
                    z = true;
                }
                z = false;
            } else {
                c cVar2 = this.k;
                if (cVar2 != null && (!cVar2.d() || (iOException instanceof com.bytedance.sdk.a.b.a.e.a))) {
                    if (this.k.f7861b == 0) {
                        ac acVar = this.f;
                        if (!(acVar == null || iOException == null)) {
                            this.i.a(acVar, iOException);
                        }
                        this.f = null;
                    }
                    z = true;
                }
                z = false;
            }
            cVar = this.k;
            a2 = a(z, false, true);
            cVar = null;
            if (this.k == null && !this.l) {
                cVar = null;
            }
        }
        com.bytedance.sdk.a.b.a.c.a(a2);
        if (cVar != null) {
            this.f7876c.b(this.f7875b, cVar);
        }
    }

    public final void a(boolean z, c cVar, long j, IOException iOException) {
        c cVar2;
        Socket a2;
        boolean z2;
        this.f7876c.b(this.f7875b, j);
        synchronized (this.g) {
            if (cVar != null) {
                if (cVar == this.o) {
                    if (!z) {
                        this.k.f7861b++;
                    }
                    cVar2 = this.k;
                    a2 = a(z, false, true);
                    if (this.k != null) {
                        cVar2 = null;
                    }
                    z2 = this.m;
                }
            }
            throw new IllegalStateException("expected " + this.o + " but was " + cVar);
        }
        com.bytedance.sdk.a.b.a.c.a(a2);
        if (cVar2 != null) {
            this.f7876c.b(this.f7875b, cVar2);
        }
        if (iOException != null) {
            this.f7876c.a(this.f7875b, iOException);
        } else if (z2) {
            this.f7876c.g(this.f7875b);
        }
    }

    public final c b() {
        c cVar;
        synchronized (this) {
            cVar = this.k;
        }
        return cVar;
    }

    public final void c() {
        c cVar;
        Socket a2;
        synchronized (this.g) {
            cVar = this.k;
            a2 = a(false, true, false);
            if (this.k != null) {
                cVar = null;
            }
        }
        com.bytedance.sdk.a.b.a.c.a(a2);
        if (cVar != null) {
            this.f7876c.b(this.f7875b, cVar);
        }
    }

    public final void d() {
        c cVar;
        Socket a2;
        synchronized (this.g) {
            cVar = this.k;
            a2 = a(true, false, false);
            if (this.k != null) {
                cVar = null;
            }
        }
        com.bytedance.sdk.a.b.a.c.a(a2);
        if (cVar != null) {
            this.f7876c.b(this.f7875b, cVar);
        }
    }

    public final boolean e() {
        if (this.f != null) {
            return true;
        }
        f.a aVar = this.e;
        return (aVar != null && aVar.a()) || this.i.a();
    }

    public final String toString() {
        c b2 = b();
        return b2 != null ? b2.toString() : this.f7874a.toString();
    }
}
