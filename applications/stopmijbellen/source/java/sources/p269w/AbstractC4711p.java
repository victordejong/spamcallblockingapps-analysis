package p269w;

import p258v.C4564c;
import p258v.C4566d;
/* renamed from: w.p */
/* loaded from: classes-dex2jar.jar:w/p.class */
public abstract class AbstractC4711p implements AbstractC4698d {

    /* renamed from: a */
    public int f14554a;

    /* renamed from: b */
    public C4566d f14555b;

    /* renamed from: c */
    public C4707m f14556c;

    /* renamed from: d */
    public int f14557d;

    /* renamed from: e */
    public C4701g f14558e = new C4701g(this);

    /* renamed from: f */
    public int f14559f = 0;

    /* renamed from: g */
    public boolean f14560g = false;

    /* renamed from: h */
    public C4700f f14561h = new C4700f(this);

    /* renamed from: i */
    public C4700f f14562i = new C4700f(this);

    /* renamed from: j */
    public int f14563j = 1;

    public AbstractC4711p(C4566d c4566d) {
        this.f14555b = c4566d;
    }

    @Override // p269w.AbstractC4698d
    /* renamed from: a */
    public void mo561a(AbstractC4698d abstractC4698d) {
    }

    /* renamed from: b */
    public final void m560b(C4700f c4700f, C4700f c4700f2, int i) {
        c4700f.f14537l.add(c4700f2);
        c4700f.f14531f = i;
        c4700f2.f14536k.add(c4700f);
    }

    /* renamed from: c */
    public final void m559c(C4700f c4700f, C4700f c4700f2, int i, C4701g c4701g) {
        c4700f.f14537l.add(c4700f2);
        c4700f.f14537l.add(this.f14558e);
        c4700f.f14533h = i;
        c4700f.f14534i = c4701g;
        c4700f2.f14536k.add(c4700f);
        c4701g.f14536k.add(c4700f);
    }

    /* renamed from: d */
    public abstract void mo558d();

    /* renamed from: e */
    public abstract void mo557e();

    /* renamed from: f */
    public abstract void mo556f();

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
    public final int m555g(int r4, int r5) {
        /*
            r3 = this;
            r0 = r5
            if (r0 != 0) goto L2f
            r0 = r3
            v.d r0 = r0.f14555b
            r6 = r0
            r0 = r6
            int r0 = r0.f14112v
            r7 = r0
            r0 = r6
            int r0 = r0.f14111u
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
            v.d r0 = r0.f14555b
            r6 = r0
            r0 = r6
            int r0 = r0.f14115y
            r7 = r0
            r0 = r6
            int r0 = r0.f14114x
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
        throw new UnsupportedOperationException("Method not decompiled: p269w.AbstractC4711p.m555g(int, int):int");
    }

    /* renamed from: h */
    public final C4700f m554h(C4564c c4564c) {
        C4564c c4564c2 = c4564c.f14035f;
        C4700f c4700f = null;
        if (c4564c2 == null) {
            return null;
        }
        C4566d c4566d = c4564c2.f14033d;
        int ordinal = c4564c2.f14034e.ordinal();
        if (ordinal == 1) {
            c4700f = c4566d.f14080d.f14561h;
        } else if (ordinal == 2) {
            c4700f = c4566d.f14082e.f14561h;
        } else if (ordinal == 3) {
            c4700f = c4566d.f14080d.f14562i;
        } else if (ordinal == 4) {
            c4700f = c4566d.f14082e.f14562i;
        } else if (ordinal == 5) {
            c4700f = c4566d.f14082e.f14546k;
        }
        return c4700f;
    }

    /* renamed from: i */
    public final C4700f m553i(C4564c c4564c, int i) {
        C4564c c4564c2 = c4564c.f14035f;
        if (c4564c2 == null) {
            return null;
        }
        C4566d c4566d = c4564c2.f14033d;
        C4706l c4706l = i == 0 ? c4566d.f14080d : c4566d.f14082e;
        int ordinal = c4564c2.f14034e.ordinal();
        return (ordinal == 1 || ordinal == 2) ? c4706l.f14561h : (ordinal == 3 || ordinal == 4) ? c4706l.f14562i : null;
    }

    /* renamed from: j */
    public long mo552j() {
        C4701g c4701g = this.f14558e;
        if (c4701g.f14535j) {
            return c4701g.f14532g;
        }
        return 0L;
    }

    /* renamed from: k */
    public abstract boolean mo551k();

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00aa, code lost:
        if (r0.f14554a == 3) goto L51;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m550l(p258v.C4564c r6, p258v.C4564c r7, int r8) {
        /*
            Method dump skipped, instructions count: 533
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p269w.AbstractC4711p.m550l(v.c, v.c, int):void");
    }
}
