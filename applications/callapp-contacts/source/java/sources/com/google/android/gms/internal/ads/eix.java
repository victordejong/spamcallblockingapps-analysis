package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdLoadCallback;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eix.class */
public final class eix<AdT> extends ekm {

    /* renamed from: a */
    private final AdLoadCallback<AdT> f49061a;

    /* renamed from: b */
    private final AdT f49062b;

    public eix(AdLoadCallback<AdT> adLoadCallback, AdT adt) {
        this.f49061a = adLoadCallback;
        this.f49062b = adt;
    }

    @Override // com.google.android.gms.internal.ads.ekj
    /* renamed from: a */
    public final void mo14816a() {
        AdT adt;
        AdLoadCallback<AdT> adLoadCallback = this.f49061a;
        if (adLoadCallback == null || (adt = this.f49062b) == null) {
            return;
        }
        adLoadCallback.onAdLoaded(adt);
    }

    @Override // com.google.android.gms.internal.ads.ekj
    /* renamed from: a */
    public final void mo14815a(zzvh zzvhVar) {
        AdLoadCallback<AdT> adLoadCallback = this.f49061a;
        if (adLoadCallback != null) {
            adLoadCallback.onAdFailedToLoad(zzvhVar.zzqi());
        }
    }
}
