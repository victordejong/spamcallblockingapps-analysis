package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedVastVideoInterstitial.class */
public class RewardedVastVideoInterstitial extends VastVideoInterstitial {
    public static final String ADAPTER_NAME = "RewardedVastVideoInterstitial";

    /* renamed from: n */
    public RewardedVideoBroadcastReceiver f34212n;

    /* renamed from: com.mopub.mobileads.RewardedVastVideoInterstitial$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedVastVideoInterstitial$a.class */
    public interface AbstractC8812a extends CustomEventInterstitial.CustomEventInterstitialListener {
        void onVideoComplete();
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void loadInterstitial(Context context, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, Map<String, Object> map, Map<String, String> map2) {
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, ADAPTER_NAME);
        super.loadInterstitial(context, customEventInterstitialListener, map, map2);
        if (customEventInterstitialListener instanceof AbstractC8812a) {
            RewardedVideoBroadcastReceiver rewardedVideoBroadcastReceiver = new RewardedVideoBroadcastReceiver((AbstractC8812a) customEventInterstitialListener, this.f34200e);
            this.f34212n = rewardedVideoBroadcastReceiver;
            rewardedVideoBroadcastReceiver.register(rewardedVideoBroadcastReceiver, context);
        }
    }

    @Override // com.mopub.mobileads.VastVideoInterstitial, com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
        super.onInvalidate();
        RewardedVideoBroadcastReceiver rewardedVideoBroadcastReceiver = this.f34212n;
        if (rewardedVideoBroadcastReceiver != null) {
            rewardedVideoBroadcastReceiver.unregister(rewardedVideoBroadcastReceiver);
        }
    }

    @Override // com.mopub.mobileads.VastVideoInterstitial, com.mopub.mobileads.VastManager.VastManagerListener
    public void onVastVideoConfigurationPrepared(VastVideoConfig vastVideoConfig) {
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, ADAPTER_NAME);
        if (vastVideoConfig != null) {
            vastVideoConfig.setIsRewardedVideo(true);
        }
        super.onVastVideoConfigurationPrepared(vastVideoConfig);
    }
}
