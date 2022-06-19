package androidx.constraintlayout.p026a.p027a.p028a;

import androidx.constraintlayout.p026a.p027a.AbstractC0549i;
import androidx.constraintlayout.p026a.p027a.C0538d;
import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p;
import androidx.constraintlayout.p026a.p027a.p028a.C0519f;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.constraintlayout.a.a.a.n */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/n.class */
public final class C0529n extends AbstractC0533p {

    /* renamed from: a */
    public C0519f f1975a = new C0519f(this);

    /* renamed from: b */
    C0521g f1976b = null;

    /* renamed from: androidx.constraintlayout.a.a.a.n$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/n$1.class */
    static final /* synthetic */ class C05301 {

        /* renamed from: a */
        static final /* synthetic */ int[] f1977a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002c -> B:16:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0028 -> B:12:0x0013). Please submit an issue!!! */
        static {
            int[] iArr = new int[AbstractC0533p.EnumC0535a.m45314a().length];
            f1977a = iArr;
            try {
                iArr[AbstractC0533p.EnumC0535a.f2005b - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1977a[AbstractC0533p.EnumC0535a.f2006c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1977a[AbstractC0533p.EnumC0535a.f2007d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public C0529n(C0541e c0541e) {
        super(c0541e);
        this.f2000j.f1955e = C0519f.EnumC0520a.TOP;
        this.f2001k.f1955e = C0519f.EnumC0520a.BOTTOM;
        this.f1975a.f1955e = C0519f.EnumC0520a.BASELINE;
        this.f1998h = 1;
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: a */
    public final boolean mo45326a() {
        return this.f1996f != C0541e.EnumC0543a.MATCH_CONSTRAINT || this.f1994d.f2121p == 0;
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: c */
    public final void mo45318c() {
        this.f1995e = null;
        this.f2000j.m45354a();
        this.f2001k.m45354a();
        this.f1975a.m45354a();
        this.f1997g.m45354a();
        this.f1999i = false;
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p, androidx.constraintlayout.p026a.p027a.p028a.AbstractC0517d
    /* renamed from: d */
    public final void mo45317d() {
        int i;
        float f;
        float f2;
        float f3;
        if (C05301.f1977a[this.f2002l - 1] == 3) {
            m45320a(this.f1994d.f2050I, this.f1994d.f2052K, 1);
            return;
        }
        if (this.f1997g.f1953c && !this.f1997g.f1960j && this.f1996f == C0541e.EnumC0543a.MATCH_CONSTRAINT) {
            int i2 = this.f1994d.f2121p;
            if (i2 == 2) {
                C0541e c0541e = this.f1994d.f2060S;
                if (c0541e != null && c0541e.f2115j.f1997g.f1960j) {
                    this.f1997g.mo45352a((int) ((c0541e.f2115j.f1997g.f1957g * this.f1994d.f2128w) + 0.5f));
                }
            } else if (i2 == 3 && this.f1994d.f2114i.f1997g.f1960j) {
                int m45250u = this.f1994d.m45250u();
                if (m45250u == -1) {
                    f3 = this.f1994d.f2114i.f1997g.f1957g;
                    f2 = this.f1994d.f2063V;
                } else if (m45250u == 0) {
                    f = this.f1994d.f2114i.f1997g.f1957g * this.f1994d.f2063V;
                    i = (int) (f + 0.5f);
                    this.f1997g.mo45352a(i);
                } else if (m45250u != 1) {
                    i = 0;
                    this.f1997g.mo45352a(i);
                } else {
                    f3 = this.f1994d.f2114i.f1997g.f1957g;
                    f2 = this.f1994d.f2063V;
                }
                f = f3 / f2;
                i = (int) (f + 0.5f);
                this.f1997g.mo45352a(i);
            }
        }
        if (!this.f2000j.f1953c || !this.f2001k.f1953c) {
            return;
        }
        if (this.f2000j.f1960j && this.f2001k.f1960j && this.f1997g.f1960j) {
            return;
        }
        if (!this.f1997g.f1960j && this.f1996f == C0541e.EnumC0543a.MATCH_CONSTRAINT && this.f1994d.f2120o == 0 && !this.f1994d.m45247x()) {
            C0519f c0519f = this.f2000j.f1962l.get(0);
            C0519f c0519f2 = this.f2001k.f1962l.get(0);
            int i3 = c0519f.f1957g + this.f2000j.f1956f;
            int i4 = c0519f2.f1957g + this.f2001k.f1956f;
            this.f2000j.mo45352a(i3);
            this.f2001k.mo45352a(i4);
            this.f1997g.mo45352a(i4 - i3);
            return;
        }
        if (!this.f1997g.f1960j && this.f1996f == C0541e.EnumC0543a.MATCH_CONSTRAINT && this.f1993c == 1 && this.f2000j.f1962l.size() > 0 && this.f2001k.f1962l.size() > 0) {
            int i5 = (this.f2001k.f1962l.get(0).f1957g + this.f2001k.f1956f) - (this.f2000j.f1962l.get(0).f1957g + this.f2000j.f1956f);
            if (i5 < this.f1997g.f1963m) {
                this.f1997g.mo45352a(i5);
            } else {
                this.f1997g.mo45352a(this.f1997g.f1963m);
            }
        }
        if (!this.f1997g.f1960j || this.f2000j.f1962l.size() <= 0 || this.f2001k.f1962l.size() <= 0) {
            return;
        }
        C0519f c0519f3 = this.f2000j.f1962l.get(0);
        C0519f c0519f4 = this.f2001k.f1962l.get(0);
        int i6 = c0519f3.f1957g + this.f2000j.f1956f;
        int i7 = c0519f4.f1957g + this.f2001k.f1956f;
        float f4 = this.f1994d.f2089ai;
        if (c0519f3 == c0519f4) {
            i6 = c0519f3.f1957g;
            i7 = c0519f4.f1957g;
            f4 = 0.5f;
        }
        this.f2000j.mo45352a((int) (i6 + 0.5f + (((i7 - i6) - this.f1997g.f1957g) * f4)));
        this.f2001k.mo45352a(this.f2000j.f1957g + this.f1997g.f1957g);
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: e */
    public final void mo45316e() {
        if (this.f2000j.f1960j) {
            this.f1994d.m45274f(this.f2000j.f1957g);
        }
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: f */
    public final void mo45315f() {
        C0541e c0541e;
        C0541e c0541e2;
        if (this.f1994d.f2110e) {
            this.f1997g.mo45352a(this.f1994d.m45255p());
        }
        if (!this.f1997g.f1960j) {
            this.f1996f = this.f1994d.f2059R[1];
            if (this.f1994d.f2044C) {
                this.f1976b = new C0512a(this);
            }
            if (this.f1996f != C0541e.EnumC0543a.MATCH_CONSTRAINT) {
                if (this.f1996f == C0541e.EnumC0543a.MATCH_PARENT && (c0541e2 = this.f1994d.f2060S) != null && c0541e2.f2059R[1] == C0541e.EnumC0543a.FIXED) {
                    int m45255p = c0541e2.m45255p();
                    int m45301e = this.f1994d.f2050I.m45301e();
                    int m45301e2 = this.f1994d.f2052K.m45301e();
                    m45324a(this.f2000j, c0541e2.f2115j.f2000j, this.f1994d.f2050I.m45301e());
                    m45324a(this.f2001k, c0541e2.f2115j.f2001k, -this.f1994d.f2052K.m45301e());
                    this.f1997g.mo45352a((m45255p - m45301e) - m45301e2);
                    return;
                } else if (this.f1996f == C0541e.EnumC0543a.FIXED) {
                    this.f1997g.mo45352a(this.f1994d.m45255p());
                }
            }
        } else if (this.f1996f == C0541e.EnumC0543a.MATCH_PARENT && (c0541e = this.f1994d.f2060S) != null && c0541e.f2059R[1] == C0541e.EnumC0543a.FIXED) {
            m45324a(this.f2000j, c0541e.f2115j.f2000j, this.f1994d.f2050I.m45301e());
            m45324a(this.f2001k, c0541e.f2115j.f2001k, -this.f1994d.f2052K.m45301e());
            return;
        }
        if (this.f1997g.f1960j && this.f1994d.f2110e) {
            if (this.f1994d.f2057P[2].f2036f != null && this.f1994d.f2057P[3].f2036f != null) {
                if (this.f1994d.m45247x()) {
                    this.f2000j.f1956f = this.f1994d.f2057P[2].m45301e();
                    this.f2001k.f1956f = -this.f1994d.f2057P[3].m45301e();
                } else {
                    C0519f a = m45322a(this.f1994d.f2057P[2]);
                    if (a != null) {
                        m45324a(this.f2000j, a, this.f1994d.f2057P[2].m45301e());
                    }
                    C0519f a2 = m45322a(this.f1994d.f2057P[3]);
                    if (a2 != null) {
                        m45324a(this.f2001k, a2, -this.f1994d.f2057P[3].m45301e());
                    }
                    this.f2000j.f1952b = true;
                    this.f2001k.f1952b = true;
                }
                if (!this.f1994d.f2044C) {
                    return;
                }
                m45324a(this.f1975a, this.f2000j, this.f1994d.f2085ad);
                return;
            } else if (this.f1994d.f2057P[2].f2036f != null) {
                C0519f a3 = m45322a(this.f1994d.f2057P[2]);
                if (a3 == null) {
                    return;
                }
                m45324a(this.f2000j, a3, this.f1994d.f2057P[2].m45301e());
                m45324a(this.f2001k, this.f2000j, this.f1997g.f1957g);
                if (!this.f1994d.f2044C) {
                    return;
                }
                m45324a(this.f1975a, this.f2000j, this.f1994d.f2085ad);
                return;
            } else if (this.f1994d.f2057P[3].f2036f != null) {
                C0519f a4 = m45322a(this.f1994d.f2057P[3]);
                if (a4 != null) {
                    m45324a(this.f2001k, a4, -this.f1994d.f2057P[3].m45301e());
                    m45324a(this.f2000j, this.f2001k, -this.f1997g.f1957g);
                }
                if (!this.f1994d.f2044C) {
                    return;
                }
                m45324a(this.f1975a, this.f2000j, this.f1994d.f2085ad);
                return;
            } else if (this.f1994d.f2057P[4].f2036f != null) {
                C0519f a5 = m45322a(this.f1994d.f2057P[4]);
                if (a5 == null) {
                    return;
                }
                m45324a(this.f1975a, a5, 0);
                m45324a(this.f2000j, this.f1975a, -this.f1994d.f2085ad);
                m45324a(this.f2001k, this.f2000j, this.f1997g.f1957g);
                return;
            } else if ((this.f1994d instanceof AbstractC0549i) || this.f1994d.f2060S == null || this.f1994d.mo45193a(C0538d.EnumC0540a.CENTER).f2036f != null) {
                return;
            } else {
                m45324a(this.f2000j, this.f1994d.f2060S.f2115j.f2000j, this.f1994d.m45259n());
                m45324a(this.f2001k, this.f2000j, this.f1997g.f1957g);
                if (!this.f1994d.f2044C) {
                    return;
                }
                m45324a(this.f1975a, this.f2000j, this.f1994d.f2085ad);
                return;
            }
        }
        if (this.f1997g.f1960j || this.f1996f != C0541e.EnumC0543a.MATCH_CONSTRAINT) {
            this.f1997g.m45353a(this);
        } else {
            int i = this.f1994d.f2121p;
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
            } else if (i == 3 && !this.f1994d.m45247x() && this.f1994d.f2120o != 3) {
                C0521g c0521g2 = this.f1994d.f2114i.f1997g;
                this.f1997g.f1962l.add(c0521g2);
                c0521g2.f1961k.add(this.f1997g);
                this.f1997g.f1952b = true;
                this.f1997g.f1961k.add(this.f2000j);
                this.f1997g.f1961k.add(this.f2001k);
            }
        }
        if (this.f1994d.f2057P[2].f2036f != null && this.f1994d.f2057P[3].f2036f != null) {
            if (this.f1994d.m45247x()) {
                this.f2000j.f1956f = this.f1994d.f2057P[2].m45301e();
                this.f2001k.f1956f = -this.f1994d.f2057P[3].m45301e();
            } else {
                C0519f a6 = m45322a(this.f1994d.f2057P[2]);
                C0519f a7 = m45322a(this.f1994d.f2057P[3]);
                a6.m45353a(this);
                a7.m45353a(this);
                this.f2002l = AbstractC0533p.EnumC0535a.f2007d;
            }
            if (this.f1994d.f2044C) {
                m45323a(this.f1975a, this.f2000j, 1, this.f1976b);
            }
        } else if (this.f1994d.f2057P[2].f2036f != null) {
            C0519f a8 = m45322a(this.f1994d.f2057P[2]);
            if (a8 != null) {
                m45324a(this.f2000j, a8, this.f1994d.f2057P[2].m45301e());
                m45323a(this.f2001k, this.f2000j, 1, this.f1997g);
                if (this.f1994d.f2044C) {
                    m45323a(this.f1975a, this.f2000j, 1, this.f1976b);
                }
                if (this.f1996f == C0541e.EnumC0543a.MATCH_CONSTRAINT && this.f1994d.f2063V > BitmapDescriptorFactory.HUE_RED && this.f1994d.f2114i.f1996f == C0541e.EnumC0543a.MATCH_CONSTRAINT) {
                    this.f1994d.f2114i.f1997g.f1961k.add(this.f1997g);
                    this.f1997g.f1962l.add(this.f1994d.f2114i.f1997g);
                    this.f1997g.f1951a = this;
                }
            }
        } else if (this.f1994d.f2057P[3].f2036f != null) {
            C0519f a9 = m45322a(this.f1994d.f2057P[3]);
            if (a9 != null) {
                m45324a(this.f2001k, a9, -this.f1994d.f2057P[3].m45301e());
                m45323a(this.f2000j, this.f2001k, -1, this.f1997g);
                if (this.f1994d.f2044C) {
                    m45323a(this.f1975a, this.f2000j, 1, this.f1976b);
                }
            }
        } else if (this.f1994d.f2057P[4].f2036f != null) {
            C0519f a10 = m45322a(this.f1994d.f2057P[4]);
            if (a10 != null) {
                m45324a(this.f1975a, a10, 0);
                m45323a(this.f2000j, this.f1975a, -1, this.f1976b);
                m45323a(this.f2001k, this.f2000j, 1, this.f1997g);
            }
        } else if (!(this.f1994d instanceof AbstractC0549i) && this.f1994d.f2060S != null) {
            m45324a(this.f2000j, this.f1994d.f2060S.f2115j.f2000j, this.f1994d.m45259n());
            m45323a(this.f2001k, this.f2000j, 1, this.f1997g);
            if (this.f1994d.f2044C) {
                m45323a(this.f1975a, this.f2000j, 1, this.f1976b);
            }
            if (this.f1996f == C0541e.EnumC0543a.MATCH_CONSTRAINT && this.f1994d.f2063V > BitmapDescriptorFactory.HUE_RED && this.f1994d.f2114i.f1996f == C0541e.EnumC0543a.MATCH_CONSTRAINT) {
                this.f1994d.f2114i.f1997g.f1961k.add(this.f1997g);
                this.f1997g.f1962l.add(this.f1994d.f2114i.f1997g);
                this.f1997g.f1951a = this;
            }
        }
        if (this.f1997g.f1962l.size() != 0) {
            return;
        }
        this.f1997g.f1953c = true;
    }

    /* renamed from: g */
    public final void m45332g() {
        this.f1999i = false;
        this.f2000j.m45354a();
        this.f2000j.f1960j = false;
        this.f2001k.m45354a();
        this.f2001k.f1960j = false;
        this.f1975a.m45354a();
        this.f1975a.f1960j = false;
        this.f1997g.f1960j = false;
    }

    public final String toString() {
        return "VerticalRun " + this.f1994d.f2092al;
    }
}
