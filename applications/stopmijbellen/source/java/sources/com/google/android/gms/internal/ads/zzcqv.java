package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqv.class */
public final class zzcqv implements zzgpr<Set<zzdlw<zzdlk>>> {
    private final zzgqe<zzeft> zza;
    private final zzgqe<Executor> zzb;

    public zzcqv(zzgqe<zzeft> zzgqeVar, zzgqe<Executor> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set set;
        zzeft zzb = this.zza.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbx)).booleanValue()) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgq)).booleanValue()) {
                set = Collections.singleton(new zzdlw(zzb, zzfxbVar));
                zzgpz.zzb(set);
                return set;
            }
        }
        set = Collections.emptySet();
        zzgpz.zzb(set);
        return set;
    }
}
