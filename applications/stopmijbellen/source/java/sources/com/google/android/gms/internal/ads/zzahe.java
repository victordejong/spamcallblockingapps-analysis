package com.google.android.gms.internal.ads;

import android.util.Log;
import androidx.recyclerview.widget.C0608b;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahe.class */
public final class zzahe {
    public static final String zza = "Volley";
    public static final boolean zzb = Log.isLoggable(zza, 2);
    private static final String zzc = zzahe.class.getName();

    public static void zza(String str, Object... objArr) {
        zze(str, objArr);
    }

    public static void zzb(String str, Object... objArr) {
        zze(str, objArr);
    }

    public static void zzc(Throwable th, String str, Object... objArr) {
        zze(str, objArr);
    }

    public static void zzd(String str, Object... objArr) {
        if (zzb) {
            zze(str, objArr);
        }
    }

    private static String zze(String str, Object... objArr) {
        String str2;
        String format = String.format(Locale.US, str, objArr);
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            } else if (!stackTrace[i].getClassName().equals(zzc)) {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                String substring2 = substring.substring(substring.lastIndexOf(36) + 1);
                String methodName = stackTrace[i].getMethodName();
                str2 = C0608b.m7625j(new StringBuilder(String.valueOf(substring2).length() + 1 + String.valueOf(methodName).length()), substring2, ".", methodName);
                break;
            } else {
                i++;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, format);
    }
}
