package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdLoadCallback;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzvh.class */
public final class zzvh<AdT> extends zzxb {
    private final AdLoadCallback<AdT> zzchk;
    private final AdT zzchl;

    public zzvh(AdLoadCallback<AdT> adLoadCallback, AdT adt) {
        this.zzchk = adLoadCallback;
        this.zzchl = adt;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void onAdLoaded() {
        AdT adt;
        AdLoadCallback<AdT> adLoadCallback = this.zzchk;
        if (adLoadCallback == null || (adt = this.zzchl) == null) {
            return;
        }
        adLoadCallback.onAdLoaded(adt);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void zzc(zzvg zzvgVar) {
        AdLoadCallback<AdT> adLoadCallback = this.zzchk;
        if (adLoadCallback != null) {
            adLoadCallback.onAdFailedToLoad(zzvgVar.zzqc());
        }
    }
}
