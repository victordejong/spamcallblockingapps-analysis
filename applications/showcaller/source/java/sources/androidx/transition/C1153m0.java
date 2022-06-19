package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;
/* renamed from: androidx.transition.m0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/m0.class */
class C1153m0 extends C1151l0 {

    /* renamed from: j */
    private static boolean f4950j = true;

    @Override // androidx.transition.C1159p0
    @SuppressLint({"NewApi"})
    /* renamed from: f */
    public void mo30846f(View view, int i, int i2, int i3, int i4) {
        if (f4950j) {
            try {
                view.setLeftTopRightBottom(i, i2, i3, i4);
            } catch (NoSuchMethodError e) {
                f4950j = false;
            }
        }
    }
}
