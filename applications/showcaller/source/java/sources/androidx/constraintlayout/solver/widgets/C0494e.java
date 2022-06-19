package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.C0458d;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.HashMap;
/* renamed from: androidx.constraintlayout.solver.widgets.e */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/e.class */
public class C0494e extends C0501j {

    /* renamed from: z1 */
    private ConstraintWidget[] f2358z1;

    /* renamed from: c1 */
    private int f2335c1 = -1;

    /* renamed from: d1 */
    private int f2336d1 = -1;

    /* renamed from: e1 */
    private int f2337e1 = -1;

    /* renamed from: f1 */
    private int f2338f1 = -1;

    /* renamed from: g1 */
    private int f2339g1 = -1;

    /* renamed from: h1 */
    private int f2340h1 = -1;

    /* renamed from: i1 */
    private float f2341i1 = 0.5f;

    /* renamed from: j1 */
    private float f2342j1 = 0.5f;

    /* renamed from: k1 */
    private float f2343k1 = 0.5f;

    /* renamed from: l1 */
    private float f2344l1 = 0.5f;

    /* renamed from: m1 */
    private float f2345m1 = 0.5f;

    /* renamed from: n1 */
    private float f2346n1 = 0.5f;

    /* renamed from: o1 */
    private int f2347o1 = 0;

    /* renamed from: p1 */
    private int f2348p1 = 0;

    /* renamed from: q1 */
    private int f2349q1 = 2;

    /* renamed from: r1 */
    private int f2350r1 = 2;

    /* renamed from: s1 */
    private int f2351s1 = 0;

    /* renamed from: t1 */
    private int f2352t1 = -1;

    /* renamed from: u1 */
    private int f2353u1 = 0;

    /* renamed from: v1 */
    private ArrayList<C0495a> f2354v1 = new ArrayList<>();

    /* renamed from: w1 */
    private ConstraintWidget[] f2355w1 = null;

    /* renamed from: x1 */
    private ConstraintWidget[] f2356x1 = null;

    /* renamed from: y1 */
    private int[] f2357y1 = null;

    /* renamed from: A1 */
    private int f2334A1 = 0;

    /* renamed from: androidx.constraintlayout.solver.widgets.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/e$a.class */
    public class C0495a {

        /* renamed from: a */
        private int f2359a;

        /* renamed from: d */
        private ConstraintAnchor f2362d;

        /* renamed from: e */
        private ConstraintAnchor f2363e;

        /* renamed from: f */
        private ConstraintAnchor f2364f;

        /* renamed from: g */
        private ConstraintAnchor f2365g;

        /* renamed from: h */
        private int f2366h;

        /* renamed from: i */
        private int f2367i;

        /* renamed from: j */
        private int f2368j;

        /* renamed from: k */
        private int f2369k;

        /* renamed from: q */
        private int f2375q;

        /* renamed from: b */
        private ConstraintWidget f2360b = null;

        /* renamed from: c */
        int f2361c = 0;

        /* renamed from: l */
        private int f2370l = 0;

        /* renamed from: m */
        private int f2371m = 0;

        /* renamed from: n */
        private int f2372n = 0;

        /* renamed from: o */
        private int f2373o = 0;

        /* renamed from: p */
        private int f2374p = 0;

        public C0495a(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2) {
            C0494e.this = r4;
            this.f2359a = 0;
            this.f2366h = 0;
            this.f2367i = 0;
            this.f2368j = 0;
            this.f2369k = 0;
            this.f2375q = 0;
            this.f2359a = i;
            this.f2362d = constraintAnchor;
            this.f2363e = constraintAnchor2;
            this.f2364f = constraintAnchor3;
            this.f2365g = constraintAnchor4;
            this.f2366h = r4.m33754l1();
            this.f2367i = r4.m33752n1();
            this.f2368j = r4.m33753m1();
            this.f2369k = r4.m33755k1();
            this.f2375q = i2;
        }

        /* renamed from: h */
        private void m33787h() {
            this.f2370l = 0;
            this.f2371m = 0;
            this.f2360b = null;
            this.f2361c = 0;
            int i = this.f2373o;
            for (int i2 = 0; i2 < i && this.f2372n + i2 < C0494e.this.f2334A1; i2++) {
                ConstraintWidget constraintWidget = C0494e.this.f2358z1[this.f2372n + i2];
                if (this.f2359a == 0) {
                    int m34013U = constraintWidget.m34013U();
                    int i3 = C0494e.this.f2347o1;
                    if (constraintWidget.m34015T() == 8) {
                        i3 = 0;
                    }
                    this.f2370l += m34013U + i3;
                    int m33818W1 = C0494e.this.m33818W1(constraintWidget, this.f2375q);
                    if (this.f2360b == null || this.f2361c < m33818W1) {
                        this.f2360b = constraintWidget;
                        this.f2361c = m33818W1;
                        this.f2371m = m33818W1;
                    }
                } else {
                    int m33817X1 = C0494e.this.m33817X1(constraintWidget, this.f2375q);
                    int m33818W12 = C0494e.this.m33818W1(constraintWidget, this.f2375q);
                    int i4 = C0494e.this.f2348p1;
                    if (constraintWidget.m34015T() == 8) {
                        i4 = 0;
                    }
                    this.f2371m += m33818W12 + i4;
                    if (this.f2360b == null || this.f2361c < m33817X1) {
                        this.f2360b = constraintWidget;
                        this.f2361c = m33817X1;
                        this.f2370l = m33817X1;
                    }
                }
            }
        }

