package p1727n3.p1789g0;

import android.os.Build;
import android.view.ViewGroup;
/* renamed from: n3.g0.x */
/* loaded from: classes-dex2jar.jar:n3/g0/x.class */
public class C26231x {

    /* renamed from: a */
    public static boolean f73139a = true;

    /* renamed from: a */
    public static void m2489a(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            viewGroup.suppressLayout(z);
        } else if (!f73139a) {
        } else {
            try {
                viewGroup.suppressLayout(z);
            } catch (NoSuchMethodError e) {
                f73139a = false;
            }
        }
    }
}
