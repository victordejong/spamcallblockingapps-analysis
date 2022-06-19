package com.google.android.gms.internal.ads;

import android.util.Log;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzciz.class */
public class zzciz {
    public static final zzfqp zza = zzfqp.zzb(4000);

    @VisibleForTesting
    public static String zzd(String str) {
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

    public static void zze(String str) {
        if (!zzm(3) || str == null || str.length() <= 4000) {
            return;
        }
        for (String str2 : zza.zzd(str)) {
        }
    }

    public static void zzf(String str, Throwable th) {
        zzm(3);
    }

    public static void zzg(String str) {
        if (!zzm(6) || str == null || str.length() <= 4000) {
            return;
        }
        for (String str2 : zza.zzd(str)) {
        }
    }

    public static void zzh(String str, Throwable th) {
        zzm(6);
    }

    public static void zzi(String str) {
        if (zzm(4)) {
            if (str == null || str.length() <= 4000) {
                Log.i("Ads", str);
                return;
            }
            Iterator<String> it2 = zza.zzd(str).iterator();
            boolean z = true;
            while (true) {
                boolean z2 = z;
                if (!it2.hasNext()) {
                    return;
                }
                String next = it2.next();
                if (z2) {
                    Log.i("Ads", next);
                } else {
                    Log.i("Ads-cont", next);
                }
                z = false;
            }
        }
    }

    public static void zzj(String str) {
        if (zzm(5)) {
            if (str == null || str.length() <= 4000) {
                Log.w("Ads", str);
                return;
            }
            Iterator<String> it2 = zza.zzd(str).iterator();
            boolean z = true;
            while (true) {
                boolean z2 = z;
                if (!it2.hasNext()) {
                    return;
                }
                String next = it2.next();
                if (z2) {
                    Log.w("Ads", next);
                } else {
                    Log.w("Ads-cont", next);
                }
                z = false;
            }
        }
    }

    public static void zzk(String str, Throwable th) {
        if (zzm(5)) {
            Log.w("Ads", str, th);
        }
    }

    public static void zzl(String str, Throwable th) {
        if (zzm(5)) {
            if (th != null) {
                zzk(zzd(str), th);
            } else {
                zzj(zzd(str));
            }
        }
    }

    public static boolean zzm(int i) {
        return i >= 5 || Log.isLoggable("Ads", i);
    }
}
