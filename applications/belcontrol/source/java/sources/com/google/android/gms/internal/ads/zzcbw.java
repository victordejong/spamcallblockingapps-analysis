package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbw.class */
public final /* synthetic */ class zzcbw implements Runnable {
    private final zzccl zzgdu;

    private zzcbw(zzccl zzcclVar) {
        this.zzgdu = zzcclVar;
    }

    public static Runnable zza(zzccl zzcclVar) {
        return new zzcbw(zzcclVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzgdu.zzanl();
    }
}
