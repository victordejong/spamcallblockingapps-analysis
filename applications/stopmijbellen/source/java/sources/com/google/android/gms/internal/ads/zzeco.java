package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeco.class */
public final class zzeco implements zzgpr<zzdlw<zzdhm>> {
    private final zzgqe<zzedz> zza;
    private final zzgqe<Executor> zzb;

    public zzeco(zzgqe<zzedz> zzgqeVar, zzgqe<Executor> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzedz zzb = ((zzeea) this.zza).zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzdlw(zzb, zzfxbVar);
    }
}
