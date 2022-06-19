package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzche.class */
public final /* synthetic */ class zzche implements Runnable {
    private final zzbeb zzeuk;

    private zzche(zzbeb zzbebVar) {
        this.zzeuk = zzbebVar;
    }

    public static Runnable zze(zzbeb zzbebVar) {
        return new zzche(zzbebVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzeuk.destroy();
    }
}
