package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcqh.class */
public final class zzcqh implements zzdke {
    private final zzcqu zza;
    private zzdgp zzb;
    private zzdao zzc;
    private zzejq zzd;
    private zzexu zze;
    private zzewv zzf;

    public /* synthetic */ zzcqh(zzcqu zzcquVar, zzcql zzcqlVar) {
        this.zza = zzcquVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdke
    /* renamed from: zza */
    public final zzdkf zzf() {
        zzgli.zzc(this.zzb, zzdgp.class);
        zzgli.zzc(this.zzc, zzdao.class);
        zzgli.zzc(this.zzd, zzejq.class);
        return new zzcqi(this.zza, new zzcyl(), new zzfbp(), new zzczw(), new zzdvv(), this.zzb, this.zzc, new zzfbt(), this.zzd, null, this.zze, this.zzf, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdke
    public final /* bridge */ /* synthetic */ zzdke zzb(zzejq zzejqVar) {
        this.zzd = zzejqVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdke
    public final /* bridge */ /* synthetic */ zzdke zzc(zzdao zzdaoVar) {
        this.zzc = zzdaoVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdke
    public final /* bridge */ /* synthetic */ zzdke zzd(zzdgp zzdgpVar) {
        this.zzb = zzdgpVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final /* bridge */ /* synthetic */ zzdak<zzdkf> zzg(zzewv zzewvVar) {
        this.zzf = zzewvVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final /* bridge */ /* synthetic */ zzdak<zzdkf> zzh(zzexu zzexuVar) {
        this.zze = zzexuVar;
        return this;
    }
}
