package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcty.class */
final class zzcty implements zzdvr {
    private final zzcui zza;
    private zzdke zzb;
    private zzded zzc;
    private zzfbi zzd;
    private zzfaj zze;

    public /* synthetic */ zzcty(zzcui zzcuiVar, zzctx zzctxVar) {
        this.zza = zzcuiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzddz
    public final /* synthetic */ zzddz<zzdvs> zza(zzfaj zzfajVar) {
        this.zze = zzfajVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzddz
    public final /* synthetic */ zzddz<zzdvs> zzb(zzfbi zzfbiVar) {
        this.zzd = zzfbiVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdvr
    public final /* synthetic */ zzdvr zzc(zzdke zzdkeVar) {
        this.zzb = zzdkeVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdvr
    public final /* synthetic */ zzdvr zzd(zzded zzdedVar) {
        this.zzc = zzdedVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdvr
    /* renamed from: zze */
    public final zzdvs zzh() {
        zzgpz.zzc(this.zzb, zzdke.class);
        zzgpz.zzc(this.zzc, zzded.class);
        return new zzcua(this.zza, new zzdca(), new zzffb(), new zzddl(), new zzdzm(), this.zzb, this.zzc, new zzfff(), null, this.zzd, this.zze, null);
    }
}
