package androidx.core.app;

import android.app.ActivityManager;
import android.os.Build;
/* renamed from: androidx.core.app.b */
/* loaded from: classes-dex2jar.jar:androidx/core/app/b.class */
public final class C0240b {
    /* renamed from: a */
    public static boolean m13665a(ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return false;
    }
}
