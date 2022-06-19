package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
/* renamed from: com.google.android.gms.internal.ads.w */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/w.class */
public final class BinderC13004w extends emo {

    /* renamed from: a */
    private final VideoController.VideoLifecycleCallbacks f49950a;

    public BinderC13004w(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        this.f49950a = videoLifecycleCallbacks;
    }

    @Override // com.google.android.gms.internal.ads.emp
    /* renamed from: a */
    public final void mo14054a() {
        this.f49950a.onVideoStart();
    }

    @Override // com.google.android.gms.internal.ads.emp
    /* renamed from: a */
    public final void mo14053a(boolean z) {
        this.f49950a.onVideoMute(z);
    }

    @Override // com.google.android.gms.internal.ads.emp
    /* renamed from: b */
    public final void mo14052b() {
        this.f49950a.onVideoPlay();
    }

    @Override // com.google.android.gms.internal.ads.emp
    /* renamed from: c */
    public final void mo14051c() {
        this.f49950a.onVideoPause();
    }

    @Override // com.google.android.gms.internal.ads.emp
    /* renamed from: d */
    public final void mo14050d() {
        this.f49950a.onVideoEnd();
    }
}
