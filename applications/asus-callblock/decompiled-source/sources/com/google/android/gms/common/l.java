package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.a;
import com.google.android.gms.common.a.f;
import com.google.android.gms.common.a.h;
import com.google.android.gms.common.a.n;
import com.google.android.gms.common.internal.ad;
import com.google.android.gms.common.k;
import com.google.android.gms.internal.bk;
import com.google.android.gms.internal.bl;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/l.class */
public class l {
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public static final int f4053b = com.google.android.gms.common.internal.l.f4019a;
    public static boolean c = false;
    public static boolean d = false;
    static boolean e = false;

    /* renamed from: a  reason: collision with root package name */
    private static String f4052a = null;
    private static int g = 0;
    private static boolean h = false;
    static final AtomicBoolean f = new AtomicBoolean();
    private static final AtomicBoolean i = new AtomicBoolean();

    @Deprecated
    public static int a(Context context) {
        PackageInfo packageInfo;
        int i2 = 9;
        PackageManager packageManager = context.getPackageManager();
        try {
            context.getResources().getString(a.c.t);
        } catch (Throwable th) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !i.get()) {
            e(context);
            if (g == 0) {
                throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            } else if (g != f4053b) {
                int i3 = f4053b;
                int i4 = g;
                String valueOf = String.valueOf("com.google.android.gms.version");
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 290).append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ").append(i3).append(" but found ").append(i4).append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"").append(valueOf).append("\" android:value=\"@integer/google_play_services_version\" />").toString());
            }
        }
        try {
            packageInfo = packageManager.getPackageInfo("com.google.android.gms", 64);
            m.a(context);
        } catch (PackageManager.NameNotFoundException e2) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            i2 = 1;
        }
        if (!f.a(context)) {
            try {
                k.a a2 = m.a(packageManager.getPackageInfo("com.android.vending", 8256), k.d.f4051a);
                if (a2 == null) {
                    Log.w("GooglePlayServicesUtil", "Google Play Store signature invalid.");
                } else if (m.a(packageInfo, a2) == null) {
                    Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                }
            } catch (PackageManager.NameNotFoundException e3) {
                Log.w("GooglePlayServicesUtil", "Google Play Store is neither installed nor updating.");
            }
            return i2;
        } else if (m.a(packageInfo, k.d.f4051a) == null) {
            Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
            return i2;
        }
        if (h.a(packageInfo.versionCode) < h.a(f4053b)) {
            Log.w("GooglePlayServicesUtil", new StringBuilder(77).append("Google Play services out of date.  Requires ").append(f4053b).append(" but found ").append(packageInfo.versionCode).toString());
            i2 = 2;
        } else {
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            ApplicationInfo applicationInfo2 = applicationInfo;
            if (applicationInfo == null) {
                try {
                    applicationInfo2 = packageManager.getApplicationInfo("com.google.android.gms", 0);
                } catch (PackageManager.NameNotFoundException e4) {
                    Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.", e4);
                    i2 = 1;
                }
            }
            i2 = !applicationInfo2.enabled ? 3 : 0;
        }
        return i2;
    }

    @Deprecated
    public static boolean a(int i2) {
        return n.a(i2);
    }

    @Deprecated
    public static boolean a(Context context, int i2) {
        boolean z = true;
        if (i2 != 18) {
            z = i2 == 1 ? a(context, "com.google.android.gms") : false;
        }
        return z;
    }

    @TargetApi(21)
    private static boolean a(Context context, String str) {
        boolean z;
        Bundle applicationRestrictions;
        boolean z2 = true;
        if (com.google.android.gms.common.a.k.a(21)) {
            for (PackageInstaller.SessionInfo sessionInfo : context.getPackageManager().getPackageInstaller().getAllSessions()) {
                if (str.equals(sessionInfo.getAppPackageName())) {
                    z = true;
                    break;
                }
            }
        }
        if (!com.google.android.gms.common.a.k.a(18) || (applicationRestrictions = ((UserManager) context.getSystemService("user")).getApplicationRestrictions(context.getPackageName())) == null || !"true".equals(applicationRestrictions.getString("restricted_profile"))) {
            z2 = false;
        }
        if (z2) {
            z = false;
        } else {
            try {
                z = context.getPackageManager().getApplicationInfo(str, 8192).enabled;
            } catch (PackageManager.NameNotFoundException e2) {
                z = false;
            }
        }
        return z;
    }

    @Deprecated
    public static boolean b(int i2) {
        boolean z;
        switch (i2) {
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

    public static boolean b(Context context) {
        e(context);
        return e || !"user".equals(Build.TYPE);
    }

    public static Context c(Context context) {
        Context context2;
        try {
            context2 = context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException e2) {
            context2 = null;
        }
        return context2;
    }

    public static String d(Context context) {
        ApplicationInfo applicationInfo;
        String str = context.getApplicationInfo().name;
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = context.getPackageName();
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            try {
                applicationInfo = bl.a(context).a(context.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException e2) {
                applicationInfo = null;
            }
            if (applicationInfo != null) {
                str2 = packageManager.getApplicationLabel(applicationInfo).toString();
            }
        }
        return str2;
    }

    private static void e(Context context) {
        try {
            if (!h) {
                try {
                    f4052a = context.getPackageName();
                    bk a2 = bl.a(context);
                    g = ad.a(context);
                    PackageInfo a3 = a2.a("com.google.android.gms");
                    if (a3 != null) {
                        m.a(context);
                        if (m.a(a3, k.d.f4051a[1]) != null) {
                            e = true;
                            h = true;
                        }
                    }
                    e = false;
                    h = true;
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e2);
                    h = true;
                }
            }
        } catch (Throwable th) {
            h = true;
            throw th;
        }
    }
}