        /* renamed from: b */
        public void m33793b(ConstraintWidget constraintWidget) {
            int i = 0;
            if (this.f2359a == 0) {
                int m33817X1 = C0494e.this.m33817X1(constraintWidget, this.f2375q);
                if (constraintWidget.m34051B() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.f2374p++;
                    m33817X1 = 0;
                }
                int i2 = C0494e.this.f2347o1;
                if (constraintWidget.m34015T() == 8) {
                    i2 = 0;
                }
                this.f2370l += m33817X1 + i2;
                int m33818W1 = C0494e.this.m33818W1(constraintWidget, this.f2375q);
                if (this.f2360b == null || this.f2361c < m33818W1) {
                    this.f2360b = constraintWidget;
                    this.f2361c = m33818W1;
                    this.f2371m = m33818W1;
                }
            } else {
                int m33817X12 = C0494e.this.m33817X1(constraintWidget, this.f2375q);
                int m33818W12 = C0494e.this.m33818W1(constraintWidget, this.f2375q);
                if (constraintWidget.m34019R() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.f2374p++;
                    m33818W12 = 0;
                }
                int i3 = C0494e.this.f2348p1;
                if (constraintWidget.m34015T() != 8) {
                    i = i3;
                }
                this.f2371m += m33818W12 + i;
                if (this.f2360b == null || this.f2361c < m33817X12) {
                    this.f2360b = constraintWidget;
                    this.f2361c = m33817X12;
                    this.f2370l = m33817X12;
                }
            }
            this.f2373o++;
        }

        /* renamed from: c */
        public void m33792c() {
            this.f2361c = 0;
            this.f2360b = null;
            this.f2370l = 0;
            this.f2371m = 0;
            this.f2372n = 0;
            this.f2373o = 0;
            this.f2374p = 0;
        }

