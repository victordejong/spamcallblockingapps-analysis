package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbc.class */
final class zzbbc implements Runnable {
    private final /* synthetic */ zzbax zzekp;

    public zzbbc(zzbax zzbaxVar) {
        this.zzekp = zzbaxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzekp.zzd("surfaceCreated", new String[0]);
    }
}
