package com.google.android.gms.internal.ads;

import android.util.Log;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbq.class */
public class zzbbq {
    /* renamed from: a */
    public static void m15858a(String str) {
        if (m15859a(3)) {
            Log.d("Ads", str);
        }
    }

    /* renamed from: a */
    public static void m15857a(String str, Throwable th) {
        if (m15859a(3)) {
            Log.d("Ads", str, th);
        }
    }

    /* renamed from: a */
    public static boolean m15859a(int i) {
        return i >= 5 || Log.isLoggable("Ads", i);
    }

    /* renamed from: b */
    public static void m15856b(String str) {
        if (m15859a(6)) {
            Log.e("Ads", str);
        }
    }

    /* renamed from: b */
    public static void m15855b(String str, Throwable th) {
        if (m15859a(6)) {
            Log.e("Ads", str, th);
        }
    }

    /* renamed from: c */
    public static void m15854c(String str) {
        if (m15859a(4)) {
            Log.i("Ads", str);
        }
    }

    /* renamed from: c */
    public static void m15853c(String str, Throwable th) {
        if (m15859a(5)) {
            Log.w("Ads", str, th);
        }
    }

    /* renamed from: d */
    public static void m15852d(String str) {
        if (m15859a(5)) {
            Log.w("Ads", str);
        }
    }

    /* renamed from: d */
    public static void m15851d(String str, Throwable th) {
        if (!m15859a(5)) {
            return;
        }
        if (th != null) {
            m15853c(m15850e(str), th);
        } else {
            m15852d(m15850e(str));
        }
    }

    @VisibleForTesting
    /* renamed from: e */
    public static String m15850e(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String str2 = str;
        if (stackTrace.length >= 4) {
            int lineNumber = stackTrace[3].getLineNumber();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13);
            sb.append(str);
            sb.append(" @");
            sb.append(lineNumber);
            str2 = sb.toString();
        }
        return str2;
    }

    /* renamed from: f */
    public static void m15849f(String str) {
        m15851d(str, null);
    }
}
