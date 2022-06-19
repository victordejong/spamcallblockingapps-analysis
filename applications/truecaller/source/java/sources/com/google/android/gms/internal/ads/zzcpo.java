package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpo.class */
public final class zzcpo implements zzcuu {
    private final zzcqu zza;
    private zzdgp zzb;
    private zzdao zzc;
    private zzexu zzd;
    private zzewv zze;

    public /* synthetic */ zzcpo(zzcqu zzcquVar, zzcql zzcqlVar) {
        this.zza = zzcquVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcuu
    public final /* bridge */ /* synthetic */ zzcuu zza(zzdao zzdaoVar) {
        this.zzc = zzdaoVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcuu
    public final /* bridge */ /* synthetic */ zzcuu zzb(zzdgp zzdgpVar) {
        this.zzb = zzdgpVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final /* bridge */ /* synthetic */ zzcuv zzf() {
        zzgli.zzc(this.zzb, zzdgp.class);
        zzgli.zzc(this.zzc, zzdao.class);
        return new zzcpp(this.zza, new zzcyl(), new zzfbp(), new zzczw(), new zzdvv(), this.zzb, this.zzc, new zzfbt(), null, this.zzd, this.zze, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final /* bridge */ /* synthetic */ zzdak<zzcuv> zzg(zzewv zzewvVar) {
        this.zze = zzewvVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final /* bridge */ /* synthetic */ zzdak<zzcuv> zzh(zzexu zzexuVar) {
        this.zzd = zzexuVar;
        return this;
    }
}
