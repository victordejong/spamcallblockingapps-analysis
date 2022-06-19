package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzabr.class */
public final class zzabr {
    public static boolean zzcp(String str) {
        return zze((String) zzwr.zzqr().zzd(zzabp.zzcwd), str);
    }

    private static boolean zze(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        try {
            return Pattern.matches(str, str2);
        } catch (RuntimeException e) {
            zzr.zzkv().zza(e, "NonagonUtil.isPatternMatched");
            return false;
        }
    }
}
