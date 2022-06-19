package com.google.android.gms.internal.ads;

import android.util.Log;
/* renamed from: com.google.android.gms.internal.ads.po */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/po.class */
public class C1894po {
    /* renamed from: a */
    public static void m6185a(String str) {
        if (m6176j(3)) {
            Log.d("Ads", str);
        }
    }

    /* renamed from: b */
    public static void m6184b(String str, Throwable th) {
        if (m6176j(3)) {
            Log.d("Ads", str, th);
        }
    }

    /* renamed from: c */
    public static void m6183c(String str) {
        if (m6176j(6)) {
            Log.e("Ads", str);
        }
    }

    /* renamed from: d */
    public static void m6182d(String str, Throwable th) {
        if (m6176j(6)) {
            Log.e("Ads", str, th);
        }
    }

    /* renamed from: e */
    public static void m6181e(String str) {
        if (m6176j(4)) {
            Log.i("Ads", str);
        }
    }

    /* renamed from: f */
    public static void m6180f(String str) {
        if (m6176j(5)) {
            Log.w("Ads", str);
        }
    }

    /* renamed from: g */
    public static void m6179g(String str, Throwable th) {
        if (m6176j(5)) {
            Log.w("Ads", str, th);
        }
    }

    /* renamed from: h */
    static String m6178h(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String str2 = str;
        if (stackTrace.length >= 4) {
            int lineNumber = stackTrace[3].getLineNumber();
            StringBuilder sb = new StringBuilder(str.length() + 13);
            sb.append(str);
            sb.append(" @");
            sb.append(lineNumber);
            str2 = sb.toString();
        }
        return str2;
    }

    /* renamed from: i */
    public static void m6177i(String str, Throwable th) {
        if (m6176j(5)) {
            String m6178h = m6178h(str);
            if (th != null) {
                m6179g(m6178h, th);
            } else {
                m6180f(m6178h);
            }
        }
    }

    /* renamed from: j */
    public static boolean m6176j(int i) {
        return i >= 5 || Log.isLoggable("Ads", i);
    }
}
