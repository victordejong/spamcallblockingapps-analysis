package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.common.internal.C1589q;
import com.google.android.gms.common.p080g.C1562c;
import com.google.android.gms.common.util.C1613j;
import com.google.android.gms.common.util.C1617n;
import com.google.android.gms.common.util.C1622s;
import com.google.android.gms.common.util.C1626v;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.common.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/c.class */
public class C1555c {
    @Deprecated

    /* renamed from: a */
    public static final int f5812a = 12451000;

    /* renamed from: b */
    private static boolean f5813b = false;

    /* renamed from: c */
    static boolean f5814c = false;

    /* renamed from: d */
    private static final AtomicBoolean f5815d = new AtomicBoolean();

    static {
        new AtomicBoolean();
    }

    @Deprecated
    /* renamed from: a */
    public static int m8452a(@RecentlyNonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    @RecentlyNullable
    /* renamed from: b */
    public static Context m8451b(@RecentlyNonNull Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: c */
    public static boolean m8450c(@RecentlyNonNull Context context) {
        try {
            if (!f5814c) {
                try {
                    PackageInfo m8430f = C1562c.m8427a(context).m8430f("com.google.android.gms", 64);
                    C1556d.m8444a(context);
                    if (m8430f == null || C1556d.m8440e(m8430f, false) || !C1556d.m8440e(m8430f, true)) {
                        f5813b = false;
                    } else {
                        f5813b = true;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e);
                }
                f5814c = true;
            }
            return f5813b || !C1613j.m8231c();
        } catch (Throwable th) {
            f5814c = true;
            throw th;
        }
    }

    @Deprecated
    /* renamed from: d */
    public static int m8449d(@RecentlyNonNull Context context, int i) {
        String valueOf;
        String str;
        PackageInfo packageInfo;
        int i2;
        PackageInfo packageInfo2;
        try {
            context.getResources().getString(C1557e.common_google_play_services_unknown_issue);
        } catch (Throwable th) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !f5815d.get()) {
            int m8330a = C1589q.m8330a(context);
            if (m8330a == 0) {
                throw new GooglePlayServicesMissingManifestValueException();
            }
            if (m8330a != f5812a) {
                throw new GooglePlayServicesIncorrectManifestValueException(m8330a);
            }
        }
        boolean z = !C1613j.m8228f(context) && !C1613j.m8226h(context);
        C1581h.m8354a(i >= 0);
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException e) {
                valueOf = String.valueOf(packageName);
                str = " requires the Google Play Store, but it is missing.";
            }
        } else {
            packageInfo = null;
        }
        try {
            packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            C1556d.m8444a(context);
        } catch (PackageManager.NameNotFoundException e2) {
            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they are missing."));
            i2 = 1;
        }
        if (!C1556d.m8440e(packageInfo2, true)) {
            valueOf = String.valueOf(packageName);
            str = " requires Google Play services, but their signature is invalid.";
        } else {
            if (z) {
                C1581h.m8347h(packageInfo);
                if (!C1556d.m8440e(packageInfo, true)) {
                    valueOf = String.valueOf(packageName);
                    str = " requires Google Play Store, but its signature is invalid.";
                }
            }
            if (!z || packageInfo == null || packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                if (C1626v.m8194a(packageInfo2.versionCode) < C1626v.m8194a(i)) {
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
            valueOf = String.valueOf(packageName);
            str = " requires Google Play Store, but its signature doesn't match that of Google Play services.";
        }
        Log.w("GooglePlayServicesUtil", valueOf.concat(str));
        i2 = 9;
        return i2;
    }

    @Deprecated
    /* renamed from: e */
    public static boolean m8448e(@RecentlyNonNull Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        return m8445h(context, "com.google.android.gms");
    }

    @TargetApi(18)
    /* renamed from: f */
    public static boolean m8447f(@RecentlyNonNull Context context) {
        if (C1617n.m8213e()) {
            Object systemService = context.getSystemService("user");
            C1581h.m8347h(systemService);
            Bundle applicationRestrictions = ((UserManager) systemService).getApplicationRestrictions(context.getPackageName());
            return applicationRestrictions != null && "true".equals(applicationRestrictions.getString("restricted_profile"));
        }
        return false;
    }

    @Deprecated
    @TargetApi(19)
    /* renamed from: g */
    public static boolean m8446g(@RecentlyNonNull Context context, int i, @RecentlyNonNull String str) {
        return C1622s.m8199b(context, i, str);
    }

    @TargetApi(21)
    /* renamed from: h */
    static boolean m8445h(Context context, String str) {
        boolean equals = str.equals("com.google.android.gms");
        if (C1617n.m8210h()) {
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
            return equals ? applicationInfo.enabled : applicationInfo.enabled && !m8447f(context);
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }
}
