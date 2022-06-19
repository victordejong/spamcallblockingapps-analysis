package com.google.android.gms.internal.ads;

import android.util.Log;
/* renamed from: com.google.android.gms.internal.ads.za */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/za.class */
public class C13088za {
    public static boolean isLoggable(int i) {
        return i >= 5 || Log.isLoggable("Ads", i);
    }

    public static void zzb(String str, Throwable th) {
        isLoggable(3);
    }

    public static void zzc(String str, Throwable th) {
        if (isLoggable(6)) {
            Log.e("Ads", str, th);
        }
    }

    public static void zzd(String str, Throwable th) {
        if (isLoggable(5)) {
            Log.w("Ads", str, th);
        }
    }

    public static void zzdz(String str) {
        isLoggable(3);
    }

    public static void zze(String str, Throwable th) {
        if (isLoggable(5)) {
            if (th != null) {
                zzd(zzfa(str), th);
            } else {
                zzez(zzfa(str));
            }
        }
    }

    public static void zzex(String str) {
        if (isLoggable(6)) {
            Log.e("Ads", str);
        }
    }

    public static void zzey(String str) {
        isLoggable(4);
    }

    public static void zzez(String str) {
        if (isLoggable(5)) {
            Log.w("Ads", str);
        }
    }

    private static String zzfa(String str) {
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

    public static void zzfb(String str) {
        zze(str, null);
    }
}
