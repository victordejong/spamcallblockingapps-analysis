package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.util.PlatformVersion;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/wrappers/InstantApps.class */
public class InstantApps {
    private static Context zzhv;
    private static Boolean zzhw;

    public static boolean isInstantApp(Context context) {
        synchronized (InstantApps.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                if (zzhv != null && zzhw != null && zzhv == applicationContext) {
                    return zzhw.booleanValue();
                }
                zzhw = null;
                if (PlatformVersion.isAtLeastO()) {
                    zzhw = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                } else {
                    try {
                        context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                        zzhw = true;
                    } catch (ClassNotFoundException e) {
                        zzhw = false;
                    }
                }
                zzhv = applicationContext;
                return zzhw.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
