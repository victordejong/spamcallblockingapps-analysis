package p1727n3.p1795i.p1799b.p1800h;

import p1727n3.p1795i.p1799b.p1800h.C26363d;
/* renamed from: n3.i.b.h.f$a */
/* loaded from: classes-dex2jar.jar:n3/i/b/h/f$a.class */
public class f$a {

    /* renamed from: a */
    public int f73750a;

    /* renamed from: d */
    public C26361c f73753d;

    /* renamed from: e */
    public C26361c f73754e;

    /* renamed from: f */
    public C26361c f73755f;

    /* renamed from: g */
    public C26361c f73756g;

    /* renamed from: h */
    public int f73757h;

    /* renamed from: i */
    public int f73758i;

    /* renamed from: j */
    public int f73759j;

    /* renamed from: k */
    public int f73760k;

    /* renamed from: q */
    public int f73766q;

    /* renamed from: r */
    public final /* synthetic */ f f73767r;

    /* renamed from: b */
    public C26363d f73751b = null;

    /* renamed from: c */
    public int f73752c = 0;

    /* renamed from: l */
    public int f73761l = 0;

    /* renamed from: m */
    public int f73762m = 0;

    /* renamed from: n */
    public int f73763n = 0;

    /* renamed from: o */
    public int f73764o = 0;

    /* renamed from: p */
    public int f73765p = 0;

    public f$a(f fVar, int i, C26361c c26361c, C26361c c26361c2, C26361c c26361c3, C26361c c26361c4, int i2) {
        this.f73767r = fVar;
        this.f73750a = 0;
        this.f73757h = 0;
        this.f73758i = 0;
        this.f73759j = 0;
        this.f73760k = 0;
        this.f73766q = 0;
        this.f73750a = i;
        this.f73753d = c26361c;
        this.f73754e = c26361c2;
        this.f73755f = c26361c3;
        this.f73756g = c26361c4;
        this.f73757h = ((k) fVar).N0;
        this.f73758i = ((k) fVar).J0;
        this.f73759j = ((k) fVar).O0;
        this.f73760k = ((k) fVar).K0;
        this.f73766q = i2;
    }

    /* renamed from: a */
    public void m2058a(C26363d c26363d) {
        C26363d.EnumC26364a enumC26364a = C26363d.EnumC26364a.MATCH_CONSTRAINT;
        int i = 0;
        if (this.f73750a == 0) {
            int a0 = this.f73767r.a0(c26363d, this.f73766q);
            if (c26363d.m2067r() == enumC26364a) {
                this.f73765p++;
                a0 = 0;
            }
            f fVar = this.f73767r;
            int i2 = fVar.g1;
            if (c26363d.f73712j0 == 8) {
                i2 = 0;
            }
            this.f73761l = a0 + i2 + this.f73761l;
            int Z = fVar.Z(c26363d, this.f73766q);
            if (this.f73751b == null || this.f73752c < Z) {
                this.f73751b = c26363d;
                this.f73752c = Z;
                this.f73762m = Z;
            }
        } else {
            int a02 = this.f73767r.a0(c26363d, this.f73766q);
            int Z2 = this.f73767r.Z(c26363d, this.f73766q);
            if (c26363d.m2063v() == enumC26364a) {
                this.f73765p++;
                Z2 = 0;
            }
            int i3 = this.f73767r.h1;
            if (c26363d.f73712j0 != 8) {
                i = i3;
            }
            this.f73762m = Z2 + i + this.f73762m;
            if (this.f73751b == null || this.f73752c < a02) {
                this.f73751b = c26363d;
                this.f73752c = a02;
                this.f73761l = a02;
            }
        }
        this.f73764o++;
    }

