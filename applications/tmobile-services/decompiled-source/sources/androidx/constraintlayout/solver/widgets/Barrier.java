package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/Barrier.class */
public class Barrier extends HelperWidget {

    /* renamed from: N0 */
    private int f2163N0 = 0;

    /* renamed from: O0 */
    private boolean f2164O0 = true;

    /* renamed from: P0 */
    private int f2165P0 = 0;

    /* renamed from: Q0 */
    boolean f2166Q0 = false;

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: g */
    public void mo20211g(LinearSystem linearSystem, boolean z) {
        Object[] objArr;
        boolean z2;
        int i;
        int i2;
        ConstraintAnchor[] constraintAnchorArr = this.f2224Q;
        constraintAnchorArr[0] = this.f2214I;
        constraintAnchorArr[2] = this.f2216J;
        constraintAnchorArr[1] = this.f2218K;
        constraintAnchorArr[3] = this.f2219L;
        int i3 = 0;
        while (true) {
            objArr = this.f2224Q;
            if (i3 >= objArr.length) {
                break;
            }
            objArr[i3].f2195i = linearSystem.m20484q(objArr[i3]);
            i3++;
        }
        int i4 = this.f2163N0;
        if (i4 >= 0 && i4 < 4) {
            ConstraintAnchor constraintAnchor = objArr[i4];
            if (!this.f2166Q0) {
                m20431g1();
            }
            if (this.f2166Q0) {
                this.f2166Q0 = false;
                int i5 = this.f2163N0;
                if (i5 == 0 || i5 == 1) {
                    linearSystem.m20495f(this.f2214I.f2195i, this.f2233Z);
                    linearSystem.m20495f(this.f2218K.f2195i, this.f2233Z);
                } else if (i5 == 2 || i5 == 3) {
                    linearSystem.m20495f(this.f2216J.f2195i, this.f2235a0);
                    linearSystem.m20495f(this.f2219L.f2195i, this.f2235a0);
                }
            } else {
                for (int i6 = 0; i6 < this.f2359M0; i6++) {
                    ConstraintWidget constraintWidget = this.f2358L0[i6];
                    if ((this.f2164O0 || constraintWidget.mo20209h()) && ((((i = this.f2163N0) == 0 || i == 1) && constraintWidget.m20394B() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f2214I.f2192f != null && constraintWidget.f2218K.f2192f != null) || (((i2 = this.f2163N0) == 2 || i2 == 3) && constraintWidget.m20362R() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f2216J.f2192f != null && constraintWidget.f2219L.f2192f != null))) {
                        z2 = true;
                        break;
                    }
                }
                z2 = false;
                boolean z3 = this.f2214I.m20406l() || this.f2218K.m20406l();
                boolean z4 = this.f2216J.m20406l() || this.f2219L.m20406l();
                boolean z5 = !z2 && ((this.f2163N0 == 0 && z3) || ((this.f2163N0 == 2 && z4) || ((this.f2163N0 == 1 && z3) || (this.f2163N0 == 3 && z4))));
                int i7 = 5;
                if (!z5) {
                    i7 = 4;
                }
                for (int i8 = 0; i8 < this.f2359M0; i8++) {
                    ConstraintWidget constraintWidget2 = this.f2358L0[i8];
                    if (this.f2164O0 || constraintWidget2.mo20209h()) {
                        SolverVariable q = linearSystem.m20484q(constraintWidget2.f2224Q[this.f2163N0]);
                        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget2.f2224Q;
                        int i9 = this.f2163N0;
                        constraintAnchorArr2[i9].f2195i = q;
                        int i10 = (constraintAnchorArr2[i9].f2192f == null || constraintAnchorArr2[i9].f2192f.f2190d != this) ? 0 : constraintAnchorArr2[i9].f2193g + 0;
                        int i11 = this.f2163N0;
                        if (i11 == 0 || i11 == 2) {
                            linearSystem.m20492i(constraintAnchor.f2195i, q, this.f2165P0 - i10, z2);
                        } else {
                            linearSystem.m20494g(constraintAnchor.f2195i, q, this.f2165P0 + i10, z2);
                        }
                        linearSystem.m20496e(constraintAnchor.f2195i, q, this.f2165P0 + i10, i7);
                    }
                }
                int i12 = this.f2163N0;
                if (i12 == 0) {
                    linearSystem.m20496e(this.f2218K.f2195i, this.f2214I.f2195i, 0, 8);
                    linearSystem.m20496e(this.f2214I.f2195i, this.f2228U.f2218K.f2195i, 0, 4);
                    linearSystem.m20496e(this.f2214I.f2195i, this.f2228U.f2214I.f2195i, 0, 0);
                } else if (i12 == 1) {
                    linearSystem.m20496e(this.f2214I.f2195i, this.f2218K.f2195i, 0, 8);
                    linearSystem.m20496e(this.f2214I.f2195i, this.f2228U.f2214I.f2195i, 0, 4);
                    linearSystem.m20496e(this.f2214I.f2195i, this.f2228U.f2218K.f2195i, 0, 0);
                } else if (i12 == 2) {
                    linearSystem.m20496e(this.f2219L.f2195i, this.f2216J.f2195i, 0, 8);
                    linearSystem.m20496e(this.f2216J.f2195i, this.f2228U.f2219L.f2195i, 0, 4);
                    linearSystem.m20496e(this.f2216J.f2195i, this.f2228U.f2216J.f2195i, 0, 0);
                } else if (i12 == 3) {
                    linearSystem.m20496e(this.f2216J.f2195i, this.f2219L.f2195i, 0, 8);
                    linearSystem.m20496e(this.f2216J.f2195i, this.f2228U.f2216J.f2195i, 0, 4);
                    linearSystem.m20496e(this.f2216J.f2195i, this.f2228U.f2219L.f2195i, 0, 0);
                }
            }
        }
    }

