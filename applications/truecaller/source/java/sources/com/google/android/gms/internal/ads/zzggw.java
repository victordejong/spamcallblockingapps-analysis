package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzggw.class */
public abstract class zzggw {
    private static final zzggw zza = new zzggt(null);
    private static final zzggw zzb = new zzggu(null);

    public /* synthetic */ zzggw(zzggv zzggvVar) {
    }

    public static zzggw zzd() {
        return zza;
    }

    public static zzggw zze() {
        return zzb;
    }

    public abstract <L> List<L> zza(Object obj, long j);

    public abstract void zzb(Object obj, long j);

    public abstract <L> void zzc(Object obj, Object obj2, long j);
}
