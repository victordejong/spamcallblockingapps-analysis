package com.google.android.gms.internal.ads;

import javax.annotation.ParametersAreNonnullByDefault;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgz.class */
public final class zzcgz implements zzair {
    private final zzbsm zzfwu;
    private final zzavj zzgjq;
    private final String zzgjr;
    private final String zzgjs;

    public zzcgz(zzbsm zzbsmVar, zzdmw zzdmwVar) {
        this.zzfwu = zzbsmVar;
        this.zzgjq = zzdmwVar.zzdwm;
        this.zzgjr = zzdmwVar.zzdmf;
        this.zzgjs = zzdmwVar.zzdmg;
    }

    @Override // com.google.android.gms.internal.ads.zzair
    @ParametersAreNonnullByDefault
    public final void zza(zzavj zzavjVar) {
        int i;
        String str;
        zzavj zzavjVar2 = this.zzgjq;
        if (zzavjVar2 != null) {
            zzavjVar = zzavjVar2;
        }
        if (zzavjVar != null) {
            String str2 = zzavjVar.type;
            i = zzavjVar.zzdzc;
            str = str2;
        } else {
            str = "";
            i = 1;
        }
        this.zzfwu.zzb(new zzaui(str, i), this.zzgjr, this.zzgjs);
    }

    @Override // com.google.android.gms.internal.ads.zzair
    public final void zzuc() {
        this.zzfwu.onRewardedVideoStarted();
    }

    @Override // com.google.android.gms.internal.ads.zzair
    public final void zzud() {
        this.zzfwu.onRewardedVideoCompleted();
    }
}
