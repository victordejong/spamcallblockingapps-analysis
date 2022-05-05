package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ChainHead.class */
public class ChainHead {

    /* renamed from: a */
    protected ConstraintWidget f2167a;

    /* renamed from: b */
    protected ConstraintWidget f2168b;

    /* renamed from: c */
    protected ConstraintWidget f2169c;

    /* renamed from: d */
    protected ConstraintWidget f2170d;

    /* renamed from: e */
    protected ConstraintWidget f2171e;

    /* renamed from: f */
    protected ConstraintWidget f2172f;

    /* renamed from: g */
    protected ConstraintWidget f2173g;

    /* renamed from: h */
    protected ArrayList<ConstraintWidget> f2174h;

    /* renamed from: i */
    protected int f2175i;

    /* renamed from: j */
    protected int f2176j;

    /* renamed from: k */
    protected float f2177k = 0.0f;

    /* renamed from: l */
    int f2178l;

    /* renamed from: m */
    int f2179m;

    /* renamed from: n */
    int f2180n;

    /* renamed from: o */
    private int f2181o;

    /* renamed from: p */
    private boolean f2182p;

    /* renamed from: q */
    protected boolean f2183q;

    /* renamed from: r */
    protected boolean f2184r;

    /* renamed from: s */
    protected boolean f2185s;

    /* renamed from: t */
    private boolean f2186t;

    public ChainHead(ConstraintWidget constraintWidget, int i, boolean z) {
        this.f2182p = false;
        this.f2167a = constraintWidget;
        this.f2181o = i;
        this.f2182p = z;
    }

    /* renamed from: b */
    private void m20419b() {
        int i = this.f2181o * 2;
        ConstraintWidget constraintWidget = this.f2167a;
        ConstraintWidget constraintWidget2 = constraintWidget;
        boolean z = false;
        while (!z) {
            this.f2175i++;
            ConstraintWidget[] constraintWidgetArr = constraintWidget.f2209F0;
            int i2 = this.f2181o;
            constraintWidgetArr[i2] = null;
            constraintWidget.f2207E0[i2] = null;
            if (constraintWidget.m20358T() != 8) {
                this.f2178l++;
                if (constraintWidget.m20311v(this.f2181o) != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.f2179m += constraintWidget.m20386F(this.f2181o);
                }
                int f = this.f2179m + constraintWidget.f2224Q[i].m20412f();
                this.f2179m = f;
                int i3 = i + 1;
                this.f2179m = f + constraintWidget.f2224Q[i3].m20412f();
                int f2 = this.f2180n + constraintWidget.f2224Q[i].m20412f();
                this.f2180n = f2;
                this.f2180n = f2 + constraintWidget.f2224Q[i3].m20412f();
                if (this.f2168b == null) {
                    this.f2168b = constraintWidget;
                }
                this.f2170d = constraintWidget;
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.f2227T;
                int i4 = this.f2181o;
                if (dimensionBehaviourArr[i4] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    int[] iArr = constraintWidget.f2266q;
                    if (iArr[i4] == 0 || iArr[i4] == 3 || iArr[i4] == 2) {
                        this.f2176j++;
                        float[] fArr = constraintWidget.f2205D0;
                        int i5 = this.f2181o;
                        float f3 = fArr[i5];
                        if (f3 > 0.0f) {
                            this.f2177k += fArr[i5];
                        }
                        if (m20418c(constraintWidget, this.f2181o)) {
                            if (f3 < 0.0f) {
                                this.f2183q = true;
                            } else {
                                this.f2184r = true;
                            }
                            if (this.f2174h == null) {
                                this.f2174h = new ArrayList<>();
                            }
                            this.f2174h.add(constraintWidget);
                        }
                        if (this.f2172f == null) {
                            this.f2172f = constraintWidget;
                        }
                        ConstraintWidget constraintWidget3 = this.f2173g;
                        if (constraintWidget3 != null) {
                            constraintWidget3.f2207E0[this.f2181o] = constraintWidget;
                        }
                        this.f2173g = constraintWidget;
                    }
                    if (this.f2181o == 0) {
                        if (constraintWidget.f2262o == 0 && constraintWidget.f2268r == 0) {
                            int i6 = constraintWidget.f2270s;
                        }
                    } else if (constraintWidget.f2264p == 0 && constraintWidget.f2274u == 0) {
                        int i7 = constraintWidget.f2276v;
                    }
                    float f4 = constraintWidget.f2231X;
                }
            }
            if (constraintWidget2 != constraintWidget) {
                constraintWidget2.f2209F0[this.f2181o] = constraintWidget;
            }
            ConstraintAnchor constraintAnchor = constraintWidget.f2224Q[i + 1].f2192f;
            constraintWidget = null;
            if (constraintAnchor != null) {
                ConstraintWidget constraintWidget4 = constraintAnchor.f2190d;
                ConstraintAnchor[] constraintAnchorArr = constraintWidget4.f2224Q;
                constraintWidget = null;
                if (constraintAnchorArr[i].f2192f != null) {
                    constraintWidget = constraintAnchorArr[i].f2192f.f2190d != constraintWidget ? null : constraintWidget4;
                }
            }
            if (constraintWidget == null) {
                constraintWidget = constraintWidget;
                z = true;
            }
            constraintWidget2 = constraintWidget;
        }
        ConstraintWidget constraintWidget5 = this.f2168b;
        if (constraintWidget5 != null) {
            this.f2179m -= constraintWidget5.f2224Q[i].m20412f();
        }
        ConstraintWidget constraintWidget6 = this.f2170d;
        if (constraintWidget6 != null) {
            this.f2179m -= constraintWidget6.f2224Q[i + 1].m20412f();
        }
        this.f2169c = constraintWidget;
        if (this.f2181o != 0 || !this.f2182p) {
            this.f2171e = this.f2167a;
        } else {
            this.f2171e = constraintWidget;
        }
        boolean z2 = false;
        if (this.f2184r) {
            z2 = false;
            if (this.f2183q) {
                z2 = true;
            }
        }
        this.f2185s = z2;
    }

    /* renamed from: c */
    private static boolean m20418c(ConstraintWidget constraintWidget, int i) {
        boolean z;
        if (constraintWidget.m20358T() != 8 && constraintWidget.f2227T[i] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int[] iArr = constraintWidget.f2266q;
            if (iArr[i] == 0 || iArr[i] == 3) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: a */
    public void m20420a() {
        if (!this.f2186t) {
            m20419b();
        }
        this.f2186t = true;
    }
}
