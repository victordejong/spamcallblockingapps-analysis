package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzg;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdnm.class */
public final class zzdnm implements zzgla<zzdnl> {
    private final zzgln<zzg> zza;
    private final zzgln<zzfar> zzb;
    private final zzgln<zzdmr> zzc;
    private final zzgln<zzdmm> zzd;
    private final zzgln<zzdnw> zze;
    private final zzgln<zzdoe> zzf;
    private final zzgln<Executor> zzg;
    private final zzgln<Executor> zzh;
    private final zzgln<zzdmj> zzi;

    public zzdnm(zzgln<zzg> zzglnVar, zzgln<zzfar> zzglnVar2, zzgln<zzdmr> zzglnVar3, zzgln<zzdmm> zzglnVar4, zzgln<zzdnw> zzglnVar5, zzgln<zzdoe> zzglnVar6, zzgln<Executor> zzglnVar7, zzgln<Executor> zzglnVar8, zzgln<zzdmj> zzglnVar9) {
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

    /* renamed from: zza */
    public final zzdnl zzb() {
        zzg zzb = ((zzfbu) this.zza).zzb();
        zzfar zza = ((zzdat) this.zzb).zza();
        zzdmr zzb2 = this.zzc.zzb();
        zzdmm zza2 = ((zzdne) this.zzd).zza();
        zzdnw zzb3 = this.zze.zzb();
        zzdoe zzb4 = this.zzf.zzb();
        Executor zzb5 = this.zzg.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzdnl(zzb, zza, zzb2, zza2, zzb3, zzb4, zzb5, zzfsnVar, this.zzi.zzb());
    }
}
