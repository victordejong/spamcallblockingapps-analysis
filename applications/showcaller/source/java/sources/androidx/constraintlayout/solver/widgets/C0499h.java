package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.analyzer.C0481h;
import androidx.constraintlayout.solver.widgets.analyzer.C0489n;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
/* renamed from: androidx.constraintlayout.solver.widgets.h */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/h.class */
public class C0499h extends ConstraintWidget implements AbstractC0498g {

    /* renamed from: N0 */
    public ConstraintWidget[] f2385N0 = new ConstraintWidget[4];

    /* renamed from: O0 */
    public int f2386O0 = 0;

    @Override // androidx.constraintlayout.solver.widgets.AbstractC0498g
    /* renamed from: a */
    public void mo33768a(ConstraintWidget constraintWidget) {
        if (constraintWidget == this || constraintWidget == null) {
            return;
        }
        int i = this.f2386O0;
        ConstraintWidget[] constraintWidgetArr = this.f2385N0;
        if (i + 1 > constraintWidgetArr.length) {
            this.f2385N0 = (ConstraintWidget[]) Arrays.copyOf(constraintWidgetArr, constraintWidgetArr.length * 2);
        }
        ConstraintWidget[] constraintWidgetArr2 = this.f2385N0;
        int i2 = this.f2386O0;
        constraintWidgetArr2[i2] = constraintWidget;
        this.f2386O0 = i2 + 1;
    }

    @Override // androidx.constraintlayout.solver.widgets.AbstractC0498g
    /* renamed from: b */
    public void mo33767b() {
        this.f2386O0 = 0;
        Arrays.fill(this.f2385N0, (Object) null);
    }

    @Override // androidx.constraintlayout.solver.widgets.AbstractC0498g
    /* renamed from: c */
    public void mo33760c(C0493d c0493d) {
    }

    /* renamed from: e1 */
    public void m33766e1(ArrayList<C0489n> arrayList, int i, C0489n c0489n) {
        int i2;
        int i3 = 0;
        while (true) {
            if (i3 < this.f2386O0) {
                c0489n.m33886a(this.f2385N0[i3]);
                i3++;
            }
        }
        for (i2 = 0; i2 < this.f2386O0; i2++) {
            C0481h.m33904a(this.f2385N0[i2], i, arrayList, c0489n);
        }
    }

    /* renamed from: f1 */
    public int m33765f1(int i) {
        int i2;
        int i3;
        for (int i4 = 0; i4 < this.f2386O0; i4++) {
            ConstraintWidget constraintWidget = this.f2385N0[i4];
            if (i == 0 && (i3 = constraintWidget.f2111L0) != -1) {
                return i3;
            }
            if (i == 1 && (i2 = constraintWidget.f2113M0) != -1) {
                return i2;
            }
        }
        return -1;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: m */
    public void mo33764m(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.mo33764m(constraintWidget, hashMap);
        C0499h c0499h = (C0499h) constraintWidget;
        this.f2386O0 = 0;
        int i = c0499h.f2386O0;
        for (int i2 = 0; i2 < i; i2++) {
            mo33768a(hashMap.get(c0499h.f2385N0[i2]));
        }
    }
}
