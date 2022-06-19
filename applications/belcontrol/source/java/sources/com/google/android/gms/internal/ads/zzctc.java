package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzctc.class */
public final /* synthetic */ class zzctc implements Runnable {
    private final zzdmw zzfva;
    private final zzdnl zzghw;
    private final zzcta zzgub;

    public zzctc(zzcta zzctaVar, zzdnl zzdnlVar, zzdmw zzdmwVar) {
        this.zzgub = zzctaVar;
        this.zzghw = zzdnlVar;
        this.zzfva = zzdmwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzgub.zzd(this.zzghw, this.zzfva);
    }
}
