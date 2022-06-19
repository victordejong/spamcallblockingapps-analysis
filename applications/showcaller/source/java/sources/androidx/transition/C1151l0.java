package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;
/* renamed from: androidx.transition.l0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/l0.class */
class C1151l0 extends C1148k0 {

    /* renamed from: g */
    private static boolean f4947g = true;

    /* renamed from: h */
    private static boolean f4948h = true;

    /* renamed from: i */
    private static boolean f4949i = true;

    @Override // androidx.transition.C1159p0
    @SuppressLint({"NewApi"})
    /* renamed from: e */
    public void mo30847e(View view, Matrix matrix) {
        if (f4947g) {
            try {
                view.setAnimationMatrix(matrix);
            } catch (NoSuchMethodError e) {
                f4947g = false;
            }
        }
    }

    @Override // androidx.transition.C1159p0
    @SuppressLint({"NewApi"})
    /* renamed from: i */
    public void mo30843i(View view, Matrix matrix) {
        if (f4948h) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError e) {
                f4948h = false;
            }
        }
    }

    @Override // androidx.transition.C1159p0
    @SuppressLint({"NewApi"})
    /* renamed from: j */
    public void mo30842j(View view, Matrix matrix) {
        if (f4949i) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError e) {
                f4949i = false;
            }
        }
    }
}
