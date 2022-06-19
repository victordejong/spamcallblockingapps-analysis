package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/DeviceProperties.class */
public final class DeviceProperties {
    private static Boolean zzgn;
    private static Boolean zzgo;
    private static Boolean zzgp;
    private static Boolean zzgq;
    private static Boolean zzgr;
    private static Boolean zzgs;
    private static Boolean zzgt;
    private static Boolean zzgu;

    private DeviceProperties() {
    }

    public static boolean isAuto(Context context) {
        if (zzgt == null) {
            zzgt = Boolean.valueOf(PlatformVersion.isAtLeastO() && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive"));
        }
        return zzgt.booleanValue();
    }

    public static boolean isLatchsky(Context context) {
        if (zzgr == null) {
            PackageManager packageManager = context.getPackageManager();
            zzgr = Boolean.valueOf(packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services"));
        }
        return zzgr.booleanValue();
    }

    public static boolean isSidewinder(Context context) {
        if (zzgq == null) {
            zzgq = Boolean.valueOf(PlatformVersion.isAtLeastLollipop() && context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return zzgq.booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005d, code lost:
        if (com.google.android.gms.common.util.DeviceProperties.zzgo.booleanValue() != false) goto L24;
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
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.zzgn
            if (r0 != 0) goto L69
            r0 = r3
            android.content.res.Configuration r0 = r0.getConfiguration()
            int r0 = r0.screenLayout
            r1 = 15
            r0 = r0 & r1
            r1 = 3
            if (r0 <= r1) goto L21
            r0 = 1
            r5 = r0
            goto L23
        L21:
            r0 = 0
            r5 = r0
        L23:
            r0 = r5
            if (r0 != 0) goto L60
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.zzgo
            if (r0 != 0) goto L55
            r0 = r3
            android.content.res.Configuration r0 = r0.getConfiguration()
            r3 = r0
            r0 = r3
            int r0 = r0.screenLayout
            r1 = 15
            r0 = r0 & r1
            r1 = 3
            if (r0 > r1) goto L4c
            r0 = r3
            int r0 = r0.smallestScreenWidthDp
            r1 = 600(0x258, float:8.41E-43)
            if (r0 < r1) goto L4c
            r0 = 1
            r6 = r0
            goto L4e
        L4c:
            r0 = 0
            r6 = r0
        L4e:
            r0 = r6
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            com.google.android.gms.common.util.DeviceProperties.zzgo = r0
        L55:
            r0 = r4
            r6 = r0
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.zzgo
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L62
        L60:
            r0 = 1
            r6 = r0
        L62:
            r0 = r6
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            com.google.android.gms.common.util.DeviceProperties.zzgn = r0
        L69:
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.zzgn
            boolean r0 = r0.booleanValue()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.DeviceProperties.isTablet(android.content.res.Resources):boolean");
    }

    public static boolean isTv(Context context) {
        if (zzgu == null) {
            PackageManager packageManager = context.getPackageManager();
            zzgu = Boolean.valueOf(packageManager.hasSystemFeature("com.google.android.tv") || packageManager.hasSystemFeature("android.hardware.type.television") || packageManager.hasSystemFeature("android.software.leanback"));
        }
        return zzgu.booleanValue();
    }

    public static boolean isUserBuild() {
        return "user".equals(Build.TYPE);
    }

    public static boolean isWearable(Context context) {
        if (zzgp == null) {
            zzgp = Boolean.valueOf(PlatformVersion.isAtLeastKitKatWatch() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        return zzgp.booleanValue();
    }

    public static boolean isWearableWithoutPlayStore(Context context) {
        if (isWearable(context)) {
            if (!PlatformVersion.isAtLeastN()) {
                return true;
            }
            return isSidewinder(context) && !PlatformVersion.isAtLeastO();
        }
        return false;
    }

    public static boolean zzf(Context context) {
        if (zzgs == null) {
            zzgs = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
        }
        return zzgs.booleanValue();
    }
}
