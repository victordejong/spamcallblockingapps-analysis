package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeAppInstallAd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gf.class */
public final class gf extends ev {

    /* renamed from: a  reason: collision with root package name */
    private final NativeAppInstallAd.OnAppInstallAdLoadedListener f28007a;

    public gf(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
        this.f28007a = onAppInstallAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.es
    public final void a(eg egVar) {
        this.f28007a.onAppInstallAdLoaded(new el(egVar));
    }
}
