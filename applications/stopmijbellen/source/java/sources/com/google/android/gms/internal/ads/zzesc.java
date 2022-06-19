package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzesc.class */
public final class zzesc implements zzgpr<zzerw<zzevs>> {
    private final zzgqe<zzevu> zza;
    private final zzgqe<Clock> zzb;

    public zzesc(zzgqe<zzevu> zzgqeVar, zzgqe<Clock> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzerw(((zzevv) this.zza).zzb(), zzbmo.zza.zze().longValue(), this.zzb.zzb());
    }
}
