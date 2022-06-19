package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcyw.class */
public final class zzcyw implements zzcze<zzbyy> {
    private final /* synthetic */ zzcyt zzgyv;

    public zzcyw(zzcyt zzcytVar) {
        this.zzgyv = zzcytVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final /* synthetic */ void onSuccess(zzbyy zzbyyVar) {
        zzbyy zzbyyVar2;
        zzbyy zzbyyVar3 = zzbyyVar;
        synchronized (this.zzgyv) {
            this.zzgyv.zzgyn = zzbyyVar3;
            zzbyyVar2 = this.zzgyv.zzgyn;
            zzbyyVar2.zzakb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final void zzasi() {
        synchronized (this.zzgyv) {
            this.zzgyv.zzgyn = null;
        }
    }
}
