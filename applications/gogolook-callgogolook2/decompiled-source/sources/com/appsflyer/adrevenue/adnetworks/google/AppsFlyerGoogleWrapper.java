package com.appsflyer.adrevenue.adnetworks.google;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.adrevenue.adnetworks.AFPayload;
import com.appsflyer.adrevenue.adnetworks.AFWrapper;
import com.appsflyer.adrevenue.adnetworks.AppsFlyerAdNetworkEventType;
import com.appsflyer.adrevenue.adnetworks.AppsFlyerAdRevenueWrapperType;
import com.appsflyer.adrevenue.internal.AFChainMap;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/adrevenue/adnetworks/google/AppsFlyerGoogleWrapper.class */
public class AppsFlyerGoogleWrapper extends AFWrapper {
    public static AppsFlyerGoogleWrapper instance;

    /* loaded from: classes-dex2jar.jar:com/appsflyer/adrevenue/adnetworks/google/AppsFlyerGoogleWrapper$AFGoogleInternal.class */
    public static class AFGoogleInternal {
        public final AdListener adListener = new AdListener() { // from class: com.appsflyer.adrevenue.adnetworks.google.AppsFlyerGoogleWrapper.AFGoogleInternal.1
            @Override // com.google.android.gms.ads.AdListener
            public void onAdClicked() {
                AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.AdClicked);
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdClosed() {
                AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.AdClosed);
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(int i) {
                AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.AdFailedToLoad, Integer.valueOf(i));
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdImpression() {
                AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.AdImpression);
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLeftApplication() {
                AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.AdLeftApplication);
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLoaded() {
                AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.AdLoaded);
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdOpened() {
                AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.AdOpened);
            }
        };
        public final String adUnitId;
        public final AppsFlyerAdNetworkEventType format;

        public AFGoogleInternal(String str, AppsFlyerAdNetworkEventType appsFlyerAdNetworkEventType) {
            this.adUnitId = str;
            this.format = appsFlyerAdNetworkEventType;
        }

