package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.C0199d;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
/* renamed from: androidx.constraintlayout.solver.widgets.i */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/i.class */
public class C0214i {

    /* renamed from: a */
    static boolean[] f1268a = new boolean[3];

    /* renamed from: a */
    static void m13879a(d dVar, C0199d dVar2, ConstraintWidget constraintWidget) {
        constraintWidget.f1142h = -1;
        constraintWidget.f1144i = -1;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = dVar.f1113L[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour != dimensionBehaviour2 && constraintWidget.f1113L[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i = constraintWidget.f1100A.f1085e;
            int Q = dVar.m13982Q() - constraintWidget.f1104C.f1085e;
            ConstraintAnchor constraintAnchor = constraintWidget.f1100A;
            constraintAnchor.f1087g = dVar2.m14045q(constraintAnchor);
            ConstraintAnchor constraintAnchor2 = constraintWidget.f1104C;
            constraintAnchor2.f1087g = dVar2.m14045q(constraintAnchor2);
            dVar2.m14056f(constraintWidget.f1100A.f1087g, i);
            dVar2.m14056f(constraintWidget.f1104C.f1087g, Q);
            constraintWidget.f1142h = 2;
            constraintWidget.m13952l0(i, Q);
        }
        if (dVar.f1113L[1] != dimensionBehaviour2 && constraintWidget.f1113L[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i2 = constraintWidget.f1102B.f1085e;
            int w = dVar.m13931w() - constraintWidget.f1105D.f1085e;
            ConstraintAnchor constraintAnchor3 = constraintWidget.f1102B;
            constraintAnchor3.f1087g = dVar2.m14045q(constraintAnchor3);
            ConstraintAnchor constraintAnchor4 = constraintWidget.f1105D;
            constraintAnchor4.f1087g = dVar2.m14045q(constraintAnchor4);
            dVar2.m14056f(constraintWidget.f1102B.f1087g, i2);
            dVar2.m14056f(constraintWidget.f1105D.f1087g, w);
            if (constraintWidget.f1125X > 0 || constraintWidget.m13983P() == 8) {
                ConstraintAnchor constraintAnchor5 = constraintWidget.f1106E;
                constraintAnchor5.f1087g = dVar2.m14045q(constraintAnchor5);
                dVar2.m14056f(constraintWidget.f1106E.f1087g, constraintWidget.f1125X + i2);
            }
            constraintWidget.f1144i = 2;
            constraintWidget.m14008A0(i2, w);
        }
    }

    /* renamed from: b */
    public static final boolean m13878b(int i, int i2) {
        return (i & i2) == i2;
    }
}
