package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhj.class */
final class zzbhj implements zzbla {
    private zzbqx zzeyy;
    private zzdnl zzeyz;
    private zzdkv zzezc;
    private zzdjx zzezd;
    private zzbwg zzezg;
    private final /* synthetic */ zzbgz zzffq;

    /* JADX INFO: Access modifiers changed from: private */
    public zzbhj(zzbgz zzbgzVar) {
        this.zzffq = zzbgzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final /* synthetic */ zzbqy<zzbkx> zza(zzdjx zzdjxVar) {
        this.zzezd = zzdjxVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final /* synthetic */ zzbqy<zzbkx> zza(zzdkv zzdkvVar) {
        this.zzezc = zzdkvVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final /* synthetic */ zzbqy<zzbkx> zza(zzdnl zzdnlVar) {
        this.zzeyz = zzdnlVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final /* synthetic */ zzbkx zzagm() {
        zzeqh.zza(this.zzezg, zzbwg.class);
        zzeqh.zza(this.zzeyy, zzbqx.class);
        return new zzbhi(this.zzffq, new zzbpa(), new zzdon(), new zzbqh(), new zzcle(), this.zzezg, this.zzeyy, new zzdor(), this.zzeyz, this.zzezc, this.zzezd);
    }

    @Override // com.google.android.gms.internal.ads.zzbla
    @Deprecated
    public final /* synthetic */ zzbla zzc(zzblu zzbluVar) {
        zzeqh.checkNotNull(zzbluVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbla
    public final /* synthetic */ zzbla zzc(zzbqx zzbqxVar) {
        this.zzeyy = (zzbqx) zzeqh.checkNotNull(zzbqxVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbla
    public final /* synthetic */ zzbla zzc(zzbwg zzbwgVar) {
        this.zzezg = (zzbwg) zzeqh.checkNotNull(zzbwgVar);
        return this;
    }
}
