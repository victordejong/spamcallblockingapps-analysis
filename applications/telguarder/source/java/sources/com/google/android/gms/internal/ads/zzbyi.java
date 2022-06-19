package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyi.class */
public final class zzbyi implements zzbyf {
    private final List<String> zzdwa;
    private final zzdss zzfrf;
    private boolean zzgbc;

    public zzbyi(zzdmw zzdmwVar, zzdss zzdssVar) {
        this.zzdwa = zzdmwVar.zzdwa;
        this.zzfrf = zzdssVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbyf
    public final void zzamr() {
        if (!this.zzgbc) {
            this.zzfrf.zzk(this.zzdwa);
            this.zzgbc = true;
        }
    }
}
