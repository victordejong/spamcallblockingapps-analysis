package androidx.core.p004os;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* renamed from: androidx.core.os.UserManagerCompat */
/* loaded from: classes-dex2jar.jar:androidx/core/os/UserManagerCompat.class */
public class UserManagerCompat {
    private UserManagerCompat() {
    }

    public static boolean isUserUnlocked(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
        }
        return true;
    }
}
