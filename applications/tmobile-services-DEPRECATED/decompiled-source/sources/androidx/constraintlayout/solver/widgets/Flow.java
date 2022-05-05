package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/Flow.class */
public class Flow extends VirtualLayout {

    /* renamed from: v1 */
    private ConstraintWidget[] f2331v1;

    /* renamed from: Y0 */
    private int f2308Y0 = -1;

    /* renamed from: Z0 */
    private int f2309Z0 = -1;

    /* renamed from: a1 */
    private int f2310a1 = -1;

    /* renamed from: b1 */
    private int f2311b1 = -1;

    /* renamed from: c1 */
    private int f2312c1 = -1;

    /* renamed from: d1 */
    private int f2313d1 = -1;

    /* renamed from: e1 */
    private float f2314e1 = 0.5f;

    /* renamed from: f1 */
    private float f2315f1 = 0.5f;

    /* renamed from: g1 */
    private float f2316g1 = 0.5f;

    /* renamed from: h1 */
    private float f2317h1 = 0.5f;

    /* renamed from: i1 */
    private float f2318i1 = 0.5f;

    /* renamed from: j1 */
    private float f2319j1 = 0.5f;

    /* renamed from: k1 */
    private int f2320k1 = 0;

    /* renamed from: l1 */
    private int f2321l1 = 0;

    /* renamed from: m1 */
    private int f2322m1 = 2;

    /* renamed from: n1 */
    private int f2323n1 = 2;

    /* renamed from: o1 */
    private int f2324o1 = 0;

    /* renamed from: p1 */
    private int f2325p1 = -1;

    /* renamed from: q1 */
    private int f2326q1 = 0;

    /* renamed from: r1 */
    private ArrayList<WidgetsList> f2327r1 = new ArrayList<>();

    /* renamed from: s1 */
    private ConstraintWidget[] f2328s1 = null;

    /* renamed from: t1 */
    private ConstraintWidget[] f2329t1 = null;

    /* renamed from: u1 */
    private int[] f2330u1 = null;

    /* renamed from: w1 */
    private int f2332w1 = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/Flow$WidgetsList.class */
    public class WidgetsList {

        /* renamed from: a */
        private int f2333a;

        /* renamed from: d */
        private ConstraintAnchor f2336d;

        /* renamed from: e */
        private ConstraintAnchor f2337e;

        /* renamed from: f */
        private ConstraintAnchor f2338f;

        /* renamed from: g */
        private ConstraintAnchor f2339g;

        /* renamed from: h */
        private int f2340h;

        /* renamed from: i */
        private int f2341i;

        /* renamed from: j */
        private int f2342j;

        /* renamed from: k */
        private int f2343k;

        /* renamed from: q */
        private int f2349q;

        /* renamed from: b */
        private ConstraintWidget f2334b = null;

        /* renamed from: c */
        int f2335c = 0;

        /* renamed from: l */
        private int f2344l = 0;

        /* renamed from: m */
        private int f2345m = 0;

        /* renamed from: n */
        private int f2346n = 0;

        /* renamed from: o */
        private int f2347o = 0;

        /* renamed from: p */
        private int f2348p = 0;

        public WidgetsList(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2) {
            this.f2333a = 0;
            this.f2340h = 0;
            this.f2341i = 0;
            this.f2342j = 0;
            this.f2343k = 0;
            this.f2349q = 0;
            this.f2333a = i;
            this.f2336d = constraintAnchor;
            this.f2337e = constraintAnchor2;
            this.f2338f = constraintAnchor3;
            this.f2339g = constraintAnchor4;
            this.f2340h = Flow.this.m20184l1();
            this.f2341i = Flow.this.m20182n1();
            this.f2342j = Flow.this.m20183m1();
            this.f2343k = Flow.this.m20185k1();
            this.f2349q = i2;
        }

        /* renamed from: h */
        private void m20217h() {
            this.f2344l = 0;
            this.f2345m = 0;
            this.f2334b = null;
            this.f2335c = 0;
            int i = this.f2347o;
            for (int i2 = 0; i2 < i && this.f2346n + i2 < Flow.this.f2332w1; i2++) {
                ConstraintWidget constraintWidget = Flow.this.f2331v1[this.f2346n + i2];
                if (this.f2333a == 0) {
                    int U = constraintWidget.m20356U();
                    int i3 = Flow.this.f2320k1;
                    if (constraintWidget.m20358T() == 8) {
                        i3 = 0;
                    }
                    this.f2344l += U + i3;
                    int W1 = Flow.this.m20248W1(constraintWidget, this.f2349q);
                    if (this.f2334b == null || this.f2335c < W1) {
                        this.f2334b = constraintWidget;
                        this.f2335c = W1;
                        this.f2345m = W1;
                    }
                } else {
                    int X1 = Flow.this.m20247X1(constraintWidget, this.f2349q);
                    int W12 = Flow.this.m20248W1(constraintWidget, this.f2349q);
                    int i4 = Flow.this.f2321l1;
                    if (constraintWidget.m20358T() == 8) {
                        i4 = 0;
                    }
                    this.f2345m += W12 + i4;
                    if (this.f2334b == null || this.f2335c < X1) {
                        this.f2334b = constraintWidget;
                        this.f2335c = X1;
                        this.f2344l = X1;
                    }
                }
            }
        }

