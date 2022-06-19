package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxl.class */
public final class zzdxl implements zzgpr<zzdlw<zzdhm>> {
    private final zzgqe<zzdxv> zza;
    private final zzgqe<Executor> zzb;

    public zzdxl(zzgqe<zzdxv> zzgqeVar, zzgqe<Executor> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdxv zzb = this.zza.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzdlw(zzb, zzfxbVar);
    }
}
