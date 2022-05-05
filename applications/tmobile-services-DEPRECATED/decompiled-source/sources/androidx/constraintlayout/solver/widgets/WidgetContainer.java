package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.Cache;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/WidgetContainer.class */
public class WidgetContainer extends ConstraintWidget {

    /* renamed from: L0 */
    public ArrayList<ConstraintWidget> f2372L0 = new ArrayList<>();

    /* renamed from: a */
    public void m20169a(ConstraintWidget constraintWidget) {
        this.f2372L0.add(constraintWidget);
        if (constraintWidget.m20374L() != null) {
            ((WidgetContainer) constraintWidget.m20374L()).m20166g1(constraintWidget);
        }
        constraintWidget.m20363Q0(this);
    }

    /* renamed from: e1 */
    public ArrayList<ConstraintWidget> m20168e1() {
        return this.f2372L0;
    }

    /* renamed from: f1 */
    public void mo20167f1() {
        ArrayList<ConstraintWidget> arrayList = this.f2372L0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ConstraintWidget constraintWidget = this.f2372L0.get(i);
                if (constraintWidget instanceof WidgetContainer) {
                    ((WidgetContainer) constraintWidget).mo20167f1();
                }
            }
        }
    }

    /* renamed from: g1 */
    public void m20166g1(ConstraintWidget constraintWidget) {
        this.f2372L0.remove(constraintWidget);
        constraintWidget.m20363Q0(null);
    }

    /* renamed from: h1 */
    public void m20165h1() {
        this.f2372L0.clear();
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: k0 */
    public void mo20164k0() {
        this.f2372L0.clear();
        super.mo20164k0();
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: n0 */
    public void mo20163n0(Cache cache) {
        super.mo20163n0(cache);
        int size = this.f2372L0.size();
        for (int i = 0; i < size; i++) {
            this.f2372L0.get(i).mo20163n0(cache);
        }
    }
}
