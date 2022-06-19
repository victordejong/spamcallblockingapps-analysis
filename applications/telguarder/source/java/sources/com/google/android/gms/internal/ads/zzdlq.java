package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdlq.class */
final /* synthetic */ class zzdlq implements zzdkc {
    static final zzdkc zzgya = new zzdlq();

    private zzdlq() {
    }

    @Override // com.google.android.gms.internal.ads.zzdkc
    public final void zzp(Object obj) {
        ((AdMetadataListener) obj).onAdMetadataChanged();
    }
}
