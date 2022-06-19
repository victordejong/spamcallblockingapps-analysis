package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbnt.class */
public class zzbnt {
    protected final zzdmw zzesr;
    protected final zzdnl zzfrd;
    private final zzbsg zzfwe;
    private final zzbsw zzfwf;
    private final zzdkk zzfwg;
    private final zzbrh zzfwh;
    private final zzbud zzfwi;

    public zzbnt(zzbnw zzbnwVar) {
        zzdnl zzdnlVar;
        zzdmw zzdmwVar;
        zzbsg zzbsgVar;
        zzbsw zzbswVar;
        zzdkk zzdkkVar;
        zzbrh zzbrhVar;
        zzbud zzbudVar;
        zzdnlVar = zzbnwVar.zzfrd;
        this.zzfrd = zzdnlVar;
        zzdmwVar = zzbnwVar.zzesr;
        this.zzesr = zzdmwVar;
        zzbsgVar = zzbnwVar.zzfwe;
        this.zzfwe = zzbsgVar;
        zzbswVar = zzbnwVar.zzfwf;
        this.zzfwf = zzbswVar;
        zzdkkVar = zzbnwVar.zzfwg;
        this.zzfwg = zzdkkVar;
        zzbrhVar = zzbnwVar.zzfwh;
        this.zzfwh = zzbrhVar;
        zzbudVar = zzbnwVar.zzfwi;
        this.zzfwi = zzbudVar;
    }

    public void destroy() {
        this.zzfwe.zzcd(null);
    }

    public void zzakb() {
        this.zzfwf.onAdLoaded();
    }

    public final zzbsg zzakq() {
        return this.zzfwe;
    }

    public final zzbrh zzakr() {
        return this.zzfwh;
    }

    public final zzdkk zzaks() {
        return this.zzfwg;
    }

    public final zzbve zzakt() {
        return this.zzfwi.zzakt();
    }
}
