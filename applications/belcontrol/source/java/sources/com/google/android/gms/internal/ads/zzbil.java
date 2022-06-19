package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbil.class */
public final /* synthetic */ class zzbil implements Runnable {
    private final zzbim zzfqh;
    private final Runnable zzfqi;

    public zzbil(zzbim zzbimVar, Runnable runnable) {
        this.zzfqh = zzbimVar;
        this.zzfqi = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzazp.zzeig.execute(new Runnable(this.zzfqh, this.zzfqi) { // from class: com.google.android.gms.internal.ads.zzbio
            private final zzbim zzfqh;
            private final Runnable zzfqi;

            {
                this.zzfqh = zzbimVar;
                this.zzfqi = runnable;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfqh.zzd(this.zzfqi);
            }
        });
    }
}
