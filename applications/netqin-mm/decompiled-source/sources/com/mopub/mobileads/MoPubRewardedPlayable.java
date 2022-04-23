package com.mopub.mobileads;

import android.app.Activity;
import com.mopub.common.MoPubReward;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubRewardedAd;
import com.mopub.mraid.RewardedMraidInterstitial;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedPlayable.class */
public class MoPubRewardedPlayable extends MoPubRewardedAd {

    /* renamed from: e */
    public RewardedMraidInterstitial f34137e = new RewardedMraidInterstitial();

    /* renamed from: com.mopub.mobileads.MoPubRewardedPlayable$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedPlayable$a.class */
    public class C8782a extends MoPubRewardedAd.MoPubRewardedAdListener implements RewardedMraidInterstitial.RewardedMraidInterstitialListener {
        public C8782a() {
            super(MoPubRewardedPlayable.class);
        }

        @Override // com.mopub.mraid.RewardedMraidInterstitial.RewardedMraidInterstitialListener
        public void onMraidComplete() {
            if (MoPubRewardedPlayable.this.m4361g() == null) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "No rewarded video was loaded, so no reward is possible");
            } else {
                MoPubRewardedVideoManager.onRewardedVideoCompleted(this.f34131a, MoPubRewardedPlayable.this.mo4330a(), MoPubReward.success(MoPubRewardedPlayable.this.m4361g(), MoPubRewardedPlayable.this.m4362f()));
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: a */
    public String mo4330a() {
        String str = this.f34130d;
        if (str == null) {
            str = "mopub_rewarded_playable_id";
        }
        return str;
    }

    @Override // com.mopub.mobileads.MoPubRewardedAd, com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: c */
    public void mo4329c(Activity activity, Map<String, Object> map, Map<String, String> map2) throws Exception {
        super.mo4329c(activity, map, map2);
        RewardedMraidInterstitial rewardedMraidInterstitial = this.f34137e;
        if (rewardedMraidInterstitial == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "mRewardedMraidInterstitial is null. Has this class been invalidated?");
        } else {
            rewardedMraidInterstitial.loadInterstitial(activity, new C8782a(), map, map2);
        }
    }

    @Override // com.mopub.mobileads.MoPubRewardedAd, com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: d */
    public void mo4328d() {
        RewardedMraidInterstitial rewardedMraidInterstitial = this.f34137e;
        if (rewardedMraidInterstitial != null) {
            rewardedMraidInterstitial.onInvalidate();
        }
        this.f34137e = null;
        super.mo4328d();
    }

    @Override // com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: e */
    public void mo4327e() {
        if (!mo4363c() || this.f34137e == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "MoPub rewarded playable not loaded. Unable to show playable.");
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Showing MoPub rewarded playable.");
        this.f34137e.showInterstitial();
    }
}
