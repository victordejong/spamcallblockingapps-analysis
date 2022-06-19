package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdwd.class */
public final class zzdwd implements zzgla<Set<zzdih<zzdbw>>> {
    private final zzdvv zza;
    private final zzgln<zzdwf> zzb;
    private final zzgln<Executor> zzc;

    public zzdwd(zzdvv zzdvvVar, zzgln<zzdwf> zzglnVar, zzgln<Executor> zzglnVar2) {
        this.zza = zzdvvVar;
        this.zzb = zzglnVar;
        this.zzc = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdwf zzb = this.zzb.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        Set<zzdih<zzdbw>> zzh = zzdvv.zzh(zzb, zzfsnVar);
        zzgli.zzb(zzh);
        return zzh;
    }
}
