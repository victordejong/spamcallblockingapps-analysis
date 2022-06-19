package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.C0458d;
import androidx.constraintlayout.solver.C0461e;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.C0473b;
import androidx.constraintlayout.solver.widgets.analyzer.C0478e;
import androidx.constraintlayout.solver.widgets.analyzer.C0480g;
import androidx.constraintlayout.solver.widgets.analyzer.C0481h;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: androidx.constraintlayout.solver.widgets.d */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/d.class */
public class C0493d extends C0502k {

    /* renamed from: S0 */
    public C0461e f2309S0;

    /* renamed from: U0 */
    int f2311U0;

    /* renamed from: V0 */
    int f2312V0;

    /* renamed from: W0 */
    int f2313W0;

    /* renamed from: X0 */
    int f2314X0;

    /* renamed from: O0 */
    C0473b f2305O0 = new C0473b(this);

    /* renamed from: P0 */
    public C0478e f2306P0 = new C0478e(this);

    /* renamed from: Q0 */
    protected C0473b.AbstractC0475b f2307Q0 = null;

    /* renamed from: R0 */
    private boolean f2308R0 = false;

    /* renamed from: T0 */
    protected C0458d f2310T0 = new C0458d();

    /* renamed from: Y0 */
    public int f2315Y0 = 0;

    /* renamed from: Z0 */
    public int f2316Z0 = 0;

    /* renamed from: a1 */
    C0492c[] f2317a1 = new C0492c[4];

    /* renamed from: b1 */
    C0492c[] f2318b1 = new C0492c[4];

    /* renamed from: c1 */
    public boolean f2319c1 = false;

    /* renamed from: d1 */
    public boolean f2320d1 = false;

    /* renamed from: e1 */
    public boolean f2321e1 = false;

    /* renamed from: f1 */
    public int f2322f1 = 0;

    /* renamed from: g1 */
    public int f2323g1 = 0;

    /* renamed from: h1 */
    private int f2324h1 = 257;

    /* renamed from: i1 */
    public boolean f2325i1 = false;

    /* renamed from: j1 */
    private boolean f2326j1 = false;

    /* renamed from: k1 */
    private boolean f2327k1 = false;

    /* renamed from: l1 */
    int f2328l1 = 0;

    /* renamed from: m1 */
    private WeakReference<ConstraintAnchor> f2329m1 = null;

    /* renamed from: n1 */
    private WeakReference<ConstraintAnchor> f2330n1 = null;

    /* renamed from: o1 */
    private WeakReference<ConstraintAnchor> f2331o1 = null;

    /* renamed from: p1 */
    private WeakReference<ConstraintAnchor> f2332p1 = null;

    /* renamed from: q1 */
    public C0473b.C0474a f2333q1 = new C0473b.C0474a();

