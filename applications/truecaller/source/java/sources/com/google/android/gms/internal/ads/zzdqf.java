package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqf.class */
public final class zzdqf implements zzgla<zzdqd> {
    private final zzgln<zzfar> zza;
    private final zzgln<Executor> zzb;
    private final zzgln<zzdss> zzc;
    private final zzgln<Context> zzd;
    private final zzgln<zzdvi> zze;
    private final zzgln<zzffc> zzf;
    private final zzgln<zzffu> zzg;
    private final zzgln<zzedq> zzh;
    private final zzgln<zzdrn> zzi;

    public zzdqf(zzgln<zzfar> zzglnVar, zzgln<Executor> zzglnVar2, zzgln<zzdss> zzglnVar3, zzgln<Context> zzglnVar4, zzgln<zzdvi> zzglnVar5, zzgln<zzffc> zzglnVar6, zzgln<zzffu> zzglnVar7, zzgln<zzedq> zzglnVar8, zzgln<zzdrn> zzglnVar9) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
        this.zzf = zzglnVar6;
        this.zzg = zzglnVar7;
        this.zzh = zzglnVar8;
        this.zzi = zzglnVar9;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdqd(((zzdat) this.zza).zza(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), this.zze.zzb(), this.zzf.zzb(), this.zzg.zzb(), this.zzh.zzb(), this.zzi.zzb());
    }
}
