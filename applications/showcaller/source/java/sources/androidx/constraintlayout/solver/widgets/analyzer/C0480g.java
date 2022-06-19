package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.C0470a;
import androidx.constraintlayout.solver.widgets.C0493d;
import androidx.constraintlayout.solver.widgets.C0496f;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.C0473b;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.constraintlayout.solver.widgets.analyzer.g */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/g.class */
public class C0480g {

    /* renamed from: a */
    private static C0473b.C0474a f2254a = new C0473b.C0474a();

    /* renamed from: a */
    private static boolean m33913a(ConstraintWidget constraintWidget) {
        ConstraintWidget.DimensionBehaviour m34051B = constraintWidget.m34051B();
        ConstraintWidget.DimensionBehaviour m34019R = constraintWidget.m34019R();
        C0493d c0493d = constraintWidget.m34031L() != null ? (C0493d) constraintWidget.m34031L() : null;
        if (c0493d != null) {
            c0493d.m34051B();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (c0493d != null) {
            c0493d.m34019R();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
        boolean z = m34051B == dimensionBehaviour3 || m34051B == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (m34051B == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f2158q == 0 && constraintWidget.f2126Z == 0.0f && constraintWidget.m34005Y(0)) || constraintWidget.mo33778h0();
        boolean z2 = m34019R == dimensionBehaviour3 || m34019R == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (m34019R == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f2160r == 0 && constraintWidget.f2126Z == 0.0f && constraintWidget.m34005Y(1)) || constraintWidget.mo33776i0();
        if (constraintWidget.f2126Z <= 0.0f || (!z && !z2)) {
            boolean z3 = false;
            if (z) {
                z3 = false;
                if (z2) {
                    z3 = true;
                }
            }
            return z3;
        }
        return true;
    }

    /* renamed from: b */
    private static void m33912b(ConstraintWidget constraintWidget, C0473b.AbstractC0475b abstractC0475b, boolean z) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        ConstraintAnchor constraintAnchor5;
        if (!(constraintWidget instanceof C0493d) && constraintWidget.m33990g0() && m33913a(constraintWidget)) {
            C0493d.m33866F1(constraintWidget, abstractC0475b, new C0473b.C0474a(), C0473b.C0474a.f2229a);
        }
        ConstraintAnchor mo33769p = constraintWidget.mo33769p(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor mo33769p2 = constraintWidget.mo33769p(ConstraintAnchor.Type.RIGHT);
        int m34070e = mo33769p.m34070e();
        int m34070e2 = mo33769p2.m34070e();
        if (mo33769p.m34071d() != null && mo33769p.m34061n()) {
            Iterator<ConstraintAnchor> it = mo33769p.m34071d().iterator();
            while (it.hasNext()) {
                ConstraintAnchor next = it.next();
                ConstraintWidget constraintWidget2 = next.f2070d;
                boolean m33913a = m33913a(constraintWidget2);
                if (constraintWidget2.m33990g0() && m33913a) {
                    C0493d.m33866F1(constraintWidget2, abstractC0475b, new C0473b.C0474a(), C0473b.C0474a.f2229a);
                }
                ConstraintWidget.DimensionBehaviour m34051B = constraintWidget2.m34051B();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (m34051B != dimensionBehaviour || m33913a) {
                    if (!constraintWidget2.m33990g0()) {
                        ConstraintAnchor constraintAnchor6 = constraintWidget2.f2108K;
                        if (next == constraintAnchor6 && constraintWidget2.f2112M.f2072f == null) {
                            int m34069f = constraintAnchor6.m34069f() + m34070e;
                            constraintWidget2.m33971t0(m34069f, constraintWidget2.m34013U() + m34069f);
                            m33912b(constraintWidget2, abstractC0475b, z);
                        } else {
                            ConstraintAnchor constraintAnchor7 = constraintWidget2.f2112M;
                            if (next == constraintAnchor7 && constraintAnchor6.f2072f == null) {
                                int m34069f2 = m34070e - constraintAnchor7.m34069f();
                                constraintWidget2.m33971t0(m34069f2 - constraintWidget2.m34013U(), m34069f2);
                                m33912b(constraintWidget2, abstractC0475b, z);
                            } else if (next == constraintAnchor6 && (constraintAnchor3 = constraintAnchor7.f2072f) != null && constraintAnchor3.m34061n() && !constraintWidget2.m33997c0()) {
                                m33910d(abstractC0475b, constraintWidget2, z);
                            }
                        }
                    }
                } else if (constraintWidget2.m34051B() == dimensionBehaviour && constraintWidget2.f2166u >= 0 && constraintWidget2.f2164t >= 0 && (constraintWidget2.m34015T() == 8 || (constraintWidget2.f2158q == 0 && constraintWidget2.m33966w() == 0.0f))) {
                    if (!constraintWidget2.m33997c0() && !constraintWidget2.m33991f0()) {
                        if (((next == constraintWidget2.f2108K && (constraintAnchor5 = constraintWidget2.f2112M.f2072f) != null && constraintAnchor5.m34061n()) || (next == constraintWidget2.f2112M && (constraintAnchor4 = constraintWidget2.f2108K.f2072f) != null && constraintAnchor4.m34061n())) && !constraintWidget2.m33997c0()) {
                            m33909e(constraintWidget, abstractC0475b, constraintWidget2, z);
                        }
                    }
                }
            }
        }
        if (!(constraintWidget instanceof C0496f) && mo33769p2.m34071d() != null && mo33769p2.m34061n()) {
            Iterator<ConstraintAnchor> it2 = mo33769p2.m34071d().iterator();
            while (it2.hasNext()) {
                ConstraintAnchor next2 = it2.next();
                ConstraintWidget constraintWidget3 = next2.f2070d;
                boolean m33913a2 = m33913a(constraintWidget3);
                if (constraintWidget3.m33990g0() && m33913a2) {
                    C0493d.m33866F1(constraintWidget3, abstractC0475b, new C0473b.C0474a(), C0473b.C0474a.f2229a);
                }
                boolean z2 = (next2 == constraintWidget3.f2108K && (constraintAnchor2 = constraintWidget3.f2112M.f2072f) != null && constraintAnchor2.m34061n()) || (next2 == constraintWidget3.f2112M && (constraintAnchor = constraintWidget3.f2108K.f2072f) != null && constraintAnchor.m34061n());
                ConstraintWidget.DimensionBehaviour m34051B2 = constraintWidget3.m34051B();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (m34051B2 != dimensionBehaviour2 || m33913a2) {
                    if (!constraintWidget3.m33990g0()) {
                        ConstraintAnchor constraintAnchor8 = constraintWidget3.f2108K;
                        if (next2 == constraintAnchor8 && constraintWidget3.f2112M.f2072f == null) {
                            int m34069f3 = constraintAnchor8.m34069f() + m34070e2;
                            constraintWidget3.m33971t0(m34069f3, constraintWidget3.m34013U() + m34069f3);
                            m33912b(constraintWidget3, abstractC0475b, z);
                        } else {
                            ConstraintAnchor constraintAnchor9 = constraintWidget3.f2112M;
                            if (next2 == constraintAnchor9 && constraintAnchor8.f2072f == null) {
                                int m34069f4 = m34070e2 - constraintAnchor9.m34069f();
                                constraintWidget3.m33971t0(m34069f4 - constraintWidget3.m34013U(), m34069f4);
                                m33912b(constraintWidget3, abstractC0475b, z);
                            } else if (z2 && !constraintWidget3.m33997c0()) {
                                m33910d(abstractC0475b, constraintWidget3, z);
                            }
                        }
                    }
                } else if (constraintWidget3.m34051B() == dimensionBehaviour2 && constraintWidget3.f2166u >= 0 && constraintWidget3.f2164t >= 0 && (constraintWidget3.m34015T() == 8 || (constraintWidget3.f2158q == 0 && constraintWidget3.m33966w() == 0.0f))) {
                    if (!constraintWidget3.m33997c0() && !constraintWidget3.m33991f0() && z2 && !constraintWidget3.m33997c0()) {
                        m33909e(constraintWidget, abstractC0475b, constraintWidget3, z);
                    }
                }
            }
        }
    }

    /* renamed from: c */
    private static void m33911c(C0470a c0470a, C0473b.AbstractC0475b abstractC0475b, int i, boolean z) {
        if (c0470a.m33958g1()) {
            if (i == 0) {
                m33912b(c0470a, abstractC0475b, z);
            } else {
                m33905i(c0470a, abstractC0475b);
            }
        }
    }

    /* renamed from: d */
    private static void m33910d(C0473b.AbstractC0475b abstractC0475b, ConstraintWidget constraintWidget, boolean z) {
        float m33960z = constraintWidget.m33960z();
        int m34070e = constraintWidget.f2108K.f2072f.m34070e();
        int m34070e2 = constraintWidget.f2112M.f2072f.m34070e();
        int m34069f = constraintWidget.f2108K.m34069f();
        int m34069f2 = constraintWidget.f2112M.m34069f();
        if (m34070e == m34070e2) {
            m33960z = 0.5f;
        } else {
            m34070e = m34069f + m34070e;
            m34070e2 -= m34069f2;
        }
        int m34013U = constraintWidget.m34013U();
        int i = (m34070e2 - m34070e) - m34013U;
        if (m34070e > m34070e2) {
            i = (m34070e - m34070e2) - m34013U;
        }
        int i2 = ((int) ((m33960z * i) + 0.5f)) + m34070e;
        int i3 = i2 + m34013U;
        if (m34070e > m34070e2) {
            i3 = i2 - m34013U;
        }
        constraintWidget.m33971t0(i2, i3);
        m33912b(constraintWidget, abstractC0475b, z);
    }

    /* renamed from: e */
    private static void m33909e(ConstraintWidget constraintWidget, C0473b.AbstractC0475b abstractC0475b, ConstraintWidget constraintWidget2, boolean z) {
        int i;
        float m33960z = constraintWidget2.m33960z();
        int m34070e = constraintWidget2.f2108K.f2072f.m34070e() + constraintWidget2.f2108K.m34069f();
        int m34070e2 = constraintWidget2.f2112M.f2072f.m34070e() - constraintWidget2.f2112M.m34069f();
        if (m34070e2 >= m34070e) {
            int m34013U = constraintWidget2.m34013U();
            int i2 = m34013U;
            if (constraintWidget2.m34015T() != 8) {
                int i3 = constraintWidget2.f2158q;
                if (i3 == 2) {
                    i = (int) (constraintWidget2.m33960z() * 0.5f * (constraintWidget instanceof C0493d ? constraintWidget.m34013U() : constraintWidget.m34031L().m34013U()));
                } else {
                    i = m34013U;
                    if (i3 == 0) {
                        i = m34070e2 - m34070e;
                    }
                }
                int max = Math.max(constraintWidget2.f2164t, i);
                int i4 = constraintWidget2.f2166u;
                i2 = max;
                if (i4 > 0) {
                    i2 = Math.min(i4, max);
                }
            }
            int i5 = m34070e + ((int) ((m33960z * ((m34070e2 - m34070e) - i2)) + 0.5f));
            constraintWidget2.m33971t0(i5, i2 + i5);
            m33912b(constraintWidget2, abstractC0475b, z);
        }
    }

    /* renamed from: f */
    private static void m33908f(C0473b.AbstractC0475b abstractC0475b, ConstraintWidget constraintWidget) {
        float m34023P = constraintWidget.m34023P();
        int m34070e = constraintWidget.f2110L.f2072f.m34070e();
        int m34070e2 = constraintWidget.f2114N.f2072f.m34070e();
        int m34069f = constraintWidget.f2110L.m34069f();
        int m34069f2 = constraintWidget.f2114N.m34069f();
        if (m34070e == m34070e2) {
            m34023P = 0.5f;
        } else {
            m34070e = m34069f + m34070e;
            m34070e2 -= m34069f2;
        }
        int m33962y = constraintWidget.m33962y();
        int i = (m34070e2 - m34070e) - m33962y;
        if (m34070e > m34070e2) {
            i = (m34070e - m34070e2) - m33962y;
        }
        int i2 = (int) ((m34023P * i) + 0.5f);
        int i3 = m34070e + i2;
        int i4 = i3 + m33962y;
        if (m34070e > m34070e2) {
            i3 = m34070e - i2;
            i4 = i3 - m33962y;
        }
        constraintWidget.m33965w0(i3, i4);
        m33905i(constraintWidget, abstractC0475b);
    }

    /* renamed from: g */
    private static void m33907g(ConstraintWidget constraintWidget, C0473b.AbstractC0475b abstractC0475b, ConstraintWidget constraintWidget2) {
        int i;
        float m34023P = constraintWidget2.m34023P();
        int m34070e = constraintWidget2.f2110L.f2072f.m34070e() + constraintWidget2.f2110L.m34069f();
        int m34070e2 = constraintWidget2.f2114N.f2072f.m34070e() - constraintWidget2.f2114N.m34069f();
        if (m34070e2 >= m34070e) {
            int m33962y = constraintWidget2.m33962y();
            int i2 = m33962y;
            if (constraintWidget2.m34015T() != 8) {
                int i3 = constraintWidget2.f2160r;
                if (i3 == 2) {
                    i = (int) (m34023P * 0.5f * (constraintWidget instanceof C0493d ? constraintWidget.m33962y() : constraintWidget.m34031L().m33962y()));
                } else {
                    i = m33962y;
                    if (i3 == 0) {
                        i = m34070e2 - m34070e;
                    }
                }
                int max = Math.max(constraintWidget2.f2170w, i);
                int i4 = constraintWidget2.f2172x;
                i2 = max;
                if (i4 > 0) {
                    i2 = Math.min(i4, max);
                }
            }
            int i5 = m34070e + ((int) ((m34023P * ((m34070e2 - m34070e) - i2)) + 0.5f));
            constraintWidget2.m33965w0(i5, i2 + i5);
            m33905i(constraintWidget2, abstractC0475b);
        }
    }

    /* renamed from: h */
    public static void m33906h(C0493d c0493d, C0473b.AbstractC0475b abstractC0475b) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        ConstraintWidget.DimensionBehaviour m34051B = c0493d.m34051B();
        ConstraintWidget.DimensionBehaviour m34019R = c0493d.m34019R();
        c0493d.m33983m0();
        ArrayList<ConstraintWidget> m33738e1 = c0493d.m33738e1();
        int size = m33738e1.size();
        for (int i = 0; i < size; i++) {
            m33738e1.get(i).m33983m0();
        }
        boolean m33869C1 = c0493d.m33869C1();
        if (m34051B == ConstraintWidget.DimensionBehaviour.FIXED) {
            c0493d.m33971t0(0, c0493d.m34013U());
        } else {
            c0493d.m33969u0(0);
        }
        int i2 = 0;
        boolean z7 = false;
        boolean z8 = false;
        while (true) {
            z = z8;
            if (i2 >= size) {
                break;
            }
            ConstraintWidget constraintWidget = m33738e1.get(i2);
            if (constraintWidget instanceof C0496f) {
                C0496f c0496f = (C0496f) constraintWidget;
                z6 = z7;
                z5 = z;
                if (c0496f.m33782f1() == 1) {
                    if (c0496f.m33780g1() != -1) {
                        c0496f.m33774j1(c0496f.m33780g1());
                    } else if (c0496f.m33777h1() != -1 && c0493d.mo33778h0()) {
                        c0496f.m33774j1(c0493d.m34013U() - c0496f.m33777h1());
                    } else if (c0493d.mo33778h0()) {
                        c0496f.m33774j1((int) ((c0496f.m33775i1() * c0493d.m34013U()) + 0.5f));
                    }
                    z6 = true;
                    z5 = z;
                }
            } else {
                z6 = z7;
                z5 = z;
                if (constraintWidget instanceof C0470a) {
                    z6 = z7;
                    z5 = z;
                    if (((C0470a) constraintWidget).m33954k1() == 0) {
                        z5 = true;
                        z6 = z7;
                    }
                }
            }
            i2++;
            z7 = z6;
            z8 = z5;
        }
        if (z7) {
            for (int i3 = 0; i3 < size; i3++) {
                ConstraintWidget constraintWidget2 = m33738e1.get(i3);
                if (constraintWidget2 instanceof C0496f) {
                    C0496f c0496f2 = (C0496f) constraintWidget2;
                    if (c0496f2.m33782f1() == 1) {
                        m33912b(c0496f2, abstractC0475b, m33869C1);
                    }
                }
            }
        }
        m33912b(c0493d, abstractC0475b, m33869C1);
        if (z) {
            for (int i4 = 0; i4 < size; i4++) {
                ConstraintWidget constraintWidget3 = m33738e1.get(i4);
                if (constraintWidget3 instanceof C0470a) {
                    C0470a c0470a = (C0470a) constraintWidget3;
                    if (c0470a.m33954k1() == 0) {
                        m33911c(c0470a, abstractC0475b, 0, m33869C1);
                    }
                }
            }
        }
        if (m34019R == ConstraintWidget.DimensionBehaviour.FIXED) {
            c0493d.m33965w0(0, c0493d.m33962y());
        } else {
            c0493d.m33967v0(0);
        }
        int i5 = 0;
        boolean z9 = false;
        boolean z10 = false;
        while (true) {
            z2 = z10;
            if (i5 >= size) {
                break;
            }
            ConstraintWidget constraintWidget4 = m33738e1.get(i5);
            if (constraintWidget4 instanceof C0496f) {
                C0496f c0496f3 = (C0496f) constraintWidget4;
                z3 = z9;
                z4 = z2;
                if (c0496f3.m33782f1() == 0) {
                    if (c0496f3.m33780g1() != -1) {
                        c0496f3.m33774j1(c0496f3.m33780g1());
                    } else if (c0496f3.m33777h1() != -1 && c0493d.mo33776i0()) {
                        c0496f3.m33774j1(c0493d.m33962y() - c0496f3.m33777h1());
                    } else if (c0493d.mo33776i0()) {
                        c0496f3.m33774j1((int) ((c0496f3.m33775i1() * c0493d.m33962y()) + 0.5f));
                    }
                    z3 = true;
                    z4 = z2;
                }
            } else {
                z3 = z9;
                z4 = z2;
                if (constraintWidget4 instanceof C0470a) {
                    z3 = z9;
                    z4 = z2;
                    if (((C0470a) constraintWidget4).m33954k1() == 1) {
                        z4 = true;
                        z3 = z9;
                    }
                }
            }
            i5++;
            z9 = z3;
            z10 = z4;
        }
        if (z9) {
            for (int i6 = 0; i6 < size; i6++) {
                ConstraintWidget constraintWidget5 = m33738e1.get(i6);
                if (constraintWidget5 instanceof C0496f) {
                    C0496f c0496f4 = (C0496f) constraintWidget5;
                    if (c0496f4.m33782f1() == 0) {
                        m33905i(c0496f4, abstractC0475b);
                    }
                }
            }
        }
        m33905i(c0493d, abstractC0475b);
        int i7 = 0;
        if (z2) {
            int i8 = 0;
            while (true) {
                i7 = 0;
                if (i8 >= size) {
                    break;
                }
                ConstraintWidget constraintWidget6 = m33738e1.get(i8);
                if (constraintWidget6 instanceof C0470a) {
                    C0470a c0470a2 = (C0470a) constraintWidget6;
                    if (c0470a2.m33954k1() == 1) {
                        m33911c(c0470a2, abstractC0475b, 1, m33869C1);
                    }
                }
                i8++;
            }
        }
        while (i7 < size) {
            ConstraintWidget constraintWidget7 = m33738e1.get(i7);
            if (constraintWidget7.m33990g0() && m33913a(constraintWidget7)) {
                C0493d.m33866F1(constraintWidget7, abstractC0475b, f2254a, C0473b.C0474a.f2229a);
                m33912b(constraintWidget7, abstractC0475b, m33869C1);
                m33905i(constraintWidget7, abstractC0475b);
            }
            i7++;
        }
    }

    /* renamed from: i */
    private static void m33905i(ConstraintWidget constraintWidget, C0473b.AbstractC0475b abstractC0475b) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        ConstraintAnchor constraintAnchor5;
        if (!(constraintWidget instanceof C0493d) && constraintWidget.m33990g0() && m33913a(constraintWidget)) {
            C0493d.m33866F1(constraintWidget, abstractC0475b, new C0473b.C0474a(), C0473b.C0474a.f2229a);
        }
        ConstraintAnchor mo33769p = constraintWidget.mo33769p(ConstraintAnchor.Type.TOP);
        ConstraintAnchor mo33769p2 = constraintWidget.mo33769p(ConstraintAnchor.Type.BOTTOM);
        int m34070e = mo33769p.m34070e();
        int m34070e2 = mo33769p2.m34070e();
        if (mo33769p.m34071d() != null && mo33769p.m34061n()) {
            Iterator<ConstraintAnchor> it = mo33769p.m34071d().iterator();
            while (it.hasNext()) {
                ConstraintAnchor next = it.next();
                ConstraintWidget constraintWidget2 = next.f2070d;
                boolean m33913a = m33913a(constraintWidget2);
                if (constraintWidget2.m33990g0() && m33913a) {
                    C0493d.m33866F1(constraintWidget2, abstractC0475b, new C0473b.C0474a(), C0473b.C0474a.f2229a);
                }
                ConstraintWidget.DimensionBehaviour m34019R = constraintWidget2.m34019R();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (m34019R != dimensionBehaviour || m33913a) {
                    if (!constraintWidget2.m33990g0()) {
                        ConstraintAnchor constraintAnchor6 = constraintWidget2.f2110L;
                        if (next == constraintAnchor6 && constraintWidget2.f2114N.f2072f == null) {
                            int m34069f = constraintAnchor6.m34069f() + m34070e;
                            constraintWidget2.m33965w0(m34069f, constraintWidget2.m33962y() + m34069f);
                            m33905i(constraintWidget2, abstractC0475b);
                        } else {
                            ConstraintAnchor constraintAnchor7 = constraintWidget2.f2114N;
                            if (next == constraintAnchor7 && constraintAnchor7.f2072f == null) {
                                int m34069f2 = m34070e - constraintAnchor7.m34069f();
                                constraintWidget2.m33965w0(m34069f2 - constraintWidget2.m33962y(), m34069f2);
                                m33905i(constraintWidget2, abstractC0475b);
                            } else if (next == constraintAnchor6 && (constraintAnchor3 = constraintAnchor7.f2072f) != null && constraintAnchor3.m34061n()) {
                                m33908f(abstractC0475b, constraintWidget2);
                            }
                        }
                    }
                } else if (constraintWidget2.m34019R() == dimensionBehaviour && constraintWidget2.f2172x >= 0 && constraintWidget2.f2170w >= 0 && (constraintWidget2.m34015T() == 8 || (constraintWidget2.f2160r == 0 && constraintWidget2.m33966w() == 0.0f))) {
                    if (!constraintWidget2.m33993e0() && !constraintWidget2.m33991f0()) {
                        if (((next == constraintWidget2.f2110L && (constraintAnchor5 = constraintWidget2.f2114N.f2072f) != null && constraintAnchor5.m34061n()) || (next == constraintWidget2.f2114N && (constraintAnchor4 = constraintWidget2.f2110L.f2072f) != null && constraintAnchor4.m34061n())) && !constraintWidget2.m33993e0()) {
                            m33907g(constraintWidget, abstractC0475b, constraintWidget2);
                        }
                    }
                }
            }
        }
        if (constraintWidget instanceof C0496f) {
            return;
        }
        if (mo33769p2.m34071d() != null && mo33769p2.m34061n()) {
            Iterator<ConstraintAnchor> it2 = mo33769p2.m34071d().iterator();
            while (it2.hasNext()) {
                ConstraintAnchor next2 = it2.next();
                ConstraintWidget constraintWidget3 = next2.f2070d;
                boolean m33913a2 = m33913a(constraintWidget3);
                if (constraintWidget3.m33990g0() && m33913a2) {
                    C0493d.m33866F1(constraintWidget3, abstractC0475b, new C0473b.C0474a(), C0473b.C0474a.f2229a);
                }
                boolean z = (next2 == constraintWidget3.f2110L && (constraintAnchor2 = constraintWidget3.f2114N.f2072f) != null && constraintAnchor2.m34061n()) || (next2 == constraintWidget3.f2114N && (constraintAnchor = constraintWidget3.f2110L.f2072f) != null && constraintAnchor.m34061n());
                ConstraintWidget.DimensionBehaviour m34019R2 = constraintWidget3.m34019R();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (m34019R2 != dimensionBehaviour2 || m33913a2) {
                    if (!constraintWidget3.m33990g0()) {
                        ConstraintAnchor constraintAnchor8 = constraintWidget3.f2110L;
                        if (next2 == constraintAnchor8 && constraintWidget3.f2114N.f2072f == null) {
                            int m34069f3 = constraintAnchor8.m34069f() + m34070e2;
                            constraintWidget3.m33965w0(m34069f3, constraintWidget3.m33962y() + m34069f3);
                            m33905i(constraintWidget3, abstractC0475b);
                        } else {
                            ConstraintAnchor constraintAnchor9 = constraintWidget3.f2114N;
                            if (next2 == constraintAnchor9 && constraintAnchor8.f2072f == null) {
                                int m34069f4 = m34070e2 - constraintAnchor9.m34069f();
                                constraintWidget3.m33965w0(m34069f4 - constraintWidget3.m33962y(), m34069f4);
                                m33905i(constraintWidget3, abstractC0475b);
                            } else if (z && !constraintWidget3.m33993e0()) {
                                m33908f(abstractC0475b, constraintWidget3);
                            }
                        }
                    }
                } else if (constraintWidget3.m34019R() == dimensionBehaviour2 && constraintWidget3.f2172x >= 0 && constraintWidget3.f2170w >= 0 && (constraintWidget3.m34015T() == 8 || (constraintWidget3.f2160r == 0 && constraintWidget3.m33966w() == 0.0f))) {
                    if (!constraintWidget3.m33993e0() && !constraintWidget3.m33991f0() && z && !constraintWidget3.m33993e0()) {
                        m33907g(constraintWidget, abstractC0475b, constraintWidget3);
                    }
                }
            }
        }
        ConstraintAnchor mo33769p3 = constraintWidget.mo33769p(ConstraintAnchor.Type.BASELINE);
        if (mo33769p3.m34071d() == null || !mo33769p3.m34061n()) {
            return;
        }
        int m34070e3 = mo33769p3.m34070e();
        Iterator<ConstraintAnchor> it3 = mo33769p3.m34071d().iterator();
        while (it3.hasNext()) {
            ConstraintAnchor next3 = it3.next();
            ConstraintWidget constraintWidget4 = next3.f2070d;
            boolean m33913a3 = m33913a(constraintWidget4);
            if (constraintWidget4.m33990g0() && m33913a3) {
                C0493d.m33866F1(constraintWidget4, abstractC0475b, new C0473b.C0474a(), C0473b.C0474a.f2229a);
            }
            if (constraintWidget4.m34019R() != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || m33913a3) {
                if (!constraintWidget4.m33990g0() && next3 == constraintWidget4.f2115O) {
                    constraintWidget4.m33973s0(m34070e3);
                    m33905i(constraintWidget4, abstractC0475b);
                }
            }
        }
    }
}
