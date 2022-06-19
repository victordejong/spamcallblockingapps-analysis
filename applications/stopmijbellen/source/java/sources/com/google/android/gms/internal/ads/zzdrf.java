package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrf.class */
public final class zzdrf implements zzgpr<zzdre> {
    private final zzgqe<zzduy> zza;
    private final zzgqe<Clock> zzb;

    public zzdrf(zzgqe<zzduy> zzgqeVar, zzgqe<Clock> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdre(((zzdpj) this.zza).zza(), this.zzb.zzb());
    }
}
