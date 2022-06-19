package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzabx.class */
public final class zzabx {
    public static boolean zza(zzacc zzaccVar, zzaca zzacaVar, String... strArr) {
        if (zzaccVar == null || zzacaVar == null || !zzaccVar.zzdbd || zzacaVar == null) {
            return false;
        }
        return zzaccVar.zza(zzacaVar, zzr.zzky().elapsedRealtime(), strArr);
    }

    public static zzaca zzb(zzacc zzaccVar) {
        if (zzaccVar == null) {
            return null;
        }
        return zzaccVar.zzex(zzr.zzky().elapsedRealtime());
    }
}
