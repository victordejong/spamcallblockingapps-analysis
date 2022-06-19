package p153l1;

import android.annotation.SuppressLint;
import android.view.View;
/* renamed from: l1.t */
/* loaded from: classes-dex2jar.jar:l1/t.class */
public class C3474t extends C3473s {

    /* renamed from: m */
    public static boolean f11576m = true;

    @Override // p291y.C4951d
    @SuppressLint({"NewApi"})
    /* renamed from: k */
    public void mo192k(View view, int i, int i2, int i3, int i4) {
        if (f11576m) {
            try {
                view.setLeftTopRightBottom(i, i2, i3, i4);
            } catch (NoSuchMethodError e) {
                f11576m = false;
            }
        }
    }
}