        /* renamed from: d */
        public void m33791d(boolean z, int i, boolean z2) {
            int i2;
            float f;
            int i3;
            ConstraintWidget constraintWidget;
            float f2;
            int i4;
            int i5 = this.f2373o;
            for (int i6 = 0; i6 < i5 && this.f2372n + i6 < C0494e.this.f2334A1; i6++) {
                ConstraintWidget constraintWidget2 = C0494e.this.f2358z1[this.f2372n + i6];
                if (constraintWidget2 != null) {
                    constraintWidget2.m33984l0();
                }
            }
            if (i5 == 0 || this.f2360b == null) {
                return;
            }
            boolean z3 = z2 && i == 0;
            int i7 = 0;
            int i8 = -1;
            int i9 = -1;
            while (true) {
                i2 = i9;
                if (i7 >= i5) {
                    break;
                }
                int i10 = z ? (i5 - 1) - i7 : i7;
                if (this.f2372n + i10 >= C0494e.this.f2334A1) {
                    break;
                }
                int i11 = i8;
                int i12 = i2;
                if (C0494e.this.f2358z1[this.f2372n + i10].m34015T() == 0) {
                    int i13 = i8;
                    if (i8 == -1) {
                        i13 = i7;
                    }
                    i12 = i7;
                    i11 = i13;
                }
                i7++;
                i8 = i11;
                i9 = i12;
            }
            ConstraintWidget constraintWidget3 = null;
            ConstraintWidget constraintWidget4 = null;
            if (this.f2359a != 0) {
                ConstraintWidget constraintWidget5 = this.f2360b;
                constraintWidget5.m34050B0(C0494e.this.f2335c1);
                int i14 = this.f2366h;
                int i15 = i14;
                if (i > 0) {
                    i15 = i14 + C0494e.this.f2347o1;
                }
                if (z) {
                    constraintWidget5.f2112M.m34074a(this.f2364f, i15);
                    if (z2) {
                        constraintWidget5.f2108K.m34074a(this.f2362d, this.f2368j);
                    }
                    if (i > 0) {
                        this.f2364f.f2070d.f2108K.m34074a(constraintWidget5.f2112M, 0);
                    }
                } else {
                    constraintWidget5.f2108K.m34074a(this.f2362d, i15);
                    if (z2) {
                        constraintWidget5.f2112M.m34074a(this.f2364f, this.f2368j);
                    }
                    if (i > 0) {
                        this.f2362d.f2070d.f2112M.m34074a(constraintWidget5.f2108K, 0);
                    }
                }
                int i16 = 0;
                while (i16 < i5 && this.f2372n + i16 < C0494e.this.f2334A1) {
                    ConstraintWidget constraintWidget6 = C0494e.this.f2358z1[this.f2372n + i16];
                    if (i16 == 0) {
                        constraintWidget6.m33986k(constraintWidget6.f2110L, this.f2363e, this.f2367i);
                        int i17 = C0494e.this.f2336d1;
                        float f3 = C0494e.this.f2342j1;
                        if (this.f2372n != 0 || C0494e.this.f2338f1 == -1) {
                            i3 = i17;
                            f = f3;
                            if (z2) {
                                i3 = i17;
                                f = f3;
                                if (C0494e.this.f2340h1 != -1) {
                                    i3 = C0494e.this.f2340h1;
                                    f = C0494e.this.f2346n1;
                                }
                            }
                        } else {
                            i3 = C0494e.this.f2338f1;
                            f = C0494e.this.f2344l1;
                        }
                        constraintWidget6.m34016S0(i3);
                        constraintWidget6.m34018R0(f);
                    }
                    if (i16 == i5 - 1) {
                        constraintWidget6.m33986k(constraintWidget6.f2114N, this.f2365g, this.f2369k);
                    }
                    if (constraintWidget3 != null) {
                        constraintWidget6.f2110L.m34074a(constraintWidget3.f2114N, C0494e.this.f2348p1);
                        if (i16 == i8) {
                            constraintWidget6.f2110L.m34054u(this.f2367i);
                        }
                        constraintWidget3.f2114N.m34074a(constraintWidget6.f2110L, 0);
                        if (i16 == i2 + 1) {
                            constraintWidget3.f2114N.m34054u(this.f2369k);
                        }
                    }
                    if (constraintWidget6 != constraintWidget5) {
                        if (z) {
                            int i18 = C0494e.this.f2349q1;
                            if (i18 == 0) {
                                constraintWidget6.f2112M.m34074a(constraintWidget5.f2112M, 0);
                            } else if (i18 == 1) {
                                constraintWidget6.f2108K.m34074a(constraintWidget5.f2108K, 0);
                            } else if (i18 == 2) {
                                constraintWidget6.f2108K.m34074a(constraintWidget5.f2108K, 0);
                                constraintWidget6.f2112M.m34074a(constraintWidget5.f2112M, 0);
                            }
                        } else {
                            int i19 = C0494e.this.f2349q1;
                            if (i19 == 0) {
                                constraintWidget6.f2108K.m34074a(constraintWidget5.f2108K, 0);
                            } else if (i19 == 1) {
                                constraintWidget6.f2112M.m34074a(constraintWidget5.f2112M, 0);
                            } else if (i19 == 2) {
                                if (z3) {
                                    constraintWidget6.f2108K.m34074a(this.f2362d, this.f2366h);
                                    constraintWidget6.f2112M.m34074a(this.f2364f, this.f2368j);
                                } else {
                                    constraintWidget6.f2108K.m34074a(constraintWidget5.f2108K, 0);
                                    constraintWidget6.f2112M.m34074a(constraintWidget5.f2112M, 0);
                                }
                            }
                        }
                    }
                    i16++;
                    constraintWidget3 = constraintWidget6;
                }
                return;
            }
            ConstraintWidget constraintWidget7 = this.f2360b;
            constraintWidget7.m34016S0(C0494e.this.f2336d1);
            int i20 = this.f2367i;
            int i21 = i20;
            if (i > 0) {
                i21 = i20 + C0494e.this.f2348p1;
            }
            constraintWidget7.f2110L.m34074a(this.f2363e, i21);
            if (z2) {
                constraintWidget7.f2114N.m34074a(this.f2365g, this.f2369k);
            }
            if (i > 0) {
                this.f2363e.f2070d.f2114N.m34074a(constraintWidget7.f2110L, 0);
            }
            if (C0494e.this.f2350r1 == 3 && !constraintWidget7.m34007X()) {
                for (int i22 = 0; i22 < i5; i22++) {
                    int i23 = z ? (i5 - 1) - i22 : i22;
                    if (this.f2372n + i23 >= C0494e.this.f2334A1) {
                        break;
                    }
                    constraintWidget = C0494e.this.f2358z1[this.f2372n + i23];
                    if (constraintWidget.m34007X()) {
                        break;
                    }
                }
            }
            constraintWidget = constraintWidget7;
            int i24 = 0;
            while (i24 < i5) {
                int i25 = z ? (i5 - 1) - i24 : i24;
                if (this.f2372n + i25 >= C0494e.this.f2334A1) {
                    return;
                }
                ConstraintWidget constraintWidget8 = C0494e.this.f2358z1[this.f2372n + i25];
                if (i24 == 0) {
                    constraintWidget8.m33986k(constraintWidget8.f2108K, this.f2362d, this.f2366h);
                }
                if (i25 == 0) {
                    int i26 = C0494e.this.f2335c1;
                    float f4 = C0494e.this.f2341i1;
                    if (this.f2372n != 0 || C0494e.this.f2337e1 == -1) {
                        i4 = i26;
                        f2 = f4;
                        if (z2) {
                            i4 = i26;
                            f2 = f4;
                            if (C0494e.this.f2339g1 != -1) {
                                i4 = C0494e.this.f2339g1;
                                f2 = C0494e.this.f2345m1;
                            }
                        }
                    } else {
                        i4 = C0494e.this.f2337e1;
                        f2 = C0494e.this.f2343k1;
                    }
                    constraintWidget8.m34050B0(i4);
                    constraintWidget8.m34052A0(f2);
                }
                if (i24 == i5 - 1) {
                    constraintWidget8.m33986k(constraintWidget8.f2112M, this.f2364f, this.f2368j);
                }
                if (constraintWidget4 != null) {
                    constraintWidget8.f2108K.m34074a(constraintWidget4.f2112M, C0494e.this.f2347o1);
                    if (i24 == i8) {
                        constraintWidget8.f2108K.m34054u(this.f2366h);
                    }
                    constraintWidget4.f2112M.m34074a(constraintWidget8.f2108K, 0);
                    if (i24 == i2 + 1) {
                        constraintWidget4.f2112M.m34054u(this.f2368j);
                    }
                }
                if (constraintWidget8 != constraintWidget7) {
                    if (C0494e.this.f2350r1 != 3 || !constraintWidget.m34007X() || constraintWidget8 == constraintWidget || !constraintWidget8.m34007X()) {
                        int i27 = C0494e.this.f2350r1;
                        if (i27 == 0) {
                            constraintWidget8.f2110L.m34074a(constraintWidget7.f2110L, 0);
                        } else if (i27 == 1) {
                            constraintWidget8.f2114N.m34074a(constraintWidget7.f2114N, 0);
                        } else if (z3) {
                            constraintWidget8.f2110L.m34074a(this.f2363e, this.f2367i);
                            constraintWidget8.f2114N.m34074a(this.f2365g, this.f2369k);
                        } else {
                            constraintWidget8.f2110L.m34074a(constraintWidget7.f2110L, 0);
                            constraintWidget8.f2114N.m34074a(constraintWidget7.f2114N, 0);
                        }
                    } else {
                        constraintWidget8.f2115O.m34074a(constraintWidget.f2115O, 0);
                    }
                }
                i24++;
                constraintWidget4 = constraintWidget8;
            }
        }

