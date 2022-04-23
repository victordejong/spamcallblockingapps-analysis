package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/an.class */
final class an extends am {
    @Override // androidx.transition.aj, androidx.transition.ao
    public final float a(View view) {
        return view.getTransitionAlpha();
    }

    @Override // androidx.transition.aj, androidx.transition.ao
    public final void a(View view, float f) {
        view.setTransitionAlpha(f);
    }

    @Override // androidx.transition.am, androidx.transition.ao
    public final void a(View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override // androidx.transition.al, androidx.transition.ao
    public final void a(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // androidx.transition.ak, androidx.transition.ao
    public final void a(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // androidx.transition.ak, androidx.transition.ao
    public final void b(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }

    @Override // androidx.transition.ak, androidx.transition.ao
    public final void c(View view, Matrix matrix) {
        view.setAnimationMatrix(matrix);
    }
}
