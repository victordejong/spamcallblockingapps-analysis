package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdLoadCallback;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdc.class */
public final class zzbdc<AdT> extends zzbfc {
    private final AdLoadCallback<AdT> zza;
    private final AdT zzb;

    public zzbdc(AdLoadCallback<AdT> adLoadCallback, AdT adt) {
        this.zza = adLoadCallback;
        this.zzb = adt;
    }

    @Override // com.google.android.gms.internal.ads.zzbfd
    public final void zzb() {
        AdT adt;
        AdLoadCallback<AdT> adLoadCallback = this.zza;
        if (adLoadCallback == null || (adt = this.zzb) == null) {
            return;
        }
        adLoadCallback.onAdLoaded(adt);
    }

    @Override // com.google.android.gms.internal.ads.zzbfd
    public final void zzc(zzbcz zzbczVar) {
        AdLoadCallback<AdT> adLoadCallback = this.zza;
        if (adLoadCallback != null) {
            adLoadCallback.onAdFailedToLoad(zzbczVar.zzb());
        }
    }
}
