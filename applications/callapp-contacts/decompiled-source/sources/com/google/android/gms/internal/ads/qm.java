package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qm.class */
public final class qm extends fr {

    /* renamed from: a  reason: collision with root package name */
    private final NativeAd.UnconfirmedClickListener f28339a;

    public qm(NativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        this.f28339a = unconfirmedClickListener;
    }

    @Override // com.google.android.gms.internal.ads.fs
    public final void a() {
        this.f28339a.onUnconfirmedClickCancelled();
    }

    @Override // com.google.android.gms.internal.ads.fs
    public final void a(String str) {
        this.f28339a.onUnconfirmedClickReceived(str);
    }
}
