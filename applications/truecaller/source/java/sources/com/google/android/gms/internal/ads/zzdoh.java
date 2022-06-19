package com.google.android.gms.internal.ads;

import p1727n3.p1788g.C26174a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdoh.class */
public final class zzdoh implements zzdbw {
    private final zzdmm zza;
    private final zzdmr zzb;

    public zzdoh(zzdmm zzdmmVar, zzdmr zzdmrVar) {
        this.zza = zzdmmVar;
        this.zzb = zzdmrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdbw
    public final void zzg() {
        if (this.zza.zzU() == null) {
            return;
        }
        zzcml zzT = this.zza.zzT();
        zzcml zzR = this.zza.zzR();
        if (zzT != null) {
            zzR = zzT;
        } else if (zzR == null) {
            zzR = null;
        }
        if (!this.zzb.zzd() || zzR == null) {
            return;
        }
        zzR.zze("onSdkImpression", new C26174a());
    }
}
