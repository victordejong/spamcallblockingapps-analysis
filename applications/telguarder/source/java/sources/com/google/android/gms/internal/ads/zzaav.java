package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaav.class */
public final class zzaav extends zzzg {
    private final VideoController.VideoLifecycleCallbacks zzadu;

    public zzaav(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        this.zzadu = videoLifecycleCallbacks;
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void onVideoEnd() {
        this.zzadu.onVideoEnd();
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void onVideoMute(boolean z) {
        this.zzadu.onVideoMute(z);
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void onVideoPause() {
        this.zzadu.onVideoPause();
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void onVideoPlay() {
        this.zzadu.onVideoPlay();
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void onVideoStart() {
        this.zzadu.onVideoStart();
    }
}
