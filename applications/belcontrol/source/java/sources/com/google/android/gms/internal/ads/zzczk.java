package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzczk.class */
public final /* synthetic */ class zzczk implements Runnable {
    private final zzczh zzgzj;

    public zzczk(zzczh zzczhVar) {
        this.zzgzj = zzczhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzczg.zza(this.zzgzj.zzgzi).zzasq().onAdLoaded();
    }
}
