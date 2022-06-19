package com.google.android.gms.common;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.UserManager;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/GooglePlayServicesUtilLight.class */
public class GooglePlayServicesUtilLight {
    @KeepForSdk
    public static final int GMS_AVAILABILITY_NOTIFICATION_ID = 10436;
    @KeepForSdk
    public static final int GMS_GENERAL_ERROR_NOTIFICATION_ID = 39789;
    @KeepForSdk
    public static final String GOOGLE_PLAY_GAMES_PACKAGE = "com.google.android.play.games";
    @KeepForSdk
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    @KeepForSdk
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 12451000;
    @KeepForSdk
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
    @VisibleForTesting
    public static boolean zza = false;
    private static boolean zzb = false;
    @VisibleForTesting
    @KeepForSdk
    public static final AtomicBoolean sCanceledAvailabilityNotification = new AtomicBoolean();
    private static final AtomicBoolean zzc = new AtomicBoolean();

    @KeepForSdk
    @Deprecated
    public static void cancelAvailabilityErrorNotifications(Context context) {
        if (sCanceledAvailabilityNotification.getAndSet(true)) {
            return;
        }
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
            if (notificationManager == null) {
                return;
            }
            notificationManager.cancel(GMS_AVAILABILITY_NOTIFICATION_ID);
        } catch (SecurityException e) {
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static void enableUsingApkIndependentContext() {
        zzc.set(true);
    }

    @KeepForSdk
    @Deprecated
    public static void ensurePlayServicesAvailable(Context context, int i) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        GoogleApiAvailabilityLight googleApiAvailabilityLight = GoogleApiAvailabilityLight.f5675b;
        int mo39062e = googleApiAvailabilityLight.mo39062e(context, i);
        if (mo39062e != 0) {
            Intent mo39066a = googleApiAvailabilityLight.mo39066a(context, mo39062e, "e");
            if (mo39066a != null) {
                throw new GooglePlayServicesRepairableException(mo39062e, "Google Play Services not available", mo39066a);
            }
            throw new GooglePlayServicesNotAvailableException(mo39062e);
        }
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static int getApkVersion(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            return 0;
        }
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static int getClientVersion(Context context) {
        PackageInfo packageInfo;
        Preconditions.m38896l(true);
        try {
            packageInfo = Wrappers.m38764a(context).f6151a.getPackageManager().getPackageInfo(context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        int i = -1;
        if (packageInfo != null) {
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if (applicationInfo == null) {
                i = -1;
            } else {
                Bundle bundle = applicationInfo.metaData;
                i = -1;
                if (bundle != null) {
                    i = bundle.getInt("com.google.android.gms.version", -1);
                }
            }
        }
        return i;
    }

    @KeepForSdk
    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return GoogleApiAvailabilityLight.f5675b.mo39065b(context, i, i2);
    }

    @VisibleForTesting
    @KeepForSdk
    @Deprecated
    public static String getErrorString(int i) {
        return ConnectionResult.m39074r2(i);
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static Intent getGooglePlayServicesAvailabilityRecoveryIntent(int i) {
        return GoogleApiAvailabilityLight.f5675b.mo39066a(null, i, null);
    }

    @KeepForSdk
    public static Context getRemoteContext(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    @KeepForSdk
    public static Resources getRemoteResource(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static boolean honorsDebugCertificates(Context context) {
        if (!zza) {
            try {
                PackageInfo packageInfo = Wrappers.m38764a(context).f6151a.getPackageManager().getPackageInfo("com.google.android.gms", 64);
                GoogleSignatureVerifier.m39061a(context);
                if (packageInfo == null || GoogleSignatureVerifier.m39058d(packageInfo, false) || !GoogleSignatureVerifier.m39058d(packageInfo, true)) {
                    zzb = false;
                } else {
                    zzb = true;
                }
                zza = true;
            } catch (PackageManager.NameNotFoundException e) {
                zza = true;
            } catch (Throwable th) {
                zza = true;
                throw th;
            }
        }
        return zzb || !"user".equals(Build.TYPE);
    }

    @HideFirstParty
    @KeepForSdk
    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        return isGooglePlayServicesAvailable(context, GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:(2:114|2)|3|4|(5:8|2e|27|28|(2:30|(2:32|33))(2:34|35))|41|(4:43|(3:45|(1:50)(1:49)|51)|52|(12:54|56|(1:58)(1:59)|60|(2:116|62)(1:65)|112|66|67|(1:69)(4:70|(2:72|(1:74))|75|(8:83|(1:85)(1:86)|87|(1:89)(1:90)|91|(1:93)(4:94|(2:118|96)|99|(1:101)(1:102))|105|106)(1:81))|82|105|106))|55|56|(0)(0)|60|(0)(0)|112|66|67|(0)(0)|82|105|106) */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0248, code lost:
        java.lang.String.valueOf(r0).concat(" requires Google Play services, but they are missing.");
        r5 = 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0122 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x016c  */
    @com.google.android.gms.common.annotation.KeepForSdk
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int isGooglePlayServicesAvailable(android.content.Context r4, int r5) {
        /*
            Method dump skipped, instructions count: 605
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.GooglePlayServicesUtilLight.isGooglePlayServicesAvailable(android.content.Context, int):int");
    }

    @KeepForSdk
    @Deprecated
    public static boolean isGooglePlayServicesUid(Context context, int i) {
        return UidVerifier.m38771a(context, i);
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static boolean isPlayServicesPossiblyUpdating(Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        return zza(context, "com.google.android.gms");
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static boolean isPlayStorePossiblyUpdating(Context context, int i) {
        if (i == 9) {
            return zza(context, "com.android.vending");
        }
        return false;
    }

    @KeepForSdk
    public static boolean isRestrictedUserProfile(Context context) {
        Object systemService = context.getSystemService("user");
        Objects.requireNonNull(systemService, "null reference");
        Bundle applicationRestrictions = ((UserManager) systemService).getApplicationRestrictions(context.getPackageName());
        return applicationRestrictions != null && "true".equals(applicationRestrictions.getString("restricted_profile"));
    }

    @VisibleForTesting
    @Deprecated
    @ShowFirstParty
    @KeepForSdk
    public static boolean isSidewinderDevice(Context context) {
        return DeviceProperties.m38783d(context);
    }

    @KeepForSdk
    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        return i == 1 || i == 2 || i == 3 || i == 9;
    }

    @KeepForSdk
    @Deprecated
    public static boolean uidHasPackageName(Context context, int i, String str) {
        return UidVerifier.m38770b(context, i, str);
    }

    public static boolean zza(Context context, String str) {
        boolean equals = str.equals("com.google.android.gms");
        for (PackageInstaller.SessionInfo sessionInfo : context.getPackageManager().getPackageInstaller().getAllSessions()) {
            if (str.equals(sessionInfo.getAppPackageName())) {
                return true;
            }
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
            return equals ? applicationInfo.enabled : applicationInfo.enabled && !isRestrictedUserProfile(context);
        } catch (PackageManager.NameNotFoundException | Exception e) {
            return false;
        }
    }
}
