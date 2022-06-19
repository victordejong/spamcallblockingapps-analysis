package p153l1;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;
/* renamed from: l1.s */
/* loaded from: classes-dex2jar.jar:l1/s.class */
public class C3473s extends C3472r {

    /* renamed from: k */
    public static boolean f11574k = true;

    /* renamed from: l */
    public static boolean f11575l = true;

    @Override // p291y.C4951d
    @SuppressLint({"NewApi"})
    /* renamed from: n */
    public void mo189n(View view, Matrix matrix) {
        if (f11574k) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError e) {
                f11574k = false;
            }
        }
    }

    @Override // p291y.C4951d
    @SuppressLint({"NewApi"})
    /* renamed from: o */
    public void mo188o(View view, Matrix matrix) {
        if (f11575l) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError e) {
                f11575l = false;
            }
        }
    }
}
