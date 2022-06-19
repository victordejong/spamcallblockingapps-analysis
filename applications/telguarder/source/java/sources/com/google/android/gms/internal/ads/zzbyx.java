package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyx.class */
final /* synthetic */ class zzbyx implements Runnable {
    private final zzbeb zzeuk;

    private zzbyx(zzbeb zzbebVar) {
        this.zzeuk = zzbebVar;
    }

    public static Runnable zze(zzbeb zzbebVar) {
        return new zzbyx(zzbebVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzeuk.destroy();
    }
}
