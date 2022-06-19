package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.common.C2674j;
import com.google.android.gms.common.internal.C2618au;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.p132c.C2586c;
import com.google.android.gms.common.util.C2712i;
import com.google.android.gms.common.util.C2716m;
import com.google.android.gms.common.util.C2721r;
import com.google.android.gms.common.util.C2724u;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.common.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/h.class */
public class C2595h {
    @Deprecated

    /* renamed from: b */
    public static final int f7276b = 12451000;

    /* renamed from: a */
    private static boolean f7275a = false;

    /* renamed from: d */
    private static boolean f7278d = false;

    /* renamed from: e */
    private static boolean f7279e = false;

    /* renamed from: f */
    private static boolean f7280f = false;

    /* renamed from: c */
    static final AtomicBoolean f7277c = new AtomicBoolean();

    /* renamed from: g */
    private static final AtomicBoolean f7281g = new AtomicBoolean();

    @Deprecated
    /* renamed from: a */
    public static int m14158a(Context context, int i) {
        try {
            context.getResources().getString(C2674j.C2675a.common_google_play_services_unknown_issue);
        } catch (Throwable th) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !f7281g.get()) {
            int m14113b = C2618au.m14113b(context);
            if (m14113b == 0) {
                throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            }
            if (m14113b != f7276b) {
                throw new IllegalStateException(new StringBuilder(320).append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ").append(f7276b).append(" but found ").append(m14113b).append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />").toString());
            }
        }
        return m14155a(context, !C2712i.m13856b(context) && !C2712i.m13853e(context), i);
    }

    /* renamed from: a */
    private static int m14155a(Context context, boolean z, int i) {
        int i2;
        C2662s.m13973b(i >= 0);
        PackageManager packageManager = context.getPackageManager();
        PackageInfo packageInfo = null;
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException e) {
                Log.w("GooglePlayServicesUtil", "Google Play Store is missing.");
                i2 = 9;
            }
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            C2596i.m14146a(context);
            if (!C2596i.m14144a(packageInfo2, true)) {
                Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                i2 = 9;
            } else if (z && (!C2596i.m14144a(packageInfo, true) || !packageInfo.signatures[0].equals(packageInfo2.signatures[0]))) {
                Log.w("GooglePlayServicesUtil", "Google Play Store signature invalid.");
                i2 = 9;
            } else if (C2724u.m13807a(packageInfo2.versionCode) < C2724u.m13807a(i)) {
                Log.w("GooglePlayServicesUtil", new StringBuilder(77).append("Google Play services out of date.  Requires ").append(i).append(" but found ").append(packageInfo2.versionCode).toString());
                i2 = 2;
            } else {
                ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
                ApplicationInfo applicationInfo2 = applicationInfo;
                if (applicationInfo == null) {
                    try {
                        applicationInfo2 = packageManager.getApplicationInfo("com.google.android.gms", 0);
                    } catch (PackageManager.NameNotFoundException e2) {
                        Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.", e2);
                        i2 = 1;
                    }
                }
                i2 = !applicationInfo2.enabled ? 3 : 0;
            }
        } catch (PackageManager.NameNotFoundException e3) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            i2 = 1;
        }
        return i2;
    }

    @Deprecated
    /* renamed from: a */
    public static String m14159a(int i) {
        return C2579b.m14211a(i);
    }

    @Deprecated
    @TargetApi(19)
    /* renamed from: a */
    public static boolean m14157a(Context context, int i, String str) {
        return C2721r.m13824a(context, i, str);
    }

    @TargetApi(21)
    /* renamed from: a */
    public static boolean m14156a(Context context, String str) {
        boolean z;
        boolean equals = str.equals("com.google.android.gms");
        if (equals) {
        }
        if (C2716m.m13835h()) {
            try {
                for (PackageInstaller.SessionInfo sessionInfo : context.getPackageManager().getPackageInstaller().getAllSessions()) {
                    if (str.equals(sessionInfo.getAppPackageName())) {
                        z = true;
                        break;
                    }
                }
            } catch (Exception e) {
                z = false;
            }
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
            z = equals ? applicationInfo.enabled : applicationInfo.enabled && !m14148f(context);
        } catch (PackageManager.NameNotFoundException e2) {
            z = false;
        }
        return z;
    }

    @Deprecated
    /* renamed from: b */
    public static boolean m14154b(int i) {
        boolean z;
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 9:
                z = true;
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            default:
                z = false;
                break;
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m14153b(Context context) {
        boolean z = false;
        try {
            if (!f7280f) {
                try {
                    PackageInfo m14194b = C2586c.m14193a(context).m14194b("com.google.android.gms", 64);
                    C2596i.m14146a(context);
                    if (m14194b == null || C2596i.m14144a(m14194b, false) || !C2596i.m14144a(m14194b, true)) {
                        f7279e = false;
                    } else {
                        f7279e = true;
                    }
                    f7280f = true;
                } catch (PackageManager.NameNotFoundException e) {
                    Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e);
                    f7280f = true;
                }
            }
            if (f7279e || !C2712i.m13858a()) {
                z = true;
            }
            return z;
        } catch (Throwable th) {
            f7280f = true;
            throw th;
        }
    }

    @Deprecated
    /* renamed from: b */
    public static boolean m14152b(Context context, int i) {
        boolean z = true;
        if (i != 18) {
            z = i == 1 ? m14156a(context, "com.google.android.gms") : false;
        }
        return z;
    }

    /* renamed from: c */
    public static Resources m14151c(Context context) {
        Resources resources;
        try {
            resources = context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException e) {
            resources = null;
        }
        return resources;
    }

    /* renamed from: d */
    public static Context m14150d(Context context) {
        Context context2;
        try {
            context2 = context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException e) {
            context2 = null;
        }
        return context2;
    }

    @Deprecated
    /* renamed from: e */
    public static int m14149e(Context context) {
        int i = 0;
        try {
            i = context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
        }
        return i;
    }

    @TargetApi(18)
    /* renamed from: f */
    public static boolean m14148f(Context context) {
        Bundle applicationRestrictions;
        return C2716m.m13838e() && (applicationRestrictions = ((UserManager) context.getSystemService("user")).getApplicationRestrictions(context.getPackageName())) != null && "true".equals(applicationRestrictions.getString("restricted_profile"));
    }
}
