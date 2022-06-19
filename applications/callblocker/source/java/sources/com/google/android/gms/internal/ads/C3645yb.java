package com.google.android.gms.internal.ads;

import android.util.Log;
/* renamed from: com.google.android.gms.internal.ads.yb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yb.class */
public class C3645yb {
    /* renamed from: a */
    private static String m6752a(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String str2 = str;
        if (stackTrace.length >= 4) {
            str2 = new StringBuilder(String.valueOf(str).length() + 13).append(str).append(" @").append(stackTrace[3].getLineNumber()).toString();
        }
        return str2;
    }

    /* renamed from: a */
    public static boolean m6753a(int i) {
        return i >= 5 || Log.isLoggable("Ads", i);
    }

    /* renamed from: b */
    public static void m6751b(String str) {
        if (m6753a(3)) {
            Log.d("Ads", str);
        }
    }

    /* renamed from: b */
    public static void m6750b(String str, Throwable th) {
        if (m6753a(3)) {
            Log.d("Ads", str, th);
        }
    }

    /* renamed from: c */
    public static void m6749c(String str) {
        if (m6753a(6)) {
            Log.e("Ads", str);
        }
    }

    /* renamed from: c */
    public static void m6748c(String str, Throwable th) {
        if (m6753a(6)) {
            Log.e("Ads", str, th);
        }
    }

    /* renamed from: d */
    public static void m6747d(String str) {
        if (m6753a(4)) {
            Log.i("Ads", str);
        }
    }

    /* renamed from: d */
    public static void m6746d(String str, Throwable th) {
        if (m6753a(5)) {
            Log.w("Ads", str, th);
        }
    }

    /* renamed from: e */
    public static void m6745e(String str) {
        if (m6753a(5)) {
            Log.w("Ads", str);
        }
    }

    /* renamed from: e */
    public static void m6744e(String str, Throwable th) {
        if (m6753a(5)) {
            if (th != null) {
                m6746d(m6752a(str), th);
            } else {
                m6745e(m6752a(str));
            }
        }
    }

    /* renamed from: f */
    public static void m6743f(String str) {
        m6744e(str, null);
    }
}
