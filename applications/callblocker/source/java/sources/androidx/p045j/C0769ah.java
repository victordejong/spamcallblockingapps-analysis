package androidx.p045j;

import android.graphics.Matrix;
import android.view.View;
/* renamed from: androidx.j.ah */
/* loaded from: classes-dex2jar.jar:androidx/j/ah.class */
class C0769ah extends C0768ag {
    @Override // androidx.p045j.C0765ad, androidx.p045j.C0770ai
    /* renamed from: a */
    public float mo19485a(View view) {
        return view.getTransitionAlpha();
    }

    @Override // androidx.p045j.C0765ad, androidx.p045j.C0770ai
    /* renamed from: a */
    public void mo19484a(View view, float f) {
        view.setTransitionAlpha(f);
    }

    @Override // androidx.p045j.C0768ag, androidx.p045j.C0770ai
    /* renamed from: a */
    public void mo19483a(View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override // androidx.p045j.C0767af, androidx.p045j.C0770ai
    /* renamed from: a */
    public void mo19482a(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // androidx.p045j.C0766ae, androidx.p045j.C0770ai
    /* renamed from: a */
    public void mo19481a(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // androidx.p045j.C0766ae, androidx.p045j.C0770ai
    /* renamed from: b */
    public void mo19479b(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
