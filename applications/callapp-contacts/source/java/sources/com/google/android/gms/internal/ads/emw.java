package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emw.class */
public final class emw extends eka {

    /* renamed from: a */
    private final /* synthetic */ emt f49250a;

    public emw(emt emtVar) {
        this.f49250a = emtVar;
    }

    @Override // com.google.android.gms.internal.ads.eka, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(int i) {
        this.f49250a.f49198a.zza(this.f49250a.m14753j());
        super.onAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.ads.eka, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.f49250a.f49198a.zza(this.f49250a.m14753j());
        super.onAdFailedToLoad(loadAdError);
    }

    @Override // com.google.android.gms.internal.ads.eka, com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        this.f49250a.f49198a.zza(this.f49250a.m14753j());
        super.onAdLoaded();
    }
}
