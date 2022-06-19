package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejl.class */
public final class zzejl implements zzgla<zzejj> {
    private final zzgln<Context> zza;
    private final zzgln<zzcwe> zzb;
    private final zzgln<zzfes> zzc;
    private final zzgln<zzfsn> zzd;
    private final zzgln<zzbkg> zze;

    public zzejl(zzgln<Context> zzglnVar, zzgln<zzcwe> zzglnVar2, zzgln<zzfes> zzglnVar3, zzgln<zzfsn> zzglnVar4, zzgln<zzbkg> zzglnVar5) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzejj(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), ((zzejr) this.zze).zza());
    }
}
