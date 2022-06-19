package com.applovin.mediation;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinEventParameters;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import java.util.Map;
import p176n2.C3713a;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/AppLovinIncentivizedAdListener.class */
public class AppLovinIncentivizedAdListener implements AppLovinAdRewardListener, AppLovinAdDisplayListener, AppLovinAdClickListener, AppLovinAdVideoPlaybackListener {
    private boolean mFullyWatched;
    private C3713a mRewardItem;
    private MediationRewardedAdCallback mRewardedAdCallback;
    private String mZoneId;

    public AppLovinIncentivizedAdListener(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationRewardedAdCallback mediationRewardedAdCallback) {
        this.mZoneId = AppLovinUtils.retrieveZoneId(mediationRewardedAdConfiguration.getServerParameters());
        this.mRewardedAdCallback = mediationRewardedAdCallback;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Rewarded video clicked.");
        this.mRewardedAdCallback.reportAdClicked();
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Rewarded video displayed.");
        this.mRewardedAdCallback.onAdOpened();
        this.mRewardedAdCallback.reportAdImpression();
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Rewarded video dismissed.");
        AppLovinMediationAdapter.INCENTIVIZED_ADS.remove(this.mZoneId);
        if (this.mFullyWatched) {
            this.mRewardedAdCallback.onUserEarnedReward(this.mRewardItem);
        }
        this.mRewardedAdCallback.onAdClosed();
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userOverQuota(AppLovinAd appLovinAd, Map<String, String> map) {
        ApplovinAdapter.log(6, "Rewarded video validation request for ad did exceed quota with response: " + map);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardRejected(AppLovinAd appLovinAd, Map<String, String> map) {
        ApplovinAdapter.log(6, "Rewarded video validation request was rejected with response: " + map);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardVerified(AppLovinAd appLovinAd, Map<String, String> map) {
        String str = map.get(AppLovinEventParameters.REVENUE_CURRENCY);
        int parseDouble = (int) Double.parseDouble(map.get(AppLovinEventParameters.REVENUE_AMOUNT));
        ApplovinAdapter.log(3, "Rewarded " + parseDouble + " " + str);
        this.mRewardItem = new C3713a(parseDouble, str);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
        ApplovinAdapter.log(6, "Rewarded video validation request for ad failed with error code: " + i);
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Rewarded video playback began.");
        this.mRewardedAdCallback.onVideoStart();
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
        ApplovinAdapter.log(3, "Rewarded video playback ended at playback percent: " + d + "%.");
        this.mFullyWatched = z;
        if (z) {
            this.mRewardedAdCallback.onVideoComplete();
        }
    }
}
