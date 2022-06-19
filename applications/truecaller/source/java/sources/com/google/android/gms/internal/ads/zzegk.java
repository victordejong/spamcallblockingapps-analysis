package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegk.class */
public final class zzegk implements zzgla<zzegj> {
    private final zzgln<Context> zza;
    private final zzgln<zzcgz> zzb;
    private final zzgln<zzdkf> zzc;
    private final zzgln<Executor> zzd;

    public zzegk(zzgln<Context> zzglnVar, zzgln<zzcgz> zzglnVar2, zzgln<zzdkf> zzglnVar3, zzgln<Executor> zzglnVar4) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zzb = this.zza.zzb();
        zzcgz zza = ((zzcox) this.zzb).zza();
        zzdkf zzb2 = this.zzc.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzegj(zzb, zza, zzb2, zzfsnVar);
    }
}
