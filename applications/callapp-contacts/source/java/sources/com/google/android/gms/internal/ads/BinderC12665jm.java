package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.instream.InstreamAd;
/* renamed from: com.google.android.gms.internal.ads.jm */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jm.class */
public final class BinderC12665jm extends AbstractBinderC12661ji {

    /* renamed from: a */
    private final InstreamAd.InstreamAdLoadCallback f49389a;

    public BinderC12665jm(InstreamAd.InstreamAdLoadCallback instreamAdLoadCallback) {
        this.f49389a = instreamAdLoadCallback;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12658jf
    /* renamed from: a */
    public final void mo14580a(int i) {
        this.f49389a.onInstreamAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12658jf
    /* renamed from: a */
    public final void mo14579a(AbstractC12651iz abstractC12651iz) {
        this.f49389a.onInstreamAdLoaded(new C12663jk(abstractC12651iz));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12658jf
    /* renamed from: a */
    public final void mo14578a(zzvh zzvhVar) {
        this.f49389a.onInstreamAdFailedToLoad(zzvhVar.zzqi());
    }
}