    /* renamed from: b */
    public void m2057b(boolean z, int i, boolean z2) {
        int i2;
        float f;
        int i3;
        C26363d c26363d;
        float f2;
        int i4;
        int i5 = this.f73764o;
        for (int i6 = 0; i6 < i5; i6++) {
            int i7 = this.f73763n + i6;
            f fVar = this.f73767r;
            if (i7 >= fVar.s1) {
                break;
            }
            C26363d c26363d2 = fVar.r1[i7];
            if (c26363d2 != null) {
                c26363d2.m2089H();
            }
        }
        if (i5 == 0 || this.f73751b == null) {
            return;
        }
        boolean z3 = z2 && i == 0;
        int i8 = 0;
        int i9 = -1;
        int i10 = -1;
        while (true) {
            i2 = i10;
            if (i8 >= i5) {
                break;
            }
            int i11 = this.f73763n + (z ? (i5 - 1) - i8 : i8);
            f fVar2 = this.f73767r;
            if (i11 >= fVar2.s1) {
                break;
            }
            int i12 = i9;
            int i13 = i2;
            if (fVar2.r1[i11].f73712j0 == 0) {
                int i14 = i9;
                if (i9 == -1) {
                    i14 = i8;
                }
                i13 = i8;
                i12 = i14;
            }
            i8++;
            i9 = i12;
            i10 = i13;
        }
        C26363d c26363d3 = null;
        C26363d c26363d4 = null;
        if (this.f73750a != 0) {
            C26363d c26363d5 = this.f73751b;
            f fVar3 = this.f73767r;
            c26363d5.f73738w0 = fVar3.U0;
            int i15 = this.f73757h;
            int i16 = i15;
            if (i > 0) {
                i16 = i15 + fVar3.g1;
            }
            if (z) {
                c26363d5.f73674H.m2107a(this.f73755f, i16);
                if (z2) {
                    c26363d5.f73670F.m2107a(this.f73753d, this.f73759j);
                }
                if (i > 0) {
                    this.f73755f.f73644d.f73670F.m2107a(c26363d5.f73674H, 0);
                }
            } else {
                c26363d5.f73670F.m2107a(this.f73753d, i16);
                if (z2) {
                    c26363d5.f73674H.m2107a(this.f73755f, this.f73759j);
                }
                if (i > 0) {
                    this.f73753d.f73644d.f73674H.m2107a(c26363d5.f73670F, 0);
                }
            }
            int i17 = 0;
            while (i17 < i5) {
                int i18 = this.f73763n + i17;
                f fVar4 = this.f73767r;
                if (i18 >= fVar4.s1) {
                    return;
                }
                C26363d c26363d6 = fVar4.r1[i18];
                if (i17 == 0) {
                    c26363d6.m2073j(c26363d6.f73672G, this.f73754e, this.f73758i);
                    f fVar5 = this.f73767r;
                    int i19 = fVar5.V0;
                    float f3 = fVar5.b1;
                    if (this.f73763n == 0) {
                        i3 = fVar5.X0;
                        if (i3 != -1) {
                            f = fVar5.d1;
                            c26363d6.f73740x0 = i3;
                            c26363d6.f73706g0 = f;
                        }
                    }
                    i3 = i19;
                    f = f3;
                    if (z2) {
                        int i20 = fVar5.Z0;
                        i3 = i19;
                        f = f3;
                        if (i20 != -1) {
                            f = fVar5.f1;
                            i3 = i20;
                        }
                    }
                    c26363d6.f73740x0 = i3;
                    c26363d6.f73706g0 = f;
                }
                if (i17 == i5 - 1) {
                    c26363d6.m2073j(c26363d6.f73675I, this.f73756g, this.f73760k);
                }
                if (c26363d3 != null) {
                    c26363d6.f73672G.m2107a(c26363d3.f73675I, this.f73767r.h1);
                    if (i17 == i9) {
                        c26363d6.f73672G.m2094n(this.f73758i);
                    }
                    c26363d3.f73675I.m2107a(c26363d6.f73672G, 0);
                    if (i17 == i2 + 1) {
                        c26363d3.f73675I.m2094n(this.f73760k);
                    }
                }
                if (c26363d6 != c26363d5) {
                    if (z) {
                        int i21 = this.f73767r.i1;
                        if (i21 == 0) {
                            c26363d6.f73674H.m2107a(c26363d5.f73674H, 0);
                        } else if (i21 == 1) {
                            c26363d6.f73670F.m2107a(c26363d5.f73670F, 0);
                        } else if (i21 == 2) {
                            c26363d6.f73670F.m2107a(c26363d5.f73670F, 0);
                            c26363d6.f73674H.m2107a(c26363d5.f73674H, 0);
                        }
                    } else {
                        int i22 = this.f73767r.i1;
                        if (i22 == 0) {
                            c26363d6.f73670F.m2107a(c26363d5.f73670F, 0);
                        } else if (i22 == 1) {
                            c26363d6.f73674H.m2107a(c26363d5.f73674H, 0);
                        } else if (i22 == 2) {
                            if (z3) {
                                c26363d6.f73670F.m2107a(this.f73753d, this.f73757h);
                                c26363d6.f73674H.m2107a(this.f73755f, this.f73759j);
                            } else {
                                c26363d6.f73670F.m2107a(c26363d5.f73670F, 0);
                                c26363d6.f73674H.m2107a(c26363d5.f73674H, 0);
                            }
                        }
                    }
                }
                i17++;
                c26363d3 = c26363d6;
            }
            return;
        }
        C26363d c26363d7 = this.f73751b;
        f fVar6 = this.f73767r;
        c26363d7.f73740x0 = fVar6.V0;
        int i23 = this.f73758i;
        int i24 = i23;
        if (i > 0) {
            i24 = i23 + fVar6.h1;
        }
        c26363d7.f73672G.m2107a(this.f73754e, i24);
        if (z2) {
            c26363d7.f73675I.m2107a(this.f73756g, this.f73760k);
        }
        if (i > 0) {
            this.f73754e.f73644d.f73675I.m2107a(c26363d7.f73672G, 0);
        }
        if (this.f73767r.j1 == 3 && !c26363d7.f73660A) {
            for (int i25 = 0; i25 < i5; i25++) {
                int i26 = this.f73763n + (z ? (i5 - 1) - i25 : i25);
                f fVar7 = this.f73767r;
                if (i26 >= fVar7.s1) {
                    break;
                }
                c26363d = fVar7.r1[i26];
                if (c26363d.f73660A) {
                    break;
                }
            }
        }
        c26363d = c26363d7;
        int i27 = 0;
        while (i27 < i5) {
            int i28 = z ? (i5 - 1) - i27 : i27;
            int i29 = this.f73763n + i28;
            f fVar8 = this.f73767r;
            if (i29 >= fVar8.s1) {
                return;
            }
            C26363d c26363d8 = fVar8.r1[i29];
            if (i27 == 0) {
                c26363d8.m2073j(c26363d8.f73670F, this.f73753d, this.f73757h);
            }
            if (i28 == 0) {
                f fVar9 = this.f73767r;
                int i30 = fVar9.U0;
                float f4 = fVar9.a1;
                if (this.f73763n == 0) {
                    i4 = fVar9.W0;
                    if (i4 != -1) {
                        f2 = fVar9.c1;
                        c26363d8.f73738w0 = i4;
                        c26363d8.f73704f0 = f2;
                    }
                }
                i4 = i30;
                f2 = f4;
                if (z2) {
                    int i31 = fVar9.Y0;
                    i4 = i30;
                    f2 = f4;
                    if (i31 != -1) {
                        f2 = fVar9.e1;
                        i4 = i31;
                    }
                }
                c26363d8.f73738w0 = i4;
                c26363d8.f73704f0 = f2;
            }
            if (i27 == i5 - 1) {
                c26363d8.m2073j(c26363d8.f73674H, this.f73755f, this.f73759j);
            }
            if (c26363d4 != null) {
                c26363d8.f73670F.m2107a(c26363d4.f73674H, this.f73767r.g1);
                if (i27 == i9) {
                    c26363d8.f73670F.m2094n(this.f73757h);
                }
                c26363d4.f73674H.m2107a(c26363d8.f73670F, 0);
                if (i27 == i2 + 1) {
                    c26363d4.f73674H.m2094n(this.f73759j);
                }
            }
            if (c26363d8 != c26363d7) {
                int i32 = this.f73767r.j1;
                if (i32 == 3 && c26363d.f73660A && c26363d8 != c26363d && c26363d8.f73660A) {
                    c26363d8.f73676J.m2107a(c26363d.f73676J, 0);
                } else if (i32 == 0) {
                    c26363d8.f73672G.m2107a(c26363d7.f73672G, 0);
                } else if (i32 == 1) {
                    c26363d8.f73675I.m2107a(c26363d7.f73675I, 0);
                } else if (z3) {
                    c26363d8.f73672G.m2107a(this.f73754e, this.f73758i);
                    c26363d8.f73675I.m2107a(this.f73756g, this.f73760k);
                } else {
                    c26363d8.f73672G.m2107a(c26363d7.f73672G, 0);
                    c26363d8.f73675I.m2107a(c26363d7.f73675I, 0);
                }
            }
            i27++;
            c26363d4 = c26363d8;
        }
    }

