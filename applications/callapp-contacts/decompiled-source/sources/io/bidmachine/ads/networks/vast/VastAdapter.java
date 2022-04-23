package io.bidmachine.ads.networks.vast;

import com.explorestack.iab.utils.Logger;
import com.explorestack.iab.vast.VastLog;
import com.explorestack.iab.vast.VideoType;
import com.mopub.common.FullAdType;
import io.bidmachine.AdsType;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.unified.UnifiedFullscreenAd;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/vast/VastAdapter.class */
public class VastAdapter extends NetworkAdapter {
    public VastAdapter() {
        super(FullAdType.VAST, "2.0", "1.7.1.1", new AdsType[]{AdsType.Interstitial, AdsType.Rewarded});
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedFullscreenAd createInterstitial() {
        return new a(VideoType.NonRewarded);
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedFullscreenAd createRewarded() {
        return new a(VideoType.Rewarded);
    }

    @Override // io.bidmachine.NetworkAdapter
    public void setLogging(boolean z) {
        VastLog.setLoggingLevel(z ? Logger.LogLevel.debug : Logger.LogLevel.none);
    }
}
