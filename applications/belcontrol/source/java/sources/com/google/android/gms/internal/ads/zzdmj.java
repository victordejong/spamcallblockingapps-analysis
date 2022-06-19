package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmj.class */
public final /* synthetic */ class zzdmj implements Runnable {
    private final zzvg zzgzk;
    private final zzdmh zzhio;

    public zzdmj(zzdmh zzdmhVar, zzvg zzvgVar) {
        this.zzhio = zzdmhVar;
        this.zzgzk = zzvgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdmh zzdmhVar = this.zzhio;
        zzdmc.zza(zzdmhVar.zzhin).zzc(this.zzgzk);
    }
}
