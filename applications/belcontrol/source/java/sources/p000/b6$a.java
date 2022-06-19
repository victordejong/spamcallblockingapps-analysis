package p000;

import z5;
/* renamed from: b6$a */
/* loaded from: classes-dex2jar.jar:b6$a.class */
public class b6$a {

    /* renamed from: a */
    public int f1790a;

    /* renamed from: d */
    public y5 f1793d;

    /* renamed from: e */
    public y5 f1794e;

    /* renamed from: f */
    public y5 f1795f;

    /* renamed from: g */
    public y5 f1796g;

    /* renamed from: h */
    public int f1797h;

    /* renamed from: i */
    public int f1798i;

    /* renamed from: j */
    public int f1799j;

    /* renamed from: k */
    public int f1800k;

    /* renamed from: q */
    public int f1806q;

    /* renamed from: r */
    public final /* synthetic */ b6 f1807r;

    /* renamed from: b */
    public z5 f1791b = null;

    /* renamed from: c */
    public int f1792c = 0;

    /* renamed from: l */
    public int f1801l = 0;

    /* renamed from: m */
    public int f1802m = 0;

    /* renamed from: n */
    public int f1803n = 0;

    /* renamed from: o */
    public int f1804o = 0;

    /* renamed from: p */
    public int f1805p = 0;

    public b6$a(b6 b6Var, int i, y5 y5Var, y5 y5Var2, y5 y5Var3, y5 y5Var4, int i2) {
        this.f1807r = b6Var;
        this.f1790a = 0;
        this.f1797h = 0;
        this.f1798i = 0;
        this.f1799j = 0;
        this.f1800k = 0;
        this.f1806q = 0;
        this.f1790a = i;
        this.f1793d = y5Var;
        this.f1794e = y5Var2;
        this.f1795f = y5Var3;
        this.f1796g = y5Var4;
        this.f1797h = b6Var.l1();
        this.f1798i = b6Var.n1();
        this.f1799j = b6Var.m1();
        this.f1800k = b6Var.k1();
        this.f1806q = i2;
    }

    /* renamed from: b */
    public void m5777b(z5 z5Var) {
        int i = 0;
        if (this.f1790a == 0) {
            int N1 = b6.N1(this.f1807r, z5Var, this.f1806q);
            if (z5Var.B() == z5.b.c) {
                this.f1805p++;
                N1 = 0;
            }
            int B1 = b6.B1(this.f1807r);
            if (z5Var.T() == 8) {
                B1 = 0;
            }
            this.f1801l += N1 + B1;
            int O1 = b6.O1(this.f1807r, z5Var, this.f1806q);
            if (this.f1791b == null || this.f1792c < O1) {
                this.f1791b = z5Var;
                this.f1792c = O1;
                this.f1802m = O1;
            }
        } else {
            int N12 = b6.N1(this.f1807r, z5Var, this.f1806q);
            int O12 = b6.O1(this.f1807r, z5Var, this.f1806q);
            if (z5Var.R() == z5.b.c) {
                this.f1805p++;
                O12 = 0;
            }
            int C1 = b6.C1(this.f1807r);
            if (z5Var.T() != 8) {
                i = C1;
            }
            this.f1802m += O12 + i;
            if (this.f1791b == null || this.f1792c < N12) {
                this.f1791b = z5Var;
                this.f1792c = N12;
                this.f1801l = N12;
            }
        }
        this.f1804o++;
    }

    /* renamed from: c */
    public void m5776c() {
        this.f1792c = 0;
        this.f1791b = null;
        this.f1801l = 0;
        this.f1802m = 0;
        this.f1803n = 0;
        this.f1804o = 0;
        this.f1805p = 0;
    }

