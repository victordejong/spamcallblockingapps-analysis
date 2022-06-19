package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdvz.class */
public final class zzdvz implements zzgla<Set<zzdih<zzdcq>>> {
    private final zzdvv zza;
    private final zzgln<zzdwf> zzb;
    private final zzgln<Executor> zzc;

    public zzdvz(zzdvv zzdvvVar, zzgln<zzdwf> zzglnVar, zzgln<Executor> zzglnVar2) {
        this.zza = zzdvvVar;
        this.zzb = zzglnVar;
        this.zzc = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdwf zzb = this.zzb.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        Set<zzdih<zzdcq>> zzd = zzdvv.zzd(zzb, zzfsnVar);
        zzgli.zzb(zzd);
        return zzd;
    }
}
