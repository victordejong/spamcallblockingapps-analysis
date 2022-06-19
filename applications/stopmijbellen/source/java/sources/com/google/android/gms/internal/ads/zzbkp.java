package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkp.class */
public final class zzbkp extends zzbjb {
    private final VideoController.VideoLifecycleCallbacks zza;

    public zzbkp(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        this.zza = videoLifecycleCallbacks;
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final void zze() {
        this.zza.onVideoEnd();
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final void zzf(boolean z) {
        this.zza.onVideoMute(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final void zzg() {
        this.zza.onVideoPause();
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final void zzh() {
        this.zza.onVideoPlay();
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final void zzi() {
        this.zza.onVideoStart();
    }
}
