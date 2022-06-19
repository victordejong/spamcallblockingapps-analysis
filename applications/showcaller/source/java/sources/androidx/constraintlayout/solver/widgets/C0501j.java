package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.C0473b;
/* renamed from: androidx.constraintlayout.solver.widgets.j */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/j.class */
public class C0501j extends C0499h {

    /* renamed from: P0 */
    private int f2388P0 = 0;

    /* renamed from: Q0 */
    private int f2389Q0 = 0;

    /* renamed from: R0 */
    private int f2390R0 = 0;

    /* renamed from: S0 */
    private int f2391S0 = 0;

    /* renamed from: T0 */
    private int f2392T0 = 0;

    /* renamed from: U0 */
    private int f2393U0 = 0;

    /* renamed from: V0 */
    private int f2394V0 = 0;

    /* renamed from: W0 */
    private int f2395W0 = 0;

    /* renamed from: X0 */
    private boolean f2396X0 = false;

    /* renamed from: Y0 */
    private int f2397Y0 = 0;

    /* renamed from: Z0 */
    private int f2398Z0 = 0;

    /* renamed from: a1 */
    protected C0473b.C0474a f2399a1 = new C0473b.C0474a();

    /* renamed from: b1 */
    C0473b.AbstractC0475b f2400b1 = null;

    /* renamed from: A1 */
    public void m33761A1(int i) {
        this.f2388P0 = i;
    }

    @Override // androidx.constraintlayout.solver.widgets.C0499h, androidx.constraintlayout.solver.widgets.AbstractC0498g
    /* renamed from: c */
    public void mo33760c(C0493d c0493d) {
        m33758h1();
    }

    /* renamed from: g1 */
    public void m33759g1(boolean z) {
        int i = this.f2392T0;
        if (i > 0 || this.f2393U0 > 0) {
            if (z) {
                this.f2394V0 = this.f2393U0;
                this.f2395W0 = i;
                return;
            }
            this.f2394V0 = i;
            this.f2395W0 = this.f2393U0;
        }
    }

    /* renamed from: h1 */
    public void m33758h1() {
        for (int i = 0; i < this.f2386O0; i++) {
            ConstraintWidget constraintWidget = this.f2385N0[i];
            if (constraintWidget != null) {
                constraintWidget.m34036I0(true);
            }
        }
    }

    /* renamed from: i1 */
    public int m33757i1() {
        return this.f2398Z0;
    }

    /* renamed from: j1 */
    public int m33756j1() {
        return this.f2397Y0;
    }

    /* renamed from: k1 */
    public int m33755k1() {
        return this.f2389Q0;
    }

    /* renamed from: l1 */
    public int m33754l1() {
        return this.f2394V0;
    }

    /* renamed from: m1 */
    public int m33753m1() {
        return this.f2395W0;
    }

    /* renamed from: n1 */
    public int m33752n1() {
        return this.f2388P0;
    }

    /* renamed from: o1 */
    public void mo33751o1(int i, int i2, int i3, int i4) {
    }

    /* renamed from: p1 */
    public void m33750p1(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        while (this.f2400b1 == null && m34031L() != null) {
            this.f2400b1 = ((C0493d) m34031L()).m33844v1();
        }
        C0473b.C0474a c0474a = this.f2399a1;
        c0474a.f2232d = dimensionBehaviour;
        c0474a.f2233e = dimensionBehaviour2;
        c0474a.f2234f = i;
        c0474a.f2235g = i2;
        this.f2400b1.mo33670b(constraintWidget, c0474a);
        constraintWidget.m34004Y0(this.f2399a1.f2236h);
        constraintWidget.m33959z0(this.f2399a1.f2237i);
        constraintWidget.m33961y0(this.f2399a1.f2239k);
        constraintWidget.m33980o0(this.f2399a1.f2238j);
    }

    /* renamed from: q1 */
    public boolean m33749q1() {
        ConstraintWidget constraintWidget = this.f2123W;
        C0473b.AbstractC0475b m33844v1 = constraintWidget != null ? ((C0493d) constraintWidget).m33844v1() : null;
        if (m33844v1 == null) {
            return false;
        }
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= this.f2386O0) {
                return true;
            }
            ConstraintWidget constraintWidget2 = this.f2385N0[i];
            if (constraintWidget2 != null && !(constraintWidget2 instanceof C0496f)) {
                ConstraintWidget.DimensionBehaviour m33968v = constraintWidget2.m33968v(0);
                ConstraintWidget.DimensionBehaviour m33968v2 = constraintWidget2.m33968v(1);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (m33968v != dimensionBehaviour || constraintWidget2.f2158q == 1 || m33968v2 != dimensionBehaviour || constraintWidget2.f2160r == 1) {
                    z = false;
                }
                if (!z) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = m33968v;
                    if (m33968v == dimensionBehaviour) {
                        dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = m33968v2;
                    if (m33968v2 == dimensionBehaviour) {
                        dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    C0473b.C0474a c0474a = this.f2399a1;
                    c0474a.f2232d = dimensionBehaviour2;
                    c0474a.f2233e = dimensionBehaviour3;
                    c0474a.f2234f = constraintWidget2.m34013U();
                    this.f2399a1.f2235g = constraintWidget2.m33962y();
                    m33844v1.mo33670b(constraintWidget2, this.f2399a1);
                    constraintWidget2.m34004Y0(this.f2399a1.f2236h);
                    constraintWidget2.m33959z0(this.f2399a1.f2237i);
                    constraintWidget2.m33980o0(this.f2399a1.f2238j);
                }
            }
            i++;
        }
    }

    /* renamed from: r1 */
    public boolean m33748r1() {
        return this.f2396X0;
    }

    /* renamed from: s1 */
    public void m33747s1(boolean z) {
        this.f2396X0 = z;
    }

    /* renamed from: t1 */
    public void m33746t1(int i, int i2) {
        this.f2397Y0 = i;
        this.f2398Z0 = i2;
    }

    /* renamed from: u1 */
    public void m33745u1(int i) {
        this.f2390R0 = i;
        this.f2388P0 = i;
        this.f2391S0 = i;
        this.f2389Q0 = i;
        this.f2392T0 = i;
        this.f2393U0 = i;
    }

    /* renamed from: v1 */
    public void m33744v1(int i) {
        this.f2389Q0 = i;
    }

    /* renamed from: w1 */
    public void m33743w1(int i) {
        this.f2393U0 = i;
    }

    /* renamed from: x1 */
    public void m33742x1(int i) {
        this.f2390R0 = i;
        this.f2394V0 = i;
    }

    /* renamed from: y1 */
    public void m33741y1(int i) {
        this.f2391S0 = i;
        this.f2395W0 = i;
    }

    /* renamed from: z1 */
    public void m33740z1(int i) {
        this.f2392T0 = i;
        this.f2394V0 = i;
        this.f2395W0 = i;
    }
}
