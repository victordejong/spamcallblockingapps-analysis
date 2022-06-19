package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcry.class */
final class zzcry implements zzcyj {
    private final zzcui zza;
    private zzdke zzb;
    private zzded zzc;
    private zzfbi zzd;
    private zzfaj zze;

    public /* synthetic */ zzcry(zzcui zzcuiVar, zzcrx zzcrxVar) {
        this.zza = zzcuiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzddz
    public final /* synthetic */ zzddz<zzcyk> zza(zzfaj zzfajVar) {
        this.zze = zzfajVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzddz
    public final /* synthetic */ zzddz<zzcyk> zzb(zzfbi zzfbiVar) {
        this.zzd = zzfbiVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcyj
    public final /* synthetic */ zzcyj zzc(zzdke zzdkeVar) {
        this.zzb = zzdkeVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcyj
    public final /* synthetic */ zzcyj zzd(zzded zzdedVar) {
        this.zzc = zzdedVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzddz
    public final /* bridge */ /* synthetic */ zzcyk zzh() {
        zzgpz.zzc(this.zzb, zzdke.class);
        zzgpz.zzc(this.zzc, zzded.class);
        return new zzcsa(this.zza, new zzdca(), new zzffb(), new zzddl(), new zzdzm(), this.zzb, this.zzc, new zzfff(), null, this.zzd, this.zze, null);
    }
}
