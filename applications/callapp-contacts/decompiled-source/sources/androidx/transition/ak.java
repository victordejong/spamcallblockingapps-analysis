package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/ak.class */
class ak extends aj {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f5776a = true;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f5777b = true;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f5778c = true;

    @Override // androidx.transition.ao
    public void a(View view, Matrix matrix) {
        if (f5777b) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError e) {
                f5777b = false;
            }
        }
    }

    @Override // androidx.transition.ao
    public void b(View view, Matrix matrix) {
        if (f5778c) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError e) {
                f5778c = false;
            }
        }
    }

    @Override // androidx.transition.ao
    public void c(View view, Matrix matrix) {
        if (f5776a) {
            try {
                view.setAnimationMatrix(matrix);
            } catch (NoSuchMethodError e) {
                f5776a = false;
            }
        }
    }
}
