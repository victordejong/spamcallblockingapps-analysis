package androidx.core.p008os;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* renamed from: androidx.core.os.j */
/* loaded from: classes-dex2jar.jar:androidx/core/os/j.class */
public class C0633j {
    /* renamed from: a */
    public static boolean m33184a(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
        }
        return true;
    }
}
