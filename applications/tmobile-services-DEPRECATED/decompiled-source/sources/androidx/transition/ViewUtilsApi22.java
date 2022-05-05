package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/transition/ViewUtilsApi22.class */
class ViewUtilsApi22 extends ViewUtilsApi21 {

    /* renamed from: j */
    private static boolean f5310j = true;

    @Override // androidx.transition.ViewUtilsBase
    @SuppressLint({"NewApi"})
    /* renamed from: f */
    public void mo16671f(@NonNull View view, int i, int i2, int i3, int i4) {
        if (f5310j) {
            try {
                view.setLeftTopRightBottom(i, i2, i3, i4);
            } catch (NoSuchMethodError e) {
                f5310j = false;
            }
        }
    }
}
