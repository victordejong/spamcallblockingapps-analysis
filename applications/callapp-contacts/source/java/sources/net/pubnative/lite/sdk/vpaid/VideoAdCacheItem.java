package net.pubnative.lite.sdk.vpaid;

import net.pubnative.lite.sdk.vpaid.response.AdParams;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/VideoAdCacheItem.class */
public class VideoAdCacheItem {
    private final AdParams mAdParams;
    private final String mEndCardFilePath;
    private final String mVideoFilePath;

    public VideoAdCacheItem(AdParams adParams, String str, String str2) {
        this.mAdParams = adParams;
        this.mVideoFilePath = str;
        this.mEndCardFilePath = str2;
    }

    public AdParams getAdParams() {
        return this.mAdParams;
    }

    public String getEndCardFilePath() {
        return this.mEndCardFilePath;
    }

    public String getVideoFilePath() {
        return this.mVideoFilePath;
    }
}
