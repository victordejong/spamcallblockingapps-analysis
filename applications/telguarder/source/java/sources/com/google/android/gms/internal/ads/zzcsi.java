package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsi.class */
final /* synthetic */ class zzcsi implements zzbnu {
    private final zzbeb zzeuk;

    private zzcsi(zzbeb zzbebVar) {
        this.zzeuk = zzbebVar;
    }

    public static zzbnu zzm(zzbeb zzbebVar) {
        return new zzcsi(zzbebVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final zzzc getVideoController() {
        return this.zzeuk.zzabc();
    }
}
