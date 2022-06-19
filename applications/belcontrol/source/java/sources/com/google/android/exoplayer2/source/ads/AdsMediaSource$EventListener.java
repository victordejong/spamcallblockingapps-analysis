package com.google.android.exoplayer2.source.ads;

import java.io.IOException;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource$EventListener.class */
public interface AdsMediaSource$EventListener {
    void onAdClicked();

    void onAdLoadError(IOException iOException);

    void onAdTapped();

    void onInternalAdLoadError(RuntimeException runtimeException);
}
