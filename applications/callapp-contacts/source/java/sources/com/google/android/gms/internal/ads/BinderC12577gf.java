package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeAppInstallAd;
/* renamed from: com.google.android.gms.internal.ads.gf */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gf.class */
public final class BinderC12577gf extends AbstractBinderC12539ev {

    /* renamed from: a */
    private final NativeAppInstallAd.OnAppInstallAdLoadedListener f49297a;

    public BinderC12577gf(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
        this.f49297a = onAppInstallAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12536es
    /* renamed from: a */
    public final void mo14641a(AbstractC12442eg abstractC12442eg) {
        this.f49297a.onAppInstallAdLoaded(new C12528el(abstractC12442eg));
    }
}
