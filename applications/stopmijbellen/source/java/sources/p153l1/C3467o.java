package p153l1;

import android.os.Build;
import android.view.ViewGroup;
/* renamed from: l1.o */
/* loaded from: classes-dex2jar.jar:l1/o.class */
public class C3467o {

    /* renamed from: a */
    public static boolean f11569a = true;

    /* renamed from: a */
    public static void m2246a(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            viewGroup.suppressLayout(z);
        } else if (!f11569a) {
        } else {
            try {
                viewGroup.suppressLayout(z);
            } catch (NoSuchMethodError e) {
                f11569a = false;
            }
        }
    }
}
