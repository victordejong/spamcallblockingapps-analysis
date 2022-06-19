package io.bidmachine.ads.networks.mraid;

import com.explorestack.iab.mraid.MraidActivity;
import com.explorestack.iab.mraid.MraidLog;
import com.explorestack.iab.utils.Logger;
import io.bidmachine.AdsType;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedFullscreenAd;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/mraid/MraidAdapter.class */
public class MraidAdapter extends NetworkAdapter {
    public MraidAdapter() {
        super("mraid", "2.0", "1.7.1.1", new AdsType[]{AdsType.Banner, AdsType.Interstitial, AdsType.Rewarded});
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedBannerAd createBanner() {
        return new C17805a();
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedFullscreenAd createInterstitial() {
        return new C17809c(MraidActivity.MraidType.Static);
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedFullscreenAd createRewarded() {
        return new C17809c(MraidActivity.MraidType.Rewarded);
    }

    @Override // io.bidmachine.NetworkAdapter
    public void setLogging(boolean z) {
        MraidLog.setLoggingLevel(z ? Logger.LogLevel.debug : Logger.LogLevel.none);
    }
}
