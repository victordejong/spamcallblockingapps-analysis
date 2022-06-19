package com.google.android.gms.common.wrappers;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/wrappers/InstantApps.class */
public class InstantApps {
    private static Context zza;
    private static Boolean zzb;

    @KeepForSdk
    public static boolean isInstantApp(@RecentlyNonNull Context context) {
        Boolean bool;
        Boolean bool2;
        synchronized (InstantApps.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                Context context2 = zza;
                if (context2 != null && (bool2 = zzb) != null && context2 == applicationContext) {
                    return bool2.booleanValue();
                }
                zzb = null;
                if (!PlatformVersion.isAtLeastO()) {
                    try {
                        context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                        zzb = Boolean.TRUE;
                    } catch (ClassNotFoundException e) {
                        bool = Boolean.FALSE;
                    }
                    zza = applicationContext;
                    return zzb.booleanValue();
                }
                bool = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                zzb = bool;
                zza = applicationContext;
                return zzb.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
