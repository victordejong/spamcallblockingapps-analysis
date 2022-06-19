package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcik.class */
public final /* synthetic */ class zzcik implements Runnable {
    private final zzcii zza;

    private zzcik(zzcii zzciiVar) {
        this.zza = zzciiVar;
    }

    public static Runnable zza(zzcii zzciiVar) {
        return new zzcik(zzciiVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzg();
    }
}
