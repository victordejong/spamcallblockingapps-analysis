package com.bytedance.sdk.openadsdk;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTFeedAd.class */
public interface TTFeedAd extends TTNativeAd {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener.class */
    public interface VideoAdListener {
        void onProgressUpdate(long j, long j2);

        void onVideoAdComplete(TTFeedAd tTFeedAd);

        void onVideoAdContinuePlay(TTFeedAd tTFeedAd);

        void onVideoAdPaused(TTFeedAd tTFeedAd);

        void onVideoAdStartPlay(TTFeedAd tTFeedAd);

        void onVideoError(int i, int i2);

        void onVideoLoad(TTFeedAd tTFeedAd);
    }

    double getVideoDuration();

    void setVideoAdListener(VideoAdListener videoAdListener);
}