        public static AdListener adListener(String str) {
            return new AFGoogleInternal(str, AppsFlyerAdNetworkEventType.NATIVE).adListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void event(AppsFlyerGoogleEventActionNames appsFlyerGoogleEventActionNames) {
            event(appsFlyerGoogleEventActionNames, null, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void event(AppsFlyerGoogleEventActionNames appsFlyerGoogleEventActionNames, @Nullable Integer num) {
            event(appsFlyerGoogleEventActionNames, null, num);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void event(AppsFlyerGoogleEventActionNames appsFlyerGoogleEventActionNames, @Nullable Map<AFPayload, String> map) {
            event(appsFlyerGoogleEventActionNames, map, null);
        }

        private void event(AppsFlyerGoogleEventActionNames appsFlyerGoogleEventActionNames, @Nullable Map<AFPayload, String> map, @Nullable Integer num) {
            Map<AFPayload, String> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
            }
            map2.put(AFPayload.AdId, this.adUnitId);
            HashMap hashMap = new HashMap();
            for (AFPayload aFPayload : map2.keySet()) {
                hashMap.put(aFPayload.toString(), map2.get(aFPayload));
            }
            AFWrapper.event(AppsFlyerAdRevenueWrapperType.GOOGLE_ADMOB, this.format, hashMap, appsFlyerGoogleEventActionNames.toString(), String.valueOf(num));
        }

        private RewardedAdCallback rewardedAdCallback() {
            return new RewardedAdCallback() { // from class: com.appsflyer.adrevenue.adnetworks.google.AppsFlyerGoogleWrapper.AFGoogleInternal.3
                public void onRewardedAdClosed() {
                    AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.RewardedAdClosed);
                }

                public void onRewardedAdFailedToShow(int i) {
                    AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.RewardedAdFailedToShow, Integer.valueOf(i));
                }

                public void onRewardedAdOpened() {
                    AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.RewardedAdOpened);
                }

                public void onUserEarnedReward(@NonNull RewardItem rewardItem) {
                    AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.UserEarnedReward, new AFChainMap().place(AFPayload.RewardType, rewardItem.getType()).place(AFPayload.RewardAmount, String.valueOf(rewardItem.getAmount())));
                }
            };
        }

        public static RewardedAdCallback rewardedAdCallback(String str) {
            return new AFGoogleInternal(str, AppsFlyerAdNetworkEventType.REWARDED).rewardedAdCallback();
        }

        private RewardedAdLoadCallback rewardedAdLoadCallback() {
            return new RewardedAdLoadCallback() { // from class: com.appsflyer.adrevenue.adnetworks.google.AppsFlyerGoogleWrapper.AFGoogleInternal.4
                public void onRewardedAdFailedToLoad(int i) {
                    AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.RewardedAdFailedToLoad, new AFChainMap().place(AFPayload.ErrorCode, String.valueOf(i)));
                }

                public void onRewardedAdLoaded() {
                    AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.RewardedAdLoaded);
                }
            };
        }

        public static RewardedAdLoadCallback rewardedAdLoadCallback(String str) {
            return new AFGoogleInternal(str, AppsFlyerAdNetworkEventType.REWARDED).rewardedAdLoadCallback();
        }

        private void track(AdView adView) {
            adView.setAdListener(this.adListener);
        }

        public static void track(AdView adView, String str) {
            new AFGoogleInternal(str, AppsFlyerAdNetworkEventType.BANNER).track(adView);
        }

        private void track(InterstitialAd interstitialAd) {
            interstitialAd.setAdListener(this.adListener);
        }

        public static void track(InterstitialAd interstitialAd, String str) {
            new AFGoogleInternal(str, AppsFlyerAdNetworkEventType.INTERSTITIAL).track(interstitialAd);
        }

        private void track(RewardedVideoAd rewardedVideoAd) {
            rewardedVideoAd.setRewardedVideoAdListener(new RewardedVideoAdListener() { // from class: com.appsflyer.adrevenue.adnetworks.google.AppsFlyerGoogleWrapper.AFGoogleInternal.2
                @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
                public void onRewarded(com.google.android.gms.ads.reward.RewardItem rewardItem) {
                    AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.Rewarded, new AFChainMap().place(AFPayload.RewardType, rewardItem.getType()).place(AFPayload.RewardAmount, String.valueOf(rewardItem.getAmount())));
                }

                @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
                public void onRewardedVideoAdClosed() {
                    AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.RewardedVideoAdClosed);
                }

                @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
                public void onRewardedVideoAdFailedToLoad(int i) {
                    AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.RewardedVideoAdFailedToLoad, Integer.valueOf(i));
                }

                @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
                public void onRewardedVideoAdLeftApplication() {
                    AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.RewardedVideoAdLeftApplication);
                }

                @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
                public void onRewardedVideoAdLoaded() {
                    AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.RewardedVideoAdLoaded);
                }

                @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
                public void onRewardedVideoAdOpened() {
                    AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.RewardedVideoAdOpened);
                }

                @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
                public void onRewardedVideoCompleted() {
                    AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.RewardedVideoCompleted);
                }

                @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
                public void onRewardedVideoStarted() {
                    AFGoogleInternal.this.event(AppsFlyerGoogleEventActionNames.RewardedVideoStarted);
                }
            });
        }

        public static void track(RewardedVideoAd rewardedVideoAd, String str) {
            new AFGoogleInternal(str, AppsFlyerAdNetworkEventType.REWARDED).track(rewardedVideoAd);
        }
    }

    public static AppsFlyerGoogleWrapper instance() {
        if (instance == null) {
            instance = new AppsFlyerGoogleWrapper();
        }
        return instance;
    }

    public AdListener adListener(String str) {
        return AFGoogleInternal.adListener(str);
    }

    public RewardedAdCallback rewardedAdCallback(String str) {
        return AFGoogleInternal.rewardedAdCallback(str);
    }

    public RewardedAdLoadCallback rewardedAdLoadCallback(String str) {
        return AFGoogleInternal.rewardedAdLoadCallback(str);
    }

    public void track(AdView adView, String str) {
        AFGoogleInternal.track(adView, str);
    }

    public void track(InterstitialAd interstitialAd, String str) {
        AFGoogleInternal.track(interstitialAd, str);
    }

    public void track(RewardedVideoAd rewardedVideoAd, String str) {
        AFGoogleInternal.track(rewardedVideoAd, str);
    }
}
