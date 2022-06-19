package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
/* renamed from: androidx.transition.an */
/* loaded from: classes-dex2jar.jar:androidx/transition/an.class */
final class C2874an extends C2873am {
    @Override // androidx.transition.C2870aj, androidx.transition.C2875ao
    /* renamed from: a */
    public final float mo39733a(View view) {
        return view.getTransitionAlpha();
    }

    @Override // androidx.transition.C2870aj, androidx.transition.C2875ao
    /* renamed from: a */
    public final void mo39732a(View view, float f) {
        view.setTransitionAlpha(f);
    }

    @Override // androidx.transition.C2873am, androidx.transition.C2875ao
    /* renamed from: a */
    public final void mo39731a(View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override // androidx.transition.C2872al, androidx.transition.C2875ao
    /* renamed from: a */
    public final void mo39730a(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // androidx.transition.C2871ak, androidx.transition.C2875ao
    /* renamed from: a */
    public final void mo39729a(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // androidx.transition.C2871ak, androidx.transition.C2875ao
    /* renamed from: b */
    public final void mo39727b(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }

    @Override // androidx.transition.C2871ak, androidx.transition.C2875ao
    /* renamed from: c */
    public final void mo39725c(View view, Matrix matrix) {
        view.setAnimationMatrix(matrix);
    }
}
