package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdjj.class */
final /* synthetic */ class zzdjj implements Runnable {
    private final zzcxy zzgyy;

    private zzdjj(zzcxy zzcxyVar) {
        this.zzgyy = zzcxyVar;
    }

    public static Runnable zzb(zzcxy zzcxyVar) {
        return new zzdjj(zzcxyVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzgyy.onAdLoaded();
    }
}
