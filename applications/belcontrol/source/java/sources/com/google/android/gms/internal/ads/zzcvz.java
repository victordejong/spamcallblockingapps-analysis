package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcvz.class */
public final /* synthetic */ class zzcvz implements Runnable {
    private final zzdmw zzfva;
    private final zzdnl zzghw;
    private final zzcwa zzgvu;
    private final zzcrl zzgvv;

    public zzcvz(zzcwa zzcwaVar, zzdnl zzdnlVar, zzdmw zzdmwVar, zzcrl zzcrlVar) {
        this.zzgvu = zzcwaVar;
        this.zzghw = zzdnlVar;
        this.zzfva = zzdmwVar;
        this.zzgvv = zzcrlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcwa zzcwaVar = this.zzgvu;
        zzcvy.zza(zzcwaVar.zzgvy, this.zzghw, this.zzfva, this.zzgvv);
    }
}
