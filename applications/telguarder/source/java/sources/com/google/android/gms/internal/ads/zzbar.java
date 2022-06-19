package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbar.class */
final class zzbar implements Runnable {
    private final /* synthetic */ zzbam zzejo;

    public zzbar(zzbam zzbamVar) {
        this.zzejo = zzbamVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbaw zzbawVar;
        zzbaw zzbawVar2;
        zzbaw zzbawVar3;
        zzbawVar = this.zzejo.zzejm;
        if (zzbawVar != null) {
            zzbawVar2 = this.zzejo.zzejm;
            zzbawVar2.onPaused();
            zzbawVar3 = this.zzejo.zzejm;
            zzbawVar3.zzaan();
        }
    }
}
