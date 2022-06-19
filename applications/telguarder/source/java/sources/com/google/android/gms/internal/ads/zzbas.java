package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbas.class */
final class zzbas implements Runnable {
    private final /* synthetic */ zzbam zzejo;
    private final /* synthetic */ int zzejs;
    private final /* synthetic */ int zzejt;

    public zzbas(zzbam zzbamVar, int i, int i2) {
        this.zzejo = zzbamVar;
        this.zzejs = i;
        this.zzejt = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbaw zzbawVar;
        zzbaw zzbawVar2;
        zzbawVar = this.zzejo.zzejm;
        if (zzbawVar != null) {
            zzbawVar2 = this.zzejo.zzejm;
            zzbawVar2.zzk(this.zzejs, this.zzejt);
        }
    }
}
