package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
/* renamed from: androidx.transition.n0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/n0.class */
class C1155n0 extends C1153m0 {

    /* renamed from: k */
    private static boolean f4957k = true;

    @Override // androidx.transition.C1159p0
    @SuppressLint({"NewApi"})
    /* renamed from: h */
    public void mo30844h(View view, int i) {
        if (Build.VERSION.SDK_INT == 28) {
            super.mo30844h(view, i);
        } else if (!f4957k) {
        } else {
            try {
                view.setTransitionVisibility(i);
            } catch (NoSuchMethodError e) {
                f4957k = false;
            }
        }
    }
}
