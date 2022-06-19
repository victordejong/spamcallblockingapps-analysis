package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdaj.class */
public final class zzdaj implements zzgpr<zzdae> {
    private final zzgqe<zzdau> zza;
    private final zzgqe<zzbpz> zzb;
    private final zzgqe<Runnable> zzc;
    private final zzgqe<Executor> zzd;

    public zzdaj(zzgqe<zzdau> zzgqeVar, zzgqe<zzbpz> zzgqeVar2, zzgqe<Runnable> zzgqeVar3, zzgqe<Executor> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdae(((zzdcq) this.zza).zzb(), ((zzdai) this.zzb).zza(), ((zzdah) this.zzc).zza(), this.zzd.zzb());
    }
}
