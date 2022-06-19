package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdys.class */
public final class zzdys implements zzgpr<zzdlw<zzfif>> {
    private final zzgqe<zzdzc> zza;
    private final zzgqe<Executor> zzb;
    private final zzgqe<zzefy> zzc;

    public zzdys(zzgqe<zzdzc> zzgqeVar, zzgqe<Executor> zzgqeVar2, zzgqe<zzefy> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdzc zzb = this.zza.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return ((Boolean) zzbgq.zzc().zzb(zzblj.zzgq)).booleanValue() ? new zzdlw(this.zzc.zzb(), zzfxbVar) : new zzdlw(zzb, zzfxbVar);
    }
}
