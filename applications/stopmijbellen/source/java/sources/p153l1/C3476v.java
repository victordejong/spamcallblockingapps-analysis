package p153l1;

import android.graphics.Matrix;
import android.view.View;
/* renamed from: l1.v */
/* loaded from: classes-dex2jar.jar:l1/v.class */
public class C3476v extends C3475u {
    @Override // p153l1.C3472r, p291y.C4951d
    /* renamed from: h */
    public float mo195h(View view) {
        return view.getTransitionAlpha();
    }

    @Override // p153l1.C3474t, p291y.C4951d
    /* renamed from: k */
    public void mo192k(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // p153l1.C3472r, p291y.C4951d
    /* renamed from: l */
    public void mo191l(View view, float f) {
        view.setTransitionAlpha(f);
    }

    @Override // p153l1.C3475u, p291y.C4951d
    /* renamed from: m */
    public void mo190m(View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override // p153l1.C3473s, p291y.C4951d
    /* renamed from: n */
    public void mo189n(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // p153l1.C3473s, p291y.C4951d
    /* renamed from: o */
    public void mo188o(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
