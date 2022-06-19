package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbir.class */
public final class zzbir extends zzbhe {
    private final VideoController.VideoLifecycleCallbacks zza;

    public zzbir(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        this.zza = videoLifecycleCallbacks;
    }

    @Override // com.google.android.gms.internal.ads.zzbhf
    public final void zze() {
        this.zza.onVideoStart();
    }

    @Override // com.google.android.gms.internal.ads.zzbhf
    public final void zzf() {
        this.zza.onVideoPlay();
    }

    @Override // com.google.android.gms.internal.ads.zzbhf
    public final void zzg() {
        this.zza.onVideoPause();
    }

    @Override // com.google.android.gms.internal.ads.zzbhf
    public final void zzh() {
        this.zza.onVideoEnd();
    }

    @Override // com.google.android.gms.internal.ads.zzbhf
    public final void zzi(boolean z) {
        this.zza.onVideoMute(z);
    }
}
