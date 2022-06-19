package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/e$a.class */
class e$a {

    /* renamed from: a */
    private int f1249a;

    /* renamed from: d */
    private ConstraintAnchor f1252d;

    /* renamed from: e */
    private ConstraintAnchor f1253e;

    /* renamed from: f */
    private ConstraintAnchor f1254f;

    /* renamed from: g */
    private ConstraintAnchor f1255g;

    /* renamed from: h */
    private int f1256h;

    /* renamed from: i */
    private int f1257i;

    /* renamed from: j */
    private int f1258j;

    /* renamed from: k */
    private int f1259k;

    /* renamed from: q */
    private int f1265q;

    /* renamed from: r */
    final /* synthetic */ e f1266r;

    /* renamed from: b */
    private ConstraintWidget f1250b = null;

    /* renamed from: c */
    int f1251c = 0;

    /* renamed from: l */
    private int f1260l = 0;

    /* renamed from: m */
    private int f1261m = 0;

    /* renamed from: n */
    private int f1262n = 0;

    /* renamed from: o */
    private int f1263o = 0;

    /* renamed from: p */
    private int f1264p = 0;

    public e$a(e eVar, int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2) {
        this.f1266r = eVar;
        this.f1249a = 0;
        this.f1256h = 0;
        this.f1257i = 0;
        this.f1258j = 0;
        this.f1259k = 0;
        this.f1265q = 0;
        this.f1249a = i;
        this.f1252d = constraintAnchor;
        this.f1253e = constraintAnchor2;
        this.f1254f = constraintAnchor3;
        this.f1255g = constraintAnchor4;
        this.f1256h = eVar.Q0();
        this.f1257i = eVar.S0();
        this.f1258j = eVar.R0();
        this.f1259k = eVar.P0();
        this.f1265q = i2;
    }

    /* renamed from: h */
    private void m13885h() {
        this.f1260l = 0;
        this.f1261m = 0;
        this.f1250b = null;
        this.f1251c = 0;
        int i = this.f1263o;
        for (int i2 = 0; i2 < i && this.f1262n + i2 < e.u1(this.f1266r); i2++) {
            ConstraintWidget constraintWidget = e.v1(this.f1266r)[this.f1262n + i2];
            if (this.f1249a == 0) {
                int m13982Q = constraintWidget.m13982Q();
                int g1 = e.g1(this.f1266r);
                if (constraintWidget.m13983P() == 8) {
                    g1 = 0;
                }
                this.f1260l += m13982Q + g1;
                int t1 = e.t1(this.f1266r, constraintWidget, this.f1265q);
                if (this.f1250b == null || this.f1251c < t1) {
                    this.f1250b = constraintWidget;
                    this.f1251c = t1;
                    this.f1261m = t1;
                }
            } else {
                int s1 = e.s1(this.f1266r, constraintWidget, this.f1265q);
                int t12 = e.t1(this.f1266r, constraintWidget, this.f1265q);
                int h1 = e.h1(this.f1266r);
                if (constraintWidget.m13983P() == 8) {
                    h1 = 0;
                }
                this.f1261m += t12 + h1;
                if (this.f1250b == null || this.f1251c < s1) {
                    this.f1250b = constraintWidget;
                    this.f1251c = s1;
                    this.f1260l = s1;
                }
            }
        }
    }

    /* renamed from: b */
    public void m13891b(ConstraintWidget constraintWidget) {
        int i = 0;
        if (this.f1249a == 0) {
            int s1 = e.s1(this.f1266r, constraintWidget, this.f1265q);
            if (constraintWidget.m13925z() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                this.f1264p++;
                s1 = 0;
            }
            int g1 = e.g1(this.f1266r);
            if (constraintWidget.m13983P() == 8) {
                g1 = 0;
            }
            this.f1260l += s1 + g1;
            int t1 = e.t1(this.f1266r, constraintWidget, this.f1265q);
            if (this.f1250b == null || this.f1251c < t1) {
                this.f1250b = constraintWidget;
                this.f1251c = t1;
                this.f1261m = t1;
            }
        } else {
            int s12 = e.s1(this.f1266r, constraintWidget, this.f1265q);
            int t12 = e.t1(this.f1266r, constraintWidget, this.f1265q);
            if (constraintWidget.m13985N() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                this.f1264p++;
                t12 = 0;
            }
            int h1 = e.h1(this.f1266r);
            if (constraintWidget.m13983P() != 8) {
                i = h1;
            }
            this.f1261m += t12 + i;
            if (this.f1250b == null || this.f1251c < s12) {
                this.f1250b = constraintWidget;
                this.f1251c = s12;
                this.f1260l = s12;
            }
        }
        this.f1263o++;
    }

