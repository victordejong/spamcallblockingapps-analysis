package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdji.class */
public final /* synthetic */ class zzdji implements Runnable {
    private final zzvg zzgzk;
    private final zzdjg zzhgn;

    public zzdji(zzdjg zzdjgVar, zzvg zzvgVar) {
        this.zzhgn = zzdjgVar;
        this.zzgzk = zzvgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdjg zzdjgVar = this.zzhgn;
        zzdje.zzc(zzdjgVar.zzhgl).zzc(this.zzgzk);
    }
}