    /* renamed from: d */
    public void m5775d(boolean z, int i, boolean z2) {
        int i2;
        int i3;
        y5 y5Var;
        y5 y5Var2;
        y5 y5Var3;
        y5 y5Var4;
        float f;
        int i4;
        y5 y5Var5;
        y5 y5Var6;
        z5 z5Var;
        y5 y5Var7;
        y5 y5Var8;
        float f2;
        int i5;
        int i6 = this.f1804o;
        for (int i7 = 0; i7 < i6 && this.f1803n + i7 < b6.P1(this.f1807r); i7++) {
            z5 z5Var2 = b6.Q1(this.f1807r)[this.f1803n + i7];
            if (z5Var2 != null) {
                z5Var2.l0();
            }
        }
        if (i6 == 0 || this.f1791b == null) {
            return;
        }
        boolean z3 = z2 && i == 0;
        int i8 = 0;
        int i9 = -1;
        int i10 = -1;
        while (true) {
            i2 = i10;
            if (i8 >= i6) {
                break;
            }
            int i11 = z ? (i6 - 1) - i8 : i8;
            if (this.f1803n + i11 >= b6.P1(this.f1807r)) {
                break;
            }
            int i12 = i9;
            int i13 = i2;
            if (b6.Q1(this.f1807r)[this.f1803n + i11].T() == 0) {
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
        z5 z5Var3 = null;
        z5 z5Var4 = null;
        if (this.f1790a == 0) {
            z5 z5Var5 = this.f1791b;
            z5Var5.S0(b6.R1(this.f1807r));
            int i15 = this.f1798i;
            int i16 = i15;
            if (i > 0) {
                i16 = i15 + b6.C1(this.f1807r);
            }
            z5Var5.I.a(this.f1794e, i16);
            if (z2) {
                z5Var5.K.a(this.f1796g, this.f1800k);
            }
            if (i > 0) {
                this.f1794e.d.K.a(z5Var5.I, 0);
            }
            if (b6.S1(this.f1807r) == 3 && !z5Var5.X()) {
                for (int i17 = 0; i17 < i6; i17++) {
                    int i18 = z ? (i6 - 1) - i17 : i17;
                    if (this.f1803n + i18 >= b6.P1(this.f1807r)) {
                        break;
                    }
                    z5Var = b6.Q1(this.f1807r)[this.f1803n + i18];
                    if (z5Var.X()) {
                        break;
                    }
                }
            }
            z5Var = z5Var5;
            int i19 = 0;
            while (i19 < i6) {
                int i20 = z ? (i6 - 1) - i19 : i19;
                if (this.f1803n + i20 >= b6.P1(this.f1807r)) {
                    return;
                }
                z5 z5Var6 = b6.Q1(this.f1807r)[this.f1803n + i20];
                if (i19 == 0) {
                    z5Var6.k(z5Var6.H, this.f1793d, this.f1797h);
                }
                if (i20 == 0) {
                    int T1 = b6.T1(this.f1807r);
                    float U1 = b6.U1(this.f1807r);
                    if (this.f1803n != 0 || b6.D1(this.f1807r) == -1) {
                        i5 = T1;
                        f2 = U1;
                        if (z2) {
                            i5 = T1;
                            f2 = U1;
                            if (b6.F1(this.f1807r) != -1) {
                                i5 = b6.F1(this.f1807r);
                                f2 = b6.G1(this.f1807r);
                            }
                        }
                    } else {
                        i5 = b6.D1(this.f1807r);
                        f2 = b6.E1(this.f1807r);
                    }
                    z5Var6.B0(i5);
                    z5Var6.A0(f2);
                }
                if (i19 == i6 - 1) {
                    z5Var6.k(z5Var6.J, this.f1795f, this.f1799j);
                }
                if (z5Var4 != null) {
                    z5Var6.H.a(z5Var4.J, b6.B1(this.f1807r));
                    if (i19 == i9) {
                        z5Var6.H.u(this.f1797h);
                    }
                    z5Var4.J.a(z5Var6.H, 0);
                    if (i19 == i2 + 1) {
                        z5Var4.J.u(this.f1799j);
                    }
                }
                if (z5Var6 != z5Var5) {
                    if (b6.S1(this.f1807r) != 3 || !z5Var.X() || z5Var6 == z5Var || !z5Var6.X()) {
                        int S1 = b6.S1(this.f1807r);
                        if (S1 != 0) {
                            if (S1 != 1) {
                                y5 y5Var9 = z5Var6.I;
                                if (z3) {
                                    y5Var9.a(this.f1794e, this.f1798i);
                                    z5Var6.K.a(this.f1796g, this.f1800k);
                                } else {
                                    y5Var9.a(z5Var5.I, 0);
                                }
                            }
                            y5Var8 = z5Var6.K;
                            y5Var7 = z5Var5.K;
                        } else {
                            y5Var8 = z5Var6.I;
                            y5Var7 = z5Var5.I;
                        }
                    } else {
                        y5Var8 = z5Var6.L;
                        y5Var7 = z5Var.L;
                    }
                    y5Var8.a(y5Var7, 0);
                }
                i19++;
                z5Var4 = z5Var6;
            }
            return;
        }
        z5 z5Var7 = this.f1791b;
        z5Var7.B0(b6.T1(this.f1807r));
        int i21 = this.f1797h;
        int i22 = i21;
        if (i > 0) {
            i22 = i21 + b6.B1(this.f1807r);
        }
        if (z) {
            z5Var7.J.a(this.f1795f, i22);
            if (z2) {
                z5Var7.H.a(this.f1793d, this.f1799j);
            }
            if (i > 0) {
                y5Var5 = this.f1795f.d.H;
                y5Var6 = z5Var7.J;
                y5Var5.a(y5Var6, 0);
            }
            i3 = 0;
            while (true) {
                z5 z5Var8 = z5Var3;
                if (i3 >= i6 || this.f1803n + i3 >= b6.P1(this.f1807r)) {
                    return;
                }
                z5Var3 = b6.Q1(this.f1807r)[this.f1803n + i3];
                if (i3 == 0) {
                    z5Var3.k(z5Var3.I, this.f1794e, this.f1798i);
                    int R1 = b6.R1(this.f1807r);
                    float H1 = b6.H1(this.f1807r);
                    if (this.f1803n != 0 || b6.I1(this.f1807r) == -1) {
                        i4 = R1;
                        f = H1;
                        if (z2) {
                            i4 = R1;
                            f = H1;
                            if (b6.K1(this.f1807r) != -1) {
                                i4 = b6.K1(this.f1807r);
                                f = b6.L1(this.f1807r);
                            }
                        }
                    } else {
                        i4 = b6.I1(this.f1807r);
                        f = b6.J1(this.f1807r);
                    }
                    z5Var3.S0(i4);
                    z5Var3.R0(f);
                }
                if (i3 == i6 - 1) {
                    z5Var3.k(z5Var3.K, this.f1796g, this.f1800k);
                }
                if (z5Var8 != null) {
                    z5Var3.I.a(z5Var8.K, b6.C1(this.f1807r));
                    if (i3 == i9) {
                        z5Var3.I.u(this.f1798i);
                    }
                    z5Var8.K.a(z5Var3.I, 0);
                    if (i3 == i2 + 1) {
                        z5Var8.K.u(this.f1800k);
                    }
                }
                if (z5Var3 != z5Var7) {
                    int M1 = b6.M1(this.f1807r);
                    if (z) {
                        if (M1 != 0) {
                            if (M1 == 1) {
                                y5Var3 = z5Var3.H;
                                y5Var4 = z5Var7.H;
                                y5Var3.a(y5Var4, 0);
                            } else if (M1 == 2) {
                                z5Var3.H.a(z5Var7.H, 0);
                            }
                        }
                        y5Var3 = z5Var3.J;
                        y5Var4 = z5Var7.J;
                        y5Var3.a(y5Var4, 0);
                    } else {
                        if (M1 != 0) {
                            if (M1 != 1) {
                                if (M1 == 2) {
                                    y5 y5Var10 = z5Var3.H;
                                    if (z3) {
                                        y5Var10.a(this.f1793d, this.f1797h);
                                        z5Var3.J.a(this.f1795f, this.f1799j);
                                    } else {
                                        y5Var10.a(z5Var7.H, 0);
                                    }
                                }
                            }
                            y5Var2 = z5Var3.J;
                            y5Var = z5Var7.J;
                        } else {
                            y5Var2 = z5Var3.H;
                            y5Var = z5Var7.H;
                        }
                        y5Var2.a(y5Var, 0);
                    }
                }
                i3++;
            }
        } else {
            z5Var7.H.a(this.f1793d, i22);
            if (z2) {
                z5Var7.J.a(this.f1795f, this.f1799j);
            }
            if (i > 0) {
                y5Var5 = this.f1793d.d.J;
                y5Var6 = z5Var7.H;
                y5Var5.a(y5Var6, 0);
            }
            i3 = 0;
            while (true) {
                z5 z5Var82 = z5Var3;
                if (i3 >= i6) {
                    return;
                }
                return;
                i3++;
            }
        }
    }

    /* renamed from: e */
    public int m5774e() {
        return this.f1790a == 1 ? this.f1802m - b6.C1(this.f1807r) : this.f1802m;
    }

    /* renamed from: f */
    public int m5773f() {
        return this.f1790a == 0 ? this.f1801l - b6.B1(this.f1807r) : this.f1801l;
    }

    /* renamed from: g */
    public void m5772g(int i) {
        int i2;
        int i3;
        z5.b bVar;
        z5.b bVar2;
        g6 g6Var;
        int i4 = this.f1805p;
        if (i4 == 0) {
            return;
        }
        int i5 = this.f1804o;
        int i6 = i / i4;
        for (int i7 = 0; i7 < i5 && this.f1803n + i7 < b6.P1(this.f1807r); i7++) {
            z5 z5Var = b6.Q1(this.f1807r)[this.f1803n + i7];
            if (this.f1790a == 0) {
                if (z5Var != null && z5Var.B() == z5.b.c && z5Var.n == 0) {
                    g6Var = this.f1807r;
                    bVar2 = z5.b.a;
                    bVar = z5Var.R();
                    i3 = z5Var.y();
                    i2 = i6;
                    g6Var.p1(z5Var, bVar2, i2, bVar, i3);
                }
            } else {
                if (z5Var != null && z5Var.R() == z5.b.c && z5Var.o == 0) {
                    g6Var = this.f1807r;
                    bVar2 = z5Var.B();
                    i2 = z5Var.U();
                    bVar = z5.b.a;
                    i3 = i6;
                    g6Var.p1(z5Var, bVar2, i2, bVar, i3);
                }
            }
        }
        m5771h();
    }

    /* renamed from: h */
    public final void m5771h() {
        this.f1801l = 0;
        this.f1802m = 0;
        this.f1791b = null;
        this.f1792c = 0;
        int i = this.f1804o;
        for (int i2 = 0; i2 < i && this.f1803n + i2 < b6.P1(this.f1807r); i2++) {
            z5 z5Var = b6.Q1(this.f1807r)[this.f1803n + i2];
            if (this.f1790a == 0) {
                int U = z5Var.U();
                int B1 = b6.B1(this.f1807r);
                if (z5Var.T() == 8) {
                    B1 = 0;
                }
                this.f1801l += U + B1;
                int O1 = b6.O1(this.f1807r, z5Var, this.f1806q);
                if (this.f1791b == null || this.f1792c < O1) {
                    this.f1791b = z5Var;
                    this.f1792c = O1;
                    this.f1802m = O1;
                }
            } else {
                int N1 = b6.N1(this.f1807r, z5Var, this.f1806q);
                int O12 = b6.O1(this.f1807r, z5Var, this.f1806q);
                int C1 = b6.C1(this.f1807r);
                if (z5Var.T() == 8) {
                    C1 = 0;
                }
                this.f1802m += O12 + C1;
                if (this.f1791b == null || this.f1792c < N1) {
                    this.f1791b = z5Var;
                    this.f1792c = N1;
                    this.f1801l = N1;
                }
            }
        }
    }

    /* renamed from: i */
    public void m5770i(int i) {
        this.f1803n = i;
    }

    /* renamed from: j */
    public void m5769j(int i, y5 y5Var, y5 y5Var2, y5 y5Var3, y5 y5Var4, int i2, int i3, int i4, int i5, int i6) {
        this.f1790a = i;
        this.f1793d = y5Var;
        this.f1794e = y5Var2;
        this.f1795f = y5Var3;
        this.f1796g = y5Var4;
        this.f1797h = i2;
        this.f1798i = i3;
        this.f1799j = i4;
        this.f1800k = i5;
        this.f1806q = i6;
    }
}