    /* renamed from: c */
    public void m13890c() {
        this.f1251c = 0;
        this.f1250b = null;
        this.f1260l = 0;
        this.f1261m = 0;
        this.f1262n = 0;
        this.f1263o = 0;
        this.f1264p = 0;
    }

    /* renamed from: d */
    public void m13889d(boolean z, int i, boolean z2) {
        int i2;
        int i3;
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        float f;
        int i4;
        ConstraintAnchor constraintAnchor5;
        ConstraintAnchor constraintAnchor6;
        ConstraintWidget constraintWidget;
        ConstraintAnchor constraintAnchor7;
        ConstraintAnchor constraintAnchor8;
        float f2;
        int i5;
        int i6 = this.f1263o;
        for (int i7 = 0; i7 < i6 && this.f1262n + i7 < e.u1(this.f1266r); i7++) {
            ConstraintWidget constraintWidget2 = e.v1(this.f1266r)[this.f1262n + i7];
            if (constraintWidget2 != null) {
                constraintWidget2.m13972a0();
            }
        }
        if (i6 == 0 || this.f1250b == null) {
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
            if (this.f1262n + i11 >= e.u1(this.f1266r)) {
                break;
            }
            int i12 = i9;
            int i13 = i2;
            if (e.v1(this.f1266r)[this.f1262n + i11].m13983P() == 0) {
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
        ConstraintWidget constraintWidget3 = null;
        ConstraintWidget constraintWidget4 = null;
        if (this.f1249a == 0) {
            ConstraintWidget constraintWidget5 = this.f1250b;
            constraintWidget5.m13924z0(e.w1(this.f1266r));
            int i15 = this.f1257i;
            int i16 = i15;
            if (i > 0) {
                i16 = i15 + e.h1(this.f1266r);
            }
            constraintWidget5.f1102B.m14023a(this.f1253e, i16);
            if (z2) {
                constraintWidget5.f1105D.m14023a(this.f1255g, this.f1259k);
            }
            if (i > 0) {
                this.f1253e.f1082b.f1105D.m14023a(constraintWidget5.f1102B, 0);
            }
            if (e.x1(this.f1266r) == 3 && !constraintWidget5.m13979T()) {
                for (int i17 = 0; i17 < i6; i17++) {
                    int i18 = z ? (i6 - 1) - i17 : i17;
                    if (this.f1262n + i18 >= e.u1(this.f1266r)) {
                        break;
                    }
                    constraintWidget = e.v1(this.f1266r)[this.f1262n + i18];
                    if (constraintWidget.m13979T()) {
                        break;
                    }
                }
            }
            constraintWidget = constraintWidget5;
            int i19 = 0;
            while (i19 < i6) {
                int i20 = z ? (i6 - 1) - i19 : i19;
                if (this.f1262n + i20 >= e.u1(this.f1266r)) {
                    return;
                }
                ConstraintWidget constraintWidget6 = e.v1(this.f1266r)[this.f1262n + i20];
                if (i19 == 0) {
                    constraintWidget6.m13957j(constraintWidget6.f1100A, this.f1252d, this.f1256h);
                }
                if (i20 == 0) {
                    int y1 = e.y1(this.f1266r);
                    float z1 = e.z1(this.f1266r);
                    if (this.f1262n != 0 || e.i1(this.f1266r) == -1) {
                        i5 = y1;
                        f2 = z1;
                        if (z2) {
                            i5 = y1;
                            f2 = z1;
                            if (e.k1(this.f1266r) != -1) {
                                i5 = e.k1(this.f1266r);
                                f2 = e.l1(this.f1266r);
                            }
                        }
                    } else {
                        i5 = e.i1(this.f1266r);
                        f2 = e.j1(this.f1266r);
                    }
                    constraintWidget6.m13954k0(i5);
                    constraintWidget6.m13956j0(f2);
                }
                if (i19 == i6 - 1) {
                    constraintWidget6.m13957j(constraintWidget6.f1104C, this.f1254f, this.f1258j);
                }
                if (constraintWidget4 != null) {
                    constraintWidget6.f1100A.m14023a(constraintWidget4.f1104C, e.g1(this.f1266r));
                    if (i19 == i9) {
                        constraintWidget6.f1100A.m14010n(this.f1256h);
                    }
                    constraintWidget4.f1104C.m14023a(constraintWidget6.f1100A, 0);
                    if (i19 == i2 + 1) {
                        constraintWidget4.f1104C.m14010n(this.f1258j);
                    }
                }
                if (constraintWidget6 != constraintWidget5) {
                    if (e.x1(this.f1266r) != 3 || !constraintWidget.m13979T() || constraintWidget6 == constraintWidget || !constraintWidget6.m13979T()) {
                        int x1 = e.x1(this.f1266r);
                        if (x1 != 0) {
                            if (x1 != 1) {
                                ConstraintAnchor constraintAnchor9 = constraintWidget6.f1102B;
                                if (z3) {
                                    constraintAnchor9.m14023a(this.f1253e, this.f1257i);
                                    constraintWidget6.f1105D.m14023a(this.f1255g, this.f1259k);
                                } else {
                                    constraintAnchor9.m14023a(constraintWidget5.f1102B, 0);
                                }
                            }
                            constraintAnchor8 = constraintWidget6.f1105D;
                            constraintAnchor7 = constraintWidget5.f1105D;
                        } else {
                            constraintAnchor8 = constraintWidget6.f1102B;
                            constraintAnchor7 = constraintWidget5.f1102B;
                        }
                    } else {
                        constraintAnchor8 = constraintWidget6.f1106E;
                        constraintAnchor7 = constraintWidget.f1106E;
                    }
                    constraintAnchor8.m14023a(constraintAnchor7, 0);
                }
                i19++;
                constraintWidget4 = constraintWidget6;
            }
            return;
        }
        ConstraintWidget constraintWidget7 = this.f1250b;
        constraintWidget7.m13954k0(e.y1(this.f1266r));
        int i21 = this.f1256h;
        int i22 = i21;
        if (i > 0) {
            i22 = i21 + e.g1(this.f1266r);
        }
        if (z) {
            constraintWidget7.f1104C.m14023a(this.f1254f, i22);
            if (z2) {
                constraintWidget7.f1100A.m14023a(this.f1252d, this.f1258j);
            }
            if (i > 0) {
                constraintAnchor5 = this.f1254f.f1082b.f1100A;
                constraintAnchor6 = constraintWidget7.f1104C;
                constraintAnchor5.m14023a(constraintAnchor6, 0);
            }
            i3 = 0;
            while (true) {
                ConstraintWidget constraintWidget8 = constraintWidget3;
                if (i3 >= i6 || this.f1262n + i3 >= e.u1(this.f1266r)) {
                    return;
                }
                constraintWidget3 = e.v1(this.f1266r)[this.f1262n + i3];
                if (i3 == 0) {
                    constraintWidget3.m13957j(constraintWidget3.f1102B, this.f1253e, this.f1257i);
                    int w1 = e.w1(this.f1266r);
                    float m1 = e.m1(this.f1266r);
                    if (this.f1262n != 0 || e.n1(this.f1266r) == -1) {
                        i4 = w1;
                        f = m1;
                        if (z2) {
                            i4 = w1;
                            f = m1;
                            if (e.p1(this.f1266r) != -1) {
                                i4 = e.p1(this.f1266r);
                                f = e.q1(this.f1266r);
                            }
                        }
                    } else {
                        i4 = e.n1(this.f1266r);
                        f = e.o1(this.f1266r);
                    }
                    constraintWidget3.m13924z0(i4);
                    constraintWidget3.m13926y0(f);
                }
                if (i3 == i6 - 1) {
                    constraintWidget3.m13957j(constraintWidget3.f1105D, this.f1255g, this.f1259k);
                }
                if (constraintWidget8 != null) {
                    constraintWidget3.f1102B.m14023a(constraintWidget8.f1105D, e.h1(this.f1266r));
                    if (i3 == i9) {
                        constraintWidget3.f1102B.m14010n(this.f1257i);
                    }
                    constraintWidget8.f1105D.m14023a(constraintWidget3.f1102B, 0);
                    if (i3 == i2 + 1) {
                        constraintWidget8.f1105D.m14010n(this.f1259k);
                    }
                }
                if (constraintWidget3 != constraintWidget7) {
                    int r1 = e.r1(this.f1266r);
                    if (z) {
                        if (r1 != 0) {
                            if (r1 == 1) {
                                constraintAnchor3 = constraintWidget3.f1100A;
                                constraintAnchor4 = constraintWidget7.f1100A;
                                constraintAnchor3.m14023a(constraintAnchor4, 0);
                            } else if (r1 == 2) {
                                constraintWidget3.f1100A.m14023a(constraintWidget7.f1100A, 0);
                            }
                        }
                        constraintAnchor3 = constraintWidget3.f1104C;
                        constraintAnchor4 = constraintWidget7.f1104C;
                        constraintAnchor3.m14023a(constraintAnchor4, 0);
                    } else {
                        if (r1 != 0) {
                            if (r1 != 1) {
                                if (r1 == 2) {
                                    ConstraintAnchor constraintAnchor10 = constraintWidget3.f1100A;
                                    if (z3) {
                                        constraintAnchor10.m14023a(this.f1252d, this.f1256h);
                                        constraintWidget3.f1104C.m14023a(this.f1254f, this.f1258j);
                                    } else {
                                        constraintAnchor10.m14023a(constraintWidget7.f1100A, 0);
                                    }
                                }
                            }
                            constraintAnchor = constraintWidget3.f1104C;
                            constraintAnchor2 = constraintWidget7.f1104C;
                        } else {
                            constraintAnchor = constraintWidget3.f1100A;
                            constraintAnchor2 = constraintWidget7.f1100A;
                        }
                        constraintAnchor.m14023a(constraintAnchor2, 0);
                    }
                }
                i3++;
            }
        } else {
            constraintWidget7.f1100A.m14023a(this.f1252d, i22);
            if (z2) {
                constraintWidget7.f1104C.m14023a(this.f1254f, this.f1258j);
            }
            if (i > 0) {
                constraintAnchor5 = this.f1252d.f1082b.f1104C;
                constraintAnchor6 = constraintWidget7.f1100A;
                constraintAnchor5.m14023a(constraintAnchor6, 0);
            }
            i3 = 0;
            while (true) {
                ConstraintWidget constraintWidget82 = constraintWidget3;
                if (i3 >= i6) {
                    return;
                }
                return;
                i3++;
            }
        }
    }

    /* renamed from: e */
    public int m13888e() {
        return this.f1249a == 1 ? this.f1261m - e.h1(this.f1266r) : this.f1261m;
    }

    /* renamed from: f */
    public int m13887f() {
        return this.f1249a == 0 ? this.f1260l - e.g1(this.f1266r) : this.f1260l;
    }

    /* renamed from: g */
    public void m13886g(int i) {
        int i2;
        int i3;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        j jVar;
        int i4 = this.f1264p;
        if (i4 == 0) {
            return;
        }
        int i5 = this.f1263o;
        int i6 = i / i4;
        for (int i7 = 0; i7 < i5 && this.f1262n + i7 < e.u1(this.f1266r); i7++) {
            ConstraintWidget constraintWidget = e.v1(this.f1266r)[this.f1262n + i7];
            if (this.f1249a == 0) {
                if (constraintWidget != null && constraintWidget.m13925z() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f1146j == 0) {
                    jVar = this.f1266r;
                    dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
                    dimensionBehaviour = constraintWidget.m13985N();
                    i3 = constraintWidget.m13931w();
                    i2 = i6;
                    jVar.U0(constraintWidget, dimensionBehaviour2, i2, dimensionBehaviour, i3);
                }
            } else {
                if (constraintWidget != null && constraintWidget.m13985N() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f1148k == 0) {
                    jVar = this.f1266r;
                    dimensionBehaviour2 = constraintWidget.m13925z();
                    i2 = constraintWidget.m13982Q();
                    dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                    i3 = i6;
                    jVar.U0(constraintWidget, dimensionBehaviour2, i2, dimensionBehaviour, i3);
                }
            }
        }
        m13885h();
    }

    /* renamed from: i */
    public void m13884i(int i) {
        this.f1262n = i;
    }

    /* renamed from: j */
    public void m13883j(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2, int i3, int i4, int i5, int i6) {
        this.f1249a = i;
        this.f1252d = constraintAnchor;
        this.f1253e = constraintAnchor2;
        this.f1254f = constraintAnchor3;
        this.f1255g = constraintAnchor4;
        this.f1256h = i2;
        this.f1257i = i3;
        this.f1258j = i4;
        this.f1259k = i5;
        this.f1265q = i6;
    }
}
