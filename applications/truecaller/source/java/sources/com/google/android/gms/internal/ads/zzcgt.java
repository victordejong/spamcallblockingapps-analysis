package com.google.android.gms.internal.ads;

import android.util.Log;
import com.google.ads.AdRequest;
import com.google.android.gms.common.util.VisibleForTesting;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgt.class */
public class zzcgt {
    public static final zzfmg zza = zzfmg.zzc(4000);

    public static void zzd(String str) {
        if (!zzm(3) || str == null || str.length() <= 4000) {
            return;
        }
        for (String str2 : zza.zzd(str)) {
        }
    }

    public static void zze(String str, Throwable th) {
        if (zzm(3)) {
        }
    }

    public static void zzf(String str) {
        if (!zzm(6) || str == null || str.length() <= 4000) {
            return;
        }
        for (String str2 : zza.zzd(str)) {
        }
    }

    public static void zzg(String str, Throwable th) {
        if (zzm(6)) {
        }
    }

    public static void zzh(String str) {
        if (!zzm(4) || str == null || str.length() <= 4000) {
            return;
        }
        for (String str2 : zza.zzd(str)) {
        }
    }

    public static void zzi(String str) {
        if (!zzm(5) || str == null || str.length() <= 4000) {
            return;
        }
        for (String str2 : zza.zzd(str)) {
        }
    }

    public static void zzj(String str, Throwable th) {
        if (zzm(5)) {
        }
    }

    @VisibleForTesting
    public static String zzk(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String str2 = str;
        if (stackTrace.length >= 4) {
            str2 = C22128a.m8614i(new StringBuilder(str.length() + 13), str, " @", stackTrace[3].getLineNumber());
        }
        return str2;
    }

    public static void zzl(String str, Throwable th) {
        if (zzm(5)) {
            if (th != null) {
                zzj(zzk(str), th);
            } else {
                zzi(zzk(str));
            }
        }
    }

    public static boolean zzm(int i) {
        return i >= 5 || Log.isLoggable(AdRequest.LOGTAG, i);
    }
}
