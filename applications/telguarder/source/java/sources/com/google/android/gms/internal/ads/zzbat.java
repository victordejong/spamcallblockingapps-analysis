package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbat.class */
final class zzbat implements Runnable {
    private final /* synthetic */ zzbam zzejo;

    public zzbat(zzbam zzbamVar) {
        this.zzejo = zzbamVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbaw zzbawVar;
        zzbaw zzbawVar2;
        zzbawVar = this.zzejo.zzejm;
        if (zzbawVar != null) {
            zzbawVar2 = this.zzejo.zzejm;
            zzbawVar2.onPaused();
        }
    }
}
