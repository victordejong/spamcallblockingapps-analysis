package com.pubmatic.sdk.video.player;

import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.video.vastmodels.POBVastAd;
import com.pubmatic.sdk.video.vastmodels.POBVastCreative;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVastPlayerListener.class */
public interface POBVastPlayerListener {
    void onFailedToPlay(POBError pOBError);

    void onIndustryIconClick(String str);

    void onOpenLandingPage(String str);

    void onPlaybackCompleted(float f);

    void onReadyToPlay(POBVastAd pOBVastAd, float f);

    void onSkipButtonClick(POBVastCreative.POBEventTypes pOBEventTypes);

    void onVideoEventOccurred(POBVastCreative.POBEventTypes pOBEventTypes);

    void onVideoStarted(float f, float f2);
}
