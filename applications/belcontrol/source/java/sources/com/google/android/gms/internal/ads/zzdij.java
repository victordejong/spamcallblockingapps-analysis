package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdij.class */
public final /* synthetic */ class zzdij implements Runnable {
    private final zzvg zzgzk;
    private final zzdig zzhfq;

    public zzdij(zzdig zzdigVar, zzvg zzvgVar) {
        this.zzhfq = zzdigVar;
        this.zzgzk = zzvgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdig zzdigVar = this.zzhfq;
        zzdif.zza(zzdigVar.zzhfp).zzc(this.zzgzk);
    }
}
