package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzalj.class */
final /* synthetic */ class zzalj implements Runnable {
    private final zzakm zzdjx;

    private zzalj(zzakm zzakmVar) {
        this.zzdjx = zzakmVar;
    }

    public static Runnable zzb(zzakm zzakmVar) {
        return new zzalj(zzakmVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdjx.destroy();
    }
}
