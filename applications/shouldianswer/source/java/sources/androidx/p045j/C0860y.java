package androidx.p045j;

import android.os.Build;
import android.view.ViewGroup;
/* renamed from: androidx.j.y */
/* loaded from: classes-dex2jar.jar:androidx/j/y.class */
class C0860y {
    /* renamed from: a */
    public static AbstractC0859x m5214a(ViewGroup viewGroup) {
        return Build.VERSION.SDK_INT >= 18 ? new C0858w(viewGroup) : C0857v.m5219a(viewGroup);
    }

    /* renamed from: a */
    public static void m5213a(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 18) {
            C0789aa.m5348a(viewGroup, z);
        } else {
            C0861z.m5211a(viewGroup, z);
        }
    }
}
