package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzm;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzchp.class */
public final class zzchp implements zzm {
    private final /* synthetic */ zzchq zzgjv;

    public zzchp(zzchq zzchqVar) {
        this.zzgjv = zzchqVar;
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzkn() {
        zzbts zzbtsVar;
        zzbtsVar = this.zzgjv.zzgjw;
        zzbtsVar.onPause();
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzko() {
        zzbts zzbtsVar;
        zzbtsVar = this.zzgjv.zzgjw;
        zzbtsVar.onResume();
    }
}
