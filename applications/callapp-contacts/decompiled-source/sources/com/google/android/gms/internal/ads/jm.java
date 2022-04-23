package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.instream.InstreamAd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jm.class */
public final class jm extends ji {

    /* renamed from: a  reason: collision with root package name */
    private final InstreamAd.InstreamAdLoadCallback f28080a;

    public jm(InstreamAd.InstreamAdLoadCallback instreamAdLoadCallback) {
        this.f28080a = instreamAdLoadCallback;
    }

    @Override // com.google.android.gms.internal.ads.jf
    public final void a(int i) {
        this.f28080a.onInstreamAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.ads.jf
    public final void a(iz izVar) {
        this.f28080a.onInstreamAdLoaded(new jk(izVar));
    }

    @Override // com.google.android.gms.internal.ads.jf
    public final void a(zzvh zzvhVar) {
        this.f28080a.onInstreamAdFailedToLoad(zzvhVar.zzqi());
    }
}
