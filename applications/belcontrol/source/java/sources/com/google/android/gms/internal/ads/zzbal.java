package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbal.class */
public final /* synthetic */ class zzbal implements Runnable {
    private final int zzefe;
    private final zzbam zzeiv;

    public zzbal(zzbam zzbamVar, int i) {
        this.zzeiv = zzbamVar;
        this.zzefe = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzeiv.zzdj(this.zzefe);
    }
}
