package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeContentAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagn.class */
public final class zzagn extends zzafi {

    /* renamed from: a */
    public final NativeContentAd.OnContentAdLoadedListener f24084a;

    public zzagn(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
        this.f24084a = onContentAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    /* renamed from: a */
    public final void mo16773a(zzaew zzaewVar) {
        this.f24084a.mo18042a(new zzaex(zzaewVar));
    }
}
