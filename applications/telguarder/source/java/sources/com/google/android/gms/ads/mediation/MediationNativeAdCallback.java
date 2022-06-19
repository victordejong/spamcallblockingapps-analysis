package com.google.android.gms.ads.mediation;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationNativeAdCallback.class */
public interface MediationNativeAdCallback extends MediationAdCallback {
    void onAdLeftApplication();

    void onVideoComplete();

    void onVideoMute();

    void onVideoPause();

    void onVideoPlay();

    void onVideoUnmute();
}
