package p153l1;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
/* renamed from: l1.u */
/* loaded from: classes-dex2jar.jar:l1/u.class */
public class C3475u extends C3474t {

    /* renamed from: n */
    public static boolean f11577n = true;

    @Override // p291y.C4951d
    @SuppressLint({"NewApi"})
    /* renamed from: m */
    public void mo190m(View view, int i) {
        if (Build.VERSION.SDK_INT == 28) {
            super.mo190m(view, i);
        } else if (!f11577n) {
        } else {
            try {
                view.setTransitionVisibility(i);
            } catch (NoSuchMethodError e) {
                f11577n = false;
            }
        }
    }
}
