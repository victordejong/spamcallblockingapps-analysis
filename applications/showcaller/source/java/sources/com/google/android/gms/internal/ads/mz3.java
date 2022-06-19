package com.google.android.gms.internal.ads;

import android.util.Log;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mz3.class */
public final class mz3 {

    /* renamed from: a */
    public static final String f26924a = "Volley";

    /* renamed from: b */
    public static final boolean f26925b = Log.isLoggable(f26924a, 2);

    /* renamed from: c */
    private static final String f26926c = mz3.class.getName();

    /* renamed from: a */
    public static void m13040a(String str, Object... objArr) {
        if (f26925b) {
            Log.v(f26924a, m13036e(str, objArr));
        }
    }

    /* renamed from: b */
    public static void m13039b(String str, Object... objArr) {
        Log.d(f26924a, m13036e(str, objArr));
    }

    /* renamed from: c */
    public static void m13038c(String str, Object... objArr) {
        Log.e(f26924a, m13036e(str, objArr));
    }

    /* renamed from: d */
    public static void m13037d(Throwable th, String str, Object... objArr) {
        Log.e(f26924a, m13036e(str, objArr), th);
    }

    /* renamed from: e */
    private static String m13036e(String str, Object... objArr) {
        String str2;
        String format = String.format(Locale.US, str, objArr);
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            } else if (!stackTrace[i].getClassName().equals(f26926c)) {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                String substring2 = substring.substring(substring.lastIndexOf(36) + 1);
                String methodName = stackTrace[i].getMethodName();
                StringBuilder sb = new StringBuilder(String.valueOf(substring2).length() + 1 + String.valueOf(methodName).length());
                sb.append(substring2);
                sb.append(".");
                sb.append(methodName);
                str2 = sb.toString();
                break;
            } else {
                i++;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, format);
    }
}
