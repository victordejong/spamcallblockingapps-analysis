package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsj.class */
public final /* synthetic */ class zzcsj implements Runnable {
    private final zzbeb zzggw;
    private final zzcsg zzgtn;

    public zzcsj(zzcsg zzcsgVar, zzbeb zzbebVar) {
        this.zzgtn = zzcsgVar;
        this.zzggw = zzbebVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzgtn.zzl(this.zzggw);
    }
}
