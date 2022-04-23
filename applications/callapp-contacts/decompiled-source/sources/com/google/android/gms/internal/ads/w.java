package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/w.class */
public final class w extends emo {

    /* renamed from: a  reason: collision with root package name */
    private final VideoController.VideoLifecycleCallbacks f28455a;

    public w(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        this.f28455a = videoLifecycleCallbacks;
    }

    @Override // com.google.android.gms.internal.ads.emp
    public final void a() {
        this.f28455a.onVideoStart();
    }

    @Override // com.google.android.gms.internal.ads.emp
    public final void a(boolean z) {
        this.f28455a.onVideoMute(z);
    }

    @Override // com.google.android.gms.internal.ads.emp
    public final void b() {
        this.f28455a.onVideoPlay();
    }

    @Override // com.google.android.gms.internal.ads.emp
    public final void c() {
        this.f28455a.onVideoPause();
    }

    @Override // com.google.android.gms.internal.ads.emp
    public final void d() {
        this.f28455a.onVideoEnd();
    }
}
