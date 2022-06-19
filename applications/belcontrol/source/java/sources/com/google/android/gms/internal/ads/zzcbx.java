package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbx.class */
public final /* synthetic */ class zzcbx implements Runnable {
    private final zzcbu zzgdg;
    private final zzcdx zzgdv;

    public zzcbx(zzcbu zzcbuVar, zzcdx zzcdxVar) {
        this.zzgdg = zzcbuVar;
        this.zzgdv = zzcdxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzgdg.zze(this.zzgdv);
    }
}
