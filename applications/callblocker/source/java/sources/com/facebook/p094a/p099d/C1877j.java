package com.facebook.p094a.p099d;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.facebook.EnumC2197q;
import com.facebook.internal.C2063r;
import com.facebook.internal.p111b.C2015a;
import com.facebook.p094a.C1904g;
import com.facebook.p094a.C1927m;
import java.util.Locale;
/* renamed from: com.facebook.a.d.j */
/* loaded from: classes-dex2jar.jar:com/facebook/a/d/j.class */
class C1877j {

    /* renamed from: a */
    private static final String f5688a = C1877j.class.getCanonicalName();

    /* renamed from: b */
    private static final long[] f5689b = {300000, 900000, 1800000, 3600000, 21600000, 43200000, 86400000, 172800000, 259200000, 604800000, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L};

    C1877j() {
    }

    /* renamed from: a */
    private static int m16012a(long j) {
        int i = 0;
        while (i < f5689b.length && f5689b[i] < j) {
            i++;
        }
        return i;
    }

    /* renamed from: a */
    private static String m16011a(Context context) {
        String str;
        try {
            PackageManager packageManager = context.getPackageManager();
            String str2 = "PCKGCHKSUM;" + packageManager.getPackageInfo(context.getPackageName(), 0).versionName;
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
            String string = sharedPreferences.getString(str2, null);
            if (string == null || string.length() != 32) {
                str = C1869f.m16050a(packageManager.getApplicationInfo(context.getPackageName(), 0).sourceDir);
                sharedPreferences.edit().putString(str2, str).apply();
            } else {
                str = string;
            }
        } catch (Exception e) {
            str = null;
        }
        return str;
    }

    /* renamed from: a */
    private static void m16013a() {
        C2063r.m15550a(EnumC2197q.APP_EVENTS, f5688a, "Clock skew detected");
    }

    /* renamed from: a */
    public static void m16010a(String str, C1876i c1876i, String str2) {
        Long valueOf = Long.valueOf(c1876i.m16018f() - c1876i.m16021c().longValue());
        Long l = valueOf;
        if (valueOf.longValue() < 0) {
            l = 0L;
            m16013a();
        }
        Long valueOf2 = Long.valueOf(c1876i.m16016h());
        Long l2 = valueOf2;
        if (valueOf2.longValue() < 0) {
            m16013a();
            l2 = 0L;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("fb_mobile_app_interruptions", c1876i.m16020d());
        bundle.putString("fb_mobile_time_between_sessions", String.format(Locale.ROOT, "session_quanta_%d", Integer.valueOf(m16012a(l.longValue()))));
        C1878k m16015i = c1876i.m16015i();
        bundle.putString("fb_mobile_launch_source", m16015i != null ? m16015i.toString() : "Unclassified");
        bundle.putLong("_logTime", c1876i.m16021c().longValue() / 1000);
        new C1927m(str, str2, null).m15859a("fb_mobile_deactivate_app", l2.longValue() / 1000.0d, bundle);
    }

    /* renamed from: a */
    public static void m16009a(String str, C1878k c1878k, String str2, Context context) {
        String c1878k2 = c1878k != null ? c1878k.toString() : "Unclassified";
        Bundle bundle = new Bundle();
        bundle.putString("fb_mobile_launch_source", c1878k2);
        bundle.putString("fb_mobile_pckg_fp", m16011a(context));
        bundle.putString("fb_mobile_app_cert_hash", C2015a.m15651a(context));
        C1927m c1927m = new C1927m(str, str2, null);
        c1927m.m15858a("fb_mobile_activate_app", bundle);
        if (C1927m.m15861a() != C1904g.EnumC1905a.EXPLICIT_ONLY) {
            c1927m.m15852b();
        }
    }
}
