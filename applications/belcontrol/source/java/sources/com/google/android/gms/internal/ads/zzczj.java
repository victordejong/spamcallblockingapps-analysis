package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzczj.class */
public final /* synthetic */ class zzczj implements Runnable {
    private final zzczh zzgzj;
    private final zzvg zzgzk;

    public zzczj(zzczh zzczhVar, zzvg zzvgVar) {
        this.zzgzj = zzczhVar;
        this.zzgzk = zzvgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzczh zzczhVar = this.zzgzj;
        zzczg.zza(zzczhVar.zzgzi).zzasr().zzc(this.zzgzk);
    }
}
