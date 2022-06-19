package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.C6186w0;
import com.google.android.gms.common.p272k.C6198c;
import com.google.android.gms.common.util.C6231i;
import com.google.android.gms.common.util.C6237o;
import com.google.android.gms.common.util.C6242t;
import com.google.android.gms.common.util.C6246w;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.common.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/e.class */
public class C6094e {
    @Deprecated

    /* renamed from: a */
    public static final int f19409a = 12451000;

    /* renamed from: c */
    private static boolean f19411c = false;

    /* renamed from: d */
    static boolean f19412d = false;

    /* renamed from: b */
    static final AtomicBoolean f19410b = new AtomicBoolean();

    /* renamed from: e */
    private static final AtomicBoolean f19413e = new AtomicBoolean();

    @Deprecated
    /* renamed from: a */
    public static void m17210a(@RecentlyNonNull Context context, int i) {
        int mo17219h = C6086c.m17221f().mo17219h(context, i);
        if (mo17219h != 0) {
            Intent mo17225b = C6086c.m17221f().mo17225b(context, mo17219h, "e");
            StringBuilder sb = new StringBuilder(57);
            sb.append("GooglePlayServices not available due to error ");
            sb.append(mo17219h);
            Log.e("GooglePlayServicesUtil", sb.toString());
            if (mo17225b != null) {
                throw new GooglePlayServicesRepairableException(mo17219h, "Google Play Services not available", mo17225b);
            }
            throw new GooglePlayServicesNotAvailableException(mo17219h);
        }
    }

    @Deprecated
    /* renamed from: b */
    public static int m17209b(@RecentlyNonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    @Deprecated
    /* renamed from: c */
    public static String m17208c(int i) {
        return ConnectionResult.m17501p0(i);
    }

    @RecentlyNullable
    /* renamed from: d */
    public static Context m17207d(@RecentlyNonNull Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    @RecentlyNullable
    /* renamed from: e */
    public static Resources m17206e(@RecentlyNonNull Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: f */
    public static boolean m17205f(@RecentlyNonNull Context context) {
        try {
            if (!f19412d) {
                try {
                    PackageInfo m16888f = C6198c.m16885a(context).m16888f("com.google.android.gms", 64);
                    C6096f.m17191a(context);
                    if (m16888f == null || C6096f.m17187e(m16888f, false) || !C6096f.m17187e(m16888f, true)) {
                        f19411c = false;
                    } else {
                        f19411c = true;
                    }
                    f19412d = true;
                } catch (PackageManager.NameNotFoundException e) {
                    Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e);
                    f19412d = true;
                }
            }
            return f19411c || !C6231i.m16799e();
        } catch (Throwable th) {
            f19412d = true;
            throw th;
        }
    }

    @Deprecated
    /* renamed from: g */
    public static int m17204g(@RecentlyNonNull Context context, int i) {
        PackageInfo packageInfo;
        int i2;
        PackageInfo packageInfo2;
        try {
            context.getResources().getString(C6097g.common_google_play_services_unknown_issue);
        } catch (Throwable th) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !f19413e.get()) {
            int m16911a = C6186w0.m16911a(context);
            if (m16911a == 0) {
                throw new GooglePlayServicesMissingManifestValueException();
            }
            if (m16911a != f19409a) {
                throw new GooglePlayServicesIncorrectManifestValueException(m16911a);
            }
        }
        boolean z = !C6231i.m16796h(context) && !C6231i.m16794j(context);
        C6155o.m17027a(i >= 0);
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException e) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires the Google Play Store, but it is missing."));
            }
        } else {
            packageInfo = null;
        }
        try {
            packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            C6096f.m17191a(context);
        } catch (PackageManager.NameNotFoundException e2) {
            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they are missing."));
            i2 = 1;
        }
        if (!C6096f.m17187e(packageInfo2, true)) {
            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but their signature is invalid."));
        } else {
            if (z) {
                C6155o.m17018j(packageInfo);
                if (!C6096f.m17187e(packageInfo, true)) {
                    Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature is invalid."));
                }
            }
            if (!z || packageInfo == null || packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                if (C6246w.m16761a(packageInfo2.versionCode) < C6246w.m16761a(i)) {
                    int i3 = packageInfo2.versionCode;
                    StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 82);
                    sb.append("Google Play services out of date for ");
                    sb.append(packageName);
                    sb.append(".  Requires ");
                    sb.append(i);
                    sb.append(" but found ");
                    sb.append(i3);
                    Log.w("GooglePlayServicesUtil", sb.toString());
                    i2 = 2;
                } else {
                    ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
                    ApplicationInfo applicationInfo2 = applicationInfo;
                    if (applicationInfo == null) {
                        try {
                            applicationInfo2 = packageManager.getApplicationInfo("com.google.android.gms", 0);
                        } catch (PackageManager.NameNotFoundException e3) {
                            Log.wtf("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they're missing when getting application info."), e3);
                            i2 = 1;
                        }
                    }
                    if (applicationInfo2.enabled) {
                        return 0;
                    }
                    i2 = 3;
                }
                return i2;
            }
            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature doesn't match that of Google Play services."));
        }
        i2 = 9;
        return i2;
    }

    @Deprecated
    /* renamed from: h */
    public static boolean m17203h(@RecentlyNonNull Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        return m17199l(context, "com.google.android.gms");
    }

    @TargetApi(18)
    /* renamed from: i */
    public static boolean m17202i(@RecentlyNonNull Context context) {
        if (C6237o.m16779e()) {
            Object systemService = context.getSystemService("user");
            C6155o.m17018j(systemService);
            Bundle applicationRestrictions = ((UserManager) systemService).getApplicationRestrictions(context.getPackageName());
            return applicationRestrictions != null && "true".equals(applicationRestrictions.getString("restricted_profile"));
        }
        return false;
    }

    @Deprecated
    /* renamed from: j */
    public static boolean m17201j(int i) {
        return i == 1 || i == 2 || i == 3 || i == 9;
    }

    @Deprecated
    @TargetApi(19)
    /* renamed from: k */
    public static boolean m17200k(@RecentlyNonNull Context context, int i, @RecentlyNonNull String str) {
        return C6242t.m16766b(context, i, str);
    }

    @TargetApi(21)
    /* renamed from: l */
    public static boolean m17199l(Context context, String str) {
        boolean equals = str.equals("com.google.android.gms");
        if (C6237o.m16776h()) {
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
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
            return equals ? applicationInfo.enabled : applicationInfo.enabled && !m17202i(context);
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }
}
