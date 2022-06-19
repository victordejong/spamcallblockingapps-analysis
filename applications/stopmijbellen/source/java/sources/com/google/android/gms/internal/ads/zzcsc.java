package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsc.class */
final class zzcsc implements zzcxy {
    private final zzcui zza;
    private zzdke zzb;
    private zzded zzc;
    private zzfbi zzd;
    private zzfaj zze;

    public /* synthetic */ zzcsc(zzcui zzcuiVar, zzcsb zzcsbVar) {
        this.zza = zzcuiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzddz
    public final /* synthetic */ zzddz<zzcxz> zza(zzfaj zzfajVar) {
        this.zze = zzfajVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzddz
    public final /* synthetic */ zzddz<zzcxz> zzb(zzfbi zzfbiVar) {
        this.zzd = zzfbiVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcxy
    public final /* synthetic */ zzcxy zzc(zzdke zzdkeVar) {
        this.zzb = zzdkeVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcxy
    public final /* synthetic */ zzcxy zzd(zzded zzdedVar) {
        this.zzc = zzdedVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzddz
    public final /* bridge */ /* synthetic */ zzcxz zzh() {
        zzgpz.zzc(this.zzb, zzdke.class);
        zzgpz.zzc(this.zzc, zzded.class);
        return new zzcse(this.zza, new zzdca(), new zzffb(), new zzddl(), new zzdzm(), this.zzb, this.zzc, new zzfff(), null, this.zzd, this.zze, null);
    }
}
