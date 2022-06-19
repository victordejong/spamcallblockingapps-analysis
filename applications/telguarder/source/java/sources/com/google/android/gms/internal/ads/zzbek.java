package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbek.class */
final class zzbek implements zzq {
    private zzq zzdsv;
    private zzbeb zzerq;

    public zzbek(zzbeb zzbebVar, zzq zzqVar) {
        this.zzerq = zzbebVar;
        this.zzdsv = zzqVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
        zzq zzqVar = this.zzdsv;
        if (zzqVar != null) {
            zzqVar.onUserLeaveHint();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zznVar) {
        zzq zzqVar = this.zzdsv;
        if (zzqVar != null) {
            zzqVar.zza(zznVar);
        }
        this.zzerq.zzacq();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
        zzq zzqVar = this.zzdsv;
        if (zzqVar != null) {
            zzqVar.zzvo();
        }
        this.zzerq.zzwb();
    }
}
