package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzesb.class */
public final class zzesb implements zzgpr<zzerw<zzerq>> {
    private final zzgqe<zzerp> zza;
    private final zzgqe<Clock> zzb;

    public zzesb(zzgqe<zzerp> zzgqeVar, zzgqe<Clock> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzerw(((zzerr) this.zza).zzb(), 10000L, this.zzb.zzb());
    }
}
