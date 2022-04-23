package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabz.class */
public final class zzabz extends zzabx {

    /* renamed from: a */
    public final OnCustomRenderedAdLoadedListener f23953a;

    public zzabz(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.f23953a = onCustomRenderedAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzaby
    /* renamed from: a */
    public final void mo16874a(zzabt zzabtVar) {
        this.f23953a.m18078a(new zzabu(zzabtVar));
    }
}