    /* renamed from: g1 */
    public boolean m20431g1() {
        int i;
        int i2 = 0;
        boolean z = true;
        while (true) {
            i = this.f2359M0;
            if (i2 >= i) {
                break;
            }
            ConstraintWidget constraintWidget = this.f2358L0[i2];
            if (this.f2164O0 || constraintWidget.mo20209h()) {
                int i3 = this.f2163N0;
                if (!(i3 == 0 || i3 == 1) || constraintWidget.mo20208h0()) {
                    int i4 = this.f2163N0;
                    if (i4 != 2) {
                        z = z;
                        if (i4 != 3) {
                        }
                    }
                    z = z;
                    if (constraintWidget.mo20206i0()) {
                    }
                }
                z = false;
            } else {
                z = z;
            }
            i2++;
        }
        if (!z || i <= 0) {
            return false;
        }
        int i5 = 0;
        boolean z2 = false;
        for (int i6 = 0; i6 < this.f2359M0; i6++) {
            ConstraintWidget constraintWidget2 = this.f2358L0[i6];
            if (this.f2164O0 || constraintWidget2.mo20209h()) {
                i5 = i5;
                boolean z3 = z2;
                if (!z2) {
                    int i7 = this.f2163N0;
                    if (i7 == 0) {
                        i5 = constraintWidget2.mo20199p(ConstraintAnchor.Type.LEFT).m20413e();
                    } else if (i7 == 1) {
                        i5 = constraintWidget2.mo20199p(ConstraintAnchor.Type.RIGHT).m20413e();
                    } else if (i7 == 2) {
                        i5 = constraintWidget2.mo20199p(ConstraintAnchor.Type.TOP).m20413e();
                    } else if (i7 == 3) {
                        i5 = constraintWidget2.mo20199p(ConstraintAnchor.Type.BOTTOM).m20413e();
                    }
                    z3 = true;
                }
                int i8 = this.f2163N0;
                if (i8 == 0) {
                    i5 = Math.min(i5, constraintWidget2.mo20199p(ConstraintAnchor.Type.LEFT).m20413e());
                    z2 = z3;
                } else if (i8 == 1) {
                    i5 = Math.max(i5, constraintWidget2.mo20199p(ConstraintAnchor.Type.RIGHT).m20413e());
                    z2 = z3;
                } else if (i8 == 2) {
                    i5 = Math.min(i5, constraintWidget2.mo20199p(ConstraintAnchor.Type.TOP).m20413e());
                    z2 = z3;
                } else {
                    i5 = i5;
                    z2 = z3;
                    if (i8 == 3) {
                        i5 = Math.max(i5, constraintWidget2.mo20199p(ConstraintAnchor.Type.BOTTOM).m20413e());
                        z2 = z3;
                    }
                }
            }
        }
        int i9 = i5 + this.f2165P0;
        int i10 = this.f2163N0;
        if (i10 == 0 || i10 == 1) {
            m20314t0(i9, i9);
        } else {
            m20308w0(i9, i9);
        }
        this.f2166Q0 = true;
        return true;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: h */
    public boolean mo20209h() {
        return true;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: h0 */
    public boolean mo20208h0() {
        return this.f2166Q0;
    }

    /* renamed from: h1 */
    public boolean m20430h1() {
        return this.f2164O0;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: i0 */
    public boolean mo20206i0() {
        return this.f2166Q0;
    }

    /* renamed from: i1 */
    public int m20429i1() {
        return this.f2163N0;
    }

    /* renamed from: j1 */
    public int m20428j1() {
        return this.f2165P0;
    }

    /* renamed from: k1 */
    public int m20427k1() {
        int i = this.f2163N0;
        if (i == 0 || i == 1) {
            return 0;
        }
        return (i == 2 || i == 3) ? 1 : -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: l1 */
    public void m20426l1() {
        for (int i = 0; i < this.f2359M0; i++) {
            ConstraintWidget constraintWidget = this.f2358L0[i];
            int i2 = this.f2163N0;
            if (i2 == 0 || i2 == 1) {
                constraintWidget.m20383G0(0, true);
            } else if (i2 == 2 || i2 == 3) {
                constraintWidget.m20383G0(1, true);
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.HelperWidget, androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: m */
    public void mo20194m(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.mo20194m(constraintWidget, hashMap);
        Barrier barrier = (Barrier) constraintWidget;
        this.f2163N0 = barrier.f2163N0;
        this.f2164O0 = barrier.f2164O0;
        this.f2165P0 = barrier.f2165P0;
    }

    /* renamed from: m1 */
    public void m20425m1(boolean z) {
        this.f2164O0 = z;
    }

    /* renamed from: n1 */
    public void m20424n1(int i) {
        this.f2163N0 = i;
    }

    /* renamed from: o1 */
    public void m20423o1(int i) {
        this.f2165P0 = i;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public String toString() {
        String str = "[Barrier] " + m20313u() + " {";
        for (int i = 0; i < this.f2359M0; i++) {
            ConstraintWidget constraintWidget = this.f2358L0[i];
            String str2 = str;
            if (i > 0) {
                str2 = str + ", ";
            }
            str = str2 + constraintWidget.m20313u();
        }
        return str + "}";
    }
}
