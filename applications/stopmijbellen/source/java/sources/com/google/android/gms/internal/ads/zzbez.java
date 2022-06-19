package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdLoadCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbez.class */
public final class zzbez<AdT> extends zzbgz {
    private final AdLoadCallback<AdT> zza;
    private final AdT zzb;

    public zzbez(AdLoadCallback<AdT> adLoadCallback, AdT adt) {
        this.zza = adLoadCallback;
        this.zzb = adt;
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final void zzb(zzbew zzbewVar) {
        AdLoadCallback<AdT> adLoadCallback = this.zza;
        if (adLoadCallback != null) {
            adLoadCallback.onAdFailedToLoad(zzbewVar.zzb());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final void zzc() {
        AdT adt;
        AdLoadCallback<AdT> adLoadCallback = this.zza;
        if (adLoadCallback == null || (adt = this.zzb) == null) {
            return;
        }
        adLoadCallback.onAdLoaded(adt);
    }
}
