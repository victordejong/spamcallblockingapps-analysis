package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmt.class */
final class zzdmt implements zzcze<zzchb> {
    private final /* synthetic */ zzdmq zzhiv;

    public zzdmt(zzdmq zzdmqVar) {
        this.zzhiv = zzdmqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final /* synthetic */ void onSuccess(zzchb zzchbVar) {
        zzchb zzchbVar2;
        zzchb zzchbVar3 = zzchbVar;
        synchronized (this.zzhiv) {
            this.zzhiv.zzhir = zzchbVar3;
            zzchbVar2 = this.zzhiv.zzhir;
            zzchbVar2.zzakb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final void zzasi() {
        synchronized (this.zzhiv) {
            this.zzhiv.zzhir = null;
        }
    }
}
