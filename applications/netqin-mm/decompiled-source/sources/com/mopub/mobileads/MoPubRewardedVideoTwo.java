package com.mopub.mobileads;

import android.app.Activity;
import com.mopub.common.MoPubReward;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubRewardedAd;
import com.mopub.mobileads.RewardedVastVideoInterstitialTwo;
import java.util.Map;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoTwo.class */
public final class MoPubRewardedVideoTwo extends MoPubRewardedAd {
    public static final Companion Companion = new Companion(null);
    public static final String MOPUB_REWARDED_VIDEO_TWO_ID = "mopub_rewarded_video_two_id";

    /* renamed from: e */
    public RewardedVastVideoInterstitialTwo f34171e = new RewardedVastVideoInterstitialTwo();

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C10057o oVar) {
            this();
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoTwo$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoTwo$a.class */
    public final class C8800a extends MoPubRewardedAd.MoPubRewardedAdListener implements RewardedVastVideoInterstitialTwo.RewardedVideoInterstitialListenerTwo {
        public C8800a() {
            super(MoPubRewardedVideoTwo.class);
        }

        @Override // com.mopub.mobileads.RewardedVastVideoInterstitialTwo.RewardedVideoInterstitialListenerTwo
        public void onVideoComplete() {
            String g = MoPubRewardedVideoTwo.this.m4361g();
            if (g != null) {
                MoPubRewardedVideoManager.onRewardedVideoCompleted(this.f34131a, MoPubRewardedVideoTwo.this.mo4330a(), MoPubReward.success(g, MoPubRewardedVideoTwo.this.m4362f()));
            } else {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "No rewarded video was loaded, so no reward is possible");
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: a */
    public String mo4330a() {
        String str = this.f34130d;
        if (str == null) {
            str = MOPUB_REWARDED_VIDEO_TWO_ID;
        }
        return str;
    }

    @Override // com.mopub.mobileads.MoPubRewardedAd, com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: c */
    public void mo4329c(Activity activity, Map<String, ? extends Object> map, Map<String, String> map2) throws Exception {
        C10059q.m1637b(activity, "activity");
        C10059q.m1637b(map, "localExtras");
        C10059q.m1637b(map2, "serverExtras");
        super.mo4329c(activity, map, map2);
        RewardedVastVideoInterstitialTwo rewardedVastVideoInterstitialTwo = this.f34171e;
        if (rewardedVastVideoInterstitialTwo != null) {
            rewardedVastVideoInterstitialTwo.loadInterstitial(activity, new C8800a(), map, map2);
        } else {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "rewardedVastVideoInterstitialTwo is null. Has this class been invalidated?");
        }
    }

    @Override // com.mopub.mobileads.MoPubRewardedAd, com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: d */
    public void mo4328d() {
        RewardedVastVideoInterstitialTwo rewardedVastVideoInterstitialTwo = this.f34171e;
        if (rewardedVastVideoInterstitialTwo != null) {
            rewardedVastVideoInterstitialTwo.onInvalidate();
        }
        this.f34171e = null;
        super.mo4328d();
    }

    @Override // com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: e */
    public void mo4327e() {
        if (!mo4363c() || this.f34171e == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Unable to show MoPub rewarded video");
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Showing MoPub rewarded video.");
        RewardedVastVideoInterstitialTwo rewardedVastVideoInterstitialTwo = this.f34171e;
        if (rewardedVastVideoInterstitialTwo != null) {
            rewardedVastVideoInterstitialTwo.showInterstitial();
        }
    }

    public final RewardedVastVideoInterstitialTwo getRewardedVastVideoInterstitial() {
        return this.f34171e;
    }

    public final void setRewardedVastVideoInterstitial(RewardedVastVideoInterstitialTwo rewardedVastVideoInterstitialTwo) {
        this.f34171e = rewardedVastVideoInterstitialTwo;
    }
}