        /* renamed from: e */
        public int m33790e() {
            return this.f2359a == 1 ? this.f2371m - C0494e.this.f2348p1 : this.f2371m;
        }

        /* renamed from: f */
        public int m33789f() {
            return this.f2359a == 0 ? this.f2370l - C0494e.this.f2347o1 : this.f2370l;
        }

        /* renamed from: g */
        public void m33788g(int i) {
            int i2 = this.f2374p;
            if (i2 == 0) {
                return;
            }
            int i3 = this.f2373o;
            int i4 = i / i2;
            for (int i5 = 0; i5 < i3 && this.f2372n + i5 < C0494e.this.f2334A1; i5++) {
                ConstraintWidget constraintWidget = C0494e.this.f2358z1[this.f2372n + i5];
                if (this.f2359a == 0) {
                    if (constraintWidget != null && constraintWidget.m34051B() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f2158q == 0) {
                        C0494e.this.m33750p1(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i4, constraintWidget.m34019R(), constraintWidget.m33962y());
                    }
                } else if (constraintWidget != null && constraintWidget.m34019R() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f2160r == 0) {
                    C0494e.this.m33750p1(constraintWidget, constraintWidget.m34051B(), constraintWidget.m34013U(), ConstraintWidget.DimensionBehaviour.FIXED, i4);
                }
            }
            m33787h();
        }

        /* renamed from: i */
        public void m33786i(int i) {
            this.f2372n = i;
        }

        /* renamed from: j */
        public void m33785j(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2, int i3, int i4, int i5, int i6) {
            this.f2359a = i;
            this.f2362d = constraintAnchor;
            this.f2363e = constraintAnchor2;
            this.f2364f = constraintAnchor3;
            this.f2365g = constraintAnchor4;
            this.f2366h = i2;
            this.f2367i = i3;
            this.f2368j = i4;
            this.f2369k = i5;
            this.f2375q = i6;
        }
    }

