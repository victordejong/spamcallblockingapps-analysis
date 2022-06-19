package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnk.class */
public final class zzdnk implements zzgpr<zzdlw<zzder>> {
    private final zzdna zza;
    private final zzgqe<zzdog> zzb;
    private final zzgqe<Executor> zzc;

    public zzdnk(zzdna zzdnaVar, zzgqe<zzdog> zzgqeVar, zzgqe<Executor> zzgqeVar2) {
        this.zza = zzdnaVar;
        this.zzb = zzgqeVar;
        this.zzc = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdog zzb = this.zzb.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzdlw(zzb, zzfxbVar);
    }
}
