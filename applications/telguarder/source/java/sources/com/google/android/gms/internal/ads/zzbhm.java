package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhm.class */
final class zzbhm implements zzbmu {
    private zzbqx zzeyy;
    private zzdnl zzeyz;
    private zzblu zzeza;
    private zzcaq zzezb;
    private zzdkv zzezc;
    private zzdjx zzezd;
    private zzbwg zzezg;
    private final /* synthetic */ zzbgz zzffq;
    private zzcxa zzfmf;
    private zzbnq zzfmg;

    /* JADX INFO: Access modifiers changed from: private */
    public zzbhm(zzbgz zzbgzVar) {
        this.zzffq = zzbgzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbmu
    public final /* synthetic */ zzbmu zza(zzbnq zzbnqVar) {
        this.zzfmg = (zzbnq) zzeqh.checkNotNull(zzbnqVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbmu
    public final /* synthetic */ zzbmu zza(zzcxa zzcxaVar) {
        this.zzfmf = (zzcxa) zzeqh.checkNotNull(zzcxaVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final /* synthetic */ zzbqy<zzbmr> zza(zzdjx zzdjxVar) {
        this.zzezd = zzdjxVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final /* synthetic */ zzbqy<zzbmr> zza(zzdkv zzdkvVar) {
        this.zzezc = zzdkvVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final /* synthetic */ zzbqy<zzbmr> zza(zzdnl zzdnlVar) {
        this.zzeyz = zzdnlVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbmu
    /* renamed from: zzahk */
    public final zzbmr zzagm() {
        zzeqh.zza(this.zzezg, zzbwg.class);
        zzeqh.zza(this.zzeyy, zzbqx.class);
        zzeqh.zza(this.zzfmf, zzcxa.class);
        zzeqh.zza(this.zzfmg, zzbnq.class);
        zzeqh.zza(this.zzeza, zzblu.class);
        zzeqh.zza(this.zzezb, zzcaq.class);
        return new zzbhp(this.zzffq, this.zzeza, this.zzezb, new zzbpa(), new zzdon(), new zzbqh(), new zzcle(), this.zzezg, this.zzeyy, new zzdor(), this.zzfmf, this.zzfmg, this.zzeyz, this.zzezc, this.zzezd);
    }

    @Override // com.google.android.gms.internal.ads.zzbmu
    public final /* synthetic */ zzbmu zzb(zzcaq zzcaqVar) {
        this.zzezb = (zzcaq) zzeqh.checkNotNull(zzcaqVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbmu
    public final /* synthetic */ zzbmu zzd(zzblu zzbluVar) {
        this.zzeza = (zzblu) zzeqh.checkNotNull(zzbluVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbmu
    public final /* synthetic */ zzbmu zzd(zzbqx zzbqxVar) {
        this.zzeyy = (zzbqx) zzeqh.checkNotNull(zzbqxVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbmu
    public final /* synthetic */ zzbmu zzd(zzbwg zzbwgVar) {
        this.zzezg = (zzbwg) zzeqh.checkNotNull(zzbwgVar);
        return this;
    }
}
