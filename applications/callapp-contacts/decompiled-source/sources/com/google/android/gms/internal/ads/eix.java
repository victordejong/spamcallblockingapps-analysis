package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdLoadCallback;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eix.class */
public final class eix<AdT> extends ekm {

    /* renamed from: a  reason: collision with root package name */
    private final AdLoadCallback<AdT> f27870a;

    /* renamed from: b  reason: collision with root package name */
    private final AdT f27871b;

    public eix(AdLoadCallback<AdT> adLoadCallback, AdT adt) {
        this.f27870a = adLoadCallback;
        this.f27871b = adt;
    }

    @Override // com.google.android.gms.internal.ads.ekj
    public final void a() {
        AdT adt;
        AdLoadCallback<AdT> adLoadCallback = this.f27870a;
        if (adLoadCallback != null && (adt = this.f27871b) != null) {
            adLoadCallback.onAdLoaded(adt);
        }
    }

    @Override // com.google.android.gms.internal.ads.ekj
    public final void a(zzvh zzvhVar) {
        AdLoadCallback<AdT> adLoadCallback = this.f27870a;
        if (adLoadCallback != null) {
            adLoadCallback.onAdFailedToLoad(zzvhVar.zzqi());
        }
    }
}
