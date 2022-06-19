package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
/* renamed from: androidx.constraintlayout.solver.widgets.c */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/c.class */
public class C0492c {

    /* renamed from: a */
    protected ConstraintWidget f2283a;

    /* renamed from: b */
    protected ConstraintWidget f2284b;

    /* renamed from: c */
    protected ConstraintWidget f2285c;

    /* renamed from: d */
    protected ConstraintWidget f2286d;

    /* renamed from: e */
    protected ConstraintWidget f2287e;

    /* renamed from: f */
    protected ConstraintWidget f2288f;

    /* renamed from: g */
    protected ConstraintWidget f2289g;

    /* renamed from: h */
    protected ArrayList<ConstraintWidget> f2290h;

    /* renamed from: i */
    protected int f2291i;

    /* renamed from: j */
    protected int f2292j;

    /* renamed from: k */
    protected float f2293k = 0.0f;

    /* renamed from: l */
    int f2294l;

    /* renamed from: m */
    int f2295m;

    /* renamed from: n */
    int f2296n;

    /* renamed from: o */
    boolean f2297o;

    /* renamed from: p */
    private int f2298p;

    /* renamed from: q */
    private boolean f2299q;

    /* renamed from: r */
    protected boolean f2300r;

    /* renamed from: s */
    protected boolean f2301s;

    /* renamed from: t */
    protected boolean f2302t;

    /* renamed from: u */
    protected boolean f2303u;

    /* renamed from: v */
    private boolean f2304v;

    public C0492c(ConstraintWidget constraintWidget, int i, boolean z) {
        this.f2299q = false;
        this.f2283a = constraintWidget;
        this.f2298p = i;
        this.f2299q = z;
    }

    /* renamed from: b */
    private void m33873b() {
        int i = this.f2298p * 2;
        ConstraintWidget constraintWidget = this.f2283a;
        boolean z = true;
        this.f2297o = true;
        ConstraintWidget constraintWidget2 = constraintWidget;
        boolean z2 = false;
        while (!z2) {
            this.f2291i++;
            ConstraintWidget[] constraintWidgetArr = constraintWidget.f2105I0;
            int i2 = this.f2298p;
            constraintWidgetArr[i2] = null;
            constraintWidget.f2103H0[i2] = null;
            if (constraintWidget.m34015T() != 8) {
                this.f2294l++;
                ConstraintWidget.DimensionBehaviour m33968v = constraintWidget.m33968v(this.f2298p);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (m33968v != dimensionBehaviour) {
                    this.f2295m += constraintWidget.m34043F(this.f2298p);
                }
                int m34069f = this.f2295m + constraintWidget.f2119S[i].m34069f();
                this.f2295m = m34069f;
                int i3 = i + 1;
                this.f2295m = m34069f + constraintWidget.f2119S[i3].m34069f();
                int m34069f2 = this.f2296n + constraintWidget.f2119S[i].m34069f();
                this.f2296n = m34069f2;
                this.f2296n = m34069f2 + constraintWidget.f2119S[i3].m34069f();
                if (this.f2284b == null) {
                    this.f2284b = constraintWidget;
                }
                this.f2286d = constraintWidget;
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.f2122V;
                int i4 = this.f2298p;
                if (dimensionBehaviourArr[i4] == dimensionBehaviour) {
                    int[] iArr = constraintWidget.f2162s;
                    if (iArr[i4] == 0 || iArr[i4] == 3 || iArr[i4] == 2) {
                        this.f2292j++;
                        float[] fArr = constraintWidget.f2101G0;
                        float f = fArr[i4];
                        if (f > 0.0f) {
                            this.f2293k += fArr[i4];
                        }
                        if (m33872c(constraintWidget, i4)) {
                            if (f < 0.0f) {
                                this.f2300r = true;
                            } else {
                                this.f2301s = true;
                            }
                            if (this.f2290h == null) {
                                this.f2290h = new ArrayList<>();
                            }
                            this.f2290h.add(constraintWidget);
                        }
                        if (this.f2288f == null) {
                            this.f2288f = constraintWidget;
                        }
                        ConstraintWidget constraintWidget3 = this.f2289g;
                        if (constraintWidget3 != null) {
                            constraintWidget3.f2103H0[this.f2298p] = constraintWidget;
                        }
                        this.f2289g = constraintWidget;
                    }
                    if (this.f2298p == 0) {
                        if (constraintWidget.f2158q != 0) {
                            this.f2297o = false;
                        } else if (constraintWidget.f2164t != 0 || constraintWidget.f2166u != 0) {
                            this.f2297o = false;
                        }
                    } else if (constraintWidget.f2160r != 0) {
                        this.f2297o = false;
                    } else if (constraintWidget.f2170w != 0 || constraintWidget.f2172x != 0) {
                        this.f2297o = false;
                    }
                    if (constraintWidget.f2126Z != 0.0f) {
                        this.f2297o = false;
                        this.f2303u = true;
                    }
                }
            }
            if (constraintWidget2 != constraintWidget) {
                constraintWidget2.f2105I0[this.f2298p] = constraintWidget;
            }
            ConstraintAnchor constraintAnchor = constraintWidget.f2119S[i + 1].f2072f;
            ConstraintWidget constraintWidget4 = null;
            if (constraintAnchor != null) {
                ConstraintWidget constraintWidget5 = constraintAnchor.f2070d;
                ConstraintAnchor[] constraintAnchorArr = constraintWidget5.f2119S;
                constraintWidget4 = null;
                if (constraintAnchorArr[i].f2072f != null) {
                    constraintWidget4 = constraintAnchorArr[i].f2072f.f2070d != constraintWidget ? null : constraintWidget5;
                }
            }
            if (constraintWidget4 == null) {
                constraintWidget4 = constraintWidget;
                z2 = true;
            }
            ConstraintWidget constraintWidget6 = constraintWidget;
            constraintWidget = constraintWidget4;
            constraintWidget2 = constraintWidget6;
        }
        ConstraintWidget constraintWidget7 = this.f2284b;
        if (constraintWidget7 != null) {
            this.f2295m -= constraintWidget7.f2119S[i].m34069f();
        }
        ConstraintWidget constraintWidget8 = this.f2286d;
        if (constraintWidget8 != null) {
            this.f2295m -= constraintWidget8.f2119S[i + 1].m34069f();
        }
        this.f2285c = constraintWidget;
        if (this.f2298p != 0 || !this.f2299q) {
            this.f2287e = this.f2283a;
        } else {
            this.f2287e = constraintWidget;
        }
        if (!this.f2301s || !this.f2300r) {
            z = false;
        }
        this.f2302t = z;
    }

    /* renamed from: c */
    private static boolean m33872c(ConstraintWidget constraintWidget, int i) {
        boolean z;
        if (constraintWidget.m34015T() != 8 && constraintWidget.f2122V[i] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int[] iArr = constraintWidget.f2162s;
            if (iArr[i] == 0 || iArr[i] == 3) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: a */
    public void m33874a() {
        if (!this.f2304v) {
            m33873b();
        }
        this.f2304v = true;
    }
}
