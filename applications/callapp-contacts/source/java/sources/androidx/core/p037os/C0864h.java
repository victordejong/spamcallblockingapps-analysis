package androidx.core.p037os;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* renamed from: androidx.core.os.h */
/* loaded from: classes-dex2jar.jar:androidx/core/os/h.class */
public final class C0864h {
    private C0864h() {
    }

    /* renamed from: a */
    public static boolean m44288a(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
        }
        return true;
    }
}
