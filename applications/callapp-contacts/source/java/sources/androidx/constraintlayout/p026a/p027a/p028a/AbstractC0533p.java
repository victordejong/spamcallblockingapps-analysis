package androidx.constraintlayout.p026a.p027a.p028a;

import androidx.constraintlayout.p026a.p027a.C0538d;
import androidx.constraintlayout.p026a.p027a.C0541e;
/* renamed from: androidx.constraintlayout.a.a.a.p */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/p.class */
public abstract class AbstractC0533p implements AbstractC0517d {

    /* renamed from: c */
    public int f1993c;

    /* renamed from: d */
    public C0541e f1994d;

    /* renamed from: e */
    C0528m f1995e;

    /* renamed from: f */
    protected C0541e.EnumC0543a f1996f;

    /* renamed from: g */
    public C0521g f1997g = new C0521g(this);

    /* renamed from: h */
    public int f1998h = 0;

    /* renamed from: i */
    public boolean f1999i = false;

    /* renamed from: j */
    public C0519f f2000j = new C0519f(this);

    /* renamed from: k */
    public C0519f f2001k = new C0519f(this);

    /* renamed from: l */
    protected int f2002l = EnumC0535a.f2004a;

    /* renamed from: androidx.constraintlayout.a.a.a.p$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/p$1.class */
    public static final /* synthetic */ class C05341 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2003a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[C0538d.EnumC0540a.values().length];
            f2003a = iArr;
            try {
                iArr[C0538d.EnumC0540a.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2003a[C0538d.EnumC0540a.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2003a[C0538d.EnumC0540a.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2003a[C0538d.EnumC0540a.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2003a[C0538d.EnumC0540a.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.a.a.a.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/p$a.class */
    public static final class EnumC0535a extends Enum<EnumC0535a> {

        /* renamed from: a */
        public static final int f2004a = 1;

        /* renamed from: b */
        public static final int f2005b = 2;

        /* renamed from: c */
        public static final int f2006c = 3;

        /* renamed from: d */
        public static final int f2007d = 4;

        /* renamed from: e */
        private static final /* synthetic */ int[] f2008e = {1, 2, 3, 4};

        private EnumC0535a(String str, int i) {
            super(str, i);
        }

        /* renamed from: a */
        public static int[] m45314a() {
            return (int[]) f2008e.clone();
        }
    }

    public AbstractC0533p(C0541e c0541e) {
        this.f1994d = c0541e;
    }

    /* renamed from: a */
    public static C0519f m45322a(C0538d c0538d) {
        if (c0538d.f2036f == null) {
            return null;
        }
        C0541e c0541e = c0538d.f2036f.f2034d;
        int i = C05341.f2003a[c0538d.f2036f.f2035e.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? null : c0541e.f2115j.f2001k : c0541e.f2115j.f1975a : c0541e.f2115j.f2000j : c0541e.f2114i.f2001k : c0541e.f2114i.f2000j;
    }

    /* renamed from: a */
    public static C0519f m45321a(C0538d c0538d, int i) {
        C0519f c0519f;
        if (c0538d.f2036f == null) {
            return null;
        }
        C0541e c0541e = c0538d.f2036f.f2034d;
        C0526l c0526l = i == 0 ? c0541e.f2114i : c0541e.f2115j;
        int i2 = C05341.f2003a[c0538d.f2036f.f2035e.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 5) {
                        c0519f = null;
                        return c0519f;
                    }
                }
            }
            c0519f = c0526l.f2001k;
            return c0519f;
        }
        c0519f = c0526l.f2000j;
        return c0519f;
    }

    /* renamed from: a */
    public static void m45324a(C0519f c0519f, C0519f c0519f2, int i) {
        c0519f.f1962l.add(c0519f2);
        c0519f.f1956f = i;
        c0519f2.f1961k.add(c0519f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004e, code lost:
        if (r5 != r4) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0051, code lost:
        r6 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
        if (r5 != r4) goto L14;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m45325a(int r4, int r5) {
        /*
            r3 = this;
            r0 = r5
            if (r0 != 0) goto L2c
            r0 = r3
            androidx.constraintlayout.a.a.e r0 = r0.f1994d
            int r0 = r0.f2124s
            r6 = r0
            r0 = r3
            androidx.constraintlayout.a.a.e r0 = r0.f1994d
            int r0 = r0.f2123r
            r1 = r4
            int r0 = java.lang.Math.max(r0, r1)
            r5 = r0
            r0 = r6
            if (r0 <= 0) goto L22
            r0 = r6
            r1 = r4
            int r0 = java.lang.Math.min(r0, r1)
            r5 = r0
        L22:
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = r4
            if (r0 == r1) goto L53
            goto L51
        L2c:
            r0 = r3
            androidx.constraintlayout.a.a.e r0 = r0.f1994d
            int r0 = r0.f2127v
            r6 = r0
            r0 = r3
            androidx.constraintlayout.a.a.e r0 = r0.f1994d
            int r0 = r0.f2126u
            r1 = r4
            int r0 = java.lang.Math.max(r0, r1)
            r5 = r0
            r0 = r6
            if (r0 <= 0) goto L4a
            r0 = r6
            r1 = r4
            int r0 = java.lang.Math.min(r0, r1)
            r5 = r0
        L4a:
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = r4
            if (r0 == r1) goto L53
        L51:
            r0 = r5
            r6 = r0
        L53:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p.m45325a(int, int):int");
    }

    /* renamed from: a */
    public final void m45323a(C0519f c0519f, C0519f c0519f2, int i, C0521g c0521g) {
        c0519f.f1962l.add(c0519f2);
        c0519f.f1962l.add(this.f1997g);
        c0519f.f1958h = i;
        c0519f.f1959i = c0521g;
        c0519f2.f1961k.add(c0519f);
        c0521g.f1961k.add(c0519f);
    }

    /* renamed from: a */
    public final void m45320a(C0538d c0538d, C0538d c0538d2, int i) {
        C0526l c0526l;
        C0529n c0529n;
        C0519f m45322a = m45322a(c0538d);
        C0519f m45322a2 = m45322a(c0538d2);
        if (!m45322a.f1960j || !m45322a2.f1960j) {
            return;
        }
        int m45301e = m45322a.f1957g + c0538d.m45301e();
        int m45301e2 = m45322a2.f1957g - c0538d2.m45301e();
        int i2 = m45301e2 - m45301e;
        if (!this.f1997g.f1960j && this.f1996f == C0541e.EnumC0543a.MATCH_CONSTRAINT) {
            int i3 = this.f1993c;
            if (i3 == 0) {
                this.f1997g.mo45352a(m45325a(i2, i));
            } else if (i3 == 1) {
                this.f1997g.mo45352a(Math.min(m45325a(this.f1997g.f1963m, i), i2));
            } else if (i3 == 2) {
                C0541e c0541e = this.f1994d.f2060S;
                if (c0541e != null) {
                    if ((i == 0 ? c0541e.f2114i : c0541e.f2115j).f1997g.f1960j) {
                        C0541e c0541e2 = this.f1994d;
                        this.f1997g.mo45352a(m45325a((int) ((c0526l.f1997g.f1957g * (i == 0 ? c0541e2.f2125t : c0541e2.f2128w)) + 0.5f), i));
                    }
                }
            } else if (i3 == 3 && (this.f1994d.f2114i.f1996f != C0541e.EnumC0543a.MATCH_CONSTRAINT || this.f1994d.f2114i.f1993c != 3 || this.f1994d.f2115j.f1996f != C0541e.EnumC0543a.MATCH_CONSTRAINT || this.f1994d.f2115j.f1993c != 3)) {
                C0541e c0541e3 = this.f1994d;
                if ((i == 0 ? c0541e3.f2115j : c0541e3.f2114i).f1997g.f1960j) {
                    float f = this.f1994d.f2063V;
                    this.f1997g.mo45352a(i == 1 ? (int) ((c0529n.f1997g.f1957g / f) + 0.5f) : (int) ((f * c0529n.f1997g.f1957g) + 0.5f));
                }
            }
        }
        if (!this.f1997g.f1960j) {
            return;
        }
        if (this.f1997g.f1957g == i2) {
            this.f2000j.mo45352a(m45301e);
            this.f2001k.mo45352a(m45301e2);
            return;
        }
        C0541e c0541e4 = this.f1994d;
        float f2 = i == 0 ? c0541e4.f2088ah : c0541e4.f2089ai;
        int i4 = m45301e;
        int i5 = m45301e2;
        if (m45322a == m45322a2) {
            i4 = m45322a.f1957g;
            i5 = m45322a2.f1957g;
            f2 = 0.5f;
        }
        this.f2000j.mo45352a((int) (i4 + 0.5f + (((i5 - i4) - this.f1997g.f1957g) * f2)));
        this.f2001k.mo45352a(this.f2000j.f1957g + this.f1997g.f1957g);
    }

    /* renamed from: a */
    public abstract boolean mo45326a();

    /* renamed from: b */
    public long mo45319b() {
        if (this.f1997g.f1960j) {
            return this.f1997g.f1957g;
        }
        return 0L;
    }

    /* renamed from: c */
    public abstract void mo45318c();

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0517d
    /* renamed from: d */
    public void mo45317d() {
    }

    /* renamed from: e */
    public abstract void mo45316e();

    /* renamed from: f */
    public abstract void mo45315f();
}
