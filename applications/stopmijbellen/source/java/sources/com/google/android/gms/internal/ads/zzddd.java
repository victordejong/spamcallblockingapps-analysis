package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddd.class */
public final class zzddd implements zzgpr<zzdlw<zzdjm>> {
    private final zzgqe<zzdyk> zza;
    private final zzgqe<Executor> zzb;
    private final zzgqe<zzefp> zzc;

    public zzddd(zzgqe<zzdyk> zzgqeVar, zzgqe<Executor> zzgqeVar2, zzgqe<zzefp> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdyk zzb = this.zza.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return ((Boolean) zzbgq.zzc().zzb(zzblj.zzgq)).booleanValue() ? new zzdlw(this.zzc.zzb(), zzfxbVar) : new zzdlw(zzb, zzfxbVar);
    }
}
