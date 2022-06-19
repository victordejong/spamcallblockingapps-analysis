package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
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
    private static Boolean zzi;
    private static Boolean zzj;
    private static Boolean zzk;
    private static Boolean zzl;

    private DeviceProperties() {
    }

    @KeepForSdk
    public static boolean isAuto(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (zzi == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastO()) {
                z = false;
                if (packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                    z = true;
                }
            }
            zzi = Boolean.valueOf(z);
        }
        return zzi.booleanValue();
    }

    @KeepForSdk
    public static boolean isBstar(Context context) {
        if (zzl == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastR()) {
                z = false;
                if (context.getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE")) {
                    z = true;
                }
            }
            zzl = Boolean.valueOf(z);
        }
        return zzl.booleanValue();
    }

    @KeepForSdk
    public static boolean isLatchsky(Context context) {
        if (zzf == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater")) {
                z = false;
                if (packageManager.hasSystemFeature("cn.google.services")) {
                    z = true;
                }
            }
            zzf = Boolean.valueOf(z);
        }
        return zzf.booleanValue();
    }

    @KeepForSdk
    public static boolean isPhone(Context context) {
        if (zza == null) {
            boolean z = false;
            if (!isTablet(context)) {
                z = false;
                if (!isWearable(context)) {
                    z = false;
                    if (!zzb(context)) {
                        if (zzh == null) {
                            zzh = Boolean.valueOf(context.getPackageManager().hasSystemFeature("org.chromium.arc"));
                        }
                        z = false;
                        if (!zzh.booleanValue()) {
                            z = false;
                            if (!isAuto(context)) {
                                z = false;
                                if (!isTv(context)) {
                                    if (zzk == null) {
                                        zzk = Boolean.valueOf(context.getPackageManager().hasSystemFeature("com.google.android.feature.AMATI_EXPERIENCE"));
                                    }
                                    z = false;
                                    if (!zzk.booleanValue()) {
                                        z = false;
                                        if (!isBstar(context)) {
                                            z = true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            zza = Boolean.valueOf(z);
        }
        return zza.booleanValue();
    }

    @KeepForSdk
    public static boolean isSevenInchTablet(Context context) {
        return zzc(context.getResources());
    }

    @KeepForSdk
    @TargetApi(21)
    public static boolean isSidewinder(Context context) {
        return zza(context);
    }

    @KeepForSdk
    public static boolean isTablet(Context context) {
        return isTablet(context.getResources());
    }

    @KeepForSdk
    public static boolean isTablet(Resources resources) {
        boolean z = false;
        if (resources == null) {
            return false;
        }
        if (zzb == null) {
            if ((resources.getConfiguration().screenLayout & 15) > 3 || zzc(resources)) {
                z = true;
            }
            zzb = Boolean.valueOf(z);
        }
        return zzb.booleanValue();
    }

    @KeepForSdk
    public static boolean isTv(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (zzj == null) {
            boolean z = true;
            if (!packageManager.hasSystemFeature("com.google.android.tv")) {
                z = true;
                if (!packageManager.hasSystemFeature("android.hardware.type.television")) {
                    z = packageManager.hasSystemFeature("android.software.leanback");
                }
            }
            zzj = Boolean.valueOf(z);
        }
        return zzj.booleanValue();
    }

    @KeepForSdk
    public static boolean isUserBuild() {
        int i = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        return "user".equals(Build.TYPE);
    }

    @KeepForSdk
    @TargetApi(20)
    public static boolean isWearable(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (zzd == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastKitKatWatch()) {
                z = false;
                if (packageManager.hasSystemFeature("android.hardware.type.watch")) {
                    z = true;
                }
            }
            zzd = Boolean.valueOf(z);
        }
        return zzd.booleanValue();
    }

    @KeepForSdk
    @TargetApi(26)
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

    @TargetApi(21)
    public static boolean zza(Context context) {
        if (zze == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastLollipop()) {
                z = false;
                if (context.getPackageManager().hasSystemFeature("cn.google")) {
                    z = true;
                }
            }
            zze = Boolean.valueOf(z);
        }
        return zze.booleanValue();
    }

    public static boolean zzb(Context context) {
        if (zzg == null) {
            boolean z = true;
            if (!context.getPackageManager().hasSystemFeature("android.hardware.type.iot")) {
                z = context.getPackageManager().hasSystemFeature("android.hardware.type.embedded");
            }
            zzg = Boolean.valueOf(z);
        }
        return zzg.booleanValue();
    }

    public static boolean zzc(Resources resources) {
        if (resources == null) {
            return false;
        }
        if (zzc == null) {
            Configuration configuration = resources.getConfiguration();
            boolean z = false;
            if ((configuration.screenLayout & 15) <= 3) {
                z = false;
                if (configuration.smallestScreenWidthDp >= 600) {
                    z = true;
                }
            }
            zzc = Boolean.valueOf(z);
        }
        return zzc.booleanValue();
    }
}
