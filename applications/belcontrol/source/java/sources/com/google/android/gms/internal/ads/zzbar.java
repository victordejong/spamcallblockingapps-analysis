package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbar.class */
public final class zzbar implements Runnable {
    private final /* synthetic */ zzbam zzejo;

    public zzbar(zzbam zzbamVar) {
        this.zzejo = zzbamVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (zzbam.zza(this.zzejo) != null) {
            zzbam.zza(this.zzejo).onPaused();
            zzbam.zza(this.zzejo).zzaan();
        }
    }
}
