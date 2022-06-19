package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
/* renamed from: androidx.constraintlayout.solver.widgets.c */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/c.class */
public class C0212c {

    /* renamed from: a */
    protected ConstraintWidget f1229a;

    /* renamed from: b */
    protected ConstraintWidget f1230b;

    /* renamed from: c */
    protected ConstraintWidget f1231c;

    /* renamed from: d */
    protected ConstraintWidget f1232d;

    /* renamed from: e */
    protected ConstraintWidget f1233e;

    /* renamed from: f */
    protected ConstraintWidget f1234f;

    /* renamed from: g */
    protected ConstraintWidget f1235g;

    /* renamed from: h */
    protected ArrayList<ConstraintWidget> f1236h;

    /* renamed from: i */
    protected int f1237i;

    /* renamed from: j */
    protected int f1238j;

    /* renamed from: k */
    protected float f1239k = 0.0f;

    /* renamed from: l */
    int f1240l;

    /* renamed from: m */
    int f1241m;

    /* renamed from: n */
    int f1242n;

    /* renamed from: o */
    private int f1243o;

    /* renamed from: p */
    private boolean f1244p;

    /* renamed from: q */
    protected boolean f1245q;

    /* renamed from: r */
    protected boolean f1246r;

    /* renamed from: s */
    protected boolean f1247s;

    /* renamed from: t */
    private boolean f1248t;

    public C0212c(ConstraintWidget constraintWidget, int i, boolean z) {
        this.f1244p = false;
        this.f1229a = constraintWidget;
        this.f1243o = i;
        this.f1244p = z;
    }

    /* renamed from: b */
    private void m13894b() {
        int i = this.f1243o * 2;
        ConstraintWidget constraintWidget = this.f1229a;
        ConstraintWidget constraintWidget2 = constraintWidget;
        boolean z = false;
        while (!z) {
            this.f1237i++;
            ConstraintWidget[] constraintWidgetArr = constraintWidget.f1179z0;
            int i2 = this.f1243o;
            constraintWidgetArr[i2] = null;
            constraintWidget.f1177y0[i2] = null;
            if (constraintWidget.m13983P() != 8) {
                this.f1240l++;
                ConstraintWidget.DimensionBehaviour m13937t = constraintWidget.m13937t(this.f1243o);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (m13937t != dimensionBehaviour) {
                    this.f1241m += constraintWidget.m14007B(this.f1243o);
                }
                int m14021c = this.f1241m + constraintWidget.f1110I[i].m14021c();
                this.f1241m = m14021c;
                int i3 = i + 1;
                this.f1241m = m14021c + constraintWidget.f1110I[i3].m14021c();
                int m14021c2 = this.f1242n + constraintWidget.f1110I[i].m14021c();
                this.f1242n = m14021c2;
                this.f1242n = m14021c2 + constraintWidget.f1110I[i3].m14021c();
                if (this.f1230b == null) {
                    this.f1230b = constraintWidget;
                }
                this.f1232d = constraintWidget;
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.f1113L;
                int i4 = this.f1243o;
                if (dimensionBehaviourArr[i4] == dimensionBehaviour) {
                    int[] iArr = constraintWidget.f1150l;
                    if (iArr[i4] == 0 || iArr[i4] == 3 || iArr[i4] == 2) {
                        this.f1238j++;
                        float[] fArr = constraintWidget.f1175x0;
                        float f = fArr[i4];
                        if (f > 0.0f) {
                            this.f1239k += fArr[i4];
                        }
                        if (m13893c(constraintWidget, i4)) {
                            if (f < 0.0f) {
                                this.f1245q = true;
                            } else {
                                this.f1246r = true;
                            }
                            if (this.f1236h == null) {
                                this.f1236h = new ArrayList<>();
                            }
                            this.f1236h.add(constraintWidget);
                        }
                        if (this.f1234f == null) {
                            this.f1234f = constraintWidget;
                        }
                        ConstraintWidget constraintWidget3 = this.f1235g;
                        if (constraintWidget3 != null) {
                            constraintWidget3.f1177y0[this.f1243o] = constraintWidget;
                        }
                        this.f1235g = constraintWidget;
                    }
                    if (this.f1243o == 0) {
                        if (constraintWidget.f1146j == 0 && constraintWidget.f1152m == 0) {
                            int i5 = constraintWidget.f1154n;
                        }
                    } else if (constraintWidget.f1148k == 0 && constraintWidget.f1158p == 0) {
                        int i6 = constraintWidget.f1160q;
                    }
                    float f2 = constraintWidget.f1117P;
                }
            }
            if (constraintWidget2 != constraintWidget) {
                constraintWidget2.f1179z0[this.f1243o] = constraintWidget;
            }
            ConstraintAnchor constraintAnchor = constraintWidget.f1110I[i + 1].f1084d;
            ConstraintWidget constraintWidget4 = null;
            if (constraintAnchor != null) {
                ConstraintWidget constraintWidget5 = constraintAnchor.f1082b;
                ConstraintAnchor[] constraintAnchorArr = constraintWidget5.f1110I;
                constraintWidget4 = null;
                if (constraintAnchorArr[i].f1084d != null) {
                    constraintWidget4 = constraintAnchorArr[i].f1084d.f1082b != constraintWidget ? null : constraintWidget5;
                }
            }
            if (constraintWidget4 == null) {
                constraintWidget4 = constraintWidget;
                z = true;
            }
            ConstraintWidget constraintWidget6 = constraintWidget;
            constraintWidget = constraintWidget4;
            constraintWidget2 = constraintWidget6;
        }
        ConstraintWidget constraintWidget7 = this.f1230b;
        if (constraintWidget7 != null) {
            this.f1241m -= constraintWidget7.f1110I[i].m14021c();
        }
        ConstraintWidget constraintWidget8 = this.f1232d;
        if (constraintWidget8 != null) {
            this.f1241m -= constraintWidget8.f1110I[i + 1].m14021c();
        }
        this.f1231c = constraintWidget;
        if (this.f1243o != 0 || !this.f1244p) {
            this.f1233e = this.f1229a;
        } else {
            this.f1233e = constraintWidget;
        }
        boolean z2 = false;
        if (this.f1246r) {
            z2 = false;
            if (this.f1245q) {
                z2 = true;
            }
        }
        this.f1247s = z2;
    }

    /* renamed from: c */
    private static boolean m13893c(ConstraintWidget constraintWidget, int i) {
        boolean z;
        if (constraintWidget.m13983P() != 8 && constraintWidget.f1113L[i] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int[] iArr = constraintWidget.f1150l;
            if (iArr[i] == 0 || iArr[i] == 3) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: a */
    public void m13895a() {
        if (!this.f1248t) {
            m13894b();
        }
        this.f1248t = true;
    }
}
