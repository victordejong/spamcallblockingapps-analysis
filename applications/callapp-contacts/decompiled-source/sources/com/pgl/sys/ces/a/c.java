package com.pgl.sys.ces.a;

import android.content.Context;
import android.provider.Settings;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static double f34953a = -1.0d;

    public static String a() {
        return "";
    }

    public static String a(Context context) {
        String str;
        try {
            Locale locale = context.getResources().getConfiguration().locale;
            str = locale.getLanguage() + "_" + locale.getCountry();
        } catch (Throwable th) {
            str = null;
        }
        return str == null ? "" : str.trim();
    }

    public static String b() {
        return "";
    }

    public static String b(Context context) {
        String str;
        try {
            str = Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Throwable th) {
            str = null;
        }
        return str == null ? "" : str.trim();
    }

    public static String c() {
        String str;
        try {
            str = TimeZone.getDefault().getDisplayName(false, 0);
        } catch (Throwable th) {
            str = null;
        }
        return str == null ? "" : str.trim();
    }

    public static String c(Context context) {
        int i;
        double d2 = f34953a;
        double d3 = 0.0d;
        if (d2 >= 0.0d) {
            i = (int) d2;
        } else {
            try {
                Class<?> cls = Class.forName("com.android.internal.os.PowerProfile");
                Object newInstance = cls.getConstructor(Context.class).newInstance(context);
                Method declaredMethod = cls.getDeclaredMethod("getAveragePower", String.class);
                declaredMethod.setAccessible(true);
                d3 = ((Double) declaredMethod.invoke(newInstance, "battery.capacity")).doubleValue();
            } catch (Throwable th) {
            }
            f34953a = d3;
            i = (int) d3;
        }
        return Integer.toString(i);
    }

    public static String d() {
        return "";
    }
}
