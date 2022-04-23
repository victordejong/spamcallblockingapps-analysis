package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.Metrics;
import androidx.constraintlayout.solver.widgets.Barrier;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Guideline;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.solver.widgets.Optimizer;
import androidx.constraintlayout.solver.widgets.VirtualLayout;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/BasicMeasure.class */
public class BasicMeasure {

    /* renamed from: a */
    private final ArrayList<ConstraintWidget> f2373a = new ArrayList<>();

    /* renamed from: b */
    private Measure f2374b = new Measure();

    /* renamed from: c */
    private ConstraintWidgetContainer f2375c;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure.class */
    public static class Measure {

        /* renamed from: a */
        public ConstraintWidget.DimensionBehaviour f2376a;

        /* renamed from: b */
        public ConstraintWidget.DimensionBehaviour f2377b;

        /* renamed from: c */
        public int f2378c;

        /* renamed from: d */
        public int f2379d;

        /* renamed from: e */
        public int f2380e;

        /* renamed from: f */
        public int f2381f;

        /* renamed from: g */
        public int f2382g;

        /* renamed from: h */
        public boolean f2383h;

        /* renamed from: i */
        public boolean f2384i;

        /* renamed from: j */
        public boolean f2385j;
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer.class */
    public interface Measurer {
        /* renamed from: a */
        void mo20029a();

        /* renamed from: b */
        void mo20028b(ConstraintWidget constraintWidget, Measure measure);
    }

    public BasicMeasure(ConstraintWidgetContainer constraintWidgetContainer) {
        this.f2375c = constraintWidgetContainer;
    }

