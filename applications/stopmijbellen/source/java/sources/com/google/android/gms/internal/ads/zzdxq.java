package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxq.class */
public final class zzdxq implements zzgpr<Set<zzdlw<zzfif>>> {
    private final zzgqe<Executor> zza;
    private final zzgqe<zzdyi> zzb;

    public zzdxq(zzgqe<Executor> zzgqeVar, zzgqe<zzdyi> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        Set singleton = ((Boolean) zzbgq.zzc().zzb(zzblj.zzdv)).booleanValue() ? Collections.singleton(new zzdlw(((zzdyj) this.zzb).zzb(), zzfxbVar)) : Collections.emptySet();
        zzgpz.zzb(singleton);
        return singleton;
    }
}
