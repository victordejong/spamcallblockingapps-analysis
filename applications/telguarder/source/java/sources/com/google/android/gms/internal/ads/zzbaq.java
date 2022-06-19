package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbaq.class */
public final class zzbaq implements Runnable {
    private final /* synthetic */ zzbam zzejo;
    private final /* synthetic */ String zzejq;
    private final /* synthetic */ String zzejr;

    public zzbaq(zzbam zzbamVar, String str, String str2) {
        this.zzejo = zzbamVar;
        this.zzejq = str;
        this.zzejr = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbaw zzbawVar;
        zzbaw zzbawVar2;
        zzbawVar = this.zzejo.zzejm;
        if (zzbawVar != null) {
            zzbawVar2 = this.zzejo.zzejm;
            zzbawVar2.zzl(this.zzejq, this.zzejr);
        }
    }
}