    /* renamed from: a */
    private boolean m20162a(Measurer measurer, ConstraintWidget constraintWidget, boolean z) {
        this.f2374b.f2376a = constraintWidget.m20394B();
        this.f2374b.f2377b = constraintWidget.m20362R();
        this.f2374b.f2378c = constraintWidget.m20356U();
        this.f2374b.f2379d = constraintWidget.m20305y();
        Measure measure = this.f2374b;
        measure.f2384i = false;
        measure.f2385j = z;
        boolean z2 = measure.f2376a == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z3 = this.f2374b.f2377b == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z4 = z2 && constraintWidget.f2231X > 0.0f;
        boolean z5 = z3 && constraintWidget.f2231X > 0.0f;
        if (z4 && constraintWidget.f2266q[0] == 4) {
            this.f2374b.f2376a = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (z5 && constraintWidget.f2266q[1] == 4) {
            this.f2374b.f2377b = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        measurer.mo20028b(constraintWidget, this.f2374b);
        constraintWidget.m20347Y0(this.f2374b.f2380e);
        constraintWidget.m20302z0(this.f2374b.f2381f);
        constraintWidget.m20304y0(this.f2374b.f2383h);
        constraintWidget.m20323o0(this.f2374b.f2382g);
        Measure measure2 = this.f2374b;
        measure2.f2385j = false;
        return measure2.f2384i;
    }

    /* renamed from: b */
    private void m20161b(ConstraintWidgetContainer constraintWidgetContainer) {
        HorizontalWidgetRun horizontalWidgetRun;
        VerticalWidgetRun verticalWidgetRun;
        int size = constraintWidgetContainer.f2372L0.size();
        boolean G1 = constraintWidgetContainer.m20295G1(64);
        Measurer v1 = constraintWidgetContainer.m20274v1();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = constraintWidgetContainer.f2372L0.get(i);
            if (!(constraintWidget instanceof Guideline) && !(constraintWidget instanceof Barrier) && !constraintWidget.m20334f0() && (!G1 || (horizontalWidgetRun = constraintWidget.f2240d) == null || (verticalWidgetRun = constraintWidget.f2242e) == null || !horizontalWidgetRun.f2429e.f2405j || !verticalWidgetRun.f2429e.f2405j)) {
                ConstraintWidget.DimensionBehaviour v = constraintWidget.m20311v(0);
                boolean z = true;
                ConstraintWidget.DimensionBehaviour v2 = constraintWidget.m20311v(1);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z2 = v == dimensionBehaviour && constraintWidget.f2262o != 1 && v2 == dimensionBehaviour && constraintWidget.f2264p != 1;
                z = z2;
                if (!z2) {
                    z = z2;
                    if (constraintWidgetContainer.m20295G1(1)) {
                        z = z2;
                        if (!(constraintWidget instanceof VirtualLayout)) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                            boolean z3 = z2;
                            if (v == dimensionBehaviour2) {
                                z3 = z2;
                                if (constraintWidget.f2262o == 0) {
                                    z3 = z2;
                                    if (v2 != dimensionBehaviour2) {
                                        z3 = z2;
                                        if (!constraintWidget.m20340c0()) {
                                            z3 = true;
                                        }
                                    }
                                }
                            }
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                            z = z3;
                            if (v2 == dimensionBehaviour3) {
                                z = z3;
                                if (constraintWidget.f2264p == 0) {
                                    z = z3;
                                    if (v != dimensionBehaviour3) {
                                        z = z3;
                                        if (!constraintWidget.m20340c0()) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                if (!z) {
                    m20162a(v1, constraintWidget, false);
                    Metrics metrics = constraintWidgetContainer.f2292Q0;
                    if (metrics != null) {
                        metrics.f2085a++;
                    }
                }
            }
        }
        v1.mo20029a();
    }

    /* renamed from: c */
    private void m20160c(ConstraintWidgetContainer constraintWidgetContainer, String str, int i, int i2) {
        int J = constraintWidgetContainer.m20378J();
        int I = constraintWidgetContainer.m20380I();
        constraintWidgetContainer.m20367O0(0);
        constraintWidgetContainer.m20369N0(0);
        constraintWidgetContainer.m20347Y0(i);
        constraintWidgetContainer.m20302z0(i2);
        constraintWidgetContainer.m20367O0(J);
        constraintWidgetContainer.m20369N0(I);
        this.f2375c.mo20167f1();
    }

    /* renamed from: d */
    public long m20159d(ConstraintWidgetContainer constraintWidgetContainer, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        boolean z;
        int i10;
        int i11;
        int i12;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int i13;
        Metrics metrics;
        Measurer v1 = constraintWidgetContainer.m20274v1();
        int size = constraintWidgetContainer.f2372L0.size();
        int U = constraintWidgetContainer.m20356U();
        int y = constraintWidgetContainer.m20305y();
        boolean b = Optimizer.m20192b(i, 128);
        boolean z6 = b || Optimizer.m20192b(i, 64);
        boolean z7 = z6;
        if (z6) {
            int i14 = 0;
            while (true) {
                z7 = z6;
                if (i14 >= size) {
                    break;
                }
                ConstraintWidget constraintWidget = constraintWidgetContainer.f2372L0.get(i14);
                boolean z8 = (constraintWidget.m20394B() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && (constraintWidget.m20362R() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && constraintWidget.m20309w() > 0.0f;
                if ((!constraintWidget.m20340c0() || !z8) && ((!constraintWidget.m20336e0() || !z8) && !(constraintWidget instanceof VirtualLayout) && !constraintWidget.m20340c0() && !constraintWidget.m20336e0())) {
                    i14++;
                }
            }
            z7 = false;
        }
        if (z7 && (metrics = LinearSystem.f2060x) != null) {
            metrics.f2087c++;
        }
        boolean z9 = z7 & ((i4 == 1073741824 && i6 == 1073741824) || b);
        if (z9) {
            int min = Math.min(constraintWidgetContainer.m20382H(), i5);
            int min2 = Math.min(constraintWidgetContainer.m20384G(), i7);
            if (i4 == 1073741824 && constraintWidgetContainer.m20356U() != min) {
                constraintWidgetContainer.m20347Y0(min);
                constraintWidgetContainer.m20270z1();
            }
            if (i6 == 1073741824 && constraintWidgetContainer.m20305y() != min2) {
                constraintWidgetContainer.m20302z0(min2);
                constraintWidgetContainer.m20270z1();
            }
            if (i4 == 1073741824 && i6 == 1073741824) {
                z5 = constraintWidgetContainer.m20277s1(b);
                i13 = 2;
            } else {
                z5 = constraintWidgetContainer.m20276t1(b);
                if (i4 == 1073741824) {
                    z5 &= constraintWidgetContainer.m20275u1(b, 0);
                    i13 = 1;
                } else {
                    i13 = 0;
                }
                if (i6 == 1073741824) {
                    z5 = constraintWidgetContainer.m20275u1(b, 1) & z5;
                    i13++;
                }
            }
            z = z5;
            i10 = i13;
            if (z5) {
                constraintWidgetContainer.mo20288c1(i4 == 1073741824, i6 == 1073741824);
                z = z5;
                i10 = i13;
            }
        } else {
            z = false;
            i10 = 0;
        }
        if (z && i10 == 2) {
            return 0L;
        }
        int w1 = constraintWidgetContainer.m20273w1();
        if (size > 0) {
            m20161b(constraintWidgetContainer);
        }
        int size2 = this.f2373a.size();
        if (size > 0) {
            m20160c(constraintWidgetContainer, "First pass", U, y);
        }
        if (size2 > 0) {
            boolean z10 = constraintWidgetContainer.m20394B() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            boolean z11 = constraintWidgetContainer.m20362R() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            int max = Math.max(constraintWidgetContainer.m20356U(), this.f2375c.m20378J());
            int max2 = Math.max(constraintWidgetContainer.m20305y(), this.f2375c.m20380I());
            boolean z12 = false;
            for (int i15 = 0; i15 < size2; i15++) {
                ConstraintWidget constraintWidget2 = this.f2373a.get(i15);
                if (!(constraintWidget2 instanceof VirtualLayout)) {
                    z12 = z12;
                } else {
                    int U2 = constraintWidget2.m20356U();
                    int y2 = constraintWidget2.m20305y();
                    boolean a = m20162a(v1, constraintWidget2, true);
                    Metrics metrics2 = constraintWidgetContainer.f2292Q0;
                    if (metrics2 != null) {
                        metrics2.f2086b++;
                    }
                    int U3 = constraintWidget2.m20356U();
                    int y3 = constraintWidget2.m20305y();
                    if (U3 != U2) {
                        constraintWidget2.m20347Y0(U3);
                        max = max;
                        if (z10) {
                            max = max;
                            if (constraintWidget2.m20370N() > max) {
                                max = Math.max(max, constraintWidget2.m20370N() + constraintWidget2.mo20199p(ConstraintAnchor.Type.RIGHT).m20412f());
                            }
                        }
                        z4 = true;
                    } else {
                        z4 = z12 | a;
                    }
                    max2 = max2;
                    if (y3 != y2) {
                        constraintWidget2.m20302z0(y3);
                        max2 = max2;
                        if (z11) {
                            max2 = max2;
                            if (constraintWidget2.m20317s() > max2) {
                                max2 = Math.max(max2, constraintWidget2.m20317s() + constraintWidget2.mo20199p(ConstraintAnchor.Type.BOTTOM).m20412f());
                            }
                        }
                        z4 = true;
                    }
                    z12 = z4 | ((VirtualLayout) constraintWidget2).m20178r1();
                }
            }
            int i16 = 0;
            while (true) {
                i11 = max;
                i12 = max2;
                z2 = z12;
                if (i16 >= 2) {
                    break;
                }
                boolean z13 = z12;
                for (int i17 = 0; i17 < size2; i17++) {
                    ConstraintWidget constraintWidget3 = this.f2373a.get(i17);
                    if ((!(constraintWidget3 instanceof Helper) || (constraintWidget3 instanceof VirtualLayout)) && !(constraintWidget3 instanceof Guideline) && constraintWidget3.m20358T() != 8 && ((!z9 || !constraintWidget3.f2240d.f2429e.f2405j || !constraintWidget3.f2242e.f2429e.f2405j) && !(constraintWidget3 instanceof VirtualLayout))) {
                        int U4 = constraintWidget3.m20356U();
                        int y4 = constraintWidget3.m20305y();
                        int q = constraintWidget3.m20321q();
                        boolean a2 = z13 | m20162a(v1, constraintWidget3, true);
                        Metrics metrics3 = constraintWidgetContainer.f2292Q0;
                        if (metrics3 != null) {
                            metrics3.f2086b++;
                        }
                        int U5 = constraintWidget3.m20356U();
                        int y5 = constraintWidget3.m20305y();
                        int i18 = max;
                        if (U5 != U4) {
                            constraintWidget3.m20347Y0(U5);
                            i18 = max;
                            if (z10) {
                                i18 = max;
                                if (constraintWidget3.m20370N() > max) {
                                    i18 = Math.max(max, constraintWidget3.m20370N() + constraintWidget3.mo20199p(ConstraintAnchor.Type.RIGHT).m20412f());
                                }
                            }
                            a2 = true;
                        }
                        int i19 = max2;
                        if (y5 != y4) {
                            constraintWidget3.m20302z0(y5);
                            i19 = max2;
                            if (z11) {
                                i19 = max2;
                                if (constraintWidget3.m20317s() > max2) {
                                    i19 = Math.max(max2, constraintWidget3.m20317s() + constraintWidget3.mo20199p(ConstraintAnchor.Type.BOTTOM).m20412f());
                                }
                            }
                            a2 = true;
                        }
                        max = i18;
                        max2 = i19;
                        z13 = a2;
                        if (constraintWidget3.m20350X()) {
                            max = i18;
                            max2 = i19;
                            z13 = a2;
                            if (q != constraintWidget3.m20321q()) {
                                z13 = true;
                                max2 = i19;
                                max = i18;
                            }
                        }
                    } else {
                        max = max;
                        z13 = z13;
                    }
                }
                i11 = max;
                i12 = max2;
                z2 = z13;
                if (!z13) {
                    break;
                }
                m20160c(constraintWidgetContainer, "intermediate pass", U, y);
                i16++;
                z12 = false;
                size2 = size2;
            }
            if (z2) {
                m20160c(constraintWidgetContainer, "2nd pass", U, y);
                if (constraintWidgetContainer.m20356U() < i11) {
                    constraintWidgetContainer.m20347Y0(i11);
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (constraintWidgetContainer.m20305y() < i12) {
                    constraintWidgetContainer.m20302z0(i12);
                    z3 = true;
                }
                if (z3) {
                    m20160c(constraintWidgetContainer, "3rd pass", U, y);
                }
            }
        }
        constraintWidgetContainer.m20292J1(w1);
        return 0L;
    }

    /* renamed from: e */
    public void m20158e(ConstraintWidgetContainer constraintWidgetContainer) {
        this.f2373a.clear();
        int size = constraintWidgetContainer.f2372L0.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = constraintWidgetContainer.f2372L0.get(i);
            if (constraintWidget.m20394B() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget.m20362R() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                this.f2373a.add(constraintWidget);
            }
        }
        constraintWidgetContainer.m20270z1();
    }
}
