package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpj.class */
public final class zzcpj implements zzdla {
    private final zzcqu zza;
    private zzdgp zzb;
    private zzdao zzc;
    private zzdkw zzd;
    private zzcve zze;
    private zzexu zzf;
    private zzewv zzg;

    public /* synthetic */ zzcpj(zzcqu zzcquVar, zzcql zzcqlVar) {
        this.zza = zzcquVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdla
    /* renamed from: zza */
    public final zzdlb zzf() {
        zzgli.zzc(this.zzb, zzdgp.class);
        zzgli.zzc(this.zzc, zzdao.class);
        zzgli.zzc(this.zzd, zzdkw.class);
        zzgli.zzc(this.zze, zzcve.class);
        return new zzcpk(this.zza, this.zze, this.zzd, new zzcyl(), new zzfbp(), new zzczw(), new zzdvv(), this.zzb, this.zzc, new zzfbt(), null, this.zzf, this.zzg, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdla
    public final /* bridge */ /* synthetic */ zzdla zzb(zzcve zzcveVar) {
        this.zze = zzcveVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdla
    public final /* bridge */ /* synthetic */ zzdla zzc(zzdkw zzdkwVar) {
        this.zzd = zzdkwVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdla
    public final /* bridge */ /* synthetic */ zzdla zzd(zzdao zzdaoVar) {
        this.zzc = zzdaoVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdla
    public final /* bridge */ /* synthetic */ zzdla zze(zzdgp zzdgpVar) {
        this.zzb = zzdgpVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final /* bridge */ /* synthetic */ zzdak<zzdlb> zzg(zzewv zzewvVar) {
        this.zzg = zzewvVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final /* bridge */ /* synthetic */ zzdak<zzdlb> zzh(zzexu zzexuVar) {
        this.zzf = zzexuVar;
        return this;
    }
}
