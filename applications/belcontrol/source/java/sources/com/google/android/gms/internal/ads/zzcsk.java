package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsk.class */
public final /* synthetic */ class zzcsk implements Runnable {
    private final zzbeb zzeuk;

    private zzcsk(zzbeb zzbebVar) {
        this.zzeuk = zzbebVar;
    }

    public static Runnable zze(zzbeb zzbebVar) {
        return new zzcsk(zzbebVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzeuk.zzadk();
    }
}
