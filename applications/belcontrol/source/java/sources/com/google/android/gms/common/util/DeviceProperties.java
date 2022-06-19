package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/DeviceProperties.class */
public final class DeviceProperties {
    private static Boolean zza;
    private static Boolean zzb;
    private static Boolean zzc;
    private static Boolean zzd;
    private static Boolean zze;
    private static Boolean zzf;
    private static Boolean zzg;
    private static Boolean zzh;

    private DeviceProperties() {
    }

    @KeepForSdk
    public static boolean isAuto(@RecentlyNonNull Context context) {
        return isAuto(context.getPackageManager());
    }

    @KeepForSdk
    public static boolean isAuto(@RecentlyNonNull PackageManager packageManager) {
        if (zzg == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastO()) {
                z = false;
                if (packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                    z = true;
                }
            }
            zzg = Boolean.valueOf(z);
        }
        return zzg.booleanValue();
    }

    @KeepForSdk
    @Deprecated
    public static boolean isFeaturePhone(@RecentlyNonNull Context context) {
        return false;
    }

    @KeepForSdk
    public static boolean isLatchsky(@RecentlyNonNull Context context) {
        if (zze == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater")) {
                z = false;
                if (packageManager.hasSystemFeature("cn.google.services")) {
                    z = true;
                }
            }
            zze = Boolean.valueOf(z);
        }
        return zze.booleanValue();
    }

    @KeepForSdk
    @TargetApi(21)
    public static boolean isSidewinder(@RecentlyNonNull Context context) {
        return zza(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0057, code lost:
        if (com.google.android.gms.common.util.DeviceProperties.zzb.booleanValue() != false) goto L9;
     */
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isTablet(@androidx.annotation.RecentlyNonNull android.content.res.Resources r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 != 0) goto L8
            r0 = 0
            return r0
        L8:
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.zza
            if (r0 != 0) goto L64
            r0 = r3
            android.content.res.Configuration r0 = r0.getConfiguration()
            int r0 = r0.screenLayout
            r1 = 15
            r0 = r0 & r1
            r1 = 3
            if (r0 <= r1) goto L21
        L1c:
            r0 = 1
            r5 = r0
            goto L5d
        L21:
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.zzb
            if (r0 != 0) goto L4f
            r0 = r3
            android.content.res.Configuration r0 = r0.getConfiguration()
            r3 = r0
            r0 = r3
            int r0 = r0.screenLayout
            r1 = 15
            r0 = r0 & r1
            r1 = 3
            if (r0 > r1) goto L46
            r0 = r3
            int r0 = r0.smallestScreenWidthDp
            r1 = 600(0x258, float:8.41E-43)
            if (r0 < r1) goto L46
            r0 = 1
            r5 = r0
            goto L48
        L46:
            r0 = 0
            r5 = r0
        L48:
            r0 = r5
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            com.google.android.gms.common.util.DeviceProperties.zzb = r0
        L4f:
            r0 = r4
            r5 = r0
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.zzb
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L5d
            goto L1c
        L5d:
            r0 = r5
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            com.google.android.gms.common.util.DeviceProperties.zza = r0
        L64:
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.zza
            boolean r0 = r0.booleanValue()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.DeviceProperties.isTablet(android.content.res.Resources):boolean");
    }

    @KeepForSdk
    public static boolean isTv(@RecentlyNonNull Context context) {
        return isTv(context.getPackageManager());
    }

    @KeepForSdk
    public static boolean isTv(@RecentlyNonNull PackageManager packageManager) {
        if (zzh == null) {
            boolean z = true;
            if (!packageManager.hasSystemFeature("com.google.android.tv")) {
                z = true;
                if (!packageManager.hasSystemFeature("android.hardware.type.television")) {
                    z = packageManager.hasSystemFeature("android.software.leanback");
                }
            }
            zzh = Boolean.valueOf(z);
        }
        return zzh.booleanValue();
    }

    @KeepForSdk
    public static boolean isUserBuild() {
        int i = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        return "user".equals(Build.TYPE);
    }

    @KeepForSdk
    @TargetApi(20)
    public static boolean isWearable(@RecentlyNonNull Context context) {
        return isWearable(context.getPackageManager());
    }

    @KeepForSdk
    @TargetApi(20)
    public static boolean isWearable(@RecentlyNonNull PackageManager packageManager) {
        if (zzc == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastKitKatWatch()) {
                z = false;
                if (packageManager.hasSystemFeature("android.hardware.type.watch")) {
                    z = true;
                }
            }
            zzc = Boolean.valueOf(z);
        }
        return zzc.booleanValue();
    }

    @KeepForSdk
    @TargetApi(26)
    public static boolean isWearableWithoutPlayStore(@RecentlyNonNull Context context) {
        boolean z = true;
        if (isWearable(context)) {
            if (PlatformVersion.isAtLeastN()) {
                if (zza(context) && !PlatformVersion.isAtLeastO()) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @TargetApi(21)
    public static boolean zza(@RecentlyNonNull Context context) {
        if (zzd == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastLollipop()) {
                z = false;
                if (context.getPackageManager().hasSystemFeature("cn.google")) {
                    z = true;
                }
            }
            zzd = Boolean.valueOf(z);
        }
        return zzd.booleanValue();
    }

    public static boolean zzb(@RecentlyNonNull Context context) {
        if (zzf == null) {
            boolean z = true;
            if (!context.getPackageManager().hasSystemFeature("android.hardware.type.iot")) {
                z = context.getPackageManager().hasSystemFeature("android.hardware.type.embedded");
            }
            zzf = Boolean.valueOf(z);
        }
        return zzf.booleanValue();
    }
}
