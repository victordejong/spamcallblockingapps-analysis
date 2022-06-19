package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpu.class */
public final class zzpu extends zzcd {
    private final zzaz zzc;

    public zzpu(zzaz zzazVar) {
        this.zzc = zzazVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final int zza(Object obj) {
        return obj == zzpt.zzd ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final int zzb() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final int zzc() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final zzca zzd(int i, zzca zzcaVar, boolean z) {
        Object obj = null;
        Integer num = z ? 0 : null;
        if (z) {
            obj = zzpt.zzd;
        }
        zzcaVar.zzj(num, obj, 0, -9223372036854775807L, 0L, zzd.zza, true);
        return zzcaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final zzcc zze(int i, zzcc zzccVar, long j) {
        zzccVar.zza(zzcc.zza, this.zzc, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, false, true, null, 0L, -9223372036854775807L, 0, 0, 0L);
        zzccVar.zzl = true;
        return zzccVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final Object zzf(int i) {
        return zzpt.zzd;
    }
}
