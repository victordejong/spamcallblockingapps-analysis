package com.pgl.sys.ces.p480a;

import android.content.Context;
import android.provider.Settings;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.TimeZone;
/* renamed from: com.pgl.sys.ces.a.c */
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/a/c.class */
public final class C17068c {

    /* renamed from: a */
    private static double f60589a = -1.0d;

    /* renamed from: a */
    public static String m5929a() {
        return "";
    }

    /* renamed from: a */
    public static String m5928a(Context context) {
        String str;
        try {
            Locale locale = context.getResources().getConfiguration().locale;
            str = locale.getLanguage() + "_" + locale.getCountry();
        } catch (Throwable th) {
            str = null;
        }
        return str == null ? "" : str.trim();
    }

    /* renamed from: b */
    public static String m5927b() {
        return "";
    }

    /* renamed from: b */
    public static String m5926b(Context context) {
        String str;
        try {
            str = Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Throwable th) {
            str = null;
        }
        return str == null ? "" : str.trim();
    }

    /* renamed from: c */
    public static String m5925c() {
        String str;
        try {
            str = TimeZone.getDefault().getDisplayName(false, 0);
        } catch (Throwable th) {
            str = null;
        }
        return str == null ? "" : str.trim();
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [double] */
    /* renamed from: c */
    public static String m5924c(Context context) {
        int i;
        double d = f60589a;
        char c = 0;
        if (d >= 0.0d) {
            i = (int) d;
        } else {
            try {
                Class<?> cls = Class.forName("com.android.internal.os.PowerProfile");
                Object newInstance = cls.getConstructor(Context.class).newInstance(context);
                Method declaredMethod = cls.getDeclaredMethod("getAveragePower", String.class);
                declaredMethod.setAccessible(true);
                c = ((Double) declaredMethod.invoke(newInstance, "battery.capacity")).doubleValue();
            } catch (Throwable th) {
            }
            f60589a = c;
            i = c;
        }
        return Integer.toString(i);
    }

    /* renamed from: d */
    public static String m5923d() {
        return "";
    }
}