        /* renamed from: b */
        public void m20223b(ConstraintWidget constraintWidget) {
            int i = 0;
            int i2 = 0;
            if (this.f2333a == 0) {
                int X1 = Flow.this.m20247X1(constraintWidget, this.f2349q);
                if (constraintWidget.m20394B() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.f2348p++;
                    X1 = 0;
                }
                i2 = Flow.this.f2320k1;
                if (constraintWidget.m20358T() == 8) {
                }
                this.f2344l += X1 + i2;
                int W1 = Flow.this.m20248W1(constraintWidget, this.f2349q);
                if (this.f2334b == null || this.f2335c < W1) {
                    this.f2334b = constraintWidget;
                    this.f2335c = W1;
                    this.f2345m = W1;
                }
            } else {
                int X12 = Flow.this.m20247X1(constraintWidget, this.f2349q);
                int W12 = Flow.this.m20248W1(constraintWidget, this.f2349q);
                if (constraintWidget.m20362R() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.f2348p++;
                    W12 = 0;
                }
                i = Flow.this.f2321l1;
                if (constraintWidget.m20358T() != 8) {
                }
                this.f2345m += W12 + i;
                if (this.f2334b == null || this.f2335c < X12) {
                    this.f2334b = constraintWidget;
                    this.f2335c = X12;
                    this.f2344l = X12;
                }
            }
            this.f2347o++;
        }

        /* renamed from: c */
        public void m20222c() {
            this.f2335c = 0;
            this.f2334b = null;
            this.f2344l = 0;
            this.f2345m = 0;
            this.f2346n = 0;
            this.f2347o = 0;
            this.f2348p = 0;
        }

