package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emw.class */
public final class emw extends eka {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ emt f27968a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public emw(emt emtVar) {
        this.f27968a = emtVar;
    }

    @Override // com.google.android.gms.internal.ads.eka, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(int i) {
        this.f27968a.f27956a.zza(this.f27968a.j());
        super.onAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.ads.eka, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.f27968a.f27956a.zza(this.f27968a.j());
        super.onAdFailedToLoad(loadAdError);
    }

    @Override // com.google.android.gms.internal.ads.eka, com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        this.f27968a.f27956a.zza(this.f27968a.j());
        super.onAdLoaded();
    }
}
