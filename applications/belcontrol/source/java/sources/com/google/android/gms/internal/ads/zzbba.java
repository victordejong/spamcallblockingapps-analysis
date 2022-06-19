package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbba.class */
public final /* synthetic */ class zzbba implements Runnable {
    private final zzbav zzeko;

    private zzbba(zzbav zzbavVar) {
        this.zzeko = zzbavVar;
    }

    public static Runnable zza(zzbav zzbavVar) {
        return new zzbba(zzbavVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzeko.stop();
    }
}
