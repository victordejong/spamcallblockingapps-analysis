package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcro.class */
final class zzcro implements zzdoo {
    private final zzcui zza;
    private zzdke zzb;
    private zzded zzc;
    private zzdok zzd;
    private zzcyt zze;
    private zzfbi zzf;
    private zzfaj zzg;

    public /* synthetic */ zzcro(zzcui zzcuiVar, zzcrn zzcrnVar) {
        this.zza = zzcuiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzddz
    public final /* synthetic */ zzddz<zzdop> zza(zzfaj zzfajVar) {
        this.zzg = zzfajVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzddz
    public final /* synthetic */ zzddz<zzdop> zzb(zzfbi zzfbiVar) {
        this.zzf = zzfbiVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdoo
    public final /* synthetic */ zzdoo zzc(zzcyt zzcytVar) {
        this.zze = zzcytVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdoo
    public final /* synthetic */ zzdoo zzd(zzdok zzdokVar) {
        this.zzd = zzdokVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdoo
    public final /* synthetic */ zzdoo zze(zzdke zzdkeVar) {
        this.zzb = zzdkeVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdoo
    public final /* synthetic */ zzdoo zzf(zzded zzdedVar) {
        this.zzc = zzdedVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdoo
    /* renamed from: zzg */
    public final zzdop zzh() {
        zzgpz.zzc(this.zzb, zzdke.class);
        zzgpz.zzc(this.zzc, zzded.class);
        zzgpz.zzc(this.zzd, zzdok.class);
        zzgpz.zzc(this.zze, zzcyt.class);
        return new zzcrq(this.zza, this.zze, this.zzd, new zzdca(), new zzffb(), new zzddl(), new zzdzm(), this.zzb, this.zzc, new zzfff(), null, this.zzf, this.zzg, null);
    }
}
