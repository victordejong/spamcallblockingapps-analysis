package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;
/* renamed from: com.google.android.gms.internal.ads.gm */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gm.class */
public final class BinderC12584gm extends AbstractBinderC12562fr {

    /* renamed from: a */
    private final UnifiedNativeAd.UnconfirmedClickListener f49308a;

    public BinderC12584gm(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        this.f49308a = unconfirmedClickListener;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12563fs
    /* renamed from: a */
    public final void mo14236a() {
        this.f49308a.onUnconfirmedClickCancelled();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12563fs
    /* renamed from: a */
    public final void mo14235a(String str) {
        this.f49308a.onUnconfirmedClickReceived(str);
    }
}
