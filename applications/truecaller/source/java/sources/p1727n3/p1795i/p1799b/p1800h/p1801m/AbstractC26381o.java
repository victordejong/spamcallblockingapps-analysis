package p1727n3.p1795i.p1799b.p1800h.p1801m;

import p1727n3.p1795i.p1799b.p1800h.C26361c;
import p1727n3.p1795i.p1799b.p1800h.C26363d;
/* renamed from: n3.i.b.h.m.o */
/* loaded from: classes-dex2jar.jar:n3/i/b/h/m/o.class */
public abstract class AbstractC26381o implements AbstractC26373d {

    /* renamed from: a */
    public int f73830a;

    /* renamed from: b */
    public C26363d f73831b;

    /* renamed from: c */
    public C26378l f73832c;

    /* renamed from: d */
    public C26363d.EnumC26364a f73833d;

    /* renamed from: e */
    public g f73834e = new g(this);

    /* renamed from: f */
    public int f73835f = 0;

    /* renamed from: g */
    public boolean f73836g = false;

    /* renamed from: h */
    public C26375f f73837h = new C26375f(this);

    /* renamed from: i */
    public C26375f f73838i = new C26375f(this);

    /* renamed from: j */
    public EnumC26382a f73839j = EnumC26382a.NONE;

    /* renamed from: n3.i.b.h.m.o$a */
    /* loaded from: classes-dex2jar.jar:n3/i/b/h/m/o$a.class */
    public enum EnumC26382a {
        NONE,
        START,
        END,
        CENTER
    }

    public AbstractC26381o(C26363d c26363d) {
        this.f73831b = c26363d;
    }

    @Override // p1727n3.p1795i.p1799b.p1800h.p1801m.AbstractC26373d
    /* renamed from: a */
    public void mo2009a(AbstractC26373d abstractC26373d) {
    }

    /* renamed from: b */
    public final void m2008b(C26375f c26375f, C26375f c26375f2, int i) {
        c26375f.f73810l.add(c26375f2);
        c26375f.f73804f = i;
        c26375f2.f73809k.add(c26375f);
    }

    /* renamed from: c */
    public final void m2007c(C26375f c26375f, C26375f c26375f2, int i, g gVar) {
        c26375f.f73810l.add(c26375f2);
        c26375f.f73810l.add(this.f73834e);
        c26375f.f73806h = i;
        c26375f.f73807i = gVar;
        c26375f2.f73809k.add(c26375f);
        gVar.f73809k.add(c26375f);
    }

    /* renamed from: d */
    public abstract void m2006d();

    /* renamed from: e */
    public abstract void m2005e();

    /* renamed from: f */
    public abstract void m2004f();

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0054, code lost:
        if (r5 != r4) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0057, code lost:
        r7 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0029, code lost:
        if (r5 != r4) goto L14;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m2003g(int r4, int r5) {
        /*
            r3 = this;
            r0 = r5
            if (r0 != 0) goto L2f
            r0 = r3
            n3.i.b.h.d r0 = r0.f73831b
            r6 = r0
            r0 = r6
            int r0 = r0.f73723p
            r7 = r0
            r0 = r6
            int r0 = r0.f73721o
            r1 = r4
            int r0 = java.lang.Math.max(r0, r1)
            r5 = r0
            r0 = r7
            if (r0 <= 0) goto L24
            r0 = r7
            r1 = r4
            int r0 = java.lang.Math.min(r0, r1)
            r5 = r0
        L24:
            r0 = r4
            r7 = r0
            r0 = r5
            r1 = r4
            if (r0 == r1) goto L5a
            goto L57
        L2f:
            r0 = r3
            n3.i.b.h.d r0 = r0.f73831b
            r6 = r0
            r0 = r6
            int r0 = r0.f73729s
            r7 = r0
            r0 = r6
            int r0 = r0.f73727r
            r1 = r4
            int r0 = java.lang.Math.max(r0, r1)
            r5 = r0
            r0 = r7
            if (r0 <= 0) goto L4f
            r0 = r7
            r1 = r4
            int r0 = java.lang.Math.min(r0, r1)
            r5 = r0
        L4f:
            r0 = r4
            r7 = r0
            r0 = r5
            r1 = r4
            if (r0 == r1) goto L5a
        L57:
            r0 = r5
            r7 = r0
        L5a:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1795i.p1799b.p1800h.p1801m.AbstractC26381o.m2003g(int, int):int");
    }

    /* renamed from: h */
    public final C26375f m2002h(C26361c c26361c) {
        C26361c c26361c2 = c26361c.f73646f;
        C26375f c26375f = null;
        if (c26361c2 == null) {
            return null;
        }
        C26363d c26363d = c26361c2.f73644d;
        int ordinal = c26361c2.f73645e.ordinal();
        if (ordinal == 1) {
            c26375f = c26363d.f73699d.f73837h;
        } else if (ordinal == 2) {
            c26375f = c26363d.f73701e.f73837h;
        } else if (ordinal == 3) {
            c26375f = c26363d.f73699d.f73838i;
        } else if (ordinal == 4) {
            c26375f = c26363d.f73701e.f73838i;
        } else if (ordinal == 5) {
            c26375f = c26363d.f73701e.k;
        }
        return c26375f;
    }

    /* renamed from: i */
    public final C26375f m2001i(C26361c c26361c, int i) {
        C26361c c26361c2 = c26361c.f73646f;
        if (c26361c2 == null) {
            return null;
        }
        C26363d c26363d = c26361c2.f73644d;
        k kVar = i == 0 ? c26363d.f73699d : c26363d.f73701e;
        int ordinal = c26361c2.f73645e.ordinal();
        return (ordinal == 1 || ordinal == 2) ? kVar.f73837h : (ordinal == 3 || ordinal == 4) ? kVar.f73838i : null;
    }

    /* renamed from: j */
    public long m2000j() {
        g gVar = this.f73834e;
        if (gVar.f73808j) {
            return gVar.f73805g;
        }
        return 0L;
    }

    /* renamed from: k */
    public abstract boolean m1999k();

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b4, code lost:
        if (r0.f73830a == 3) goto L51;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1998l(p1727n3.p1795i.p1799b.p1800h.C26361c r6, p1727n3.p1795i.p1799b.p1800h.C26361c r7, int r8) {
        /*
            Method dump skipped, instructions count: 543
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1795i.p1799b.p1800h.p1801m.AbstractC26381o.m1998l(n3.i.b.h.c, n3.i.b.h.c, int):void");
    }
}
