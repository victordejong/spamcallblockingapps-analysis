package com.google.firebase.perf.util;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.firebase.perf.f.a;
import okhttp3.HttpUrl;
/* renamed from: com.google.firebase.perf.util.f */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/util/f.class */
public class C2451f {

    /* renamed from: a */
    private static Boolean f10710a;

    /* renamed from: a */
    public static void m3568a(boolean z, String str) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: b */
    public static boolean m3567b(Context context) {
        Boolean bool = f10710a;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Boolean valueOf = Boolean.valueOf(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("firebase_performance_logcat_enabled", false));
            f10710a = valueOf;
            return valueOf.booleanValue();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            a e2 = a.e();
            e2.a("No perf logcat meta data found " + e.getMessage());
            return false;
        }
    }

    /* renamed from: c */
    public static int m3566c(long j) {
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j >= -2147483648L) {
            return (int) j;
        }
        return Integer.MIN_VALUE;
    }

    /* renamed from: d */
    public static String m3565d(String str) {
        HttpUrl parse = HttpUrl.parse(str);
        if (parse != null) {
            str = parse.newBuilder().username("").password("").query((String) null).fragment((String) null).toString();
        }
        return str;
    }

    /* renamed from: e */
    public static String m3564e(String str, int i) {
        HttpUrl parse;
        int lastIndexOf;
        if (str.length() <= i) {
            return str;
        }
        if (str.charAt(i) != '/' && (parse = HttpUrl.parse(str)) != null) {
            return (parse.encodedPath().lastIndexOf(47) < 0 || (lastIndexOf = str.lastIndexOf(47, i - 1)) < 0) ? str.substring(0, i) : str.substring(0, lastIndexOf);
        }
        return str.substring(0, i);
    }
}