    /* renamed from: F1 */
    public static boolean m33866F1(ConstraintWidget constraintWidget, C0473b.AbstractC0475b abstractC0475b, C0473b.C0474a c0474a, int i) {
        int i2;
        int i3;
        if (abstractC0475b == null) {
            return false;
        }
        c0474a.f2232d = constraintWidget.m34051B();
        c0474a.f2233e = constraintWidget.m34019R();
        c0474a.f2234f = constraintWidget.m34013U();
        c0474a.f2235g = constraintWidget.m33962y();
        c0474a.f2240l = false;
        c0474a.f2241m = i;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = c0474a.f2232d;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z = dimensionBehaviour == dimensionBehaviour2;
        boolean z2 = c0474a.f2233e == dimensionBehaviour2;
        boolean z3 = z && constraintWidget.f2126Z > 0.0f;
        boolean z4 = z2 && constraintWidget.f2126Z > 0.0f;
        boolean z5 = z;
        if (z) {
            z5 = z;
            if (constraintWidget.m34005Y(0)) {
                z5 = z;
                if (constraintWidget.f2158q == 0) {
                    z5 = z;
                    if (!z3) {
                        c0474a.f2232d = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                        if (z2 && constraintWidget.f2160r == 0) {
                            c0474a.f2232d = ConstraintWidget.DimensionBehaviour.FIXED;
                        }
                        z5 = false;
                    }
                }
            }
        }
        boolean z6 = z2;
        if (z2) {
            z6 = z2;
            if (constraintWidget.m34005Y(1)) {
                z6 = z2;
                if (constraintWidget.f2160r == 0) {
                    z6 = z2;
                    if (!z4) {
                        c0474a.f2233e = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                        if (z5 && constraintWidget.f2158q == 0) {
                            c0474a.f2233e = ConstraintWidget.DimensionBehaviour.FIXED;
                        }
                        z6 = false;
                    }
                }
            }
        }
        if (constraintWidget.mo33778h0()) {
            c0474a.f2232d = ConstraintWidget.DimensionBehaviour.FIXED;
            z5 = false;
        }
        if (constraintWidget.mo33776i0()) {
            c0474a.f2233e = ConstraintWidget.DimensionBehaviour.FIXED;
            z6 = false;
        }
        if (z3) {
            if (constraintWidget.f2162s[0] == 4) {
                c0474a.f2232d = ConstraintWidget.DimensionBehaviour.FIXED;
            } else if (!z6) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = c0474a.f2233e;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                if (dimensionBehaviour3 == dimensionBehaviour4) {
                    i3 = c0474a.f2235g;
                } else {
                    c0474a.f2232d = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    abstractC0475b.mo33670b(constraintWidget, c0474a);
                    i3 = c0474a.f2237i;
                }
                c0474a.f2232d = dimensionBehaviour4;
                int i4 = constraintWidget.f2127a0;
                if (i4 == 0 || i4 == -1) {
                    c0474a.f2234f = (int) (constraintWidget.m33966w() * i3);
                } else {
                    c0474a.f2234f = (int) (constraintWidget.m33966w() / i3);
                }
            }
        }
        if (z4) {
            if (constraintWidget.f2162s[1] == 4) {
                c0474a.f2233e = ConstraintWidget.DimensionBehaviour.FIXED;
            } else if (!z5) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = c0474a.f2232d;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.FIXED;
                if (dimensionBehaviour5 == dimensionBehaviour6) {
                    i2 = c0474a.f2234f;
                } else {
                    c0474a.f2233e = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    abstractC0475b.mo33670b(constraintWidget, c0474a);
                    i2 = c0474a.f2236h;
                }
                c0474a.f2233e = dimensionBehaviour6;
                int i5 = constraintWidget.f2127a0;
                if (i5 == 0 || i5 == -1) {
                    c0474a.f2235g = (int) (i2 / constraintWidget.m33966w());
                } else {
                    c0474a.f2235g = (int) (i2 * constraintWidget.m33966w());
                }
            }
        }
        abstractC0475b.mo33670b(constraintWidget, c0474a);
        constraintWidget.m34004Y0(c0474a.f2236h);
        constraintWidget.m33959z0(c0474a.f2237i);
        constraintWidget.m33961y0(c0474a.f2239k);
        constraintWidget.m33980o0(c0474a.f2238j);
        c0474a.f2241m = C0473b.C0474a.f2229a;
        return c0474a.f2240l;
    }

    /* renamed from: H1 */
    private void m33864H1() {
        this.f2315Y0 = 0;
        this.f2316Z0 = 0;
    }

    /* renamed from: k1 */
    private void m33855k1(ConstraintWidget constraintWidget) {
        int i = this.f2315Y0;
        C0492c[] c0492cArr = this.f2318b1;
        if (i + 1 >= c0492cArr.length) {
            this.f2318b1 = (C0492c[]) Arrays.copyOf(c0492cArr, c0492cArr.length * 2);
        }
        this.f2318b1[this.f2315Y0] = new C0492c(constraintWidget, 0, m33869C1());
        this.f2315Y0++;
    }

    /* renamed from: n1 */
    private void m33852n1(ConstraintAnchor constraintAnchor, SolverVariable solverVariable) {
        this.f2310T0.m34127h(solverVariable, this.f2310T0.m34118q(constraintAnchor), 0, 5);
    }

    /* renamed from: o1 */
    private void m33851o1(ConstraintAnchor constraintAnchor, SolverVariable solverVariable) {
        this.f2310T0.m34127h(this.f2310T0.m34118q(constraintAnchor), solverVariable, 0, 5);
    }

    /* renamed from: p1 */
    private void m33850p1(ConstraintWidget constraintWidget) {
        int i = this.f2316Z0;
        C0492c[] c0492cArr = this.f2317a1;
        if (i + 1 >= c0492cArr.length) {
            this.f2317a1 = (C0492c[]) Arrays.copyOf(c0492cArr, c0492cArr.length * 2);
        }
        this.f2317a1[this.f2316Z0] = new C0492c(constraintWidget, 1, m33869C1());
        this.f2316Z0++;
    }

    /* renamed from: A1 */
    public void m33871A1() {
        this.f2306P0.m33918k();
    }

    /* renamed from: B1 */
    public boolean m33870B1() {
        return this.f2327k1;
    }

    /* renamed from: C1 */
    public boolean m33869C1() {
        return this.f2308R0;
    }

    /* renamed from: D1 */
    public boolean m33868D1() {
        return this.f2326j1;
    }

    /* renamed from: E1 */
    public long m33867E1(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.f2311U0 = i8;
        this.f2312V0 = i9;
        return this.f2305O0.m33934d(this, i, i8, i9, i2, i3, i4, i5, i6, i7);
    }

    /* renamed from: G1 */
    public boolean m33865G1(int i) {
        return (this.f2324h1 & i) == i;
    }

    /* renamed from: I1 */
    public void m33863I1(C0473b.AbstractC0475b abstractC0475b) {
        this.f2307Q0 = abstractC0475b;
        this.f2306P0.m33915n(abstractC0475b);
    }

    /* renamed from: J1 */
    public void m33862J1(int i) {
        this.f2324h1 = i;
        C0458d.f2014a = m33865G1(512);
    }

    /* renamed from: K1 */
    public void m33861K1(boolean z) {
        this.f2308R0 = z;
    }

    /* renamed from: L1 */
    public void m33860L1(C0458d c0458d, boolean[] zArr) {
        zArr[2] = false;
        boolean m33865G1 = m33865G1(64);
        mo33784d1(c0458d, m33865G1);
        int size = this.f2401N0.size();
        for (int i = 0; i < size; i++) {
            this.f2401N0.get(i).mo33784d1(c0458d, m33865G1);
        }
    }

    /* renamed from: M1 */
    public void m33859M1() {
        this.f2305O0.m33933e(this);
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: c1 */
    public void mo33858c1(boolean z, boolean z2) {
        super.mo33858c1(z, z2);
        int size = this.f2401N0.size();
        for (int i = 0; i < size; i++) {
            this.f2401N0.get(i).mo33858c1(z, z2);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.C0502k
    /* renamed from: f1 */
    public void mo33737f1() {
        int i;
        int i2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        this.f2129b0 = 0;
        this.f2131c0 = 0;
        this.f2326j1 = false;
        this.f2327k1 = false;
        int size = this.f2401N0.size();
        int max = Math.max(0, m34013U());
        int max2 = Math.max(0, m33962y());
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = this.f2122V;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr[0];
        if (this.f2309S0 == null) {
            if (C0500i.m33762b(this.f2324h1, 1)) {
                C0480g.m33906h(this, m33844v1());
                for (int i3 = 0; i3 < size; i3++) {
                    ConstraintWidget constraintWidget = this.f2401N0.get(i3);
                    if (constraintWidget.m33990g0() && !(constraintWidget instanceof C0496f) && !(constraintWidget instanceof C0470a) && !(constraintWidget instanceof C0501j) && !constraintWidget.m33991f0()) {
                        ConstraintWidget.DimensionBehaviour m33968v = constraintWidget.m33968v(0);
                        ConstraintWidget.DimensionBehaviour m33968v2 = constraintWidget.m33968v(1);
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (!(m33968v == dimensionBehaviour4 && constraintWidget.f2158q != 1 && m33968v2 == dimensionBehaviour4 && constraintWidget.f2160r != 1)) {
                            m33866F1(constraintWidget, this.f2307Q0, new C0473b.C0474a(), C0473b.C0474a.f2229a);
                        }
                    }
                }
            }
            if (size <= 2 || (!(dimensionBehaviour3 == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour2 == dimensionBehaviour) || !C0500i.m33762b(this.f2324h1, 1024) || !C0481h.m33902c(this, m33844v1()))) {
                z = false;
                i = max2;
                i2 = max;
            } else {
                int i4 = max;
                if (dimensionBehaviour3 == dimensionBehaviour) {
                    if (max >= m34013U() || max <= 0) {
                        i4 = m34013U();
                    } else {
                        m34004Y0(max);
                        this.f2326j1 = true;
                        i4 = max;
                    }
                }
                int i5 = max2;
                if (dimensionBehaviour2 == dimensionBehaviour) {
                    if (max2 >= m33962y() || max2 <= 0) {
                        i5 = m33962y();
                    } else {
                        m33959z0(max2);
                        this.f2327k1 = true;
                        i5 = max2;
                    }
                }
                i2 = i4;
                z = true;
                i = i5;
            }
            boolean z5 = m33865G1(64) || m33865G1(128);
            C0458d c0458d = this.f2310T0;
            c0458d.f2030q = false;
            c0458d.f2031r = false;
            if (this.f2324h1 != 0 && z5) {
                c0458d.f2031r = true;
            }
            ArrayList<ConstraintWidget> arrayList = this.f2401N0;
            ConstraintWidget.DimensionBehaviour m34051B = m34051B();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            boolean z6 = m34051B == dimensionBehaviour5 || m34019R() == dimensionBehaviour5;
            m33864H1();
            for (int i6 = 0; i6 < size; i6++) {
                ConstraintWidget constraintWidget2 = this.f2401N0.get(i6);
                if (constraintWidget2 instanceof C0502k) {
                    ((C0502k) constraintWidget2).mo33737f1();
                }
            }
            boolean m33865G1 = m33865G1(64);
            int i7 = 0;
            boolean z7 = true;
            while (z7) {
                int i8 = i7 + 1;
                boolean z8 = z7;
                try {
                    this.f2310T0.m34135D();
                    boolean z9 = z7;
                    m33864H1();
                    boolean z10 = z7;
                    m33982n(this.f2310T0);
                    for (int i9 = 0; i9 < size; i9++) {
                        this.f2401N0.get(i9).m33982n(this.f2310T0);
                    }
                    boolean m33856j1 = m33856j1(this.f2310T0);
                    WeakReference<ConstraintAnchor> weakReference = this.f2329m1;
                    if (weakReference != null && weakReference.get() != null) {
                        m33851o1(this.f2329m1.get(), this.f2310T0.m34118q(this.f2110L));
                        this.f2329m1 = null;
                    }
                    WeakReference<ConstraintAnchor> weakReference2 = this.f2331o1;
                    if (weakReference2 != null && weakReference2.get() != null) {
                        m33852n1(this.f2331o1.get(), this.f2310T0.m34118q(this.f2114N));
                        this.f2331o1 = null;
                    }
                    WeakReference<ConstraintAnchor> weakReference3 = this.f2330n1;
                    if (weakReference3 != null && weakReference3.get() != null) {
                        m33851o1(this.f2330n1.get(), this.f2310T0.m34118q(this.f2108K));
                        this.f2330n1 = null;
                    }
                    WeakReference<ConstraintAnchor> weakReference4 = this.f2332p1;
                    if (weakReference4 != null && weakReference4.get() != null) {
                        m33852n1(this.f2332p1.get(), this.f2310T0.m34118q(this.f2112M));
                        this.f2332p1 = null;
                    }
                    z8 = m33856j1;
                    if (m33856j1) {
                        this.f2310T0.m34109z();
                        z8 = m33856j1;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    System.out.println("EXCEPTION : " + e);
                }
                if (z8) {
                    m33860L1(this.f2310T0, C0500i.f2387a);
                } else {
                    mo33784d1(this.f2310T0, m33865G1);
                    for (int i10 = 0; i10 < size; i10++) {
                        this.f2401N0.get(i10).mo33784d1(this.f2310T0, m33865G1);
                    }
                }
                if (!z6 || i8 >= 8 || !C0500i.f2387a[2]) {
                    z2 = false;
                } else {
                    int i11 = 0;
                    int i12 = 0;
                    for (int i13 = 0; i13 < size; i13++) {
                        ConstraintWidget constraintWidget3 = this.f2401N0.get(i13);
                        i11 = Math.max(i11, constraintWidget3.f2129b0 + constraintWidget3.m34013U());
                        i12 = Math.max(i12, constraintWidget3.f2131c0 + constraintWidget3.m33962y());
                    }
                    int max3 = Math.max(this.f2143i0, i11);
                    int max4 = Math.max(this.f2145j0, i12);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    if (dimensionBehaviour3 != dimensionBehaviour6 || m34013U() >= max3) {
                        z3 = false;
                        z4 = z;
                    } else {
                        m34004Y0(max3);
                        this.f2122V[0] = dimensionBehaviour6;
                        z3 = true;
                        z4 = true;
                    }
                    z2 = z3;
                    z = z4;
                    if (dimensionBehaviour2 == dimensionBehaviour6) {
                        z2 = z3;
                        z = z4;
                        if (m33962y() < max4) {
                            m33959z0(max4);
                            this.f2122V[1] = dimensionBehaviour6;
                            z2 = true;
                            z = true;
                        }
                    }
                }
                int max5 = Math.max(this.f2143i0, m34013U());
                if (max5 > m34013U()) {
                    m34004Y0(max5);
                    this.f2122V[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                    z2 = true;
                    z = true;
                }
                int max6 = Math.max(this.f2145j0, m33962y());
                if (max6 > m33962y()) {
                    m33959z0(max6);
                    this.f2122V[1] = ConstraintWidget.DimensionBehaviour.FIXED;
                    z2 = true;
                    z = true;
                }
                z7 = z2;
                boolean z11 = z;
                if (!z) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = this.f2122V[0];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour8 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    boolean z12 = z2;
                    boolean z13 = z;
                    if (dimensionBehaviour7 == dimensionBehaviour8) {
                        z12 = z2;
                        z13 = z;
                        if (i2 > 0) {
                            z12 = z2;
                            z13 = z;
                            if (m34013U() > i2) {
                                this.f2326j1 = true;
                                this.f2122V[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                                m34004Y0(i2);
                                z12 = true;
                                z13 = true;
                            }
                        }
                    }
                    z7 = z12;
                    z11 = z13;
                    if (this.f2122V[1] == dimensionBehaviour8) {
                        z7 = z12;
                        z11 = z13;
                        if (i > 0) {
                            z7 = z12;
                            z11 = z13;
                            if (m33962y() > i) {
                                this.f2327k1 = true;
                                this.f2122V[1] = ConstraintWidget.DimensionBehaviour.FIXED;
                                m33959z0(i);
                                z = true;
                                z7 = true;
                                i7 = i8;
                            }
                        }
                    }
                }
                z = z11;
                i7 = i8;
            }
            this.f2401N0 = arrayList;
            if (z) {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = this.f2122V;
                dimensionBehaviourArr2[0] = dimensionBehaviour3;
                dimensionBehaviourArr2[1] = dimensionBehaviour2;
            }
            mo33733n0(this.f2310T0.m34113v());
            return;
        }
        throw null;
    }

    /* renamed from: i1 */
    public void m33857i1(ConstraintWidget constraintWidget, int i) {
        if (i == 0) {
            m33855k1(constraintWidget);
        } else if (i != 1) {
        } else {
            m33850p1(constraintWidget);
        }
    }

    /* renamed from: j1 */
    public boolean m33856j1(C0458d c0458d) {
        boolean m33865G1 = m33865G1(64);
        mo33781g(c0458d, m33865G1);
        int size = this.f2401N0.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.f2401N0.get(i);
            constraintWidget.m34040G0(0, false);
            constraintWidget.m34040G0(1, false);
            if (constraintWidget instanceof C0470a) {
                z = true;
            }
        }
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                ConstraintWidget constraintWidget2 = this.f2401N0.get(i2);
                if (constraintWidget2 instanceof C0470a) {
                    ((C0470a) constraintWidget2).m33953l1();
                }
            }
        }
        for (int i3 = 0; i3 < size; i3++) {
            ConstraintWidget constraintWidget3 = this.f2401N0.get(i3);
            if (constraintWidget3.m33992f()) {
                constraintWidget3.mo33781g(c0458d, m33865G1);
            }
        }
        if (C0458d.f2014a) {
            HashSet<ConstraintWidget> hashSet = new HashSet<>();
            for (int i4 = 0; i4 < size; i4++) {
                ConstraintWidget constraintWidget4 = this.f2401N0.get(i4);
                if (!constraintWidget4.m33992f()) {
                    hashSet.add(constraintWidget4);
                }
            }
            m33994e(this, c0458d, hashSet, m34051B() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT ? 0 : 1, false);
            Iterator<ConstraintWidget> it = hashSet.iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                C0500i.m33763a(this, c0458d, next);
                next.mo33781g(c0458d, m33865G1);
            }
        } else {
            for (int i5 = 0; i5 < size; i5++) {
                ConstraintWidget constraintWidget5 = this.f2401N0.get(i5);
                if (constraintWidget5 instanceof C0493d) {
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget5.f2122V;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        constraintWidget5.m34046D0(ConstraintWidget.DimensionBehaviour.FIXED);
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        constraintWidget5.m34012U0(ConstraintWidget.DimensionBehaviour.FIXED);
                    }
                    constraintWidget5.mo33781g(c0458d, m33865G1);
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        constraintWidget5.m34046D0(dimensionBehaviour);
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        constraintWidget5.m34012U0(dimensionBehaviour2);
                    }
                } else {
                    C0500i.m33763a(this, c0458d, constraintWidget5);
                    if (!constraintWidget5.m33992f()) {
                        constraintWidget5.mo33781g(c0458d, m33865G1);
                    }
                }
            }
        }
        if (this.f2315Y0 > 0) {
            C0491b.m33875b(this, c0458d, null, 0);
        }
        if (this.f2316Z0 > 0) {
            C0491b.m33875b(this, c0458d, null, 1);
            return true;
        }
        return true;
    }

    @Override // androidx.constraintlayout.solver.widgets.C0502k, androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: k0 */
    public void mo33734k0() {
        this.f2310T0.m34135D();
        this.f2311U0 = 0;
        this.f2313W0 = 0;
        this.f2312V0 = 0;
        this.f2314X0 = 0;
        this.f2325i1 = false;
        super.mo33734k0();
    }

    /* renamed from: l1 */
    public void m33854l1(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.f2332p1;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.m34070e() > this.f2332p1.get().m34070e()) {
            this.f2332p1 = new WeakReference<>(constraintAnchor);
        }
    }

    /* renamed from: m1 */
    public void m33853m1(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.f2330n1;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.m34070e() > this.f2330n1.get().m34070e()) {
            this.f2330n1 = new WeakReference<>(constraintAnchor);
        }
    }

    /* renamed from: q1 */
    public void m33849q1(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.f2331o1;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.m34070e() > this.f2331o1.get().m34070e()) {
            this.f2331o1 = new WeakReference<>(constraintAnchor);
        }
    }

    /* renamed from: r1 */
    public void m33848r1(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.f2329m1;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.m34070e() > this.f2329m1.get().m34070e()) {
            this.f2329m1 = new WeakReference<>(constraintAnchor);
        }
    }

    /* renamed from: s1 */
    public boolean m33847s1(boolean z) {
        return this.f2306P0.m33923f(z);
    }

    /* renamed from: t1 */
    public boolean m33846t1(boolean z) {
        return this.f2306P0.m33922g(z);
    }

    /* renamed from: u1 */
    public boolean m33845u1(boolean z, int i) {
        return this.f2306P0.m33921h(z, i);
    }

    /* renamed from: v1 */
    public C0473b.AbstractC0475b m33844v1() {
        return this.f2307Q0;
    }

    /* renamed from: w1 */
    public int m33843w1() {
        return this.f2324h1;
    }

    /* renamed from: x1 */
    public C0458d m33842x1() {
        return this.f2310T0;
    }

    /* renamed from: y1 */
    public boolean m33841y1() {
        return false;
    }

    /* renamed from: z1 */
    public void m33840z1() {
        this.f2306P0.m33919j();
    }
}
