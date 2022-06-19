package androidx.core.p028os;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* renamed from: androidx.core.os.b */
/* loaded from: classes-dex2jar.jar:androidx/core/os/b.class */
public class C0613b {
    /* renamed from: a */
    public static boolean m20240a(Context context) {
        return Build.VERSION.SDK_INT >= 24 ? ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked() : true;
    }
}
