package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcvq.class */
final /* synthetic */ class zzcvq implements Runnable {
    private final zzcig zzgtf;

    private zzcvq(zzcig zzcigVar) {
        this.zzgtf = zzcigVar;
    }

    public static Runnable zza(zzcig zzcigVar) {
        return new zzcvq(zzcigVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzgtf.zzapr();
    }
}
