package p012b.p036g.p037a.p038i;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.Arrays;
/* renamed from: b.g.a.i.h */
/* loaded from: classes-dex2jar.jar:b/g/a/i/h.class */
public class C0812h extends ConstraintWidget {

    /* renamed from: k0 */
    public ConstraintWidget[] f3839k0 = new ConstraintWidget[4];

    /* renamed from: l0 */
    public int f3840l0 = 0;

    /* renamed from: K */
    public void m35867K() {
        this.f3840l0 = 0;
    }

    /* renamed from: b */
    public void m35866b(ConstraintWidget constraintWidget) {
        int i = this.f3840l0;
        ConstraintWidget[] constraintWidgetArr = this.f3839k0;
        if (i + 1 > constraintWidgetArr.length) {
            this.f3839k0 = (ConstraintWidget[]) Arrays.copyOf(constraintWidgetArr, constraintWidgetArr.length * 2);
        }
        ConstraintWidget[] constraintWidgetArr2 = this.f3839k0;
        int i2 = this.f3840l0;
        constraintWidgetArr2[i2] = constraintWidget;
        this.f3840l0 = i2 + 1;
    }
}