    /* renamed from: c */
    public int m2056c() {
        return this.f73750a == 1 ? this.f73762m - this.f73767r.h1 : this.f73762m;
    }

    /* renamed from: d */
    public int m2055d() {
        return this.f73750a == 0 ? this.f73761l - this.f73767r.g1 : this.f73761l;
    }

    /* renamed from: e */
    public void m2054e(int i) {
        C26363d.EnumC26364a enumC26364a = C26363d.EnumC26364a.FIXED;
        C26363d.EnumC26364a enumC26364a2 = C26363d.EnumC26364a.MATCH_CONSTRAINT;
        int i2 = this.f73765p;
        if (i2 == 0) {
            return;
        }
        int i3 = this.f73764o;
        int i4 = i / i2;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = this.f73763n;
            f fVar = this.f73767r;
            if (i6 + i5 >= fVar.s1) {
                break;
            }
            C26363d c26363d = fVar.r1[i6 + i5];
            if (this.f73750a == 0) {
                if (c26363d != null && c26363d.m2067r() == enumC26364a2 && c26363d.f73715l == 0) {
                    this.f73767r.Y(c26363d, enumC26364a, i4, c26363d.m2063v(), c26363d.m2068q());
                }
            } else if (c26363d != null && c26363d.m2063v() == enumC26364a2 && c26363d.f73717m == 0) {
                this.f73767r.Y(c26363d, c26363d.m2067r(), c26363d.m2062w(), enumC26364a, i4);
            }
        }
        this.f73761l = 0;
        this.f73762m = 0;
        this.f73751b = null;
        this.f73752c = 0;
        int i7 = this.f73764o;
        for (int i8 = 0; i8 < i7; i8++) {
            int i9 = this.f73763n + i8;
            f fVar2 = this.f73767r;
            if (i9 >= fVar2.s1) {
                return;
            }
            C26363d c26363d2 = fVar2.r1[i9];
            if (this.f73750a == 0) {
                int m2062w = c26363d2.m2062w();
                f fVar3 = this.f73767r;
                int i10 = fVar3.g1;
                if (c26363d2.f73712j0 == 8) {
                    i10 = 0;
                }
                this.f73761l = m2062w + i10 + this.f73761l;
                int Z = fVar3.Z(c26363d2, this.f73766q);
                if (this.f73751b == null || this.f73752c < Z) {
                    this.f73751b = c26363d2;
                    this.f73752c = Z;
                    this.f73762m = Z;
                }
            } else {
                int a0 = fVar2.a0(c26363d2, this.f73766q);
                int Z2 = this.f73767r.Z(c26363d2, this.f73766q);
                int i11 = this.f73767r.h1;
                if (c26363d2.f73712j0 == 8) {
                    i11 = 0;
                }
                this.f73762m = Z2 + i11 + this.f73762m;
                if (this.f73751b == null || this.f73752c < a0) {
                    this.f73751b = c26363d2;
                    this.f73752c = a0;
                    this.f73761l = a0;
                }
            }
        }
    }

    /* renamed from: f */
    public void m2053f(int i, C26361c c26361c, C26361c c26361c2, C26361c c26361c3, C26361c c26361c4, int i2, int i3, int i4, int i5, int i6) {
        this.f73750a = i;
        this.f73753d = c26361c;
        this.f73754e = c26361c2;
        this.f73755f = c26361c3;
        this.f73756g = c26361c4;
        this.f73757h = i2;
        this.f73758i = i3;
        this.f73759j = i4;
        this.f73760k = i5;
        this.f73766q = i6;
    }
}
