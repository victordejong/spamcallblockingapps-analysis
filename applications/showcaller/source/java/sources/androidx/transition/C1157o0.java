package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
/* renamed from: androidx.transition.o0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/o0.class */
class C1157o0 extends C1155n0 {
    @Override // androidx.transition.C1148k0, androidx.transition.C1159p0
    /* renamed from: c */
    public float mo30849c(View view) {
        return view.getTransitionAlpha();
    }

    @Override // androidx.transition.C1151l0, androidx.transition.C1159p0
    /* renamed from: e */
    public void mo30847e(View view, Matrix matrix) {
        view.setAnimationMatrix(matrix);
    }

    @Override // androidx.transition.C1153m0, androidx.transition.C1159p0
    /* renamed from: f */
    public void mo30846f(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // androidx.transition.C1148k0, androidx.transition.C1159p0
    /* renamed from: g */
    public void mo30845g(View view, float f) {
        view.setTransitionAlpha(f);
    }

    @Override // androidx.transition.C1155n0, androidx.transition.C1159p0
    /* renamed from: h */
    public void mo30844h(View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override // androidx.transition.C1151l0, androidx.transition.C1159p0
    /* renamed from: i */
    public void mo30843i(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // androidx.transition.C1151l0, androidx.transition.C1159p0
    /* renamed from: j */
    public void mo30842j(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
