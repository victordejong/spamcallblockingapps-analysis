package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdlh.class */
public final class zzdlh implements zzgla<zzcxj<zzcvh>> {
    private final zzgln<zzcoj> zza;
    private final zzgln<zzdam> zzb;
    private final zzgln<zzdgp> zzc;
    private final zzgln<zzdkw> zzd;
    private final zzgln<zzddr> zze;

    public zzdlh(zzgln<zzcoj> zzglnVar, zzgln<zzdam> zzglnVar2, zzgln<zzdgp> zzglnVar3, zzgln<zzdkw> zzglnVar4, zzgln<zzddr> zzglnVar5) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcoj zzb = this.zza.zzb();
        zzdam zza = ((zzdau) this.zzb).zza();
        zzdgp zza2 = ((zzdhi) this.zzc).zza();
        zzdkw zza3 = ((zzdky) this.zzd).zza();
        zzddr zzb2 = ((zzcvg) this.zze).zzb();
        zzcwd zzk = zzb.zzk();
        zzk.zzi(zza.zzh());
        zzk.zzj(zza2);
        zzk.zzb(zza3);
        zzk.zze(new zzejq(null));
        zzk.zzd(new zzcxa(zzb2));
        zzk.zzc(new zzcve(null));
        zzcxj<zzcvh> zzZ = zzk.zza().zzZ();
        zzgli.zzb(zzZ);
        return zzZ;
    }
}
