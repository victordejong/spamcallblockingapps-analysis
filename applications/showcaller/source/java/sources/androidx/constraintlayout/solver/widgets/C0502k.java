package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.C0457c;
import java.util.ArrayList;
/* renamed from: androidx.constraintlayout.solver.widgets.k */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/k.class */
public class C0502k extends ConstraintWidget {

    /* renamed from: N0 */
    public ArrayList<ConstraintWidget> f2401N0 = new ArrayList<>();

    /* renamed from: a */
    public void m33739a(ConstraintWidget constraintWidget) {
        this.f2401N0.add(constraintWidget);
        if (constraintWidget.m34031L() != null) {
            ((C0502k) constraintWidget.m34031L()).m33736g1(constraintWidget);
        }
        constraintWidget.m34020Q0(this);
    }

    /* renamed from: e1 */
    public ArrayList<ConstraintWidget> m33738e1() {
        return this.f2401N0;
    }

    /* renamed from: f1 */
    public void mo33737f1() {
        ArrayList<ConstraintWidget> arrayList = this.f2401N0;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.f2401N0.get(i);
            if (constraintWidget instanceof C0502k) {
                ((C0502k) constraintWidget).mo33737f1();
            }
        }
    }

    /* renamed from: g1 */
    public void m33736g1(ConstraintWidget constraintWidget) {
        this.f2401N0.remove(constraintWidget);
        constraintWidget.mo33734k0();
    }

    /* renamed from: h1 */
    public void m33735h1() {
        this.f2401N0.clear();
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: k0 */
    public void mo33734k0() {
        this.f2401N0.clear();
        super.mo33734k0();
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: n0 */
    public void mo33733n0(C0457c c0457c) {
        super.mo33733n0(c0457c);
        int size = this.f2401N0.size();
        for (int i = 0; i < size; i++) {
            this.f2401N0.get(i).mo33733n0(c0457c);
        }
    }
}
