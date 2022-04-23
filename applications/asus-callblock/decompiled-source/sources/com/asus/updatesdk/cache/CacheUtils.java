package com.asus.updatesdk.cache;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.StrictMode;
import com.asus.updatesdk.activity.ZenFamilyActivity;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cache/CacheUtils.class */
public class CacheUtils {
    @TargetApi(11)
    public static void enableStrictMode() {
        if (hasGingerbread()) {
            StrictMode.ThreadPolicy.Builder penaltyLog = new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog();
            StrictMode.VmPolicy.Builder penaltyLog2 = new StrictMode.VmPolicy.Builder().detectAll().penaltyLog();
            if (hasHoneycomb()) {
                penaltyLog.penaltyFlashScreen();
                penaltyLog2.setClassInstanceLimit(ZenFamilyActivity.class, 1);
            }
            StrictMode.setThreadPolicy(penaltyLog.build());
            StrictMode.setVmPolicy(penaltyLog2.build());
        }
    }

    public static boolean hasFroyo() {
        return Build.VERSION.SDK_INT >= 8;
    }

    public static boolean hasGingerbread() {
        return Build.VERSION.SDK_INT >= 9;
    }

    public static boolean hasHoneycomb() {
        return Build.VERSION.SDK_INT >= 11;
    }

    public static boolean hasHoneycombMR1() {
        return Build.VERSION.SDK_INT >= 12;
    }

    public static boolean hasJellyBean() {
        return Build.VERSION.SDK_INT >= 16;
    }

    public static boolean hasKitKat() {
        return Build.VERSION.SDK_INT >= 19;
    }
}
