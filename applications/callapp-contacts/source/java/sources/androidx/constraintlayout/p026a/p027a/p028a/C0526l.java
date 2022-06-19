package androidx.constraintlayout.p026a.p027a.p028a;

import androidx.constraintlayout.p026a.p027a.AbstractC0549i;
import androidx.constraintlayout.p026a.p027a.C0538d;
import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p;
import androidx.constraintlayout.p026a.p027a.p028a.C0519f;
/* renamed from: androidx.constraintlayout.a.a.a.l */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/l.class */
public final class C0526l extends AbstractC0533p {

    /* renamed from: a */
    private static int[] f1965a = new int[2];

    /* renamed from: androidx.constraintlayout.a.a.a.l$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/l$1.class */
    static final /* synthetic */ class C05271 {

        /* renamed from: a */
        static final /* synthetic */ int[] f1966a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002c -> B:16:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0028 -> B:12:0x0013). Please submit an issue!!! */
        static {
            int[] iArr = new int[AbstractC0533p.EnumC0535a.m45314a().length];
            f1966a = iArr;
            try {
                iArr[AbstractC0533p.EnumC0535a.f2005b - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1966a[AbstractC0533p.EnumC0535a.f2006c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1966a[AbstractC0533p.EnumC0535a.f2007d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public C0526l(C0541e c0541e) {
        super(c0541e);
        this.f2000j.f1955e = C0519f.EnumC0520a.LEFT;
        this.f2001k.f1955e = C0519f.EnumC0520a.RIGHT;
        this.f1998h = 0;
    }

    /* renamed from: a */
    private static void m45337a(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 == 0) {
                iArr[0] = (int) ((i7 * f) + 0.5f);
                iArr[1] = i7;
                return;
            } else if (i5 != 1) {
                return;
            } else {
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f) + 0.5f);
                return;
            }
        }
        int i8 = (int) ((i7 * f) + 0.5f);
        int i9 = (int) ((i6 / f) + 0.5f);
        if (i8 <= i6) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else if (i9 > i7) {
        } else {
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: a */
    public final boolean mo45326a() {
        return this.f1996f != C0541e.EnumC0543a.MATCH_CONSTRAINT || this.f1994d.f2120o == 0;
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: c */
    public final void mo45318c() {
        this.f1995e = null;
        this.f2000j.m45354a();
        this.f2001k.m45354a();
        this.f1997g.m45354a();
        this.f1999i = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x050f, code lost:
        if (r0 != 1) goto L134;
     */
    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p, androidx.constraintlayout.p026a.p027a.p028a.AbstractC0517d
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo45317d() {
        /*
            Method dump skipped, instructions count: 2065
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.p026a.p027a.p028a.C0526l.mo45317d():void");
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: e */
    public final void mo45316e() {
        if (this.f2000j.f1960j) {
            this.f1994d.m45276e(this.f2000j.f1957g);
        }
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: f */
    public final void mo45315f() {
        C0541e c0541e;
        C0541e c0541e2;
        if (this.f1994d.f2110e) {
            this.f1997g.mo45352a(this.f1994d.m45257o());
        }
        if (!this.f1997g.f1960j) {
            this.f1996f = this.f1994d.f2059R[0];
            if (this.f1996f != C0541e.EnumC0543a.MATCH_CONSTRAINT) {
                if (this.f1996f == C0541e.EnumC0543a.MATCH_PARENT && (((c0541e2 = this.f1994d.f2060S) != null && c0541e2.f2059R[0] == C0541e.EnumC0543a.FIXED) || c0541e2.f2059R[0] == C0541e.EnumC0543a.MATCH_PARENT)) {
                    int m45257o = c0541e2.m45257o();
                    int m45301e = this.f1994d.f2049H.m45301e();
                    int m45301e2 = this.f1994d.f2051J.m45301e();
                    m45324a(this.f2000j, c0541e2.f2114i.f2000j, this.f1994d.f2049H.m45301e());
                    m45324a(this.f2001k, c0541e2.f2114i.f2001k, -this.f1994d.f2051J.m45301e());
                    this.f1997g.mo45352a((m45257o - m45301e) - m45301e2);
                    return;
                } else if (this.f1996f == C0541e.EnumC0543a.FIXED) {
                    this.f1997g.mo45352a(this.f1994d.m45257o());
                }
            }
        } else if (this.f1996f == C0541e.EnumC0543a.MATCH_PARENT && (((c0541e = this.f1994d.f2060S) != null && c0541e.f2059R[0] == C0541e.EnumC0543a.FIXED) || c0541e.f2059R[0] == C0541e.EnumC0543a.MATCH_PARENT)) {
            m45324a(this.f2000j, c0541e.f2114i.f2000j, this.f1994d.f2049H.m45301e());
            m45324a(this.f2001k, c0541e.f2114i.f2001k, -this.f1994d.f2051J.m45301e());
            return;
        }
        if (this.f1997g.f1960j && this.f1994d.f2110e) {
            if (this.f1994d.f2057P[0].f2036f != null && this.f1994d.f2057P[1].f2036f != null) {
                if (this.f1994d.m45248w()) {
                    this.f2000j.f1956f = this.f1994d.f2057P[0].m45301e();
                    this.f2001k.f1956f = -this.f1994d.f2057P[1].m45301e();
                    return;
                }
                C0519f a = m45322a(this.f1994d.f2057P[0]);
                if (a != null) {
                    m45324a(this.f2000j, a, this.f1994d.f2057P[0].m45301e());
                }
                C0519f a2 = m45322a(this.f1994d.f2057P[1]);
                if (a2 != null) {
                    m45324a(this.f2001k, a2, -this.f1994d.f2057P[1].m45301e());
                }
                this.f2000j.f1952b = true;
                this.f2001k.f1952b = true;
                return;
            } else if (this.f1994d.f2057P[0].f2036f != null) {
                C0519f a3 = m45322a(this.f1994d.f2057P[0]);
                if (a3 == null) {
                    return;
                }
                m45324a(this.f2000j, a3, this.f1994d.f2057P[0].m45301e());
                m45324a(this.f2001k, this.f2000j, this.f1997g.f1957g);
                return;
            } else if (this.f1994d.f2057P[1].f2036f != null) {
                C0519f a4 = m45322a(this.f1994d.f2057P[1]);
                if (a4 == null) {
                    return;
                }
                m45324a(this.f2001k, a4, -this.f1994d.f2057P[1].m45301e());
                m45324a(this.f2000j, this.f2001k, -this.f1997g.f1957g);
                return;
            } else if ((this.f1994d instanceof AbstractC0549i) || this.f1994d.f2060S == null || this.f1994d.mo45193a(C0538d.EnumC0540a.CENTER).f2036f != null) {
                return;
            } else {
                m45324a(this.f2000j, this.f1994d.f2060S.f2114i.f2000j, this.f1994d.m45261m());
                m45324a(this.f2001k, this.f2000j, this.f1997g.f1957g);
                return;
            }
        }
        if (this.f1996f == C0541e.EnumC0543a.MATCH_CONSTRAINT) {
            int i = this.f1994d.f2120o;
            if (i == 2) {
                C0541e c0541e3 = this.f1994d.f2060S;
                if (c0541e3 != null) {
                    C0521g c0521g = c0541e3.f2115j.f1997g;
                    this.f1997g.f1962l.add(c0521g);
                    c0521g.f1961k.add(this.f1997g);
                    this.f1997g.f1952b = true;
                    this.f1997g.f1961k.add(this.f2000j);
                    this.f1997g.f1961k.add(this.f2001k);
                }
            } else if (i == 3) {
                if (this.f1994d.f2121p == 3) {
                    this.f2000j.f1951a = this;
                    this.f2001k.f1951a = this;
                    this.f1994d.f2115j.f2000j.f1951a = this;
                    this.f1994d.f2115j.f2001k.f1951a = this;
                    this.f1997g.f1951a = this;
                    if (this.f1994d.m45247x()) {
                        this.f1997g.f1962l.add(this.f1994d.f2115j.f1997g);
                        this.f1994d.f2115j.f1997g.f1961k.add(this.f1997g);
                        this.f1994d.f2115j.f1997g.f1951a = this;
                        this.f1997g.f1962l.add(this.f1994d.f2115j.f2000j);
                        this.f1997g.f1962l.add(this.f1994d.f2115j.f2001k);
                        this.f1994d.f2115j.f2000j.f1961k.add(this.f1997g);
                        this.f1994d.f2115j.f2001k.f1961k.add(this.f1997g);
                    } else if (this.f1994d.m45248w()) {
                        this.f1994d.f2115j.f1997g.f1962l.add(this.f1997g);
                        this.f1997g.f1961k.add(this.f1994d.f2115j.f1997g);
                    } else {
                        this.f1994d.f2115j.f1997g.f1962l.add(this.f1997g);
                    }
                } else {
                    C0521g c0521g2 = this.f1994d.f2115j.f1997g;
                    this.f1997g.f1962l.add(c0521g2);
                    c0521g2.f1961k.add(this.f1997g);
                    this.f1994d.f2115j.f2000j.f1961k.add(this.f1997g);
                    this.f1994d.f2115j.f2001k.f1961k.add(this.f1997g);
                    this.f1997g.f1952b = true;
                    this.f1997g.f1961k.add(this.f2000j);
                    this.f1997g.f1961k.add(this.f2001k);
                    this.f2000j.f1962l.add(this.f1997g);
                    this.f2001k.f1962l.add(this.f1997g);
                }
            }
        }
        if (this.f1994d.f2057P[0].f2036f != null && this.f1994d.f2057P[1].f2036f != null) {
            if (this.f1994d.m45248w()) {
                this.f2000j.f1956f = this.f1994d.f2057P[0].m45301e();
                this.f2001k.f1956f = -this.f1994d.f2057P[1].m45301e();
                return;
            }
            C0519f a5 = m45322a(this.f1994d.f2057P[0]);
            C0519f a6 = m45322a(this.f1994d.f2057P[1]);
            a5.m45353a(this);
            a6.m45353a(this);
            this.f2002l = AbstractC0533p.EnumC0535a.f2007d;
        } else if (this.f1994d.f2057P[0].f2036f != null) {
            C0519f a7 = m45322a(this.f1994d.f2057P[0]);
            if (a7 == null) {
                return;
            }
            m45324a(this.f2000j, a7, this.f1994d.f2057P[0].m45301e());
            m45323a(this.f2001k, this.f2000j, 1, this.f1997g);
        } else if (this.f1994d.f2057P[1].f2036f != null) {
            C0519f a8 = m45322a(this.f1994d.f2057P[1]);
            if (a8 == null) {
                return;
            }
            m45324a(this.f2001k, a8, -this.f1994d.f2057P[1].m45301e());
            m45323a(this.f2000j, this.f2001k, -1, this.f1997g);
        } else if ((this.f1994d instanceof AbstractC0549i) || this.f1994d.f2060S == null) {
        } else {
            m45324a(this.f2000j, this.f1994d.f2060S.f2114i.f2000j, this.f1994d.m45261m());
            m45323a(this.f2001k, this.f2000j, 1, this.f1997g);
        }
    }

    /* renamed from: g */
    public final void m45336g() {
        this.f1999i = false;
        this.f2000j.m45354a();
        this.f2000j.f1960j = false;
        this.f2001k.m45354a();
        this.f2001k.f1960j = false;
        this.f1997g.f1960j = false;
    }

    public final String toString() {
        return "HorizontalRun " + this.f1994d.f2092al;
    }
}
