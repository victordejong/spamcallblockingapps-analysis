package androidx.core.p025os;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* renamed from: androidx.core.os.c */
/* loaded from: classes-dex2jar.jar:androidx/core/os/c.class */
public class C0591c {
    /* renamed from: a */
    public static boolean m6067a(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
        }
        return true;
    }
}
