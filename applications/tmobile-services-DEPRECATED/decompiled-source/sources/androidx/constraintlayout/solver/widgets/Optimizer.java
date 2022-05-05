package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/Optimizer.class */
public class Optimizer {

    /* renamed from: a */
    static boolean[] f2360a = new boolean[3];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m20193a(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ConstraintWidget constraintWidget) {
        constraintWidget.f2258m = -1;
        constraintWidget.f2260n = -1;
        if (constraintWidgetContainer.f2227T[0] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && constraintWidget.f2227T[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i = constraintWidget.f2214I.f2193g;
            int U = constraintWidgetContainer.m20356U() - constraintWidget.f2218K.f2193g;
            ConstraintAnchor constraintAnchor = constraintWidget.f2214I;
            constraintAnchor.f2195i = linearSystem.m20484q(constraintAnchor);
            ConstraintAnchor constraintAnchor2 = constraintWidget.f2218K;
            constraintAnchor2.f2195i = linearSystem.m20484q(constraintAnchor2);
            linearSystem.m20495f(constraintWidget.f2214I.f2195i, i);
            linearSystem.m20495f(constraintWidget.f2218K.f2195i, U);
            constraintWidget.f2258m = 2;
            constraintWidget.m20391C0(i, U);
        }
        if (constraintWidgetContainer.f2227T[1] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && constraintWidget.f2227T[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i2 = constraintWidget.f2216J.f2193g;
            int y = constraintWidgetContainer.m20305y() - constraintWidget.f2219L.f2193g;
            ConstraintAnchor constraintAnchor3 = constraintWidget.f2216J;
            constraintAnchor3.f2195i = linearSystem.m20484q(constraintAnchor3);
            ConstraintAnchor constraintAnchor4 = constraintWidget.f2219L;
            constraintAnchor4.f2195i = linearSystem.m20484q(constraintAnchor4);
            linearSystem.m20495f(constraintWidget.f2216J.f2195i, i2);
            linearSystem.m20495f(constraintWidget.f2219L.f2195i, y);
            if (constraintWidget.f2245f0 > 0 || constraintWidget.m20358T() == 8) {
                ConstraintAnchor constraintAnchor5 = constraintWidget.f2220M;
                constraintAnchor5.f2195i = linearSystem.m20484q(constraintAnchor5);
                linearSystem.m20495f(constraintWidget.f2220M.f2195i, constraintWidget.f2245f0 + i2);
            }
            constraintWidget.f2260n = 2;
            constraintWidget.m20357T0(i2, y);
        }
    }

    /* renamed from: b */
    public static final boolean m20192b(int i, int i2) {
        return (i & i2) == i2;
    }
}
