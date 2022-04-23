package androidx.core.os;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* loaded from: classes-dex2jar.jar:androidx/core/os/h.class */
public final class h {
    private h() {
    }

    public static boolean a(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
        }
        return true;
    }
}
