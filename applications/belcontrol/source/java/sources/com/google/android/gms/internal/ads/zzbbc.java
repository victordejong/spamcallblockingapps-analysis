package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbc.class */
public final class zzbbc implements Runnable {
    private final /* synthetic */ zzbax zzekp;

    public zzbbc(zzbax zzbaxVar) {
        this.zzekp = zzbaxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbax.zza(this.zzekp, "surfaceCreated", new String[0]);
    }
}
