package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.Barrier;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Guideline;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/Direct.class */
public class Direct {

    /* renamed from: a */
    private static BasicMeasure.Measure f2409a = new BasicMeasure.Measure();

    /* renamed from: a */
    private static boolean m20137a(ConstraintWidget constraintWidget) {
        ConstraintWidget.DimensionBehaviour B = constraintWidget.m20394B();
        ConstraintWidget.DimensionBehaviour R = constraintWidget.m20362R();
        ConstraintWidgetContainer constraintWidgetContainer = constraintWidget.m20374L() != null ? (ConstraintWidgetContainer) constraintWidget.m20374L() : null;
        if (constraintWidgetContainer != null) {
            constraintWidgetContainer.m20394B();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (constraintWidgetContainer != null) {
            constraintWidgetContainer.m20362R();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        boolean z = B == ConstraintWidget.DimensionBehaviour.FIXED || B == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (B == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f2262o == 0 && constraintWidget.f2231X == 0.0f && constraintWidget.m20348Y(0)) || constraintWidget.mo20208h0();
        boolean z2 = R == ConstraintWidget.DimensionBehaviour.FIXED || R == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (R == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f2264p == 0 && constraintWidget.f2231X == 0.0f && constraintWidget.m20348Y(1)) || constraintWidget.mo20206i0();
        if (constraintWidget.f2231X > 0.0f && (z || z2)) {
            return true;
        }
        boolean z3 = false;
        if (z) {
            z3 = false;
            if (z2) {
                z3 = true;
            }
        }
        return z3;
    }

    /* renamed from: b */
    private static void m20136b(ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        ConstraintAnchor constraintAnchor5;
        if (!(constraintWidget instanceof ConstraintWidgetContainer) && constraintWidget.m20333g0() && m20137a(constraintWidget)) {
            ConstraintWidgetContainer.m20296F1(constraintWidget, measurer, new BasicMeasure.Measure(), false);
        }
        ConstraintAnchor p = constraintWidget.mo20199p(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor p2 = constraintWidget.mo20199p(ConstraintAnchor.Type.RIGHT);
        int e = p.m20413e();
        int e2 = p2.m20413e();
        if (p.m20414d() != null && p.m20404n()) {
            Iterator<ConstraintAnchor> it = p.m20414d().iterator();
            while (it.hasNext()) {
                ConstraintAnchor next = it.next();
                ConstraintWidget constraintWidget2 = next.f2190d;
                boolean a = m20137a(constraintWidget2);
                if (constraintWidget2.m20333g0() && a) {
                    ConstraintWidgetContainer.m20296F1(constraintWidget2, measurer, new BasicMeasure.Measure(), false);
                }
                if (constraintWidget2.m20394B() != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || a) {
                    if (!constraintWidget2.m20333g0()) {
                        ConstraintAnchor constraintAnchor6 = constraintWidget2.f2214I;
                        if (next == constraintAnchor6 && constraintWidget2.f2218K.f2192f == null) {
                            int f = constraintAnchor6.m20412f() + e;
                            constraintWidget2.m20314t0(f, constraintWidget2.m20356U() + f);
                            m20136b(constraintWidget2, measurer);
                        } else {
                            ConstraintAnchor constraintAnchor7 = constraintWidget2.f2218K;
                            if (next == constraintAnchor7 && constraintWidget2.f2214I.f2192f == null) {
                                int f2 = e - constraintAnchor7.m20412f();
                                constraintWidget2.m20314t0(f2 - constraintWidget2.m20356U(), f2);
                                m20136b(constraintWidget2, measurer);
                            } else if (next == constraintWidget2.f2214I && (constraintAnchor3 = constraintWidget2.f2218K.f2192f) != null && constraintAnchor3.m20404n() && !constraintWidget2.m20340c0()) {
                                m20134d(measurer, constraintWidget2);
                            }
                        }
                    }
                } else if (constraintWidget2.m20394B() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && (constraintWidget2.m20358T() == 8 || (constraintWidget2.f2262o == 0 && constraintWidget2.m20309w() == 0.0f))) {
                    if (!constraintWidget2.m20340c0() && !constraintWidget2.m20334f0()) {
                        if (((next == constraintWidget2.f2214I && (constraintAnchor5 = constraintWidget2.f2218K.f2192f) != null && constraintAnchor5.m20404n()) || (next == constraintWidget2.f2218K && (constraintAnchor4 = constraintWidget2.f2214I.f2192f) != null && constraintAnchor4.m20404n())) && !constraintWidget2.m20340c0()) {
                            m20133e(constraintWidget, measurer, constraintWidget2);
                        }
                    }
                }
            }
        }
        if (!(constraintWidget instanceof Guideline) && p2.m20414d() != null && p2.m20404n()) {
            Iterator<ConstraintAnchor> it2 = p2.m20414d().iterator();
            while (it2.hasNext()) {
                ConstraintAnchor next2 = it2.next();
                ConstraintWidget constraintWidget3 = next2.f2190d;
                boolean a2 = m20137a(constraintWidget3);
                if (constraintWidget3.m20333g0() && a2) {
                    ConstraintWidgetContainer.m20296F1(constraintWidget3, measurer, new BasicMeasure.Measure(), false);
                }
                boolean z = (next2 == constraintWidget3.f2214I && (constraintAnchor2 = constraintWidget3.f2218K.f2192f) != null && constraintAnchor2.m20404n()) || (next2 == constraintWidget3.f2218K && (constraintAnchor = constraintWidget3.f2214I.f2192f) != null && constraintAnchor.m20404n());
                if (constraintWidget3.m20394B() != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || a2) {
                    if (!constraintWidget3.m20333g0()) {
                        ConstraintAnchor constraintAnchor8 = constraintWidget3.f2214I;
                        if (next2 == constraintAnchor8 && constraintWidget3.f2218K.f2192f == null) {
                            int f3 = constraintAnchor8.m20412f() + e2;
                            constraintWidget3.m20314t0(f3, constraintWidget3.m20356U() + f3);
                            m20136b(constraintWidget3, measurer);
                        } else {
                            ConstraintAnchor constraintAnchor9 = constraintWidget3.f2218K;
                            if (next2 == constraintAnchor9 && constraintWidget3.f2214I.f2192f == null) {
                                int f4 = e2 - constraintAnchor9.m20412f();
                                constraintWidget3.m20314t0(f4 - constraintWidget3.m20356U(), f4);
                                m20136b(constraintWidget3, measurer);
                            } else if (z && !constraintWidget3.m20340c0()) {
                                m20134d(measurer, constraintWidget3);
                            }
                        }
                    }
                } else if (constraintWidget3.m20394B() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && (constraintWidget3.m20358T() == 8 || (constraintWidget3.f2262o == 0 && constraintWidget3.m20309w() == 0.0f))) {
                    if (!constraintWidget3.m20340c0() && !constraintWidget3.m20334f0() && z && !constraintWidget3.m20340c0()) {
                        m20133e(constraintWidget, measurer, constraintWidget3);
                    }
                }
            }
        }
    }

    /* renamed from: c */
    private static void m20135c(Barrier barrier, BasicMeasure.Measurer measurer, int i) {
        if (!barrier.m20431g1()) {
            return;
        }
        if (i == 0) {
            m20136b(barrier, measurer);
        } else {
            m20129i(barrier, measurer);
        }
    }

    /* renamed from: d */
    private static void m20134d(BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget) {
        float z = constraintWidget.m20303z();
        int e = constraintWidget.f2214I.f2192f.m20413e();
        int e2 = constraintWidget.f2218K.f2192f.m20413e();
        int f = constraintWidget.f2214I.m20412f();
        int f2 = constraintWidget.f2218K.m20412f();
        if (e == e2) {
            z = 0.5f;
        } else {
            e = f + e;
            e2 -= f2;
        }
        int U = constraintWidget.m20356U();
        int i = (e2 - e) - U;
        if (e > e2) {
            i = (e - e2) - U;
        }
        float f3 = z;
        if (((ConstraintWidgetContainer) constraintWidget.m20374L()).m20299C1()) {
            f3 = 1.0f - z;
        }
        int i2 = ((int) ((f3 * i) + 0.5f)) + e;
        int i3 = i2 + U;
        if (e > e2) {
            i3 = i2 - U;
        }
        constraintWidget.m20314t0(i2, i3);
        m20136b(constraintWidget, measurer);
    }

    /* renamed from: e */
    private static void m20133e(ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget2) {
        int i;
        float z = constraintWidget2.m20303z();
        int e = constraintWidget2.f2214I.f2192f.m20413e() + constraintWidget2.f2214I.m20412f();
        int e2 = constraintWidget2.f2218K.f2192f.m20413e() - constraintWidget2.f2218K.m20412f();
        if (e2 >= e) {
            int U = constraintWidget2.m20356U();
            int i2 = U;
            if (constraintWidget2.m20358T() != 8) {
                int i3 = constraintWidget2.f2262o;
                if (i3 == 2) {
                    i = (int) (constraintWidget2.m20303z() * 0.5f * (constraintWidget instanceof ConstraintWidgetContainer ? constraintWidget.m20356U() : constraintWidget.m20374L().m20356U()));
                } else {
                    i = U;
                    if (i3 == 0) {
                        i = e2 - e;
                    }
                }
                int max = Math.max(constraintWidget2.f2268r, i);
                int i4 = constraintWidget2.f2270s;
                i2 = max;
                if (i4 > 0) {
                    i2 = Math.min(i4, max);
                }
            }
            int i5 = e + ((int) ((z * ((e2 - e) - i2)) + 0.5f));
            constraintWidget2.m20314t0(i5, i2 + i5);
            m20136b(constraintWidget2, measurer);
        }
    }

    /* renamed from: f */
    private static void m20132f(BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget) {
        float P = constraintWidget.m20366P();
        int e = constraintWidget.f2216J.f2192f.m20413e();
        int e2 = constraintWidget.f2219L.f2192f.m20413e();
        int f = constraintWidget.f2216J.m20412f();
        int f2 = constraintWidget.f2219L.m20412f();
        if (e == e2) {
            P = 0.5f;
        } else {
            e = f + e;
            e2 -= f2;
        }
        int y = constraintWidget.m20305y();
        int i = (e2 - e) - y;
        if (e > e2) {
            i = (e - e2) - y;
        }
        int i2 = (int) ((P * i) + 0.5f);
        int i3 = e + i2;
        int i4 = i3 + y;
        if (e > e2) {
            i3 = e - i2;
            i4 = i3 - y;
        }
        constraintWidget.m20308w0(i3, i4);
        m20129i(constraintWidget, measurer);
    }

    /* renamed from: g */
    private static void m20131g(ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget2) {
        int i;
        float P = constraintWidget2.m20366P();
        int e = constraintWidget2.f2216J.f2192f.m20413e() + constraintWidget2.f2216J.m20412f();
        int e2 = constraintWidget2.f2219L.f2192f.m20413e() - constraintWidget2.f2219L.m20412f();
        if (e2 >= e) {
            int y = constraintWidget2.m20305y();
            int i2 = y;
            if (constraintWidget2.m20358T() != 8) {
                int i3 = constraintWidget2.f2264p;
                if (i3 == 2) {
                    i = (int) (P * 0.5f * (constraintWidget instanceof ConstraintWidgetContainer ? constraintWidget.m20305y() : constraintWidget.m20374L().m20305y()));
                } else {
                    i = y;
                    if (i3 == 0) {
                        i = e2 - e;
                    }
                }
                int max = Math.max(constraintWidget2.f2274u, i);
                int i4 = constraintWidget2.f2276v;
                i2 = max;
                if (i4 > 0) {
                    i2 = Math.min(i4, max);
                }
            }
            int i5 = e + ((int) ((P * ((e2 - e) - i2)) + 0.5f));
            constraintWidget2.m20308w0(i5, i2 + i5);
            m20129i(constraintWidget2, measurer);
        }
    }

    /* renamed from: h */
    public static void m20130h(ConstraintWidgetContainer constraintWidgetContainer, BasicMeasure.Measurer measurer) {
        ConstraintWidget.DimensionBehaviour B = constraintWidgetContainer.m20394B();
        ConstraintWidget.DimensionBehaviour R = constraintWidgetContainer.m20362R();
        constraintWidgetContainer.m20326m0();
        ArrayList<ConstraintWidget> e1 = constraintWidgetContainer.m20168e1();
        int size = e1.size();
        for (int i = 0; i < size; i++) {
            e1.get(i).m20326m0();
        }
        if (B == ConstraintWidget.DimensionBehaviour.FIXED) {
            constraintWidgetContainer.m20314t0(0, constraintWidgetContainer.m20356U());
        } else {
            constraintWidgetContainer.m20312u0(0);
        }
        boolean z = false;
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = e1.get(i2);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                z = z;
                z2 = z2;
                if (guideline.m20212f1() == 1) {
                    if (guideline.m20210g1() != -1) {
                        guideline.m20204j1(guideline.m20210g1());
                    } else if (guideline.m20207h1() != -1 && constraintWidgetContainer.mo20208h0()) {
                        guideline.m20204j1(constraintWidgetContainer.m20356U() - guideline.m20207h1());
                    } else if (constraintWidgetContainer.mo20208h0()) {
                        guideline.m20204j1((int) ((guideline.m20205i1() * constraintWidgetContainer.m20356U()) + 0.5f));
                    }
                    z = true;
                    z2 = z2;
                }
            } else {
                z = z;
                z2 = z2;
                if (constraintWidget instanceof Barrier) {
                    z = z;
                    z2 = z2;
                    if (((Barrier) constraintWidget).m20427k1() == 0) {
                        z2 = true;
                        z = z;
                    }
                }
            }
        }
        if (z) {
            for (int i3 = 0; i3 < size; i3++) {
                ConstraintWidget constraintWidget2 = e1.get(i3);
                if (constraintWidget2 instanceof Guideline) {
                    Guideline guideline2 = (Guideline) constraintWidget2;
                    if (guideline2.m20212f1() == 1) {
                        m20136b(guideline2, measurer);
                    }
                }
            }
        }
        m20136b(constraintWidgetContainer, measurer);
        if (z2) {
            for (int i4 = 0; i4 < size; i4++) {
                ConstraintWidget constraintWidget3 = e1.get(i4);
                if (constraintWidget3 instanceof Barrier) {
                    Barrier barrier = (Barrier) constraintWidget3;
                    if (barrier.m20427k1() == 0) {
                        m20135c(barrier, measurer, 0);
                    }
                }
            }
        }
        if (R == ConstraintWidget.DimensionBehaviour.FIXED) {
            constraintWidgetContainer.m20308w0(0, constraintWidgetContainer.m20305y());
        } else {
            constraintWidgetContainer.m20310v0(0);
        }
        boolean z3 = false;
        boolean z4 = false;
        for (int i5 = 0; i5 < size; i5++) {
            ConstraintWidget constraintWidget4 = e1.get(i5);
            if (constraintWidget4 instanceof Guideline) {
                Guideline guideline3 = (Guideline) constraintWidget4;
                z3 = z3;
                z4 = z4;
                if (guideline3.m20212f1() == 0) {
                    if (guideline3.m20210g1() != -1) {
                        guideline3.m20204j1(guideline3.m20210g1());
                    } else if (guideline3.m20207h1() != -1 && constraintWidgetContainer.mo20206i0()) {
                        guideline3.m20204j1(constraintWidgetContainer.m20305y() - guideline3.m20207h1());
                    } else if (constraintWidgetContainer.mo20206i0()) {
                        guideline3.m20204j1((int) ((guideline3.m20205i1() * constraintWidgetContainer.m20305y()) + 0.5f));
                    }
                    z3 = true;
                    z4 = z4;
                }
            } else {
                z3 = z3;
                z4 = z4;
                if (constraintWidget4 instanceof Barrier) {
                    z3 = z3;
                    z4 = z4;
                    if (((Barrier) constraintWidget4).m20427k1() == 1) {
                        z4 = true;
                        z3 = z3;
                    }
                }
            }
        }
        if (z3) {
            for (int i6 = 0; i6 < size; i6++) {
                ConstraintWidget constraintWidget5 = e1.get(i6);
                if (constraintWidget5 instanceof Guideline) {
                    Guideline guideline4 = (Guideline) constraintWidget5;
                    if (guideline4.m20212f1() == 0) {
                        m20129i(guideline4, measurer);
                    }
                }
            }
        }
        m20129i(constraintWidgetContainer, measurer);
        if (z4) {
            for (int i7 = 0; i7 < size; i7++) {
                ConstraintWidget constraintWidget6 = e1.get(i7);
                if (constraintWidget6 instanceof Barrier) {
                    Barrier barrier2 = (Barrier) constraintWidget6;
                    if (barrier2.m20427k1() == 1) {
                        m20135c(barrier2, measurer, 1);
                    }
                }
            }
        }
        for (int i8 = 0; i8 < size; i8++) {
            ConstraintWidget constraintWidget7 = e1.get(i8);
            if (constraintWidget7.m20333g0() && m20137a(constraintWidget7)) {
                ConstraintWidgetContainer.m20296F1(constraintWidget7, measurer, f2409a, false);
                m20136b(constraintWidget7, measurer);
                m20129i(constraintWidget7, measurer);
            }
        }
    }

    /* renamed from: i */
    private static void m20129i(ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        ConstraintAnchor constraintAnchor5;
        if (!(constraintWidget instanceof ConstraintWidgetContainer) && constraintWidget.m20333g0() && m20137a(constraintWidget)) {
            ConstraintWidgetContainer.m20296F1(constraintWidget, measurer, new BasicMeasure.Measure(), false);
        }
        ConstraintAnchor p = constraintWidget.mo20199p(ConstraintAnchor.Type.TOP);
        ConstraintAnchor p2 = constraintWidget.mo20199p(ConstraintAnchor.Type.BOTTOM);
        int e = p.m20413e();
        int e2 = p2.m20413e();
        if (p.m20414d() != null && p.m20404n()) {
            Iterator<ConstraintAnchor> it = p.m20414d().iterator();
            while (it.hasNext()) {
                ConstraintAnchor next = it.next();
                ConstraintWidget constraintWidget2 = next.f2190d;
                boolean a = m20137a(constraintWidget2);
                if (constraintWidget2.m20333g0() && a) {
                    ConstraintWidgetContainer.m20296F1(constraintWidget2, measurer, new BasicMeasure.Measure(), false);
                }
                if (constraintWidget2.m20362R() != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || a) {
                    if (!constraintWidget2.m20333g0()) {
                        ConstraintAnchor constraintAnchor6 = constraintWidget2.f2216J;
                        if (next == constraintAnchor6 && constraintWidget2.f2219L.f2192f == null) {
                            int f = constraintAnchor6.m20412f() + e;
                            constraintWidget2.m20308w0(f, constraintWidget2.m20305y() + f);
                            m20129i(constraintWidget2, measurer);
                        } else {
                            ConstraintAnchor constraintAnchor7 = constraintWidget2.f2219L;
                            if (next == constraintAnchor7 && constraintAnchor7.f2192f == null) {
                                int f2 = e - constraintAnchor7.m20412f();
                                constraintWidget2.m20308w0(f2 - constraintWidget2.m20305y(), f2);
                                m20129i(constraintWidget2, measurer);
                            } else if (next == constraintWidget2.f2216J && (constraintAnchor3 = constraintWidget2.f2219L.f2192f) != null && constraintAnchor3.m20404n()) {
                                m20132f(measurer, constraintWidget2);
                            }
                        }
                    }
                } else if (constraintWidget2.m20362R() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && (constraintWidget2.m20358T() == 8 || (constraintWidget2.f2264p == 0 && constraintWidget2.m20309w() == 0.0f))) {
                    if (!constraintWidget2.m20336e0() && !constraintWidget2.m20334f0()) {
                        if (((next == constraintWidget2.f2216J && (constraintAnchor5 = constraintWidget2.f2219L.f2192f) != null && constraintAnchor5.m20404n()) || (next == constraintWidget2.f2219L && (constraintAnchor4 = constraintWidget2.f2216J.f2192f) != null && constraintAnchor4.m20404n())) && !constraintWidget2.m20336e0()) {
                            m20131g(constraintWidget, measurer, constraintWidget2);
                        }
                    }
                }
            }
        }
        if (!(constraintWidget instanceof Guideline)) {
            if (p2.m20414d() != null && p2.m20404n()) {
                Iterator<ConstraintAnchor> it2 = p2.m20414d().iterator();
                while (it2.hasNext()) {
                    ConstraintAnchor next2 = it2.next();
                    ConstraintWidget constraintWidget3 = next2.f2190d;
                    boolean a2 = m20137a(constraintWidget3);
                    if (constraintWidget3.m20333g0() && a2) {
                        ConstraintWidgetContainer.m20296F1(constraintWidget3, measurer, new BasicMeasure.Measure(), false);
                    }
                    boolean z = (next2 == constraintWidget3.f2216J && (constraintAnchor2 = constraintWidget3.f2219L.f2192f) != null && constraintAnchor2.m20404n()) || (next2 == constraintWidget3.f2219L && (constraintAnchor = constraintWidget3.f2216J.f2192f) != null && constraintAnchor.m20404n());
                    if (constraintWidget3.m20362R() != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || a2) {
                        if (!constraintWidget3.m20333g0()) {
                            ConstraintAnchor constraintAnchor8 = constraintWidget3.f2216J;
                            if (next2 == constraintAnchor8 && constraintWidget3.f2219L.f2192f == null) {
                                int f3 = constraintAnchor8.m20412f() + e2;
                                constraintWidget3.m20308w0(f3, constraintWidget3.m20305y() + f3);
                                m20129i(constraintWidget3, measurer);
                            } else {
                                ConstraintAnchor constraintAnchor9 = constraintWidget3.f2219L;
                                if (next2 == constraintAnchor9 && constraintWidget3.f2216J.f2192f == null) {
                                    int f4 = e2 - constraintAnchor9.m20412f();
                                    constraintWidget3.m20308w0(f4 - constraintWidget3.m20305y(), f4);
                                    m20129i(constraintWidget3, measurer);
                                } else if (z && !constraintWidget3.m20336e0()) {
                                    m20132f(measurer, constraintWidget3);
                                }
                            }
                        }
                    } else if (constraintWidget3.m20362R() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && (constraintWidget3.m20358T() == 8 || (constraintWidget3.f2264p == 0 && constraintWidget3.m20309w() == 0.0f))) {
                        if (!constraintWidget3.m20336e0() && !constraintWidget3.m20334f0() && z && !constraintWidget3.m20336e0()) {
                            m20131g(constraintWidget, measurer, constraintWidget3);
                        }
                    }
                }
            }
            ConstraintAnchor p3 = constraintWidget.mo20199p(ConstraintAnchor.Type.BASELINE);
            if (p3.m20414d() != null && p3.m20404n()) {
                int e3 = p3.m20413e();
                Iterator<ConstraintAnchor> it3 = p3.m20414d().iterator();
                while (it3.hasNext()) {
                    ConstraintAnchor next3 = it3.next();
                    ConstraintWidget constraintWidget4 = next3.f2190d;
                    boolean a3 = m20137a(constraintWidget4);
                    if (constraintWidget4.m20333g0() && a3) {
                        ConstraintWidgetContainer.m20296F1(constraintWidget4, measurer, new BasicMeasure.Measure(), false);
                    }
                    if (constraintWidget4.m20362R() != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || a3) {
                        if (!constraintWidget4.m20333g0() && next3 == constraintWidget4.f2220M) {
                            constraintWidget4.m20316s0(e3);
                            m20129i(constraintWidget4, measurer);
                        }
                    }
                }
            }
        }
    }
}
