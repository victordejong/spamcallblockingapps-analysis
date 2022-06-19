package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.p058h5.OnH5AdsEventListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsl.class */
public final class zzbsl extends zzbsn {
    private final OnH5AdsEventListener zza;

    public zzbsl(OnH5AdsEventListener onH5AdsEventListener) {
        this.zza = onH5AdsEventListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbso
    public final void zzb(String str) {
        this.zza.onH5AdsEvent(str);
    }
}
