package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbas.class */
public final class zzbas implements Runnable {
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
        if (zzbam.zza(this.zzejo) != null) {
            zzbam.zza(this.zzejo).zzk(this.zzejs, this.zzejt);
        }
    }
}
