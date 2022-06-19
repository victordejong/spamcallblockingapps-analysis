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
import android.util.Log;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.p352d.C11946c;
import com.google.android.gms.common.util.C12101e;
import com.google.android.gms.common.util.C12106j;
import com.google.android.gms.common.util.C12110n;
import com.google.android.gms.common.util.C12115s;
import io.objectbox.model.PropertyFlags;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.common.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/d.class */
public class C11943d {
    static final int GMS_AVAILABILITY_NOTIFICATION_ID = 10436;
    static final int GMS_GENERAL_ERROR_NOTIFICATION_ID = 39789;
    public static final String GOOGLE_PLAY_GAMES_PACKAGE = "com.google.android.play.games";
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 12451000;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
    static boolean zza = false;
    private static boolean zzb = false;
    static final AtomicBoolean sCanceledAvailabilityNotification = new AtomicBoolean();
    private static final AtomicBoolean zzc = new AtomicBoolean();

    @Deprecated
    public static void cancelAvailabilityErrorNotifications(Context context) {
        if (sCanceledAvailabilityNotification.getAndSet(true)) {
            return;
        }
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager == null) {
                return;
            }
            notificationManager.cancel(GMS_AVAILABILITY_NOTIFICATION_ID);
        } catch (SecurityException e) {
        }
    }

    public static void enableUsingApkIndependentContext() {
        zzc.set(true);
    }

    @Deprecated
    public static void ensurePlayServicesAvailable(Context context, int i) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        int mo19269b = C11941c.m19271b().mo19269b(context, i);
        if (mo19269b != 0) {
            Intent mo19272a = C11941c.m19271b().mo19272a(context, mo19269b, "e");
            StringBuilder sb = new StringBuilder(57);
            sb.append("GooglePlayServices not available due to error ");
            sb.append(mo19269b);
            Log.e("GooglePlayServicesUtil", sb.toString());
            if (mo19272a != null) {
                throw new GooglePlayServicesRepairableException(mo19269b, "Google Play Services not available", mo19272a);
            }
            throw new GooglePlayServicesNotAvailableException(mo19269b);
        }
    }

    @Deprecated
    public static int getApkVersion(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    @Deprecated
    public static int getClientVersion(Context context) {
        C12045o.m19158a(true);
        return C12101e.m19043a(context, context.getPackageName());
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return C11941c.m19271b().mo19274a(context, i, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return ConnectionResult.zza(i);
    }

    @Deprecated
    public static Intent getGooglePlayServicesAvailabilityRecoveryIntent(int i) {
        return C11941c.m19271b().mo19272a((Context) null, i, (String) null);
    }

    public static Context getRemoteContext(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public static Resources getRemoteResource(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public static boolean honorsDebugCertificates(Context context) {
        try {
            if (!zza) {
                try {
                    PackageInfo m19259b = C11946c.m19258a(context).m19259b("com.google.android.gms", 64);
                    C11956e.m19247a(context);
                    if (m19259b == null || C11956e.m19246a(m19259b, false) || !C11956e.m19246a(m19259b, true)) {
                        zzb = false;
                    } else {
                        zzb = true;
                    }
                    zza = true;
                } catch (PackageManager.NameNotFoundException e) {
                    Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e);
                    zza = true;
                }
            }
            return zzb || !"user".equals(Build.TYPE);
        } catch (Throwable th) {
            zza = true;
            throw th;
        }
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        return isGooglePlayServicesAvailable(context, GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:(2:81|2)|5|(2:9|(2:11|(2:13|14))(2:15|16))|17|(4:19|(3:21|(1:26)(1:25)|27)|28|(12:30|32|(1:34)(1:35)|36|(2:77|38)(1:42)|79|43|44|(1:46)(4:47|(2:49|(1:51))|52|(4:59|(1:61)(4:62|(2:75|64)|67|(1:69)(1:70))|73|74)(1:58))|41|73|74))|31|32|(0)(0)|36|(0)(0)|79|43|44|(0)(0)|41|73|74) */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0212, code lost:
        android.util.Log.w("GooglePlayServicesUtil", java.lang.String.valueOf(r0).concat(" requires Google Play services, but they are missing."));
        r6 = 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int isGooglePlayServicesAvailable(android.content.Context r5, int r6) {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.C11943d.isGooglePlayServicesAvailable(android.content.Context, int):int");
    }

    @Deprecated
    public static boolean isGooglePlayServicesUid(Context context, int i) {
        return C12115s.m19006a(context, i);
    }

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

    @Deprecated
    public static boolean isPlayStorePossiblyUpdating(Context context, int i) {
        if (i == 9) {
            return zza(context, "com.android.vending");
        }
        return false;
    }

    public static boolean isRestrictedUserProfile(Context context) {
        if (C12110n.m19018d()) {
            Object systemService = context.getSystemService("user");
            C12045o.m19162a(systemService);
            Bundle applicationRestrictions = ((UserManager) systemService).getApplicationRestrictions(context.getPackageName());
            return applicationRestrictions != null && "true".equals(applicationRestrictions.getString("restricted_profile"));
        }
        return false;
    }

    @Deprecated
    public static boolean isSidewinderDevice(Context context) {
        return C12106j.m19029e(context);
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        return i == 1 || i == 2 || i == 3 || i == 9;
    }

    @Deprecated
    public static boolean uidHasPackageName(Context context, int i, String str) {
        return C12115s.m19005a(context, i, str);
    }

    public static boolean zza(Context context, String str) {
        boolean equals = str.equals("com.google.android.gms");
        if (C12110n.m19015g()) {
            try {
                for (PackageInstaller.SessionInfo sessionInfo : context.getPackageManager().getPackageInstaller().getAllSessions()) {
                    if (str.equals(sessionInfo.getAppPackageName())) {
                        return true;
                    }
                }
            } catch (Exception e) {
                return false;
            }
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, PropertyFlags.UNSIGNED);
            return equals ? applicationInfo.enabled : applicationInfo.enabled && !isRestrictedUserProfile(context);
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }
}
