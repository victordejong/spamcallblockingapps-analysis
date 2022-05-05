package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/transition/ViewUtilsApi23.class */
class ViewUtilsApi23 extends ViewUtilsApi22 {

    /* renamed from: k */
    private static boolean f5311k = true;

    @Override // androidx.transition.ViewUtilsBase
    @SuppressLint({"NewApi"})
    /* renamed from: h */
    public void mo16669h(@NonNull View view, int i) {
        if (Build.VERSION.SDK_INT == 28) {
            super.mo16669h(view, i);
        } else if (f5311k) {
            try {
                view.setTransitionVisibility(i);
            } catch (NoSuchMethodError e) {
                f5311k = false;
            }
        }
    }
}
