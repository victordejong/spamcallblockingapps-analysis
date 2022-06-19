package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import android.util.Log;
/* renamed from: com.google.android.exoplayer2.util.o */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/o.class */
public final class C5526o {

    /* renamed from: a */
    private static int f17909a = 0;

    /* renamed from: b */
    private static boolean f17910b = true;

    /* renamed from: a */
    private static String m18747a(String str, Throwable th) {
        if (th == null) {
            return str;
        }
        String message = th.getMessage();
        if (!TextUtils.isEmpty(message)) {
            str = str + " - " + message;
        }
        return str;
    }

    /* renamed from: b */
    public static void m18746b(String str, String str2) {
        if (f17909a == 0) {
            Log.d(str, str2);
        }
    }

    /* renamed from: c */
    public static void m18745c(String str, String str2) {
        if (f17909a <= 3) {
            Log.e(str, str2);
        }
    }

    /* renamed from: d */
    public static void m18744d(String str, String str2, Throwable th) {
        if (!f17910b) {
            m18745c(str, m18747a(str2, th));
        } else if (f17909a > 3) {
        } else {
            Log.e(str, str2, th);
        }
    }

    /* renamed from: e */
    public static void m18743e(String str, String str2) {
        if (f17909a <= 1) {
            Log.i(str, str2);
        }
    }

    /* renamed from: f */
    public static void m18742f(String str, String str2) {
        if (f17909a <= 2) {
            Log.w(str, str2);
        }
    }

    /* renamed from: g */
    public static void m18741g(String str, String str2, Throwable th) {
        if (!f17910b) {
            m18742f(str, m18747a(str2, th));
        } else if (f17909a > 2) {
        } else {
            Log.w(str, str2, th);
        }
    }
}
