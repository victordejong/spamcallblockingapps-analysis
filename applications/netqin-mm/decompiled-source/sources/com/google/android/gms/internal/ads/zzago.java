package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeAppInstallAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzago.class */
public final class zzago extends zzafd {

    /* renamed from: a */
    public final NativeAppInstallAd.OnAppInstallAdLoadedListener f24085a;

    public zzago(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
        this.f24085a = onAppInstallAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    /* renamed from: a */
    public final void mo16772a(zzaes zzaesVar) {
        this.f24085a.mo18043a(new zzaet(zzaesVar));
    }
}
