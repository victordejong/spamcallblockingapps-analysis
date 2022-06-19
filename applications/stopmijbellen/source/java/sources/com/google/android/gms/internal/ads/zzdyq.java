package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdyq.class */
public final class zzdyq implements zzgpr<zzdlw<zzdeu>> {
    private final zzgqe<zzdym> zza;
    private final zzgqe<Executor> zzb;
    private final zzgqe<zzefr> zzc;

    public zzdyq(zzgqe<zzdym> zzgqeVar, zzgqe<Executor> zzgqeVar2, zzgqe<zzefr> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdym zzb = this.zza.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return ((Boolean) zzbgq.zzc().zzb(zzblj.zzgq)).booleanValue() ? new zzdlw(this.zzc.zzb(), zzfxbVar) : new zzdlw(zzb, zzfxbVar);
    }
}
