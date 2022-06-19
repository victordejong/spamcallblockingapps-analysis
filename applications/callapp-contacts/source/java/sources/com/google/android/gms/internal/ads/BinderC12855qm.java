package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;
/* renamed from: com.google.android.gms.internal.ads.qm */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qm.class */
public final class BinderC12855qm extends AbstractBinderC12562fr {

    /* renamed from: a */
    private final NativeAd.UnconfirmedClickListener f49744a;

    public BinderC12855qm(NativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        this.f49744a = unconfirmedClickListener;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12563fs
    /* renamed from: a */
    public final void mo14236a() {
        this.f49744a.onUnconfirmedClickCancelled();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12563fs
    /* renamed from: a */
    public final void mo14235a(String str) {
        this.f49744a.onUnconfirmedClickReceived(str);
    }
}
