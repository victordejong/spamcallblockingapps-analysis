package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.C0458d;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
/* renamed from: androidx.constraintlayout.solver.widgets.i */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/i.class */
public class C0500i {

    /* renamed from: a */
    static boolean[] f2387a = new boolean[3];

    /* renamed from: a */
    public static void m33763a(C0493d c0493d, C0458d c0458d, ConstraintWidget constraintWidget) {
        constraintWidget.f2154o = -1;
        constraintWidget.f2156p = -1;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = c0493d.f2122V[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour != dimensionBehaviour2 && constraintWidget.f2122V[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i = constraintWidget.f2108K.f2073g;
            int m34013U = c0493d.m34013U() - constraintWidget.f2112M.f2073g;
            ConstraintAnchor constraintAnchor = constraintWidget.f2108K;
            constraintAnchor.f2075i = c0458d.m34118q(constraintAnchor);
            ConstraintAnchor constraintAnchor2 = constraintWidget.f2112M;
            constraintAnchor2.f2075i = c0458d.m34118q(constraintAnchor2);
            c0458d.m34129f(constraintWidget.f2108K.f2075i, i);
            c0458d.m34129f(constraintWidget.f2112M.f2075i, m34013U);
            constraintWidget.f2154o = 2;
            constraintWidget.m34048C0(i, m34013U);
        }
        if (c0493d.f2122V[1] == dimensionBehaviour2 || constraintWidget.f2122V[1] != ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            return;
        }
        int i2 = constraintWidget.f2110L.f2073g;
        int m33962y = c0493d.m33962y() - constraintWidget.f2114N.f2073g;
        ConstraintAnchor constraintAnchor3 = constraintWidget.f2110L;
        constraintAnchor3.f2075i = c0458d.m34118q(constraintAnchor3);
        ConstraintAnchor constraintAnchor4 = constraintWidget.f2114N;
        constraintAnchor4.f2075i = c0458d.m34118q(constraintAnchor4);
        c0458d.m34129f(constraintWidget.f2110L.f2075i, i2);
        c0458d.m34129f(constraintWidget.f2114N.f2075i, m33962y);
        if (constraintWidget.f2141h0 > 0 || constraintWidget.m34015T() == 8) {
            ConstraintAnchor constraintAnchor5 = constraintWidget.f2115O;
            constraintAnchor5.f2075i = c0458d.m34118q(constraintAnchor5);
            c0458d.m34129f(constraintWidget.f2115O.f2075i, constraintWidget.f2141h0 + i2);
        }
        constraintWidget.f2156p = 2;
        constraintWidget.m34014T0(i2, m33962y);
    }

    /* renamed from: b */
    public static final boolean m33762b(int i, int i2) {
        return (i & i2) == i2;
    }
}
