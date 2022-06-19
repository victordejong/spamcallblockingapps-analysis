package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjn.class */
public final class zzbjn implements zzbrr {
    private final zzdnb zzfrc;
    private final zzdnl zzfrd;
    private final zzdsq zzfre;
    private final zzdss zzfrf;

    public zzbjn(zzdnl zzdnlVar, zzdss zzdssVar, zzdsq zzdsqVar) {
        this.zzfrd = zzdnlVar;
        this.zzfrf = zzdssVar;
        this.zzfre = zzdsqVar;
        this.zzfrc = zzdnlVar.zzhks.zzess;
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void zzc(zzvg zzvgVar) {
        this.zzfrf.zzk(this.zzfre.zza(this.zzfrd, (zzdmw) null, this.zzfrc.zzdms));
    }
}
