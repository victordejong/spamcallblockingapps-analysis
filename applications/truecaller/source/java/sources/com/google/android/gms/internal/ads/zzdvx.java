package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx.class */
public final class zzdvx implements zzgla<Set<zzdih<zzdbf>>> {
    private final zzdvv zza;
    private final zzgln<zzdwf> zzb;
    private final zzgln<Executor> zzc;

    public zzdvx(zzdvv zzdvvVar, zzgln<zzdwf> zzglnVar, zzgln<Executor> zzglnVar2) {
        this.zza = zzdvvVar;
        this.zzb = zzglnVar;
        this.zzc = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdwf zzb = this.zzb.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        Set<zzdih<zzdbf>> zzb2 = zzdvv.zzb(zzb, zzfsnVar);
        zzgli.zzb(zzb2);
        return zzb2;
    }
}
