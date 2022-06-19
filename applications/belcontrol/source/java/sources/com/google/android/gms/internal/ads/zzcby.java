package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcby.class */
public final /* synthetic */ class zzcby implements Runnable {
    private final zzcbu zzgdg;
    private final zzcdx zzgdv;

    public zzcby(zzcbu zzcbuVar, zzcdx zzcdxVar) {
        this.zzgdg = zzcbuVar;
        this.zzgdv = zzcdxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzgdg.zzf(this.zzgdv);
    }
}