        /* renamed from: d */
        public void m20221d(boolean z, int i, boolean z2) {
            float f;
            int i2;
            ConstraintWidget constraintWidget;
            float f2;
            int i3;
            int i4 = this.f2347o;
            for (int i5 = 0; i5 < i4 && this.f2346n + i5 < Flow.this.f2332w1; i5++) {
                ConstraintWidget constraintWidget2 = Flow.this.f2331v1[this.f2346n + i5];
                if (constraintWidget2 != null) {
                    constraintWidget2.m20327l0();
                }
            }
            if (!(i4 == 0 || this.f2334b == null)) {
                boolean z3 = z2 && i == 0;
                int i6 = -1;
                int i7 = -1;
                for (int i8 = 0; i8 < i4; i8++) {
                    int i9 = z ? (i4 - 1) - i8 : i8;
                    if (this.f2346n + i9 >= Flow.this.f2332w1) {
                        break;
                    }
                    i6 = i6;
                    i7 = i7;
                    if (Flow.this.f2331v1[this.f2346n + i9].m20358T() == 0) {
                        i6 = i6;
                        if (i6 == -1) {
                            i6 = i8;
                        }
                        i7 = i8;
                    }
                }
                ConstraintWidget constraintWidget3 = null;
                ConstraintWidget constraintWidget4 = null;
                if (this.f2333a == 0) {
                    ConstraintWidget constraintWidget5 = this.f2334b;
                    constraintWidget5.m20359S0(Flow.this.f2309Z0);
                    int i10 = this.f2341i;
                    int i11 = i10;
                    if (i > 0) {
                        i11 = i10 + Flow.this.f2321l1;
                    }
                    constraintWidget5.f2216J.m20417a(this.f2337e, i11);
                    if (z2) {
                        constraintWidget5.f2219L.m20417a(this.f2339g, this.f2343k);
                    }
                    if (i > 0) {
                        this.f2337e.f2190d.f2219L.m20417a(constraintWidget5.f2216J, 0);
                    }
                    if (Flow.this.f2323n1 == 3 && !constraintWidget5.m20350X()) {
                        for (int i12 = 0; i12 < i4; i12++) {
                            int i13 = z ? (i4 - 1) - i12 : i12;
                            if (this.f2346n + i13 >= Flow.this.f2332w1) {
                                break;
                            }
                            constraintWidget = Flow.this.f2331v1[this.f2346n + i13];
                            if (constraintWidget.m20350X()) {
                                break;
                            }
                        }
                    }
                    constraintWidget = constraintWidget5;
                    int i14 = 0;
                    while (i14 < i4) {
                        int i15 = z ? (i4 - 1) - i14 : i14;
                        if (this.f2346n + i15 < Flow.this.f2332w1) {
                            ConstraintWidget constraintWidget6 = Flow.this.f2331v1[this.f2346n + i15];
                            if (i14 == 0) {
                                constraintWidget6.m20329k(constraintWidget6.f2214I, this.f2336d, this.f2340h);
                            }
                            if (i15 == 0) {
                                int i16 = Flow.this.f2308Y0;
                                float f3 = Flow.this.f2314e1;
                                if (this.f2346n != 0 || Flow.this.f2310a1 == -1) {
                                    i3 = i16;
                                    f2 = f3;
                                    if (z2) {
                                        i3 = i16;
                                        f2 = f3;
                                        if (Flow.this.f2312c1 != -1) {
                                            i3 = Flow.this.f2312c1;
                                            f2 = Flow.this.f2318i1;
                                        }
                                    }
                                } else {
                                    i3 = Flow.this.f2310a1;
                                    f2 = Flow.this.f2316g1;
                                }
                                constraintWidget6.m20393B0(i3);
                                constraintWidget6.m20395A0(f2);
                            }
                            if (i14 == i4 - 1) {
                                constraintWidget6.m20329k(constraintWidget6.f2218K, this.f2338f, this.f2342j);
                            }
                            if (constraintWidget4 != null) {
                                constraintWidget6.f2214I.m20417a(constraintWidget4.f2218K, Flow.this.f2320k1);
                                if (i14 == i6) {
                                    constraintWidget6.f2214I.m20397u(this.f2340h);
                                }
                                constraintWidget4.f2218K.m20417a(constraintWidget6.f2214I, 0);
                                if (i14 == i7 + 1) {
                                    constraintWidget4.f2218K.m20397u(this.f2342j);
                                }
                            }
                            if (constraintWidget6 != constraintWidget5) {
                                if (Flow.this.f2323n1 != 3 || !constraintWidget.m20350X() || constraintWidget6 == constraintWidget || !constraintWidget6.m20350X()) {
                                    int i17 = Flow.this.f2323n1;
                                    if (i17 == 0) {
                                        constraintWidget6.f2216J.m20417a(constraintWidget5.f2216J, 0);
                                    } else if (i17 == 1) {
                                        constraintWidget6.f2219L.m20417a(constraintWidget5.f2219L, 0);
                                    } else if (z3) {
                                        constraintWidget6.f2216J.m20417a(this.f2337e, this.f2341i);
                                        constraintWidget6.f2219L.m20417a(this.f2339g, this.f2343k);
                                    } else {
                                        constraintWidget6.f2216J.m20417a(constraintWidget5.f2216J, 0);
                                        constraintWidget6.f2219L.m20417a(constraintWidget5.f2219L, 0);
                                    }
                                } else {
                                    constraintWidget6.f2220M.m20417a(constraintWidget.f2220M, 0);
                                }
                            }
                            i14++;
                            constraintWidget4 = constraintWidget6;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                ConstraintWidget constraintWidget7 = this.f2334b;
                constraintWidget7.m20393B0(Flow.this.f2308Y0);
                int i18 = this.f2340h;
                int i19 = i18;
                if (i > 0) {
                    i19 = i18 + Flow.this.f2320k1;
                }
                if (z) {
                    constraintWidget7.f2218K.m20417a(this.f2338f, i19);
                    if (z2) {
                        constraintWidget7.f2214I.m20417a(this.f2336d, this.f2342j);
                    }
                    if (i > 0) {
                        this.f2338f.f2190d.f2214I.m20417a(constraintWidget7.f2218K, 0);
                    }
                } else {
                    constraintWidget7.f2214I.m20417a(this.f2336d, i19);
                    if (z2) {
                        constraintWidget7.f2218K.m20417a(this.f2338f, this.f2342j);
                    }
                    if (i > 0) {
                        this.f2336d.f2190d.f2218K.m20417a(constraintWidget7.f2214I, 0);
                    }
                }
                int i20 = 0;
                while (i20 < i4 && this.f2346n + i20 < Flow.this.f2332w1) {
                    ConstraintWidget constraintWidget8 = Flow.this.f2331v1[this.f2346n + i20];
                    if (i20 == 0) {
                        constraintWidget8.m20329k(constraintWidget8.f2216J, this.f2337e, this.f2341i);
                        int i21 = Flow.this.f2309Z0;
                        float f4 = Flow.this.f2315f1;
                        if (this.f2346n != 0 || Flow.this.f2311b1 == -1) {
                            i2 = i21;
                            f = f4;
                            if (z2) {
                                i2 = i21;
                                f = f4;
                                if (Flow.this.f2313d1 != -1) {
                                    i2 = Flow.this.f2313d1;
                                    f = Flow.this.f2319j1;
                                }
                            }
                        } else {
                            i2 = Flow.this.f2311b1;
                            f = Flow.this.f2317h1;
                        }
                        constraintWidget8.m20359S0(i2);
                        constraintWidget8.m20361R0(f);
                    }
                    if (i20 == i4 - 1) {
                        constraintWidget8.m20329k(constraintWidget8.f2219L, this.f2339g, this.f2343k);
                    }
                    if (constraintWidget3 != null) {
                        constraintWidget8.f2216J.m20417a(constraintWidget3.f2219L, Flow.this.f2321l1);
                        if (i20 == i6) {
                            constraintWidget8.f2216J.m20397u(this.f2341i);
                        }
                        constraintWidget3.f2219L.m20417a(constraintWidget8.f2216J, 0);
                        if (i20 == i7 + 1) {
                            constraintWidget3.f2219L.m20397u(this.f2343k);
                        }
                    }
                    if (constraintWidget8 != constraintWidget7) {
                        if (z) {
                            int i22 = Flow.this.f2322m1;
                            if (i22 == 0) {
                                constraintWidget8.f2218K.m20417a(constraintWidget7.f2218K, 0);
                            } else if (i22 == 1) {
                                constraintWidget8.f2214I.m20417a(constraintWidget7.f2214I, 0);
                            } else if (i22 == 2) {
                                constraintWidget8.f2214I.m20417a(constraintWidget7.f2214I, 0);
                                constraintWidget8.f2218K.m20417a(constraintWidget7.f2218K, 0);
                            }
                        } else {
                            int i23 = Flow.this.f2322m1;
                            if (i23 == 0) {
                                constraintWidget8.f2214I.m20417a(constraintWidget7.f2214I, 0);
                            } else if (i23 == 1) {
                                constraintWidget8.f2218K.m20417a(constraintWidget7.f2218K, 0);
                            } else if (i23 == 2) {
                                if (z3) {
                                    constraintWidget8.f2214I.m20417a(this.f2336d, this.f2340h);
                                    constraintWidget8.f2218K.m20417a(this.f2338f, this.f2342j);
                                } else {
                                    constraintWidget8.f2214I.m20417a(constraintWidget7.f2214I, 0);
                                    constraintWidget8.f2218K.m20417a(constraintWidget7.f2218K, 0);
                                }
                            }
                        }
                    }
                    i20++;
                    constraintWidget3 = constraintWidget8;
                }
            }
        }

        /* renamed from: e */
        public int m20220e() {
            return this.f2333a == 1 ? this.f2345m - Flow.this.f2321l1 : this.f2345m;
        }

        /* renamed from: f */
        public int m20219f() {
            return this.f2333a == 0 ? this.f2344l - Flow.this.f2320k1 : this.f2344l;
        }

        /* renamed from: g */
        public void m20218g(int i) {
            int i2 = this.f2348p;
            if (i2 != 0) {
                int i3 = this.f2347o;
                int i4 = i / i2;
                for (int i5 = 0; i5 < i3 && this.f2346n + i5 < Flow.this.f2332w1; i5++) {
                    ConstraintWidget constraintWidget = Flow.this.f2331v1[this.f2346n + i5];
                    if (this.f2333a == 0) {
                        if (constraintWidget != null && constraintWidget.m20394B() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f2262o == 0) {
                            Flow.this.m20180p1(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i4, constraintWidget.m20362R(), constraintWidget.m20305y());
                        }
                    } else if (constraintWidget != null && constraintWidget.m20362R() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f2264p == 0) {
                        Flow.this.m20180p1(constraintWidget, constraintWidget.m20394B(), constraintWidget.m20356U(), ConstraintWidget.DimensionBehaviour.FIXED, i4);
                    }
                }
                m20217h();
            }
        }

        /* renamed from: i */
        public void m20216i(int i) {
            this.f2346n = i;
        }

        /* renamed from: j */
        public void m20215j(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2, int i3, int i4, int i5, int i6) {
            this.f2333a = i;
            this.f2336d = constraintAnchor;
            this.f2337e = constraintAnchor2;
            this.f2338f = constraintAnchor3;
            this.f2339g = constraintAnchor4;
            this.f2340h = i2;
            this.f2341i = i3;
            this.f2342j = i4;
            this.f2343k = i5;
            this.f2349q = i6;
        }
    }

    /* renamed from: V1 */
    private void m20249V1(boolean z) {
        ConstraintWidget constraintWidget;
        if (!(this.f2330u1 == null || this.f2329t1 == null || this.f2328s1 == null)) {
            for (int i = 0; i < this.f2332w1; i++) {
                this.f2331v1[i].m20327l0();
            }
            int[] iArr = this.f2330u1;
            int i2 = iArr[0];
            int i3 = iArr[1];
            ConstraintWidget constraintWidget2 = null;
            for (int i4 = 0; i4 < i2; i4++) {
                ConstraintWidget constraintWidget3 = this.f2329t1[z ? (i2 - i4) - 1 : i4];
                constraintWidget2 = constraintWidget2;
                if (constraintWidget3 != null) {
                    if (constraintWidget3.m20358T() == 8) {
                        constraintWidget2 = constraintWidget2;
                    } else {
                        if (i4 == 0) {
                            constraintWidget3.m20329k(constraintWidget3.f2214I, this.f2214I, m20184l1());
                            constraintWidget3.m20393B0(this.f2308Y0);
                            constraintWidget3.m20395A0(this.f2314e1);
                        }
                        if (i4 == i2 - 1) {
                            constraintWidget3.m20329k(constraintWidget3.f2218K, this.f2218K, m20183m1());
                        }
                        if (i4 > 0) {
                            constraintWidget3.m20329k(constraintWidget3.f2214I, constraintWidget2.f2218K, this.f2320k1);
                            constraintWidget2.m20329k(constraintWidget2.f2218K, constraintWidget3.f2214I, 0);
                        }
                        constraintWidget2 = constraintWidget3;
                    }
                }
            }
            for (int i5 = 0; i5 < i3; i5++) {
                ConstraintWidget constraintWidget4 = this.f2328s1[i5];
                constraintWidget2 = constraintWidget2;
                if (constraintWidget4 != null) {
                    if (constraintWidget4.m20358T() == 8) {
                        constraintWidget2 = constraintWidget2;
                    } else {
                        if (i5 == 0) {
                            constraintWidget4.m20329k(constraintWidget4.f2216J, this.f2216J, m20182n1());
                            constraintWidget4.m20359S0(this.f2309Z0);
                            constraintWidget4.m20361R0(this.f2315f1);
                        }
                        if (i5 == i3 - 1) {
                            constraintWidget4.m20329k(constraintWidget4.f2219L, this.f2219L, m20185k1());
                        }
                        if (i5 > 0) {
                            constraintWidget4.m20329k(constraintWidget4.f2216J, constraintWidget2.f2219L, this.f2321l1);
                            constraintWidget2.m20329k(constraintWidget2.f2219L, constraintWidget4.f2216J, 0);
                        }
                        constraintWidget2 = constraintWidget4;
                    }
                }
            }
            for (int i6 = 0; i6 < i2; i6++) {
                for (int i7 = 0; i7 < i3; i7++) {
                    int i8 = (i7 * i2) + i6;
                    if (this.f2326q1 == 1) {
                        i8 = (i6 * i3) + i7;
                    }
                    ConstraintWidget[] constraintWidgetArr = this.f2331v1;
                    if (!(i8 >= constraintWidgetArr.length || (constraintWidget = constraintWidgetArr[i8]) == null || constraintWidget.m20358T() == 8)) {
                        ConstraintWidget constraintWidget5 = this.f2329t1[i6];
                        ConstraintWidget constraintWidget6 = this.f2328s1[i7];
                        if (constraintWidget != constraintWidget5) {
                            constraintWidget.m20329k(constraintWidget.f2214I, constraintWidget5.f2214I, 0);
                            constraintWidget.m20329k(constraintWidget.f2218K, constraintWidget5.f2218K, 0);
                        }
                        if (constraintWidget != constraintWidget6) {
                            constraintWidget.m20329k(constraintWidget.f2216J, constraintWidget6.f2216J, 0);
                            constraintWidget.m20329k(constraintWidget.f2219L, constraintWidget6.f2219L, 0);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W1 */
    public final int m20248W1(ConstraintWidget constraintWidget, int i) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.m20362R() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i2 = constraintWidget.f2264p;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (constraintWidget.f2278w * i);
                if (i3 != constraintWidget.m20305y()) {
                    constraintWidget.m20371M0(true);
                    m20180p1(constraintWidget, constraintWidget.m20394B(), constraintWidget.m20356U(), ConstraintWidget.DimensionBehaviour.FIXED, i3);
                }
                return i3;
            } else if (i2 == 1) {
                return constraintWidget.m20305y();
            } else {
                if (i2 == 3) {
                    return (int) ((constraintWidget.m20356U() * constraintWidget.f2231X) + 0.5f);
                }
            }
        }
        return constraintWidget.m20305y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X1 */
    public final int m20247X1(ConstraintWidget constraintWidget, int i) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.m20394B() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i2 = constraintWidget.f2262o;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (constraintWidget.f2272t * i);
                if (i3 != constraintWidget.m20356U()) {
                    constraintWidget.m20371M0(true);
                    m20180p1(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i3, constraintWidget.m20362R(), constraintWidget.m20305y());
                }
                return i3;
            } else if (i2 == 1) {
                return constraintWidget.m20356U();
            } else {
                if (i2 == 3) {
                    return (int) ((constraintWidget.m20305y() * constraintWidget.f2231X) + 0.5f);
                }
            }
        }
        return constraintWidget.m20356U();
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0106, code lost:
        if (r8 != 1) goto L_0x0109;
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
    private void m20246Y1(androidx.constraintlayout.solver.widgets.ConstraintWidget[] r6, int r7, int r8, int r9, int[] r10) {
        /*
            Method dump skipped, instructions count: 836
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.Flow.m20246Y1(androidx.constraintlayout.solver.widgets.ConstraintWidget[], int, int, int, int[]):void");
    }

    /* renamed from: Z1 */
    private void m20245Z1(ConstraintWidget[] constraintWidgetArr, int i, int i2, int i3, int[] iArr) {
        int i4;
        int i5;
        int i6;
        if (i != 0) {
            this.f2327r1.clear();
            WidgetsList widgetsList = new WidgetsList(i2, this.f2214I, this.f2216J, this.f2218K, this.f2219L, i3);
            this.f2327r1.add(widgetsList);
            if (i2 != 0) {
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                while (true) {
                    i4 = i7;
                    if (i9 >= i) {
                        break;
                    }
                    ConstraintWidget constraintWidget = constraintWidgetArr[i9];
                    int W1 = m20248W1(constraintWidget, i3);
                    i7 = i7;
                    if (constraintWidget.m20362R() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        i7++;
                    }
                    boolean z = (i8 == i3 || (this.f2321l1 + i8) + W1 > i3) && widgetsList.f2334b != null;
                    boolean z2 = z;
                    if (!z) {
                        z2 = z;
                        if (i9 > 0) {
                            int i10 = this.f2325p1;
                            z2 = z;
                            if (i10 > 0) {
                                z2 = z;
                                if (i9 % i10 == 0) {
                                    z2 = true;
                                }
                            }
                        }
                    }
                    if (z2) {
                        widgetsList = new WidgetsList(i2, this.f2214I, this.f2216J, this.f2218K, this.f2219L, i3);
                        widgetsList.m20216i(i9);
                        this.f2327r1.add(widgetsList);
                    } else {
                        widgetsList = widgetsList;
                        if (i9 > 0) {
                            i8 += this.f2321l1 + W1;
                            widgetsList.m20223b(constraintWidget);
                            i9++;
                        }
                    }
                    i8 = W1;
                    widgetsList.m20223b(constraintWidget);
                    i9++;
                }
            } else {
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                while (true) {
                    i4 = i11;
                    if (i13 >= i) {
                        break;
                    }
                    ConstraintWidget constraintWidget2 = constraintWidgetArr[i13];
                    int X1 = m20247X1(constraintWidget2, i3);
                    i11 = i11;
                    if (constraintWidget2.m20394B() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        i11++;
                    }
                    boolean z3 = (i12 == i3 || (this.f2320k1 + i12) + X1 > i3) && widgetsList.f2334b != null;
                    boolean z4 = z3;
                    if (!z3) {
                        z4 = z3;
                        if (i13 > 0) {
                            int i14 = this.f2325p1;
                            z4 = z3;
                            if (i14 > 0) {
                                z4 = z3;
                                if (i13 % i14 == 0) {
                                    z4 = true;
                                }
                            }
                        }
                    }
                    if (z4) {
                        widgetsList = new WidgetsList(i2, this.f2214I, this.f2216J, this.f2218K, this.f2219L, i3);
                        widgetsList.m20216i(i13);
                        this.f2327r1.add(widgetsList);
                    } else {
                        widgetsList = widgetsList;
                        if (i13 > 0) {
                            i12 += this.f2320k1 + X1;
                            widgetsList = widgetsList;
                            widgetsList.m20223b(constraintWidget2);
                            i13++;
                        }
                    }
                    i12 = X1;
                    widgetsList.m20223b(constraintWidget2);
                    i13++;
                }
            }
            int size = this.f2327r1.size();
            ConstraintAnchor constraintAnchor = this.f2214I;
            ConstraintAnchor constraintAnchor2 = this.f2216J;
            ConstraintAnchor constraintAnchor3 = this.f2218K;
            ConstraintAnchor constraintAnchor4 = this.f2219L;
            int l1 = m20184l1();
            int n1 = m20182n1();
            int m1 = m20183m1();
            int k1 = m20185k1();
            boolean z5 = m20394B() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || m20362R() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (i4 > 0 && z5) {
                for (int i15 = 0; i15 < size; i15++) {
                    WidgetsList widgetsList2 = this.f2327r1.get(i15);
                    if (i2 == 0) {
                        widgetsList2.m20218g(i3 - widgetsList2.m20219f());
                    } else {
                        widgetsList2.m20218g(i3 - widgetsList2.m20220e());
                    }
                }
            }
            int i16 = 0;
            int i17 = 0;
            for (int i18 = 0; i18 < size; i18++) {
                WidgetsList widgetsList3 = this.f2327r1.get(i18);
                if (i2 == 0) {
                    if (i18 < size - 1) {
                        constraintAnchor4 = this.f2327r1.get(i18 + 1).f2334b.f2216J;
                        i6 = 0;
                    } else {
                        constraintAnchor4 = this.f2219L;
                        i6 = m20185k1();
                    }
                    constraintAnchor2 = widgetsList3.f2334b.f2219L;
                    widgetsList3.m20215j(i2, constraintAnchor, constraintAnchor2, constraintAnchor3, constraintAnchor4, l1, n1, m1, i6, i3);
                    i17 = Math.max(i17, widgetsList3.m20219f());
                    int e = i16 + widgetsList3.m20220e();
                    i16 = e;
                    if (i18 > 0) {
                        i16 = e + this.f2321l1;
                    }
                    n1 = 0;
                    k1 = i6;
                } else {
                    if (i18 < size - 1) {
                        constraintAnchor3 = this.f2327r1.get(i18 + 1).f2334b.f2214I;
                        i5 = 0;
                    } else {
                        constraintAnchor3 = this.f2218K;
                        i5 = m20183m1();
                    }
                    constraintAnchor = widgetsList3.f2334b.f2218K;
                    widgetsList3.m20215j(i2, constraintAnchor, constraintAnchor2, constraintAnchor3, constraintAnchor4, l1, n1, i5, k1, i3);
                    int f = i17 + widgetsList3.m20219f();
                    i16 = Math.max(i16, widgetsList3.m20220e());
                    i17 = f;
                    if (i18 > 0) {
                        i17 = f + this.f2320k1;
                    }
                    m1 = i5;
                    l1 = 0;
                }
            }
            iArr[0] = i17;
            iArr[1] = i16;
        }
    }

    /* renamed from: a2 */
    private void m20244a2(ConstraintWidget[] constraintWidgetArr, int i, int i2, int i3, int[] iArr) {
        WidgetsList widgetsList;
        if (i != 0) {
            if (this.f2327r1.size() == 0) {
                widgetsList = new WidgetsList(i2, this.f2214I, this.f2216J, this.f2218K, this.f2219L, i3);
                this.f2327r1.add(widgetsList);
            } else {
                widgetsList = this.f2327r1.get(0);
                widgetsList.m20222c();
                widgetsList.m20215j(i2, this.f2214I, this.f2216J, this.f2218K, this.f2219L, m20184l1(), m20182n1(), m20183m1(), m20185k1(), i3);
            }
            for (int i4 = 0; i4 < i; i4++) {
                widgetsList.m20223b(constraintWidgetArr[i4]);
            }
            iArr[0] = widgetsList.m20219f();
            iArr[1] = widgetsList.m20220e();
        }
    }

    /* renamed from: b2 */
    public void m20243b2(float f) {
        this.f2316g1 = f;
    }

    /* renamed from: c2 */
    public void m20242c2(int i) {
        this.f2310a1 = i;
    }

    /* renamed from: d2 */
    public void m20241d2(float f) {
        this.f2317h1 = f;
    }

    /* renamed from: e2 */
    public void m20240e2(int i) {
        this.f2311b1 = i;
    }

    /* renamed from: f2 */
    public void m20239f2(int i) {
        this.f2322m1 = i;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: g */
    public void mo20211g(LinearSystem linearSystem, boolean z) {
        super.mo20211g(linearSystem, z);
        boolean C1 = m20374L() != null ? ((ConstraintWidgetContainer) m20374L()).m20299C1() : false;
        int i = this.f2324o1;
        if (i != 0) {
            if (i == 1) {
                int size = this.f2327r1.size();
                int i2 = 0;
                while (i2 < size) {
                    this.f2327r1.get(i2).m20221d(C1, i2, i2 == size - 1);
                    i2++;
                }
            } else if (i == 2) {
                m20249V1(C1);
            }
        } else if (this.f2327r1.size() > 0) {
            this.f2327r1.get(0).m20221d(C1, 0, true);
        }
        m20177s1(false);
    }

    /* renamed from: g2 */
    public void m20238g2(float f) {
        this.f2314e1 = f;
    }

    /* renamed from: h2 */
    public void m20237h2(int i) {
        this.f2320k1 = i;
    }

    /* renamed from: i2 */
    public void m20236i2(int i) {
        this.f2308Y0 = i;
    }

    /* renamed from: j2 */
    public void m20235j2(float f) {
        this.f2318i1 = f;
    }

    /* renamed from: k2 */
    public void m20234k2(int i) {
        this.f2312c1 = i;
    }

    /* renamed from: l2 */
    public void m20233l2(float f) {
        this.f2319j1 = f;
    }

    @Override // androidx.constraintlayout.solver.widgets.HelperWidget, androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: m */
    public void mo20194m(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.mo20194m(constraintWidget, hashMap);
        Flow flow = (Flow) constraintWidget;
        this.f2308Y0 = flow.f2308Y0;
        this.f2309Z0 = flow.f2309Z0;
        this.f2310a1 = flow.f2310a1;
        this.f2311b1 = flow.f2311b1;
        this.f2312c1 = flow.f2312c1;
        this.f2313d1 = flow.f2313d1;
        this.f2314e1 = flow.f2314e1;
        this.f2315f1 = flow.f2315f1;
        this.f2316g1 = flow.f2316g1;
        this.f2317h1 = flow.f2317h1;
        this.f2318i1 = flow.f2318i1;
        this.f2319j1 = flow.f2319j1;
        this.f2320k1 = flow.f2320k1;
        this.f2321l1 = flow.f2321l1;
        this.f2322m1 = flow.f2322m1;
        this.f2323n1 = flow.f2323n1;
        this.f2324o1 = flow.f2324o1;
        this.f2325p1 = flow.f2325p1;
        this.f2326q1 = flow.f2326q1;
    }

    /* renamed from: m2 */
    public void m20232m2(int i) {
        this.f2313d1 = i;
    }

    /* renamed from: n2 */
    public void m20231n2(int i) {
        this.f2325p1 = i;
    }

    @Override // androidx.constraintlayout.solver.widgets.VirtualLayout
    /* renamed from: o1 */
    public void mo20181o1(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (this.f2359M0 <= 0 || m20179q1()) {
            int l1 = m20184l1();
            int m1 = m20183m1();
            int n1 = m20182n1();
            int k1 = m20185k1();
            int[] iArr = new int[2];
            int i7 = (i2 - l1) - m1;
            if (this.f2326q1 == 1) {
                i7 = (i4 - n1) - k1;
            }
            if (this.f2326q1 == 0) {
                if (this.f2308Y0 == -1) {
                    this.f2308Y0 = 0;
                }
                if (this.f2309Z0 == -1) {
                    this.f2309Z0 = 0;
                }
            } else {
                if (this.f2308Y0 == -1) {
                    this.f2308Y0 = 0;
                }
                if (this.f2309Z0 == -1) {
                    this.f2309Z0 = 0;
                }
            }
            ConstraintWidget[] constraintWidgetArr = this.f2358L0;
            int i8 = 0;
            int i9 = 0;
            while (true) {
                i5 = this.f2359M0;
                if (i8 >= i5) {
                    break;
                }
                i9 = i9;
                if (this.f2358L0[i8].m20358T() == 8) {
                    i9++;
                }
                i8++;
            }
            if (i9 > 0) {
                constraintWidgetArr = new ConstraintWidget[i5 - i9];
                i6 = 0;
                for (int i10 = 0; i10 < this.f2359M0; i10++) {
                    ConstraintWidget constraintWidget = this.f2358L0[i10];
                    i6 = i6;
                    if (constraintWidget.m20358T() != 8) {
                        constraintWidgetArr[i6] = constraintWidget;
                        i6++;
                    }
                }
            } else {
                i6 = i5;
            }
            this.f2331v1 = constraintWidgetArr;
            this.f2332w1 = i6;
            int i11 = this.f2324o1;
            if (i11 == 0) {
                m20244a2(constraintWidgetArr, i6, this.f2326q1, i7, iArr);
            } else if (i11 == 1) {
                m20245Z1(constraintWidgetArr, i6, this.f2326q1, i7, iArr);
            } else if (i11 == 2) {
                m20246Y1(constraintWidgetArr, i6, this.f2326q1, i7, iArr);
            }
            boolean z = true;
            int i12 = iArr[0] + l1 + m1;
            int i13 = iArr[1] + n1 + k1;
            int min = i == 1073741824 ? i2 : i == Integer.MIN_VALUE ? Math.min(i12, i2) : i == 0 ? i12 : 0;
            int min2 = i3 == 1073741824 ? i4 : i3 == Integer.MIN_VALUE ? Math.min(i13, i4) : i3 == 0 ? i13 : 0;
            m20176t1(min, min2);
            m20347Y0(min);
            m20302z0(min2);
            if (this.f2359M0 <= 0) {
                z = false;
            }
            m20177s1(z);
            return;
        }
        m20176t1(0, 0);
        m20177s1(false);
    }

    /* renamed from: o2 */
    public void m20230o2(int i) {
        this.f2326q1 = i;
    }

    /* renamed from: p2 */
    public void m20229p2(int i) {
        this.f2323n1 = i;
    }

    /* renamed from: q2 */
    public void m20228q2(float f) {
        this.f2315f1 = f;
    }

    /* renamed from: r2 */
    public void m20227r2(int i) {
        this.f2321l1 = i;
    }

    /* renamed from: s2 */
    public void m20226s2(int i) {
        this.f2309Z0 = i;
    }

    /* renamed from: t2 */
    public void m20225t2(int i) {
        this.f2324o1 = i;
    }
}
