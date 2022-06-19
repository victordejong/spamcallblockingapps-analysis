package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzglj.class */
public abstract class zzglj {
    private static final zzglj zza = new zzglf(null);
    private static final zzglj zzb = new zzglh(null);

    public /* synthetic */ zzglj(zzgli zzgliVar) {
    }

    public static zzglj zzd() {
        return zza;
    }

    public static zzglj zze() {
        return zzb;
    }

    public abstract <L> List<L> zza(Object obj, long j);

    public abstract void zzb(Object obj, long j);

    public abstract <L> void zzc(Object obj, Object obj2, long j);
}
