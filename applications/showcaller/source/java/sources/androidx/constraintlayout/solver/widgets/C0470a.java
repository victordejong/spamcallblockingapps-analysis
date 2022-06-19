package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.C0458d;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.HashMap;
/* renamed from: androidx.constraintlayout.solver.widgets.a */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/a.class */
public class C0470a extends C0499h {

    /* renamed from: P0 */
    private int f2185P0 = 0;

    /* renamed from: Q0 */
    private boolean f2186Q0 = true;

    /* renamed from: R0 */
    private int f2187R0 = 0;

    /* renamed from: S0 */
    boolean f2188S0 = false;

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: g */
    public void mo33781g(C0458d c0458d, boolean z) {
        Object[] objArr;
        boolean z2;
        int i;
        int i2;
        int i3;
        ConstraintAnchor[] constraintAnchorArr = this.f2119S;
        constraintAnchorArr[0] = this.f2108K;
        constraintAnchorArr[2] = this.f2110L;
        constraintAnchorArr[1] = this.f2112M;
        constraintAnchorArr[3] = this.f2114N;
        int i4 = 0;
        while (true) {
            objArr = this.f2119S;
            if (i4 >= objArr.length) {
                break;
            }
            objArr[i4].f2075i = c0458d.m34118q(objArr[i4]);
            i4++;
        }
        int i5 = this.f2185P0;
        if (i5 < 0 || i5 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor = objArr[i5];
        if (!this.f2188S0) {
            m33958g1();
        }
        if (this.f2188S0) {
            this.f2188S0 = false;
            int i6 = this.f2185P0;
            if (i6 == 0 || i6 == 1) {
                c0458d.m34129f(this.f2108K.f2075i, this.f2129b0);
                c0458d.m34129f(this.f2112M.f2075i, this.f2129b0);
                return;
            } else if (i6 != 2 && i6 != 3) {
                return;
            } else {
                c0458d.m34129f(this.f2110L.f2075i, this.f2131c0);
                c0458d.m34129f(this.f2114N.f2075i, this.f2131c0);
                return;
            }
        }
        for (int i7 = 0; i7 < this.f2386O0; i7++) {
            ConstraintWidget constraintWidget = this.f2385N0[i7];
            if ((this.f2186Q0 || constraintWidget.mo33779h()) && ((((i2 = this.f2185P0) == 0 || i2 == 1) && constraintWidget.m34051B() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f2108K.f2072f != null && constraintWidget.f2112M.f2072f != null) || (((i3 = this.f2185P0) == 2 || i3 == 3) && constraintWidget.m34019R() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f2110L.f2072f != null && constraintWidget.f2114N.f2072f != null))) {
                z2 = true;
                break;
            }
        }
        z2 = false;
        boolean z3 = this.f2108K.m34063l() || this.f2112M.m34063l();
        boolean z4 = this.f2110L.m34063l() || this.f2114N.m34063l();
        boolean z5 = !z2 && (((i = this.f2185P0) == 0 && z3) || ((i == 2 && z4) || ((i == 1 && z3) || (i == 3 && z4))));
        int i8 = 5;
        if (!z5) {
            i8 = 4;
        }
        for (int i9 = 0; i9 < this.f2386O0; i9++) {
            ConstraintWidget constraintWidget2 = this.f2385N0[i9];
            if (this.f2186Q0 || constraintWidget2.mo33779h()) {
                SolverVariable m34118q = c0458d.m34118q(constraintWidget2.f2119S[this.f2185P0]);
                ConstraintAnchor[] constraintAnchorArr2 = constraintWidget2.f2119S;
                int i10 = this.f2185P0;
                constraintAnchorArr2[i10].f2075i = m34118q;
                int i11 = (constraintAnchorArr2[i10].f2072f == null || constraintAnchorArr2[i10].f2072f.f2070d != this) ? 0 : constraintAnchorArr2[i10].f2073g + 0;
                if (i10 == 0 || i10 == 2) {
                    c0458d.m34126i(constraintAnchor.f2075i, m34118q, this.f2187R0 - i11, z2);
                } else {
                    c0458d.m34128g(constraintAnchor.f2075i, m34118q, this.f2187R0 + i11, z2);
                }
                c0458d.m34130e(constraintAnchor.f2075i, m34118q, this.f2187R0 + i11, i8);
            }
        }
        int i12 = this.f2185P0;
        if (i12 == 0) {
            c0458d.m34130e(this.f2112M.f2075i, this.f2108K.f2075i, 0, 8);
            c0458d.m34130e(this.f2108K.f2075i, this.f2123W.f2112M.f2075i, 0, 4);
            c0458d.m34130e(this.f2108K.f2075i, this.f2123W.f2108K.f2075i, 0, 0);
        } else if (i12 == 1) {
            c0458d.m34130e(this.f2108K.f2075i, this.f2112M.f2075i, 0, 8);
            c0458d.m34130e(this.f2108K.f2075i, this.f2123W.f2108K.f2075i, 0, 4);
            c0458d.m34130e(this.f2108K.f2075i, this.f2123W.f2112M.f2075i, 0, 0);
        } else if (i12 == 2) {
            c0458d.m34130e(this.f2114N.f2075i, this.f2110L.f2075i, 0, 8);
            c0458d.m34130e(this.f2110L.f2075i, this.f2123W.f2114N.f2075i, 0, 4);
            c0458d.m34130e(this.f2110L.f2075i, this.f2123W.f2110L.f2075i, 0, 0);
        } else if (i12 == 3) {
            c0458d.m34130e(this.f2110L.f2075i, this.f2114N.f2075i, 0, 8);
            c0458d.m34130e(this.f2110L.f2075i, this.f2123W.f2110L.f2075i, 0, 4);
            c0458d.m34130e(this.f2110L.f2075i, this.f2123W.f2114N.f2075i, 0, 0);
        }
    }

    /* renamed from: g1 */
    public boolean m33958g1() {
        boolean z;
        int i;
        boolean z2;
        int i2 = 0;
        boolean z3 = true;
        while (true) {
            z = z3;
            i = this.f2386O0;
            if (i2 >= i) {
                break;
            }
            ConstraintWidget constraintWidget = this.f2385N0[i2];
            if (this.f2186Q0 || constraintWidget.mo33779h()) {
                int i3 = this.f2185P0;
                if ((i3 != 0 && i3 != 1) || constraintWidget.mo33778h0()) {
                    int i4 = this.f2185P0;
                    if (i4 != 2) {
                        z2 = z;
                        if (i4 != 3) {
                        }
                    }
                    z2 = z;
                    if (constraintWidget.mo33776i0()) {
                    }
                }
                z2 = false;
            } else {
                z2 = z;
            }
            i2++;
            z3 = z2;
        }
        if (!z || i <= 0) {
            return false;
        }
        int i5 = 0;
        boolean z4 = false;
        for (int i6 = 0; i6 < this.f2386O0; i6++) {
            ConstraintWidget constraintWidget2 = this.f2385N0[i6];
            if (this.f2186Q0 || constraintWidget2.mo33779h()) {
                int i7 = i5;
                boolean z5 = z4;
                if (!z4) {
                    int i8 = this.f2185P0;
                    if (i8 == 0) {
                        i5 = constraintWidget2.mo33769p(ConstraintAnchor.Type.LEFT).m34070e();
                    } else if (i8 == 1) {
                        i5 = constraintWidget2.mo33769p(ConstraintAnchor.Type.RIGHT).m34070e();
                    } else if (i8 == 2) {
                        i5 = constraintWidget2.mo33769p(ConstraintAnchor.Type.TOP).m34070e();
                    } else if (i8 == 3) {
                        i5 = constraintWidget2.mo33769p(ConstraintAnchor.Type.BOTTOM).m34070e();
                    }
                    z5 = true;
                    i7 = i5;
                }
                int i9 = this.f2185P0;
                if (i9 == 0) {
                    i5 = Math.min(i7, constraintWidget2.mo33769p(ConstraintAnchor.Type.LEFT).m34070e());
                    z4 = z5;
                } else if (i9 == 1) {
                    i5 = Math.max(i7, constraintWidget2.mo33769p(ConstraintAnchor.Type.RIGHT).m34070e());
                    z4 = z5;
                } else if (i9 == 2) {
                    i5 = Math.min(i7, constraintWidget2.mo33769p(ConstraintAnchor.Type.TOP).m34070e());
                    z4 = z5;
                } else {
                    i5 = i7;
                    z4 = z5;
                    if (i9 == 3) {
                        i5 = Math.max(i7, constraintWidget2.mo33769p(ConstraintAnchor.Type.BOTTOM).m34070e());
                        z4 = z5;
                    }
                }
            }
        }
        int i10 = i5 + this.f2187R0;
        int i11 = this.f2185P0;
        if (i11 == 0 || i11 == 1) {
            m33971t0(i10, i10);
        } else {
            m33965w0(i10, i10);
        }
        this.f2188S0 = true;
        return true;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: h */
    public boolean mo33779h() {
        return true;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: h0 */
    public boolean mo33778h0() {
        return this.f2188S0;
    }

    /* renamed from: h1 */
    public boolean m33957h1() {
        return this.f2186Q0;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: i0 */
    public boolean mo33776i0() {
        return this.f2188S0;
    }

    /* renamed from: i1 */
    public int m33956i1() {
        return this.f2185P0;
    }

    /* renamed from: j1 */
    public int m33955j1() {
        return this.f2187R0;
    }

    /* renamed from: k1 */
    public int m33954k1() {
        int i = this.f2185P0;
        if (i == 0 || i == 1) {
            return 0;
        }
        return (i == 2 || i == 3) ? 1 : -1;
    }

    /* renamed from: l1 */
    public void m33953l1() {
        for (int i = 0; i < this.f2386O0; i++) {
            ConstraintWidget constraintWidget = this.f2385N0[i];
            int i2 = this.f2185P0;
            if (i2 == 0 || i2 == 1) {
                constraintWidget.m34040G0(0, true);
            } else if (i2 == 2 || i2 == 3) {
                constraintWidget.m34040G0(1, true);
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.C0499h, androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: m */
    public void mo33764m(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.mo33764m(constraintWidget, hashMap);
        C0470a c0470a = (C0470a) constraintWidget;
        this.f2185P0 = c0470a.f2185P0;
        this.f2186Q0 = c0470a.f2186Q0;
        this.f2187R0 = c0470a.f2187R0;
    }

    /* renamed from: m1 */
    public void m33952m1(boolean z) {
        this.f2186Q0 = z;
    }

    /* renamed from: n1 */
    public void m33951n1(int i) {
        this.f2185P0 = i;
    }

    /* renamed from: o1 */
    public void m33950o1(int i) {
        this.f2187R0 = i;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public String toString() {
        String str = "[Barrier] " + m33970u() + " {";
        for (int i = 0; i < this.f2386O0; i++) {
            ConstraintWidget constraintWidget = this.f2385N0[i];
            String str2 = str;
            if (i > 0) {
                str2 = str + ", ";
            }
            str = str2 + constraintWidget.m33970u();
        }
        return str + "}";
    }
}
