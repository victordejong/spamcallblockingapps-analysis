package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.util.PlatformVersion;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/wrappers/InstantApps.class */
public class InstantApps {
    private static Context zza;
    private static Boolean zzb;

    public static boolean isInstantApp(Context context) {
        Boolean bool;
        synchronized (InstantApps.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                Context context2 = zza;
                if (context2 != null && (bool = zzb) != null && context2 == applicationContext) {
                    return bool.booleanValue();
                }
                zzb = null;
                if (PlatformVersion.isAtLeastO()) {
                    zzb = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                } else {
                    try {
                        context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                        zzb = true;
                    } catch (ClassNotFoundException e) {
                        zzb = false;
                    }
                }
                zza = applicationContext;
                return zzb.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
