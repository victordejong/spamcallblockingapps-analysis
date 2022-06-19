package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
/* renamed from: androidx.transition.ak */
/* loaded from: classes-dex2jar.jar:androidx/transition/ak.class */
class C2871ak extends C2870aj {

    /* renamed from: a */
    private static boolean f10836a = true;

    /* renamed from: b */
    private static boolean f10837b = true;

    /* renamed from: c */
    private static boolean f10838c = true;

    @Override // androidx.transition.C2875ao
    /* renamed from: a */
    public void mo39729a(View view, Matrix matrix) {
        if (f10837b) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError e) {
                f10837b = false;
            }
        }
    }

    @Override // androidx.transition.C2875ao
    /* renamed from: b */
    public void mo39727b(View view, Matrix matrix) {
        if (f10838c) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError e) {
                f10838c = false;
            }
        }
    }

    @Override // androidx.transition.C2875ao
    /* renamed from: c */
    public void mo39725c(View view, Matrix matrix) {
        if (f10836a) {
            try {
                view.setAnimationMatrix(matrix);
            } catch (NoSuchMethodError e) {
                f10836a = false;
            }
        }
    }
}
