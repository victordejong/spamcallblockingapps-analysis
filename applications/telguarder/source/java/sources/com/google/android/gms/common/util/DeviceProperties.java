package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.pubmatic.sdk.openwrap.core.POBConstants;
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

    public static boolean isAuto(Context context) {
        return isAuto(context.getPackageManager());
    }

    public static boolean isAuto(PackageManager packageManager) {
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

    @Deprecated
    public static boolean isFeaturePhone(Context context) {
        return false;
    }

    public static boolean isLatchsky(Context context) {
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

    public static boolean isSidewinder(Context context) {
        return zza(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0057, code lost:
        if (com.google.android.gms.common.util.DeviceProperties.zzb.booleanValue() != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isTablet(android.content.res.Resources r3) {
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

    public static boolean isTv(Context context) {
        return isTv(context.getPackageManager());
    }

    public static boolean isTv(PackageManager packageManager) {
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

    public static boolean isUserBuild() {
        int i = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        return POBConstants.KEY_USER.equals(Build.TYPE);
    }

    public static boolean isWearable(Context context) {
        return isWearable(context.getPackageManager());
    }

    public static boolean isWearable(PackageManager packageManager) {
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

    public static boolean isWearableWithoutPlayStore(Context context) {
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

    public static boolean zza(Context context) {
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

    public static boolean zzb(Context context) {
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
