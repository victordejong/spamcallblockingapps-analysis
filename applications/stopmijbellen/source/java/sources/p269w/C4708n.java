package p269w;

import android.support.p012v4.media.C0082b;
import p237t.C4350g;
import p258v.AbstractC4569g;
import p258v.C4564c;
import p258v.C4566d;
/* renamed from: w.n */
/* loaded from: classes-dex2jar.jar:w/n.class */
public class C4708n extends AbstractC4711p {

    /* renamed from: k */
    public C4700f f14546k;

    /* renamed from: l */
    public C4701g f14547l = null;

    public C4708n(C4566d c4566d) {
        super(c4566d);
        C4700f c4700f = new C4700f(this);
        this.f14546k = c4700f;
        this.f14561h.f14530e = 6;
        this.f14562i.f14530e = 7;
        c4700f.f14530e = 8;
        this.f14559f = 1;
    }

    @Override // p269w.AbstractC4711p, p269w.AbstractC4698d
    /* renamed from: a */
    public void mo561a(AbstractC4698d abstractC4698d) {
        C4701g c4701g;
        int i;
        float f;
        float f2;
        float f3;
        if (C4350g.m1021c(this.f14563j) == 3) {
            C4566d c4566d = this.f14555b;
            m550l(c4566d.f14058K, c4566d.f14060M, 1);
            return;
        }
        C4701g c4701g2 = this.f14558e;
        if (c4701g2.f14528c && !c4701g2.f14535j && this.f14557d == 3) {
            C4566d c4566d2 = this.f14555b;
            int i2 = c4566d2.f14109s;
            if (i2 == 2) {
                C4566d c4566d3 = c4566d2.f14069V;
                if (c4566d3 != null) {
                    if (c4566d3.f14082e.f14558e.f14535j) {
                        c4701g2.mo583c((int) ((c4701g.f14532g * c4566d2.f14116z) + 0.5f));
                    }
                }
            } else if (i2 == 3) {
                C4701g c4701g3 = c4566d2.f14080d.f14558e;
                if (c4701g3.f14535j) {
                    int i3 = c4566d2.f14073Z;
                    if (i3 == -1) {
                        f3 = c4701g3.f14532g;
                        f2 = c4566d2.f14072Y;
                    } else if (i3 == 0) {
                        f = c4701g3.f14532g * c4566d2.f14072Y;
                        i = (int) (f + 0.5f);
                        c4701g2.mo583c(i);
                    } else if (i3 != 1) {
                        i = 0;
                        c4701g2.mo583c(i);
                    } else {
                        f3 = c4701g3.f14532g;
                        f2 = c4566d2.f14072Y;
                    }
                    f = f3 / f2;
                    i = (int) (f + 0.5f);
                    c4701g2.mo583c(i);
                }
            }
        }
        C4700f c4700f = this.f14561h;
        if (!c4700f.f14528c) {
            return;
        }
        C4700f c4700f2 = this.f14562i;
        if (!c4700f2.f14528c) {
            return;
        }
        if (c4700f.f14535j && c4700f2.f14535j && this.f14558e.f14535j) {
            return;
        }
        if (!this.f14558e.f14535j && this.f14557d == 3) {
            C4566d c4566d4 = this.f14555b;
            if (c4566d4.f14108r == 0 && !c4566d4.m824B()) {
                C4700f c4700f3 = this.f14561h.f14537l.get(0);
                C4700f c4700f4 = this.f14562i.f14537l.get(0);
                int i4 = c4700f3.f14532g;
                C4700f c4700f5 = this.f14561h;
                int i5 = i4 + c4700f5.f14531f;
                int i6 = c4700f4.f14532g + this.f14562i.f14531f;
                c4700f5.mo583c(i5);
                this.f14562i.mo583c(i6);
                this.f14558e.mo583c(i6 - i5);
                return;
            }
        }
        if (!this.f14558e.f14535j && this.f14557d == 3 && this.f14554a == 1 && this.f14561h.f14537l.size() > 0 && this.f14562i.f14537l.size() > 0) {
            int i7 = (this.f14562i.f14537l.get(0).f14532g + this.f14562i.f14531f) - (this.f14561h.f14537l.get(0).f14532g + this.f14561h.f14531f);
            C4701g c4701g4 = this.f14558e;
            int i8 = c4701g4.f14538m;
            if (i7 < i8) {
                c4701g4.mo583c(i7);
            } else {
                c4701g4.mo583c(i8);
            }
        }
        if (!this.f14558e.f14535j || this.f14561h.f14537l.size() <= 0 || this.f14562i.f14537l.size() <= 0) {
            return;
        }
        C4700f c4700f6 = this.f14561h.f14537l.get(0);
        C4700f c4700f7 = this.f14562i.f14537l.get(0);
        int i9 = c4700f6.f14532g;
        C4700f c4700f8 = this.f14561h;
        int i10 = c4700f8.f14531f;
        int i11 = c4700f7.f14532g;
        int i12 = this.f14562i.f14531f;
        float f4 = this.f14555b.f14087g0;
        if (c4700f6 == c4700f7) {
            f4 = 0.5f;
        } else {
            i9 = i10 + i9;
            i11 = i12 + i11;
        }
        c4700f8.mo583c((int) ((((i11 - i9) - this.f14558e.f14532g) * f4) + i9 + 0.5f));
        this.f14562i.mo583c(this.f14561h.f14532g + this.f14558e.f14532g);
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: d */
    public void mo558d() {
        C4566d c4566d;
        C4566d c4566d2;
        C4566d c4566d3;
        C4566d c4566d4 = this.f14555b;
        if (c4566d4.f14074a) {
            this.f14558e.mo583c(c4566d4.m803l());
        }
        if (!this.f14558e.f14535j) {
            this.f14557d = this.f14555b.m796t();
            if (this.f14555b.f14052E) {
                this.f14547l = new C4693a(this);
            }
            int i = this.f14557d;
            if (i != 3) {
                if (i == 4 && (c4566d3 = this.f14555b.f14069V) != null && c4566d3.m796t() == 1) {
                    int m803l = c4566d3.m803l();
                    int m832d = this.f14555b.f14058K.m832d();
                    int m832d2 = this.f14555b.f14060M.m832d();
                    m560b(this.f14561h, c4566d3.f14082e.f14561h, this.f14555b.f14058K.m832d());
                    m560b(this.f14562i, c4566d3.f14082e.f14562i, -this.f14555b.f14060M.m832d());
                    this.f14558e.mo583c((m803l - m832d) - m832d2);
                    return;
                } else if (this.f14557d == 1) {
                    this.f14558e.mo583c(this.f14555b.m803l());
                }
            }
        } else if (this.f14557d == 4 && (c4566d2 = this.f14555b.f14069V) != null && c4566d2.m796t() == 1) {
            m560b(this.f14561h, c4566d2.f14082e.f14561h, this.f14555b.f14058K.m832d());
            m560b(this.f14562i, c4566d2.f14082e.f14562i, -this.f14555b.f14060M.m832d());
            return;
        }
        C4701g c4701g = this.f14558e;
        boolean z = c4701g.f14535j;
        if (z) {
            C4566d c4566d5 = this.f14555b;
            if (c4566d5.f14074a) {
                C4564c[] c4564cArr = c4566d5.f14065R;
                if (c4564cArr[2].f14035f != null && c4564cArr[3].f14035f != null) {
                    if (c4566d5.m824B()) {
                        this.f14561h.f14531f = this.f14555b.f14065R[2].m832d();
                        this.f14562i.f14531f = -this.f14555b.f14065R[3].m832d();
                    } else {
                        C4700f m554h = m554h(this.f14555b.f14065R[2]);
                        if (m554h != null) {
                            C4700f c4700f = this.f14561h;
                            int m832d3 = this.f14555b.f14065R[2].m832d();
                            c4700f.f14537l.add(m554h);
                            c4700f.f14531f = m832d3;
                            m554h.f14536k.add(c4700f);
                        }
                        C4700f m554h2 = m554h(this.f14555b.f14065R[3]);
                        if (m554h2 != null) {
                            C4700f c4700f2 = this.f14562i;
                            int i2 = -this.f14555b.f14065R[3].m832d();
                            c4700f2.f14537l.add(m554h2);
                            c4700f2.f14531f = i2;
                            m554h2.f14536k.add(c4700f2);
                        }
                        this.f14561h.f14527b = true;
                        this.f14562i.f14527b = true;
                    }
                    C4566d c4566d6 = this.f14555b;
                    if (!c4566d6.f14052E) {
                        return;
                    }
                    m560b(this.f14546k, this.f14561h, c4566d6.f14079c0);
                    return;
                } else if (c4564cArr[2].f14035f != null) {
                    C4700f m554h3 = m554h(c4564cArr[2]);
                    if (m554h3 == null) {
                        return;
                    }
                    C4700f c4700f3 = this.f14561h;
                    int m832d4 = this.f14555b.f14065R[2].m832d();
                    c4700f3.f14537l.add(m554h3);
                    c4700f3.f14531f = m832d4;
                    m554h3.f14536k.add(c4700f3);
                    m560b(this.f14562i, this.f14561h, this.f14558e.f14532g);
                    C4566d c4566d7 = this.f14555b;
                    if (!c4566d7.f14052E) {
                        return;
                    }
                    m560b(this.f14546k, this.f14561h, c4566d7.f14079c0);
                    return;
                } else if (c4564cArr[3].f14035f != null) {
                    C4700f m554h4 = m554h(c4564cArr[3]);
                    if (m554h4 != null) {
                        C4700f c4700f4 = this.f14562i;
                        int i3 = -this.f14555b.f14065R[3].m832d();
                        c4700f4.f14537l.add(m554h4);
                        c4700f4.f14531f = i3;
                        m554h4.f14536k.add(c4700f4);
                        m560b(this.f14561h, this.f14562i, -this.f14558e.f14532g);
                    }
                    C4566d c4566d8 = this.f14555b;
                    if (!c4566d8.f14052E) {
                        return;
                    }
                    m560b(this.f14546k, this.f14561h, c4566d8.f14079c0);
                    return;
                } else if (c4564cArr[4].f14035f != null) {
                    C4700f m554h5 = m554h(c4564cArr[4]);
                    if (m554h5 == null) {
                        return;
                    }
                    C4700f c4700f5 = this.f14546k;
                    c4700f5.f14537l.add(m554h5);
                    c4700f5.f14531f = 0;
                    m554h5.f14536k.add(c4700f5);
                    m560b(this.f14561h, this.f14546k, -this.f14555b.f14079c0);
                    m560b(this.f14562i, this.f14561h, this.f14558e.f14532g);
                    return;
                } else if ((c4566d5 instanceof AbstractC4569g) || c4566d5.f14069V == null || c4566d5.mo769i(C4564c.EnumC4565a.CENTER).f14035f != null) {
                    return;
                } else {
                    C4566d c4566d9 = this.f14555b;
                    m560b(this.f14561h, c4566d9.f14069V.f14082e.f14561h, c4566d9.m793w());
                    m560b(this.f14562i, this.f14561h, this.f14558e.f14532g);
                    C4566d c4566d10 = this.f14555b;
                    if (!c4566d10.f14052E) {
                        return;
                    }
                    m560b(this.f14546k, this.f14561h, c4566d10.f14079c0);
                    return;
                }
            }
        }
        if (z || this.f14557d != 3) {
            c4701g.f14536k.add(this);
            if (c4701g.f14535j) {
                mo561a(this);
            }
        } else {
            C4566d c4566d11 = this.f14555b;
            int i4 = c4566d11.f14109s;
            if (i4 == 2) {
                C4566d c4566d12 = c4566d11.f14069V;
                if (c4566d12 != null) {
                    C4701g c4701g2 = c4566d12.f14082e.f14558e;
                    c4701g.f14537l.add(c4701g2);
                    c4701g2.f14536k.add(this.f14558e);
                    C4701g c4701g3 = this.f14558e;
                    c4701g3.f14527b = true;
                    c4701g3.f14536k.add(this.f14561h);
                    this.f14558e.f14536k.add(this.f14562i);
                }
            } else if (i4 == 3 && !c4566d11.m824B()) {
                C4566d c4566d13 = this.f14555b;
                if (c4566d13.f14108r != 3) {
                    C4701g c4701g4 = c4566d13.f14080d.f14558e;
                    this.f14558e.f14537l.add(c4701g4);
                    c4701g4.f14536k.add(this.f14558e);
                    C4701g c4701g5 = this.f14558e;
                    c4701g5.f14527b = true;
                    c4701g5.f14536k.add(this.f14561h);
                    this.f14558e.f14536k.add(this.f14562i);
                }
            }
        }
        C4566d c4566d14 = this.f14555b;
        C4564c[] c4564cArr2 = c4566d14.f14065R;
        if (c4564cArr2[2].f14035f != null && c4564cArr2[3].f14035f != null) {
            if (c4566d14.m824B()) {
                this.f14561h.f14531f = this.f14555b.f14065R[2].m832d();
                this.f14562i.f14531f = -this.f14555b.f14065R[3].m832d();
            } else {
                C4700f m554h6 = m554h(this.f14555b.f14065R[2]);
                C4700f m554h7 = m554h(this.f14555b.f14065R[3]);
                if (m554h6 != null) {
                    m554h6.f14536k.add(this);
                    if (m554h6.f14535j) {
                        mo561a(this);
                    }
                }
                if (m554h7 != null) {
                    m554h7.f14536k.add(this);
                    if (m554h7.f14535j) {
                        mo561a(this);
                    }
                }
                this.f14563j = 4;
            }
            if (this.f14555b.f14052E) {
                m559c(this.f14546k, this.f14561h, 1, this.f14547l);
            }
        } else if (c4564cArr2[2].f14035f != null) {
            C4700f m554h8 = m554h(c4564cArr2[2]);
            if (m554h8 != null) {
                C4700f c4700f6 = this.f14561h;
                int m832d5 = this.f14555b.f14065R[2].m832d();
                c4700f6.f14537l.add(m554h8);
                c4700f6.f14531f = m832d5;
                m554h8.f14536k.add(c4700f6);
                m559c(this.f14562i, this.f14561h, 1, this.f14558e);
                if (this.f14555b.f14052E) {
                    m559c(this.f14546k, this.f14561h, 1, this.f14547l);
                }
                if (this.f14557d == 3) {
                    C4566d c4566d15 = this.f14555b;
                    if (c4566d15.f14072Y > 0.0f) {
                        C4706l c4706l = c4566d15.f14080d;
                        if (c4706l.f14557d == 3) {
                            c4706l.f14558e.f14536k.add(this.f14558e);
                            this.f14558e.f14537l.add(this.f14555b.f14080d.f14558e);
                            this.f14558e.f14526a = this;
                        }
                    }
                }
            }
        } else if (c4564cArr2[3].f14035f != null) {
            C4700f m554h9 = m554h(c4564cArr2[3]);
            if (m554h9 != null) {
                C4700f c4700f7 = this.f14562i;
                int i5 = -this.f14555b.f14065R[3].m832d();
                c4700f7.f14537l.add(m554h9);
                c4700f7.f14531f = i5;
                m554h9.f14536k.add(c4700f7);
                m559c(this.f14561h, this.f14562i, -1, this.f14558e);
                if (this.f14555b.f14052E) {
                    m559c(this.f14546k, this.f14561h, 1, this.f14547l);
                }
            }
        } else if (c4564cArr2[4].f14035f != null) {
            C4700f m554h10 = m554h(c4564cArr2[4]);
            if (m554h10 != null) {
                C4700f c4700f8 = this.f14546k;
                c4700f8.f14537l.add(m554h10);
                c4700f8.f14531f = 0;
                m554h10.f14536k.add(c4700f8);
                m559c(this.f14561h, this.f14546k, -1, this.f14547l);
                m559c(this.f14562i, this.f14561h, 1, this.f14558e);
            }
        } else if (!(c4566d14 instanceof AbstractC4569g) && (c4566d = c4566d14.f14069V) != null) {
            m560b(this.f14561h, c4566d.f14082e.f14561h, c4566d14.m793w());
            m559c(this.f14562i, this.f14561h, 1, this.f14558e);
            if (this.f14555b.f14052E) {
                m559c(this.f14546k, this.f14561h, 1, this.f14547l);
            }
            if (this.f14557d == 3) {
                C4566d c4566d16 = this.f14555b;
                if (c4566d16.f14072Y > 0.0f) {
                    C4706l c4706l2 = c4566d16.f14080d;
                    if (c4706l2.f14557d == 3) {
                        c4706l2.f14558e.f14536k.add(this.f14558e);
                        this.f14558e.f14537l.add(this.f14555b.f14080d.f14558e);
                        this.f14558e.f14526a = this;
                    }
                }
            }
        }
        if (this.f14558e.f14537l.size() == 0) {
            this.f14558e.f14528c = true;
        }
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: e */
    public void mo557e() {
        C4700f c4700f = this.f14561h;
        if (c4700f.f14535j) {
            this.f14555b.f14077b0 = c4700f.f14532g;
        }
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: f */
    public void mo556f() {
        this.f14556c = null;
        this.f14561h.m584b();
        this.f14562i.m584b();
        this.f14546k.m584b();
        this.f14558e.m584b();
        this.f14560g = false;
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: k */
    public boolean mo551k() {
        return this.f14557d != 3 || this.f14555b.f14109s == 0;
    }

    /* renamed from: m */
    public void m566m() {
        this.f14560g = false;
        this.f14561h.m584b();
        this.f14561h.f14535j = false;
        this.f14562i.m584b();
        this.f14562i.f14535j = false;
        this.f14546k.m584b();
        this.f14546k.f14535j = false;
        this.f14558e.f14535j = false;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("VerticalRun ");
        m8752j.append(this.f14555b.f14093j0);
        return m8752j.toString();
    }
}
