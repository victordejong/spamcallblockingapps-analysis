package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/transition/ViewUtilsApi21.class */
class ViewUtilsApi21 extends ViewUtilsApi19 {

    /* renamed from: g */
    private static boolean f5307g = true;

    /* renamed from: h */
    private static boolean f5308h = true;

    /* renamed from: i */
    private static boolean f5309i = true;

    @Override // androidx.transition.ViewUtilsBase
    @SuppressLint({"NewApi"})
    /* renamed from: e */
    public void mo16672e(@NonNull View view, @Nullable Matrix matrix) {
        if (f5307g) {
            try {
                view.setAnimationMatrix(matrix);
            } catch (NoSuchMethodError e) {
                f5307g = false;
            }
        }
    }

    @Override // androidx.transition.ViewUtilsBase
    @SuppressLint({"NewApi"})
    /* renamed from: i */
    public void mo16668i(@NonNull View view, @NonNull Matrix matrix) {
        if (f5308h) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError e) {
                f5308h = false;
            }
        }
    }

    @Override // androidx.transition.ViewUtilsBase
    @SuppressLint({"NewApi"})
    /* renamed from: j */
    public void mo16667j(@NonNull View view, @NonNull Matrix matrix) {
        if (f5309i) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError e) {
                f5309i = false;
            }
        }
    }
}
