package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.C0458d;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.HashMap;
/* renamed from: androidx.constraintlayout.solver.widgets.f */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/f.class */
public class C0496f extends ConstraintWidget {

    /* renamed from: N0 */
    protected float f2377N0 = -1.0f;

    /* renamed from: O0 */
    protected int f2378O0 = -1;

    /* renamed from: P0 */
    protected int f2379P0 = -1;

    /* renamed from: Q0 */
    private ConstraintAnchor f2380Q0 = this.f2110L;

    /* renamed from: R0 */
    private int f2381R0 = 0;

    /* renamed from: S0 */
    private int f2382S0 = 0;

    /* renamed from: T0 */
    private boolean f2383T0;

    /* renamed from: androidx.constraintlayout.solver.widgets.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/f$a.class */
    static /* synthetic */ class C0497a {

        /* renamed from: a */
        static final /* synthetic */ int[] f2384a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f2384a = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2384a[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2384a[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2384a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2384a[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2384a[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2384a[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f2384a[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f2384a[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    public C0496f() {
        this.f2120T.clear();
        this.f2120T.add(this.f2380Q0);
        int length = this.f2119S.length;
        for (int i = 0; i < length; i++) {
            this.f2119S[i] = this.f2380Q0;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: d1 */
    public void mo33784d1(C0458d c0458d, boolean z) {
        if (m34031L() == null) {
            return;
        }
        int m34111x = c0458d.m34111x(this.f2380Q0);
        if (this.f2381R0 == 1) {
            m34002Z0(m34111x);
            m34000a1(0);
            m33959z0(m34031L().m33962y());
            m34004Y0(0);
            return;
        }
        m34002Z0(0);
        m34000a1(m34111x);
        m34004Y0(m34031L().m34013U());
        m33959z0(0);
    }

    /* renamed from: e1 */
    public ConstraintAnchor m33783e1() {
        return this.f2380Q0;
    }

    /* renamed from: f1 */
    public int m33782f1() {
        return this.f2381R0;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: g */
    public void mo33781g(C0458d c0458d, boolean z) {
        C0493d c0493d = (C0493d) m34031L();
        if (c0493d == null) {
            return;
        }
        ConstraintAnchor mo33769p = c0493d.mo33769p(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor mo33769p2 = c0493d.mo33769p(ConstraintAnchor.Type.RIGHT);
        ConstraintWidget constraintWidget = this.f2123W;
        boolean z2 = constraintWidget != null && constraintWidget.f2122V[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (this.f2381R0 == 0) {
            mo33769p = c0493d.mo33769p(ConstraintAnchor.Type.TOP);
            mo33769p2 = c0493d.mo33769p(ConstraintAnchor.Type.BOTTOM);
            ConstraintWidget constraintWidget2 = this.f2123W;
            z2 = constraintWidget2 != null && constraintWidget2.f2122V[1] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        }
        if (this.f2383T0 && this.f2380Q0.m34061n()) {
            SolverVariable m34118q = c0458d.m34118q(this.f2380Q0);
            c0458d.m34129f(m34118q, this.f2380Q0.m34070e());
            if (this.f2378O0 != -1) {
                if (z2) {
                    c0458d.m34127h(c0458d.m34118q(mo33769p2), m34118q, 0, 5);
                }
            } else if (this.f2379P0 != -1 && z2) {
                SolverVariable m34118q2 = c0458d.m34118q(mo33769p2);
                c0458d.m34127h(m34118q, c0458d.m34118q(mo33769p), 0, 5);
                c0458d.m34127h(m34118q2, m34118q, 0, 5);
            }
            this.f2383T0 = false;
        } else if (this.f2378O0 != -1) {
            SolverVariable m34118q3 = c0458d.m34118q(this.f2380Q0);
            c0458d.m34130e(m34118q3, c0458d.m34118q(mo33769p), this.f2378O0, 8);
            if (!z2) {
                return;
            }
            c0458d.m34127h(c0458d.m34118q(mo33769p2), m34118q3, 0, 5);
        } else if (this.f2379P0 == -1) {
            if (this.f2377N0 == -1.0f) {
                return;
            }
            c0458d.m34131d(C0458d.m34116s(c0458d, c0458d.m34118q(this.f2380Q0), c0458d.m34118q(mo33769p2), this.f2377N0));
        } else {
            SolverVariable m34118q4 = c0458d.m34118q(this.f2380Q0);
            SolverVariable m34118q5 = c0458d.m34118q(mo33769p2);
            c0458d.m34130e(m34118q4, m34118q5, -this.f2379P0, 8);
            if (!z2) {
                return;
            }
            c0458d.m34127h(m34118q4, c0458d.m34118q(mo33769p), 0, 5);
            c0458d.m34127h(m34118q5, m34118q4, 0, 5);
        }
    }

    /* renamed from: g1 */
    public int m33780g1() {
        return this.f2378O0;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: h */
    public boolean mo33779h() {
        return true;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: h0 */
    public boolean mo33778h0() {
        return this.f2383T0;
    }

    /* renamed from: h1 */
    public int m33777h1() {
        return this.f2379P0;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: i0 */
    public boolean mo33776i0() {
        return this.f2383T0;
    }

    /* renamed from: i1 */
    public float m33775i1() {
        return this.f2377N0;
    }

    /* renamed from: j1 */
    public void m33774j1(int i) {
        this.f2380Q0.m34055t(i);
        this.f2383T0 = true;
    }

    /* renamed from: k1 */
    public void m33773k1(int i) {
        if (i > -1) {
            this.f2377N0 = -1.0f;
            this.f2378O0 = i;
            this.f2379P0 = -1;
        }
    }

    /* renamed from: l1 */
    public void m33772l1(int i) {
        if (i > -1) {
            this.f2377N0 = -1.0f;
            this.f2378O0 = -1;
            this.f2379P0 = i;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: m */
    public void mo33764m(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.mo33764m(constraintWidget, hashMap);
        C0496f c0496f = (C0496f) constraintWidget;
        this.f2377N0 = c0496f.f2377N0;
        this.f2378O0 = c0496f.f2378O0;
        this.f2379P0 = c0496f.f2379P0;
        m33770n1(c0496f.f2381R0);
    }

    /* renamed from: m1 */
    public void m33771m1(float f) {
        if (f > -1.0f) {
            this.f2377N0 = f;
            this.f2378O0 = -1;
            this.f2379P0 = -1;
        }
    }

    /* renamed from: n1 */
    public void m33770n1(int i) {
        if (this.f2381R0 == i) {
            return;
        }
        this.f2381R0 = i;
        this.f2120T.clear();
        if (this.f2381R0 == 1) {
            this.f2380Q0 = this.f2108K;
        } else {
            this.f2380Q0 = this.f2110L;
        }
        this.f2120T.add(this.f2380Q0);
        int length = this.f2119S.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.f2119S[i2] = this.f2380Q0;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: p */
    public ConstraintAnchor mo33769p(ConstraintAnchor.Type type) {
        switch (C0497a.f2384a[type.ordinal()]) {
            case 1:
            case 2:
                if (this.f2381R0 == 1) {
                    return this.f2380Q0;
                }
                break;
            case 3:
            case 4:
                if (this.f2381R0 == 0) {
                    return this.f2380Q0;
                }
                break;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
        }
        throw new AssertionError(type.name());
    }
}
