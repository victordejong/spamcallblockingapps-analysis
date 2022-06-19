package p000;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.facebook.AccessToken;
import java.util.Locale;
import rj0;
/* renamed from: bl0 */
/* loaded from: classes-dex2jar.jar:bl0.class */
public class bl0 {

    /* renamed from: a */
    public static final String f1970a = "bl0";

    /* renamed from: b */
    public static final long[] f1971b = {300000, 900000, 1800000, 3600000, 21600000, 43200000, 86400000, 172800000, 259200000, 604800000, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L};

    /* renamed from: a */
    public static String m5614a(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            String str = "PCKGCHKSUM;" + packageManager.getPackageInfo(context.getPackageName(), 0).versionName;
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
            String string = sharedPreferences.getString(str, null);
            if (string != null && string.length() == 32) {
                return string;
            }
            String a = xk0.a(packageManager.getApplicationInfo(context.getPackageName(), 0).sourceDir);
            sharedPreferences.edit().putString(str, a).apply();
            return a;
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: b */
    public static int m5613b(long j) {
        int i = 0;
        while (true) {
            long[] jArr = f1971b;
            if (i >= jArr.length || jArr[i] >= j) {
                break;
            }
            i++;
        }
        return i;
    }

    /* renamed from: c */
    public static void m5612c(String str, cl0 cl0Var, String str2, Context context) {
        String cl0Var2 = cl0Var != null ? cl0Var.toString() : "Unclassified";
        Bundle bundle = new Bundle();
        bundle.putString("fb_mobile_launch_source", cl0Var2);
        bundle.putString("fb_mobile_pckg_fp", m5614a(context));
        bundle.putString("fb_mobile_app_cert_hash", pn0.a(context));
        xj0 xj0Var = new xj0(str, str2, (AccessToken) null);
        xj0Var.f("fb_mobile_activate_app", bundle);
        if (xj0.c() != rj0.a.b) {
            xj0Var.a();
        }
    }

    /* renamed from: d */
    public static void m5611d() {
        xm0.g(dj0.APP_EVENTS, f1970a, "Clock skew detected");
    }

    /* renamed from: e */
    public static void m5610e(String str, al0 al0Var, String str2) {
        Long valueOf = Long.valueOf(al0Var.m7079b() - al0Var.m7076e().longValue());
        Long l = 0L;
        if (valueOf.longValue() < 0) {
            m5611d();
            valueOf = null;
        }
        Long valueOf2 = Long.valueOf(al0Var.m7075f());
        if (valueOf2.longValue() < 0) {
            m5611d();
        } else {
            l = valueOf2;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("fb_mobile_app_interruptions", al0Var.m7078c());
        bundle.putString("fb_mobile_time_between_sessions", String.format(Locale.ROOT, "session_quanta_%d", Integer.valueOf(m5613b(valueOf.longValue()))));
        cl0 m7074g = al0Var.m7074g();
        bundle.putString("fb_mobile_launch_source", m7074g != null ? m7074g.toString() : "Unclassified");
        bundle.putLong("_logTime", al0Var.m7076e().longValue() / 1000);
        new xj0(str, str2, (AccessToken) null).e("fb_mobile_deactivate_app", l.longValue() / 1000.0d, bundle);
    }
}
