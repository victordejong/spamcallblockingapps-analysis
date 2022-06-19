package com.google.android.exoplayer2.source.ads;

import android.view.ViewGroup;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.upstream.DataSpec;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsLoader.class */
public interface AdsLoader {

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsLoader$EventListener.class */
    public interface EventListener {
        void onAdClicked();

        void onAdLoadError(AdsMediaSource$AdLoadException adsMediaSource$AdLoadException, DataSpec dataSpec);

        void onAdPlaybackState(AdPlaybackState adPlaybackState);

        void onAdTapped();
    }

    void attachPlayer(ExoPlayer exoPlayer, EventListener eventListener, ViewGroup viewGroup);

    void detachPlayer();

    void handlePrepareError(int i, int i2, IOException iOException);

    void release();

    void setSupportedContentTypes(int... iArr);
}