    /* renamed from: V1 */
    private void m33819V1(boolean z) {
        ConstraintWidget constraintWidget;
        if (this.f2357y1 == null || this.f2356x1 == null || this.f2355w1 == null) {
            return;
        }
        for (int i = 0; i < this.f2334A1; i++) {
            this.f2358z1[i].m33984l0();
        }
        int[] iArr = this.f2357y1;
        int i2 = iArr[0];
        int i3 = iArr[1];
        ConstraintWidget constraintWidget2 = null;
        int i4 = 0;
        while (i4 < i2) {
            ConstraintWidget constraintWidget3 = this.f2356x1[z ? (i2 - i4) - 1 : i4];
            ConstraintWidget constraintWidget4 = constraintWidget2;
            if (constraintWidget3 != null) {
                if (constraintWidget3.m34015T() == 8) {
                    constraintWidget4 = constraintWidget2;
                } else {
                    if (i4 == 0) {
                        constraintWidget3.m33986k(constraintWidget3.f2108K, this.f2108K, m33754l1());
                        constraintWidget3.m34050B0(this.f2335c1);
                        constraintWidget3.m34052A0(this.f2341i1);
                    }
                    if (i4 == i2 - 1) {
                        constraintWidget3.m33986k(constraintWidget3.f2112M, this.f2112M, m33753m1());
                    }
                    if (i4 > 0) {
                        constraintWidget3.m33986k(constraintWidget3.f2108K, constraintWidget2.f2112M, this.f2347o1);
                        constraintWidget2.m33986k(constraintWidget2.f2112M, constraintWidget3.f2108K, 0);
                    }
                    constraintWidget4 = constraintWidget3;
                }
            }
            i4++;
            constraintWidget2 = constraintWidget4;
        }
        int i5 = 0;
        while (i5 < i3) {
            ConstraintWidget constraintWidget5 = this.f2355w1[i5];
            ConstraintWidget constraintWidget6 = constraintWidget2;
            if (constraintWidget5 != null) {
                if (constraintWidget5.m34015T() == 8) {
                    constraintWidget6 = constraintWidget2;
                } else {
                    if (i5 == 0) {
                        constraintWidget5.m33986k(constraintWidget5.f2110L, this.f2110L, m33752n1());
                        constraintWidget5.m34016S0(this.f2336d1);
                        constraintWidget5.m34018R0(this.f2342j1);
                    }
                    if (i5 == i3 - 1) {
                        constraintWidget5.m33986k(constraintWidget5.f2114N, this.f2114N, m33755k1());
                    }
                    if (i5 > 0) {
                        constraintWidget5.m33986k(constraintWidget5.f2110L, constraintWidget2.f2114N, this.f2348p1);
                        constraintWidget2.m33986k(constraintWidget2.f2114N, constraintWidget5.f2110L, 0);
                    }
                    constraintWidget6 = constraintWidget5;
                }
            }
            i5++;
            constraintWidget2 = constraintWidget6;
        }
        for (int i6 = 0; i6 < i2; i6++) {
            for (int i7 = 0; i7 < i3; i7++) {
                int i8 = (i7 * i2) + i6;
                if (this.f2353u1 == 1) {
                    i8 = (i6 * i3) + i7;
                }
                ConstraintWidget[] constraintWidgetArr = this.f2358z1;
                if (i8 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i8]) != null && constraintWidget.m34015T() != 8) {
                    ConstraintWidget constraintWidget7 = this.f2356x1[i6];
                    ConstraintWidget constraintWidget8 = this.f2355w1[i7];
                    if (constraintWidget != constraintWidget7) {
                        constraintWidget.m33986k(constraintWidget.f2108K, constraintWidget7.f2108K, 0);
                        constraintWidget.m33986k(constraintWidget.f2112M, constraintWidget7.f2112M, 0);
                    }
                    if (constraintWidget != constraintWidget8) {
                        constraintWidget.m33986k(constraintWidget.f2110L, constraintWidget8.f2110L, 0);
                        constraintWidget.m33986k(constraintWidget.f2114N, constraintWidget8.f2114N, 0);
                    }
                }
            }
        }
    }

    /* renamed from: W1 */
    public final int m33818W1(ConstraintWidget constraintWidget, int i) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.m34019R() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i2 = constraintWidget.f2160r;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (constraintWidget.f2174y * i);
                if (i3 != constraintWidget.m33962y()) {
                    constraintWidget.m34028M0(true);
                    m33750p1(constraintWidget, constraintWidget.m34051B(), constraintWidget.m34013U(), ConstraintWidget.DimensionBehaviour.FIXED, i3);
                }
                return i3;
            } else if (i2 == 1) {
                return constraintWidget.m33962y();
            } else {
                if (i2 == 3) {
                    return (int) ((constraintWidget.m34013U() * constraintWidget.f2126Z) + 0.5f);
                }
            }
        }
        return constraintWidget.m33962y();
    }

    /* renamed from: X1 */
    public final int m33817X1(ConstraintWidget constraintWidget, int i) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.m34051B() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i2 = constraintWidget.f2158q;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (constraintWidget.f2168v * i);
                if (i3 != constraintWidget.m34013U()) {
                    constraintWidget.m34028M0(true);
                    m33750p1(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i3, constraintWidget.m34019R(), constraintWidget.m33962y());
                }
                return i3;
            } else if (i2 == 1) {
                return constraintWidget.m34013U();
            } else {
                if (i2 == 3) {
                    return (int) ((constraintWidget.m33962y() * constraintWidget.f2126Z) + 0.5f);
                }
            }
        }
        return constraintWidget.m34013U();
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0106, code lost:
        if (r8 != 1) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0130  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:118:0x02fa -> B:50:0x011a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:120:0x0308 -> B:50:0x011a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:123:0x031d -> B:50:0x011a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:125:0x032b -> B:50:0x011a). Please submit an issue!!! */
    /* renamed from: Y1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m33816Y1(androidx.constraintlayout.solver.widgets.ConstraintWidget[] r6, int r7, int r8, int r9, int[] r10) {
        /*
            Method dump skipped, instructions count: 836
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.C0494e.m33816Y1(androidx.constraintlayout.solver.widgets.ConstraintWidget[], int, int, int, int[]):void");
    }

    /* renamed from: Z1 */
    private void m33815Z1(ConstraintWidget[] constraintWidgetArr, int i, int i2, int i3, int[] iArr) {
        int i4;
        int i5;
        int i6;
        int i7;
        C0495a c0495a;
        C0495a c0495a2;
        if (i == 0) {
            return;
        }
        this.f2354v1.clear();
        C0495a c0495a3 = new C0495a(i2, this.f2108K, this.f2110L, this.f2112M, this.f2114N, i3);
        this.f2354v1.add(c0495a3);
        if (i2 != 0) {
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            while (true) {
                i4 = i8;
                if (i10 >= i) {
                    break;
                }
                ConstraintWidget constraintWidget = constraintWidgetArr[i10];
                int m33818W1 = m33818W1(constraintWidget, i3);
                int i11 = i8;
                if (constraintWidget.m34019R() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i11 = i8 + 1;
                }
                boolean z = (i9 == i3 || (this.f2348p1 + i9) + m33818W1 > i3) && c0495a3.f2360b != null;
                boolean z2 = z;
                if (!z) {
                    z2 = z;
                    if (i10 > 0) {
                        int i12 = this.f2352t1;
                        z2 = z;
                        if (i12 > 0) {
                            z2 = z;
                            if (i10 % i12 == 0) {
                                z2 = true;
                            }
                        }
                    }
                }
                if (z2) {
                    c0495a = new C0495a(i2, this.f2108K, this.f2110L, this.f2112M, this.f2114N, i3);
                    c0495a.m33786i(i10);
                    this.f2354v1.add(c0495a);
                } else {
                    c0495a = c0495a3;
                    if (i10 > 0) {
                        i9 += this.f2348p1 + m33818W1;
                        c0495a3.m33793b(constraintWidget);
                        i10++;
                        i8 = i11;
                    }
                }
                i9 = m33818W1;
                c0495a3 = c0495a;
                c0495a3.m33793b(constraintWidget);
                i10++;
                i8 = i11;
            }
        } else {
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            while (true) {
                i4 = i13;
                if (i15 >= i) {
                    break;
                }
                ConstraintWidget constraintWidget2 = constraintWidgetArr[i15];
                int m33817X1 = m33817X1(constraintWidget2, i3);
                int i16 = i13;
                if (constraintWidget2.m34051B() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i16 = i13 + 1;
                }
                boolean z3 = (i14 == i3 || (this.f2347o1 + i14) + m33817X1 > i3) && c0495a3.f2360b != null;
                boolean z4 = z3;
                if (!z3) {
                    z4 = z3;
                    if (i15 > 0) {
                        int i17 = this.f2352t1;
                        z4 = z3;
                        if (i17 > 0) {
                            z4 = z3;
                            if (i15 % i17 == 0) {
                                z4 = true;
                            }
                        }
                    }
                }
                if (z4) {
                    c0495a2 = new C0495a(i2, this.f2108K, this.f2110L, this.f2112M, this.f2114N, i3);
                    c0495a2.m33786i(i15);
                    this.f2354v1.add(c0495a2);
                } else {
                    c0495a2 = c0495a3;
                    if (i15 > 0) {
                        i14 += this.f2347o1 + m33817X1;
                        c0495a3.m33793b(constraintWidget2);
                        i15++;
                        i13 = i16;
                    }
                }
                i14 = m33817X1;
                c0495a3 = c0495a2;
                c0495a3.m33793b(constraintWidget2);
                i15++;
                i13 = i16;
            }
        }
        int size = this.f2354v1.size();
        ConstraintAnchor constraintAnchor = this.f2108K;
        ConstraintAnchor constraintAnchor2 = this.f2110L;
        ConstraintAnchor constraintAnchor3 = this.f2112M;
        ConstraintAnchor constraintAnchor4 = this.f2114N;
        int m33754l1 = m33754l1();
        int m33752n1 = m33752n1();
        int m33753m1 = m33753m1();
        int m33755k1 = m33755k1();
        ConstraintWidget.DimensionBehaviour m34051B = m34051B();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z5 = m34051B == dimensionBehaviour || m34019R() == dimensionBehaviour;
        if (i4 > 0 && z5) {
            for (int i18 = 0; i18 < size; i18++) {
                C0495a c0495a4 = this.f2354v1.get(i18);
                if (i2 == 0) {
                    c0495a4.m33788g(i3 - c0495a4.m33789f());
                } else {
                    c0495a4.m33788g(i3 - c0495a4.m33790e());
                }
            }
        }
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        while (i21 < size) {
            C0495a c0495a5 = this.f2354v1.get(i21);
            if (i2 == 0) {
                if (i21 < size - 1) {
                    constraintAnchor4 = this.f2354v1.get(i21 + 1).f2360b.f2110L;
                    i7 = 0;
                } else {
                    constraintAnchor4 = this.f2114N;
                    i7 = m33755k1();
                }
                ConstraintAnchor constraintAnchor5 = c0495a5.f2360b.f2114N;
                c0495a5.m33785j(i2, constraintAnchor, constraintAnchor2, constraintAnchor3, constraintAnchor4, m33754l1, m33752n1, m33753m1, i7, i3);
                int max = Math.max(i20, c0495a5.m33789f());
                int m33790e = i19 + c0495a5.m33790e();
                i19 = m33790e;
                if (i21 > 0) {
                    i19 = m33790e + this.f2348p1;
                }
                constraintAnchor2 = constraintAnchor5;
                m33755k1 = i7;
                i5 = max;
                m33752n1 = 0;
            } else {
                int i22 = i21;
                if (i22 < size - 1) {
                    constraintAnchor3 = this.f2354v1.get(i22 + 1).f2360b.f2108K;
                    i6 = 0;
                } else {
                    constraintAnchor3 = this.f2112M;
                    i6 = m33753m1();
                }
                ConstraintAnchor constraintAnchor6 = c0495a5.f2360b.f2112M;
                c0495a5.m33785j(i2, constraintAnchor, constraintAnchor2, constraintAnchor3, constraintAnchor4, m33754l1, m33752n1, i6, m33755k1, i3);
                int m33789f = i20 + c0495a5.m33789f();
                int max2 = Math.max(i19, c0495a5.m33790e());
                int i23 = m33789f;
                if (i22 > 0) {
                    i23 = m33789f + this.f2347o1;
                }
                m33753m1 = i6;
                constraintAnchor = constraintAnchor6;
                i5 = i23;
                i19 = max2;
                m33754l1 = 0;
            }
            i21++;
            i20 = i5;
        }
        iArr[0] = i20;
        iArr[1] = i19;
    }

    /* renamed from: a2 */
    private void m33814a2(ConstraintWidget[] constraintWidgetArr, int i, int i2, int i3, int[] iArr) {
        C0495a c0495a;
        if (i == 0) {
            return;
        }
        if (this.f2354v1.size() == 0) {
            c0495a = new C0495a(i2, this.f2108K, this.f2110L, this.f2112M, this.f2114N, i3);
            this.f2354v1.add(c0495a);
        } else {
            c0495a = this.f2354v1.get(0);
            c0495a.m33792c();
            c0495a.m33785j(i2, this.f2108K, this.f2110L, this.f2112M, this.f2114N, m33754l1(), m33752n1(), m33753m1(), m33755k1(), i3);
        }
        for (int i4 = 0; i4 < i; i4++) {
            c0495a.m33793b(constraintWidgetArr[i4]);
        }
        iArr[0] = c0495a.m33789f();
        iArr[1] = c0495a.m33790e();
    }

    /* renamed from: b2 */
    public void m33813b2(float f) {
        this.f2343k1 = f;
    }

    /* renamed from: c2 */
    public void m33812c2(int i) {
        this.f2337e1 = i;
    }

    /* renamed from: d2 */
    public void m33811d2(float f) {
        this.f2344l1 = f;
    }

    /* renamed from: e2 */
    public void m33810e2(int i) {
        this.f2338f1 = i;
    }

    /* renamed from: f2 */
    public void m33809f2(int i) {
        this.f2349q1 = i;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: g */
    public void mo33781g(C0458d c0458d, boolean z) {
        super.mo33781g(c0458d, z);
        boolean m33869C1 = m34031L() != null ? ((C0493d) m34031L()).m33869C1() : false;
        int i = this.f2351s1;
        if (i != 0) {
            if (i == 1) {
                int size = this.f2354v1.size();
                int i2 = 0;
                while (i2 < size) {
                    this.f2354v1.get(i2).m33791d(m33869C1, i2, i2 == size - 1);
                    i2++;
                }
            } else if (i == 2) {
                m33819V1(m33869C1);
            }
        } else if (this.f2354v1.size() > 0) {
            this.f2354v1.get(0).m33791d(m33869C1, 0, true);
        }
        m33747s1(false);
    }

    /* renamed from: g2 */
    public void m33808g2(float f) {
        this.f2341i1 = f;
    }

    /* renamed from: h2 */
    public void m33807h2(int i) {
        this.f2347o1 = i;
    }

    /* renamed from: i2 */
    public void m33806i2(int i) {
        this.f2335c1 = i;
    }

    /* renamed from: j2 */
    public void m33805j2(float f) {
        this.f2345m1 = f;
    }

    /* renamed from: k2 */
    public void m33804k2(int i) {
        this.f2339g1 = i;
    }

    /* renamed from: l2 */
    public void m33803l2(float f) {
        this.f2346n1 = f;
    }

    @Override // androidx.constraintlayout.solver.widgets.C0499h, androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: m */
    public void mo33764m(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.mo33764m(constraintWidget, hashMap);
        C0494e c0494e = (C0494e) constraintWidget;
        this.f2335c1 = c0494e.f2335c1;
        this.f2336d1 = c0494e.f2336d1;
        this.f2337e1 = c0494e.f2337e1;
        this.f2338f1 = c0494e.f2338f1;
        this.f2339g1 = c0494e.f2339g1;
        this.f2340h1 = c0494e.f2340h1;
        this.f2341i1 = c0494e.f2341i1;
        this.f2342j1 = c0494e.f2342j1;
        this.f2343k1 = c0494e.f2343k1;
        this.f2344l1 = c0494e.f2344l1;
        this.f2345m1 = c0494e.f2345m1;
        this.f2346n1 = c0494e.f2346n1;
        this.f2347o1 = c0494e.f2347o1;
        this.f2348p1 = c0494e.f2348p1;
        this.f2349q1 = c0494e.f2349q1;
        this.f2350r1 = c0494e.f2350r1;
        this.f2351s1 = c0494e.f2351s1;
        this.f2352t1 = c0494e.f2352t1;
        this.f2353u1 = c0494e.f2353u1;
    }

    /* renamed from: m2 */
    public void m33802m2(int i) {
        this.f2340h1 = i;
    }

    /* renamed from: n2 */
    public void m33801n2(int i) {
        this.f2352t1 = i;
    }

    @Override // androidx.constraintlayout.solver.widgets.C0501j
    /* renamed from: o1 */
    public void mo33751o1(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        if (this.f2386O0 > 0 && !m33749q1()) {
            m33746t1(0, 0);
            m33747s1(false);
            return;
        }
        int m33754l1 = m33754l1();
        int m33753m1 = m33753m1();
        int m33752n1 = m33752n1();
        int m33755k1 = m33755k1();
        int[] iArr = new int[2];
        int i8 = (i2 - m33754l1) - m33753m1;
        int i9 = this.f2353u1;
        if (i9 == 1) {
            i8 = (i4 - m33752n1) - m33755k1;
        }
        if (i9 == 0) {
            if (this.f2335c1 == -1) {
                this.f2335c1 = 0;
            }
            if (this.f2336d1 == -1) {
                this.f2336d1 = 0;
            }
        } else {
            if (this.f2335c1 == -1) {
                this.f2335c1 = 0;
            }
            if (this.f2336d1 == -1) {
                this.f2336d1 = 0;
            }
        }
        ConstraintWidget[] constraintWidgetArr = this.f2385N0;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            i5 = i11;
            i6 = this.f2386O0;
            if (i10 >= i6) {
                break;
            }
            int i12 = i5;
            if (this.f2385N0[i10].m34015T() == 8) {
                i12 = i5 + 1;
            }
            i10++;
            i11 = i12;
        }
        if (i5 > 0) {
            constraintWidgetArr = new ConstraintWidget[i6 - i5];
            int i13 = 0;
            int i14 = 0;
            while (true) {
                i7 = i14;
                if (i13 >= this.f2386O0) {
                    break;
                }
                ConstraintWidget constraintWidget = this.f2385N0[i13];
                int i15 = i7;
                if (constraintWidget.m34015T() != 8) {
                    constraintWidgetArr[i7] = constraintWidget;
                    i15 = i7 + 1;
                }
                i13++;
                i14 = i15;
            }
        } else {
            i7 = i6;
        }
        this.f2358z1 = constraintWidgetArr;
        this.f2334A1 = i7;
        int i16 = this.f2351s1;
        if (i16 == 0) {
            m33814a2(constraintWidgetArr, i7, this.f2353u1, i8, iArr);
        } else if (i16 == 1) {
            m33815Z1(constraintWidgetArr, i7, this.f2353u1, i8, iArr);
        } else if (i16 == 2) {
            m33816Y1(constraintWidgetArr, i7, this.f2353u1, i8, iArr);
        }
        boolean z = true;
        int i17 = iArr[0] + m33754l1 + m33753m1;
        int i18 = iArr[1] + m33752n1 + m33755k1;
        int min = i == 1073741824 ? i2 : i == Integer.MIN_VALUE ? Math.min(i17, i2) : i == 0 ? i17 : 0;
        int min2 = i3 == 1073741824 ? i4 : i3 == Integer.MIN_VALUE ? Math.min(i18, i4) : i3 == 0 ? i18 : 0;
        m33746t1(min, min2);
        m34004Y0(min);
        m33959z0(min2);
        if (this.f2386O0 <= 0) {
            z = false;
        }
        m33747s1(z);
    }

    /* renamed from: o2 */
    public void m33800o2(int i) {
        this.f2353u1 = i;
    }

    /* renamed from: p2 */
    public void m33799p2(int i) {
        this.f2350r1 = i;
    }

    /* renamed from: q2 */
    public void m33798q2(float f) {
        this.f2342j1 = f;
    }

    /* renamed from: r2 */
    public void m33797r2(int i) {
        this.f2348p1 = i;
    }

    /* renamed from: s2 */
    public void m33796s2(int i) {
        this.f2336d1 = i;
    }

    /* renamed from: t2 */
    public void m33795t2(int i) {
        this.f2351s1 = i;
    }
}
