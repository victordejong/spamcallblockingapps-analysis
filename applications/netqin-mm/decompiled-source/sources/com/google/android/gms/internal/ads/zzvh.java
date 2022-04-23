package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvh.class */
public final class zzvh extends zzxi {

    /* renamed from: a */
    public final AdMetadataListener f29023a;

    public zzvh(AdMetadataListener adMetadataListener) {
        this.f29023a = adMetadataListener;
    }

    @Override // com.google.android.gms.internal.ads.zzxj
    /* renamed from: O */
    public final void mo11142O() {
        AdMetadataListener adMetadataListener = this.f29023a;
        if (adMetadataListener != null) {
            adMetadataListener.mo13510a();
        }
    }
}
