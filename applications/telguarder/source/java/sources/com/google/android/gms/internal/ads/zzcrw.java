package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcrw.class */
final /* synthetic */ class zzcrw implements Runnable {
    private final zzcig zzgtf;

    private zzcrw(zzcig zzcigVar) {
        this.zzgtf = zzcigVar;
    }

    public static Runnable zza(zzcig zzcigVar) {
        return new zzcrw(zzcigVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzgtf.zzapr();
    }
}
