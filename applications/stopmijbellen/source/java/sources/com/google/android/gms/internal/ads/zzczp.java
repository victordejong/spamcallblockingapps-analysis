package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczp.class */
public final class zzczp implements zzgpr<zzdlw<zzaya>> {
    private final zzczd zza;
    private final zzgqe<zzdar> zzb;
    private final zzgqe<Executor> zzc;

    public zzczp(zzczd zzczdVar, zzgqe<zzdar> zzgqeVar, zzgqe<Executor> zzgqeVar2) {
        this.zza = zzczdVar;
        this.zzb = zzgqeVar;
        this.zzc = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdar zzb = this.zzb.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzdlw(zzb, zzfxbVar);
    }
}
