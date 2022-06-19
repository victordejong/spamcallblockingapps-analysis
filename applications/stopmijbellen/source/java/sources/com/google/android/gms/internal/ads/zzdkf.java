package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdkf.class */
public final class zzdkf implements zzgpr<zzdet> {
    private final zzdke zza;
    private final zzgqe<Set<zzdlw<zzdeu>>> zzb;

    public zzdkf(zzdke zzdkeVar, zzgqe<Set<zzdlw<zzdeu>>> zzgqeVar) {
        this.zza = zzdkeVar;
        this.zzb = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdet zza = this.zza.zza(((zzgqc) this.zzb).zzb());
        zzgpz.zzb(zza);
        return zza;
    }
}
