package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzalf.class */
public final /* synthetic */ class zzalf implements Runnable {
    private final zzakm zzdjx;

    private zzalf(zzakm zzakmVar) {
        this.zzdjx = zzakmVar;
    }

    public static Runnable zzb(zzakm zzakmVar) {
        return new zzalf(zzakmVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdjx.destroy();
    }
}
