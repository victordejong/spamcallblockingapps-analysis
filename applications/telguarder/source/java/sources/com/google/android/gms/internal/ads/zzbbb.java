package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbb.class */
final class zzbbb implements Runnable {
    private final /* synthetic */ zzbax zzekp;

    public zzbbb(zzbax zzbaxVar) {
        this.zzekp = zzbaxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzekp.zzd("surfaceDestroyed", new String[0]);
    }
}
