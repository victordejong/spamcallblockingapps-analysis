package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctk.class */
final class zzctk implements zzdns {
    private final zzcui zza;
    private zzdke zzb;
    private zzded zzc;
    private zzenh zzd;
    private zzfbi zze;
    private zzfaj zzf;

    public /* synthetic */ zzctk(zzcui zzcuiVar, zzctj zzctjVar) {
        this.zza = zzcuiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzddz
    public final /* synthetic */ zzddz<zzdnt> zza(zzfaj zzfajVar) {
        this.zzf = zzfajVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzddz
    public final /* synthetic */ zzddz<zzdnt> zzb(zzfbi zzfbiVar) {
        this.zze = zzfbiVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdns
    public final /* synthetic */ zzdns zzc(zzenh zzenhVar) {
        this.zzd = zzenhVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdns
    public final /* synthetic */ zzdns zzd(zzdke zzdkeVar) {
        this.zzb = zzdkeVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdns
    public final /* synthetic */ zzdns zze(zzded zzdedVar) {
        this.zzc = zzdedVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdns
    /* renamed from: zzf */
    public final zzdnt zzh() {
        zzgpz.zzc(this.zzb, zzdke.class);
        zzgpz.zzc(this.zzc, zzded.class);
        zzgpz.zzc(this.zzd, zzenh.class);
        return new zzctm(this.zza, new zzdca(), new zzffb(), new zzddl(), new zzdzm(), this.zzb, this.zzc, new zzfff(), this.zzd, null, this.zze, this.zzf, null);
    }
}
