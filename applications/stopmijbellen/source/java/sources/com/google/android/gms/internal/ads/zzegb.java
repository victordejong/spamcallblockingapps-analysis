package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzegb.class */
public final class zzegb implements zzgpr<zzdlw<zzdgf>> {
    private final zzgqe<zzegj> zza;
    private final zzgqe<Executor> zzb;

    public zzegb(zzgqe<zzegj> zzgqeVar, zzgqe<Executor> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzegj zzb = this.zza.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzdlw(zzb, zzfxbVar);
    }
}
