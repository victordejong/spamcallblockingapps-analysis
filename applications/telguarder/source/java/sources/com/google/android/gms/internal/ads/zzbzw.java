package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbzw.class */
public final class zzbzw implements zzq {
    private final zzbtj zzgbl;
    private final zzbxw zzgbm;

    public zzbzw(zzbtj zzbtjVar, zzbxw zzbxwVar) {
        this.zzgbl = zzbtjVar;
        this.zzgbm = zzbxwVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
        this.zzgbl.onPause();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
        this.zzgbl.onResume();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
        this.zzgbl.onUserLeaveHint();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zznVar) {
        this.zzgbl.zza(zznVar);
        this.zzgbm.onHide();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
        this.zzgbl.zzvo();
        this.zzgbm.zzamp();
    }
}
