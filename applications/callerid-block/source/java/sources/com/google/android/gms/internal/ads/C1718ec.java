package com.google.android.gms.internal.ads;

import android.util.Log;
import java.util.Locale;
/* renamed from: com.google.android.gms.internal.ads.ec */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ec.class */
public final class C1718ec {

    /* renamed from: a */
    public static final String f6390a = "Volley";

    /* renamed from: b */
    public static final boolean f6391b = Log.isLoggable(f6390a, 2);

    /* renamed from: c */
    private static final String f6392c = C1718ec.class.getName();

    /* renamed from: a */
    public static void m7660a(String str, Object... objArr) {
        if (f6391b) {
            Log.v(f6390a, m7656e(str, objArr));
        }
    }

    /* renamed from: b */
    public static void m7659b(String str, Object... objArr) {
        Log.d(f6390a, m7656e(str, objArr));
    }

    /* renamed from: c */
    public static void m7658c(String str, Object... objArr) {
        Log.e(f6390a, m7656e(str, objArr));
    }

    /* renamed from: d */
    public static void m7657d(Throwable th, String str, Object... objArr) {
        Log.e(f6390a, m7656e(str, objArr), th);
    }

    /* renamed from: e */
    private static String m7656e(String str, Object... objArr) {
        String str2;
        String format = String.format(Locale.US, str, objArr);
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            } else if (!stackTrace[i].getClassName().equals(f6392c)) {
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
