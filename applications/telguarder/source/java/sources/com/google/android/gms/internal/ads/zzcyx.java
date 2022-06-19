package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcyx.class */
public final class zzcyx implements zzcze<zzbnt> {
    private final /* synthetic */ zzcyy zzgyw;

    public zzcyx(zzcyy zzcyyVar) {
        this.zzgyw = zzcyyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final /* synthetic */ void onSuccess(zzbnt zzbntVar) {
        zzbnt zzbntVar2 = zzbntVar;
        synchronized (this.zzgyw) {
            this.zzgyw.zzafd = false;
            this.zzgyw.zzadv = zzbntVar2.zzakr();
            zzbntVar2.zzakb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final void zzasi() {
        synchronized (this.zzgyw) {
            this.zzgyw.zzafd = false;
        }
    }
}
