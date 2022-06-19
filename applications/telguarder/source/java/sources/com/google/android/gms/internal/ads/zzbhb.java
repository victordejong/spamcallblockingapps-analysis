package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhb.class */
final class zzbhb implements zzcat {
    private zzbqx zzeyy;
    private zzdnl zzeyz;
    private zzblu zzeza;
    private zzcaq zzezb;
    private zzdkv zzezc;
    private zzdjx zzezd;
    private zzbwg zzezg;
    private final /* synthetic */ zzbgz zzffq;

    /* JADX INFO: Access modifiers changed from: private */
    public zzbhb(zzbgz zzbgzVar) {
        this.zzffq = zzbgzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final /* synthetic */ zzbqy<zzcau> zza(zzdjx zzdjxVar) {
        this.zzezd = zzdjxVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final /* synthetic */ zzbqy<zzcau> zza(zzdkv zzdkvVar) {
        this.zzezc = zzdkvVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final /* synthetic */ zzbqy<zzcau> zza(zzdnl zzdnlVar) {
        this.zzeyz = zzdnlVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcat
    public final /* synthetic */ zzcat zza(zzblu zzbluVar) {
        this.zzeza = (zzblu) zzeqh.checkNotNull(zzbluVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcat
    public final /* synthetic */ zzcat zza(zzbqx zzbqxVar) {
        this.zzeyy = (zzbqx) zzeqh.checkNotNull(zzbqxVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcat
    public final /* synthetic */ zzcat zza(zzbwg zzbwgVar) {
        this.zzezg = (zzbwg) zzeqh.checkNotNull(zzbwgVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcat
    public final /* synthetic */ zzcat zza(zzcaq zzcaqVar) {
        this.zzezb = (zzcaq) zzeqh.checkNotNull(zzcaqVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcat
    /* renamed from: zzagl */
    public final zzcau zzagm() {
        zzeqh.zza(this.zzezg, zzbwg.class);
        zzeqh.zza(this.zzeyy, zzbqx.class);
        zzeqh.zza(this.zzezb, zzcaq.class);
        zzeqh.zza(this.zzeza, zzblu.class);
        return new zzbha(this.zzffq, this.zzeza, this.zzezb, new zzbpa(), new zzdon(), new zzbqh(), new zzcle(), this.zzezg, this.zzeyy, new zzdor(), this.zzeyz, this.zzezc, this.zzezd);
    }
}
