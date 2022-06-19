package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmm.class */
public final class zzdmm implements zzcze<zzchb> {
    private final /* synthetic */ zzdmk zzhis;

    public zzdmm(zzdmk zzdmkVar) {
        this.zzhis = zzdmkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final /* synthetic */ void onSuccess(zzchb zzchbVar) {
        zzchb zzchbVar2;
        zzchb zzchbVar3 = zzchbVar;
        synchronized (this.zzhis) {
            this.zzhis.zzhir = zzchbVar3;
            zzchbVar2 = this.zzhis.zzhir;
            zzchbVar2.zzakb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final void zzasi() {
        synchronized (this.zzhis) {
            this.zzhis.zzhir = null;
        }
    }
}
