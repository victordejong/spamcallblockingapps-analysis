package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcj.class */
public final class zzdcj implements zzgpr<zzdci> {
    private final zzgqe<Clock> zza;
    private final zzgqe<zzcie> zzb;

    public zzdcj(zzgqe<Clock> zzgqeVar, zzgqe<zzcie> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdci(this.zza.zzb(), this.zzb.zzb());
    }
}
