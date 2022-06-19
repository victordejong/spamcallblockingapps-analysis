package androidx.p045j;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.ViewGroup;
/* renamed from: androidx.j.x */
/* loaded from: classes-dex2jar.jar:androidx/j/x.class */
class C0828x {

    /* renamed from: a */
    private static boolean f2830a = true;

    /* renamed from: a */
    public static AbstractC0827w m19339a(ViewGroup viewGroup) {
        return Build.VERSION.SDK_INT >= 18 ? new C0826v(viewGroup) : C0825u.m19342a(viewGroup);
    }

    /* renamed from: a */
    public static void m19338a(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            viewGroup.suppressLayout(z);
        } else if (Build.VERSION.SDK_INT >= 18) {
            m19337b(viewGroup, z);
        } else {
            C0829y.m19335a(viewGroup, z);
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: b */
    private static void m19337b(ViewGroup viewGroup, boolean z) {
        if (f2830a) {
            try {
                viewGroup.suppressLayout(z);
            } catch (NoSuchMethodError e) {
                f2830a = false;
            }
        }
    }
}
