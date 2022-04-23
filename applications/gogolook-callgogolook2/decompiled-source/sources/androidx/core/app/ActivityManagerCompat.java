package androidx.core.app;

import android.app.ActivityManager;
import android.os.Build;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/core/app/ActivityManagerCompat.class */
public final class ActivityManagerCompat {
    public static boolean isLowRamDevice(@NonNull ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return false;
    }
}
