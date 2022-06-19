package com.applovin.mediation.adapters;

import android.app.Activity;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.lifecycle.AbstractC0516f;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewDisplayErrorCode;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.adview.AppLovinIncentivizedInterstitial;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.impl.adview.AppLovinRewardedInterstitialAd;
import com.applovin.impl.mediation.MaxRewardImpl;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAd;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdEventListener;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdLoadListener;
import com.applovin.impl.sdk.p053ad.AbstractC1293g;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import com.applovin.mediation.adapter.MaxRewardedInterstitialAdapter;
import com.applovin.mediation.adapter.MaxSignalProvider;
import com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapters/AppLovinMediationAdapter.class */
public class AppLovinMediationAdapter extends MediationAdapterBase implements MaxAdViewAdapter, MaxInterstitialAdapter, MaxRewardedAdapter, MaxRewardedInterstitialAdapter, MaxSignalProvider {
    private AppLovinAdView mLoadedAdView;
    private AppLovinAd mLoadedInterstitialAd;
    private AppLovinAd mLoadedRewardedAd;
    private AppLovinAd mLoadedRewardedInterstitialAd;
    private AppLovinNativeAd mNativeAd;
    private MaxReward mPendingReward;

    /* renamed from: com.applovin.mediation.adapters.AppLovinMediationAdapter$1 */
    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapters/AppLovinMediationAdapter$1.class */
    public class C15691 implements AppLovinAdLoadListener {
        public final /* synthetic */ MaxAdFormat val$adFormat;
        public final /* synthetic */ MaxAdViewAdapterListener val$listener;

        public C15691(MaxAdFormat maxAdFormat, MaxAdViewAdapterListener maxAdViewAdapterListener) {
            AppLovinMediationAdapter.this = r4;
            this.val$adFormat = maxAdFormat;
            this.val$listener = maxAdViewAdapterListener;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(final AppLovinAd appLovinAd) {
            AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
            appLovinMediationAdapter.log(this.val$adFormat.getLabel() + " ad loaded");
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.mediation.adapters.AppLovinMediationAdapter.1.1
                @Override // java.lang.Runnable
                public void run() {
                    AppLovinMediationAdapter.this.mLoadedAdView = new AppLovinAdView(AppLovinMediationAdapter.this.getWrappingSdk(), appLovinAd.getSize(), AppLovinMediationAdapter.this.getApplicationContext());
                    AppLovinMediationAdapter.this.mLoadedAdView.setAdDisplayListener(new AppLovinAdDisplayListener() { // from class: com.applovin.mediation.adapters.AppLovinMediationAdapter.1.1.1
                        @Override // com.applovin.sdk.AppLovinAdDisplayListener
                        public void adDisplayed(AppLovinAd appLovinAd2) {
                            AppLovinMediationAdapter appLovinMediationAdapter2 = AppLovinMediationAdapter.this;
                            appLovinMediationAdapter2.log(C15691.this.val$adFormat.getLabel() + " ad shown");
                            C15691.this.val$listener.onAdViewAdDisplayed();
                        }

                        @Override // com.applovin.sdk.AppLovinAdDisplayListener
                        public void adHidden(AppLovinAd appLovinAd2) {
                            AppLovinMediationAdapter appLovinMediationAdapter2 = AppLovinMediationAdapter.this;
                            appLovinMediationAdapter2.log(C15691.this.val$adFormat.getLabel() + " ad hidden");
                            C15691.this.val$listener.onAdViewAdHidden();
                        }
                    });
                    AppLovinMediationAdapter.this.mLoadedAdView.setAdClickListener(new AppLovinAdClickListener() { // from class: com.applovin.mediation.adapters.AppLovinMediationAdapter.1.1.2
                        @Override // com.applovin.sdk.AppLovinAdClickListener
                        public void adClicked(AppLovinAd appLovinAd2) {
                            AppLovinMediationAdapter appLovinMediationAdapter2 = AppLovinMediationAdapter.this;
                            appLovinMediationAdapter2.log(C15691.this.val$adFormat.getLabel() + " ad clicked");
                            C15691.this.val$listener.onAdViewAdClicked();
                        }
                    });
                    AppLovinMediationAdapter.this.mLoadedAdView.setAdViewEventListener(new AppLovinAdViewEventListener() { // from class: com.applovin.mediation.adapters.AppLovinMediationAdapter.1.1.3
                        @Override // com.applovin.adview.AppLovinAdViewEventListener
                        public void adClosedFullscreen(AppLovinAd appLovinAd2, AppLovinAdView appLovinAdView) {
                            AppLovinMediationAdapter appLovinMediationAdapter2 = AppLovinMediationAdapter.this;
                            appLovinMediationAdapter2.log(C15691.this.val$adFormat.getLabel() + " ad collapsed");
                            C15691.this.val$listener.onAdViewAdCollapsed();
                        }

                        @Override // com.applovin.adview.AppLovinAdViewEventListener
                        public void adFailedToDisplay(AppLovinAd appLovinAd2, AppLovinAdView appLovinAdView, AppLovinAdViewDisplayErrorCode appLovinAdViewDisplayErrorCode) {
                            MaxAdapterError maxError = AppLovinMediationAdapter.toMaxError(appLovinAdViewDisplayErrorCode);
                            AppLovinMediationAdapter appLovinMediationAdapter2 = AppLovinMediationAdapter.this;
                            appLovinMediationAdapter2.log(C15691.this.val$adFormat.getLabel() + " ad failed to display with error: " + maxError);
                            C15691.this.val$listener.onAdViewAdDisplayFailed(maxError);
                        }

                        @Override // com.applovin.adview.AppLovinAdViewEventListener
                        public void adLeftApplication(AppLovinAd appLovinAd2, AppLovinAdView appLovinAdView) {
                        }

                        @Override // com.applovin.adview.AppLovinAdViewEventListener
                        public void adOpenedFullscreen(AppLovinAd appLovinAd2, AppLovinAdView appLovinAdView) {
                            AppLovinMediationAdapter appLovinMediationAdapter2 = AppLovinMediationAdapter.this;
                            appLovinMediationAdapter2.log(C15691.this.val$adFormat.getLabel() + " ad expanded");
                            C15691.this.val$listener.onAdViewAdExpanded();
                        }
                    });
                    C15691 c15691 = C15691.this;
                    c15691.val$listener.onAdViewAdLoaded(AppLovinMediationAdapter.this.mLoadedAdView);
                    AppLovinMediationAdapter.this.mLoadedAdView.renderAd(appLovinAd);
                }
            });
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
            appLovinMediationAdapter.log(this.val$adFormat.getLabel() + " ad failed to load with error code: " + i);
            this.val$listener.onAdViewAdLoadFailed(AppLovinMediationAdapter.toMaxError(i));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapters/AppLovinMediationAdapter$InterstitialListenerWrapper.class */
    public class InterstitialListenerWrapper implements AbstractC1293g, AppLovinAdClickListener {
        public final MaxInterstitialAdapterListener listener;

        public InterstitialListenerWrapper(MaxInterstitialAdapterListener maxInterstitialAdapterListener) {
            AppLovinMediationAdapter.this = r4;
            this.listener = maxInterstitialAdapterListener;
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            AppLovinMediationAdapter.this.log("Interstitial ad clicked");
            this.listener.onInterstitialAdClicked();
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            AppLovinMediationAdapter.this.log("Interstitial ad shown");
            this.listener.onInterstitialAdDisplayed();
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            AppLovinMediationAdapter.this.log("Interstitial ad hidden");
            this.listener.onInterstitialAdHidden();
        }

        @Override // com.applovin.impl.sdk.p053ad.AbstractC1293g
        public void onAdDisplayFailed(String str) {
            AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
            appLovinMediationAdapter.log("Interstitial ad failed to display with error: " + str);
            this.listener.onInterstitialAdDisplayFailed(new MaxAdapterError((int) MaxAdapterError.ERROR_CODE_UNSPECIFIED, str));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapters/AppLovinMediationAdapter$MaxAppLovinNativeAd.class */
    public class MaxAppLovinNativeAd extends MaxNativeAd {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MaxAppLovinNativeAd(MaxNativeAd.Builder builder) {
            super(builder);
            AppLovinMediationAdapter.this = r4;
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAd
        public void prepareViewForInteraction(MaxNativeAdView maxNativeAdView) {
            AppLovinNativeAdImpl appLovinNativeAdImpl = (AppLovinNativeAdImpl) AppLovinMediationAdapter.this.mNativeAd;
            if (appLovinNativeAdImpl == null) {
                AppLovinMediationAdapter.this.m4887e("Failed to register native ad view for interaction. Native ad is null");
                return;
            }
            ArrayList arrayList = new ArrayList(4);
            if (StringUtils.isValidString(getTitle()) && maxNativeAdView.getTitleTextView() != null) {
                arrayList.add(maxNativeAdView.getTitleTextView());
            }
            if (StringUtils.isValidString(getBody()) && maxNativeAdView.getBodyTextView() != null) {
                arrayList.add(maxNativeAdView.getBodyTextView());
            }
            if (StringUtils.isValidString(getCallToAction()) && maxNativeAdView.getCallToActionButton() != null) {
                arrayList.add(maxNativeAdView.getCallToActionButton());
            }
            if (getIcon() != null && maxNativeAdView.getIconImageView() != null) {
                arrayList.add(maxNativeAdView.getIconImageView());
            }
            appLovinNativeAdImpl.registerViewsForInteraction(arrayList);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper.class */
    public abstract class RewardListenerWrapper implements AppLovinAdRewardListener {
        public boolean isFullyWatched;

        private RewardListenerWrapper() {
            AppLovinMediationAdapter.this = r4;
        }

        public /* synthetic */ RewardListenerWrapper(AppLovinMediationAdapter appLovinMediationAdapter, C15691 c15691) {
            this();
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userOverQuota(AppLovinAd appLovinAd, Map<String, String> map) {
            AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
            appLovinMediationAdapter.log("User is over quota: " + map);
            AppLovinMediationAdapter.this.mPendingReward = null;
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardRejected(AppLovinAd appLovinAd, Map<String, String> map) {
            AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
            appLovinMediationAdapter.log("Reward rejected: " + map);
            AppLovinMediationAdapter.this.mPendingReward = null;
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardVerified(AppLovinAd appLovinAd, Map<String, String> map) {
            String str = map.get(AppLovinEventParameters.REVENUE_CURRENCY);
            String str2 = map.get(AppLovinEventParameters.REVENUE_AMOUNT);
            if (!StringUtils.isValidString(str) || !StringUtils.isValidString(str2)) {
                AppLovinMediationAdapter.this.mPendingReward = MaxRewardImpl.createDefault();
            } else {
                int i = 0;
                try {
                    i = (int) Double.parseDouble(str2);
                } catch (NumberFormatException e) {
                    AppLovinMediationAdapter.this.log("Failed to parse AppLovin reward amount: " + str2, e);
                }
                AppLovinMediationAdapter.this.mPendingReward = MaxRewardImpl.create(i, str);
            }
            AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
            StringBuilder m8752j = C0082b.m8752j("Rewarded verified: ");
            m8752j.append(AppLovinMediationAdapter.this.mPendingReward);
            appLovinMediationAdapter.log(m8752j.toString());
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
            AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
            appLovinMediationAdapter.log("Reward validation request failed with code: " + i);
            AppLovinMediationAdapter.this.mPendingReward = null;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedAdListenerWrapper.class */
    public class RewardedAdListenerWrapper extends RewardListenerWrapper implements AbstractC1293g, AppLovinAdClickListener, AppLovinAdVideoPlaybackListener {
        private final MaxRewardedAdapterListener listener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private RewardedAdListenerWrapper(MaxRewardedAdapterListener maxRewardedAdapterListener) {
            super(r5, null);
            AppLovinMediationAdapter.this = r5;
            this.listener = maxRewardedAdapterListener;
        }

        public /* synthetic */ RewardedAdListenerWrapper(AppLovinMediationAdapter appLovinMediationAdapter, MaxRewardedAdapterListener maxRewardedAdapterListener, C15691 c15691) {
            this(maxRewardedAdapterListener);
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            AppLovinMediationAdapter.this.log("Rewarded ad clicked");
            this.listener.onRewardedAdClicked();
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            AppLovinMediationAdapter.this.log("Rewarded ad shown");
            this.listener.onRewardedAdDisplayed();
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            if ((this.isFullyWatched && AppLovinMediationAdapter.this.mPendingReward != null) || AppLovinMediationAdapter.this.shouldAlwaysRewardUser()) {
                MaxReward reward = AppLovinMediationAdapter.this.mPendingReward != null ? AppLovinMediationAdapter.this.mPendingReward : AppLovinMediationAdapter.this.getReward();
                AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
                appLovinMediationAdapter.log("Rewarded user with reward: " + reward);
                this.listener.onUserRewarded(reward);
                AppLovinMediationAdapter.this.mPendingReward = null;
            }
            AppLovinMediationAdapter.this.log("Rewarded ad hidden");
            this.listener.onRewardedAdHidden();
        }

        @Override // com.applovin.impl.sdk.p053ad.AbstractC1293g
        public void onAdDisplayFailed(String str) {
            AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
            appLovinMediationAdapter.log("Rewarded ad failed to display with error: " + str);
            this.listener.onRewardedAdDisplayFailed(new MaxAdapterError((int) MaxAdapterError.ERROR_CODE_UNSPECIFIED, str));
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackBegan(AppLovinAd appLovinAd) {
            AppLovinMediationAdapter.this.log("Rewarded ad video started");
            this.listener.onRewardedAdVideoStarted();
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
            AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
            appLovinMediationAdapter.log("Rewarded ad video ended at " + d + "% and is fully watched: " + z);
            this.isFullyWatched = z;
            this.listener.onRewardedAdVideoCompleted();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper.class */
    public class RewardedInterstitialAdListenerWrapper extends RewardListenerWrapper implements AbstractC1293g, AppLovinAdClickListener, AppLovinAdVideoPlaybackListener {
        private final MaxRewardedInterstitialAdapterListener listener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private RewardedInterstitialAdListenerWrapper(MaxRewardedInterstitialAdapterListener maxRewardedInterstitialAdapterListener) {
            super(r5, null);
            AppLovinMediationAdapter.this = r5;
            this.listener = maxRewardedInterstitialAdapterListener;
        }

        public /* synthetic */ RewardedInterstitialAdListenerWrapper(AppLovinMediationAdapter appLovinMediationAdapter, MaxRewardedInterstitialAdapterListener maxRewardedInterstitialAdapterListener, C15691 c15691) {
            this(maxRewardedInterstitialAdapterListener);
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            AppLovinMediationAdapter.this.log("Rewarded interstitial ad clicked");
            this.listener.onRewardedInterstitialAdClicked();
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            AppLovinMediationAdapter.this.log("Rewarded interstitial ad shown");
            this.listener.onRewardedInterstitialAdDisplayed();
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            if ((this.isFullyWatched && AppLovinMediationAdapter.this.mPendingReward != null) || AppLovinMediationAdapter.this.shouldAlwaysRewardUser()) {
                AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
                StringBuilder m8752j = C0082b.m8752j("Rewarded interstitial user with reward: ");
                m8752j.append(AppLovinMediationAdapter.this.mPendingReward);
                appLovinMediationAdapter.log(m8752j.toString());
                this.listener.onUserRewarded(AppLovinMediationAdapter.this.mPendingReward);
                AppLovinMediationAdapter.this.mPendingReward = null;
            }
            AppLovinMediationAdapter.this.log("Rewarded interstitial ad hidden");
            this.listener.onRewardedInterstitialAdHidden();
        }

        @Override // com.applovin.impl.sdk.p053ad.AbstractC1293g
        public void onAdDisplayFailed(String str) {
            AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
            appLovinMediationAdapter.log("Rewarded interstitial ad failed to display with error: " + str);
            this.listener.onRewardedInterstitialAdDisplayFailed(new MaxAdapterError((int) MaxAdapterError.ERROR_CODE_UNSPECIFIED, str));
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackBegan(AppLovinAd appLovinAd) {
            AppLovinMediationAdapter.this.log("Rewarded interstitial ad video started");
            this.listener.onRewardedInterstitialAdVideoStarted();
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
            AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
            appLovinMediationAdapter.log("Rewarded interstitial ad video ended at " + d + "% and is fully watched: " + z);
            this.isFullyWatched = z;
            this.listener.onRewardedInterstitialAdVideoCompleted();
        }
    }

    public AppLovinMediationAdapter(AppLovinSdk appLovinSdk) {
        super(appLovinSdk);
    }

    public boolean hasRequiredAssets(boolean z, AppLovinNativeAd appLovinNativeAd) {
        if (z) {
            return StringUtils.isValidString(appLovinNativeAd.getTitle());
        }
        return StringUtils.isValidString(appLovinNativeAd.getTitle()) && StringUtils.isValidString(appLovinNativeAd.getCallToAction());
    }

    private void loadFullscreenAd(String str, MaxAdapterResponseParameters maxAdapterResponseParameters, final MaxAdFormat maxAdFormat, final MaxAdapterListener maxAdapterListener) {
        StringBuilder sb;
        AppLovinAdLoadListener appLovinAdLoadListener = new AppLovinAdLoadListener() { // from class: com.applovin.mediation.adapters.AppLovinMediationAdapter.2
            @Override // com.applovin.sdk.AppLovinAdLoadListener
            public void adReceived(AppLovinAd appLovinAd) {
                AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
                appLovinMediationAdapter.log(maxAdFormat.getLabel() + " ad loaded");
                MaxAdFormat maxAdFormat2 = maxAdFormat;
                if (maxAdFormat2 == MaxAdFormat.INTERSTITIAL) {
                    AppLovinMediationAdapter.this.mLoadedInterstitialAd = appLovinAd;
                    ((MaxInterstitialAdapterListener) maxAdapterListener).onInterstitialAdLoaded();
                } else if (maxAdFormat2 == MaxAdFormat.REWARDED) {
                    AppLovinMediationAdapter.this.mLoadedRewardedAd = appLovinAd;
                    ((MaxRewardedAdapterListener) maxAdapterListener).onRewardedAdLoaded();
                } else if (maxAdFormat2 != MaxAdFormat.REWARDED_INTERSTITIAL) {
                    throw new IllegalStateException("Non-fullscreen ad loaded for fullscreen ad adapter");
                } else {
                    AppLovinMediationAdapter.this.mLoadedRewardedInterstitialAd = appLovinAd;
                    ((MaxRewardedInterstitialAdapterListener) maxAdapterListener).onRewardedInterstitialAdLoaded();
                }
            }

            @Override // com.applovin.sdk.AppLovinAdLoadListener
            public void failedToReceiveAd(int i) {
                AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
                appLovinMediationAdapter.log(maxAdFormat.getLabel() + " ad failed to load with error code: " + i);
                MaxAdFormat maxAdFormat2 = maxAdFormat;
                if (maxAdFormat2 == MaxAdFormat.INTERSTITIAL) {
                    ((MaxInterstitialAdapterListener) maxAdapterListener).onInterstitialAdLoadFailed(AppLovinMediationAdapter.toMaxError(i));
                } else if (maxAdFormat2 == MaxAdFormat.REWARDED) {
                    ((MaxRewardedAdapterListener) maxAdapterListener).onRewardedAdLoadFailed(AppLovinMediationAdapter.toMaxError(i));
                } else if (maxAdFormat2 != MaxAdFormat.REWARDED_INTERSTITIAL) {
                    throw new IllegalStateException("Non-fullscreen ad failed to load for fullscreen ad adapter");
                } else {
                    ((MaxRewardedInterstitialAdapterListener) maxAdapterListener).onRewardedInterstitialAdLoadFailed(AppLovinMediationAdapter.toMaxError(i));
                }
            }
        };
        if (StringUtils.isValidString(maxAdapterResponseParameters.getBidResponse())) {
            StringBuilder m8752j = C0082b.m8752j("Loading bidding ");
            m8752j.append(maxAdFormat.getLabel());
            m8752j.append(" ad...");
            log(m8752j.toString());
            getWrappingSdk().getAdService().loadNextAdForAdToken(maxAdapterResponseParameters.getBidResponse(), appLovinAdLoadListener);
            return;
        }
        if (StringUtils.isValidString(maxAdapterResponseParameters.getThirdPartyAdPlacementId())) {
            str = maxAdapterResponseParameters.getThirdPartyAdPlacementId();
            sb = C0082b.m8752j("Loading mediated ");
            sb.append(maxAdFormat.getLabel());
            sb.append(" ad: ");
            sb.append(str);
            sb.append("...");
        } else {
            sb = C0082b.m8752j("Loading mediated ");
            sb.append(maxAdFormat.getLabel());
            sb.append(" ad...");
        }
        log(sb.toString());
        getWrappingSdk().getAdService().loadNextAdForZoneId(str, appLovinAdLoadListener);
    }

    public static MaxAdapterError toMaxError(int i) {
        int i2 = 204;
        if (i == -1009) {
            i2 = -5207;
        } else if (i != 204) {
            i2 = i == -1 ? -5209 : i >= 500 ? -5208 : -5200;
        }
        return new MaxAdapterError(i2, i);
    }

    public static MaxAdapterError toMaxError(AppLovinAdViewDisplayErrorCode appLovinAdViewDisplayErrorCode) {
        return MaxAdapterError.UNSPECIFIED;
    }

    @Override // com.applovin.mediation.adapter.MaxSignalProvider
    public void collectSignal(MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, Activity activity, MaxSignalCollectionListener maxSignalCollectionListener) {
        log("Collecting signal...");
        maxSignalCollectionListener.onSignalCollected(getWrappingSdk().getAdService().getBidToken());
    }

    @Override // com.applovin.mediation.adapter.MaxAdapter
    public String getAdapterVersion() {
        return getSdkVersion();
    }

    @Override // com.applovin.mediation.adapter.MaxAdapter
    public String getSdkVersion() {
        return AppLovinSdk.VERSION;
    }

    @Override // com.applovin.mediation.adapter.MaxAdapter
    public void initialize(MaxAdapterInitializationParameters maxAdapterInitializationParameters, Activity activity, MaxAdapter.OnCompletionListener onCompletionListener) {
        onCompletionListener.onCompletion(MaxAdapter.InitializationStatus.DOES_NOT_APPLY, null);
    }

    @Override // com.applovin.mediation.adapter.MaxAdViewAdapter
    public void loadAdViewAd(MaxAdapterResponseParameters maxAdapterResponseParameters, MaxAdFormat maxAdFormat, Activity activity, MaxAdViewAdapterListener maxAdViewAdapterListener) {
        C15691 c15691 = new C15691(maxAdFormat, maxAdViewAdapterListener);
        if (StringUtils.isValidString(maxAdapterResponseParameters.getBidResponse())) {
            StringBuilder m8752j = C0082b.m8752j("Loading bidding ");
            m8752j.append(maxAdFormat.getLabel());
            m8752j.append(" ad...");
            log(m8752j.toString());
            getWrappingSdk().getAdService().loadNextAdForAdToken(maxAdapterResponseParameters.getBidResponse(), c15691);
        } else if (StringUtils.isValidString(maxAdapterResponseParameters.getThirdPartyAdPlacementId())) {
            String thirdPartyAdPlacementId = maxAdapterResponseParameters.getThirdPartyAdPlacementId();
            StringBuilder m8752j2 = C0082b.m8752j("Loading mediated ");
            m8752j2.append(maxAdFormat.getLabel());
            m8752j2.append(" ad: ");
            m8752j2.append(thirdPartyAdPlacementId);
            m8752j2.append("...");
            log(m8752j2.toString());
            getWrappingSdk().getAdService().loadNextAdForZoneId(thirdPartyAdPlacementId, c15691);
        } else {
            AppLovinAdSize appLovinAdSize = null;
            if (maxAdFormat == MaxAdFormat.BANNER) {
                appLovinAdSize = AppLovinAdSize.BANNER;
            } else if (maxAdFormat == MaxAdFormat.MREC) {
                appLovinAdSize = AppLovinAdSize.MREC;
            } else if (maxAdFormat == MaxAdFormat.LEADER) {
                appLovinAdSize = AppLovinAdSize.LEADER;
            }
            if (appLovinAdSize != null) {
                StringBuilder m8752j3 = C0082b.m8752j("Loading mediated ");
                m8752j3.append(maxAdFormat.getLabel());
                m8752j3.append(" ad...");
                log(m8752j3.toString());
                getWrappingSdk().getAdService().loadNextAd(appLovinAdSize, c15691);
                return;
            }
            log("Failed to load ad for format: " + maxAdFormat);
            maxAdViewAdapterListener.onAdViewAdLoadFailed(MaxAdapterError.INTERNAL_ERROR);
        }
    }

    @Override // com.applovin.mediation.adapter.MaxInterstitialAdapter
    public void loadInterstitialAd(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity, MaxInterstitialAdapterListener maxInterstitialAdapterListener) {
        loadFullscreenAd("inter_regular", maxAdapterResponseParameters, MaxAdFormat.INTERSTITIAL, maxInterstitialAdapterListener);
    }

    @Override // com.applovin.mediation.adapters.MediationAdapterBase, com.applovin.mediation.adapter.MaxNativeAdAdapter
    public void loadNativeAd(final MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity, final MaxNativeAdAdapterListener maxNativeAdAdapterListener) {
        if (TextUtils.isEmpty(maxAdapterResponseParameters.getBidResponse())) {
            maxNativeAdAdapterListener.onNativeAdLoadFailed(MaxAdapterError.INVALID_CONFIGURATION);
            return;
        }
        m4888d("Loading bidding native ad...");
        getWrappingSdk().coreSdk.m5448v().loadNextAdForAdToken(maxAdapterResponseParameters.getBidResponse(), new AppLovinNativeAdLoadListener() { // from class: com.applovin.mediation.adapters.AppLovinMediationAdapter.3
            @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAdLoadListener
            public void onNativeAdLoadFailed(int i) {
                AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
                appLovinMediationAdapter.m4888d("Native ad failed to load with error code: " + i);
                maxNativeAdAdapterListener.onNativeAdLoadFailed(AppLovinMediationAdapter.toMaxError(i));
            }

            @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAdLoadListener
            public void onNativeAdLoaded(AppLovinNativeAd appLovinNativeAd) {
                AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
                appLovinMediationAdapter.m4888d("Native ad loaded: " + appLovinNativeAd);
                if (AppLovinMediationAdapter.this.hasRequiredAssets(StringUtils.isValidString(BundleUtils.getString("template", "", maxAdapterResponseParameters.getServerParameters())), appLovinNativeAd)) {
                    ((AppLovinNativeAdImpl) appLovinNativeAd).setEventListener(new AppLovinNativeAdEventListener() { // from class: com.applovin.mediation.adapters.AppLovinMediationAdapter.3.1
                        @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAdEventListener
                        public void onNativeAdClicked(AppLovinNativeAd appLovinNativeAd2) {
                            AppLovinMediationAdapter.this.m4888d("Native ad clicked");
                            maxNativeAdAdapterListener.onNativeAdClicked();
                        }
                    });
                    AppLovinMediationAdapter.this.mNativeAd = appLovinNativeAd;
                    maxNativeAdAdapterListener.onNativeAdLoaded(new MaxAppLovinNativeAd(new MaxNativeAd.Builder().setAdFormat(MaxAdFormat.NATIVE).setTitle(appLovinNativeAd.getTitle()).setBody(appLovinNativeAd.getBody()).setAdvertiser(appLovinNativeAd.getAdvertiser()).setCallToAction(appLovinNativeAd.getCallToAction()).setIcon(new MaxNativeAd.MaxNativeAdImage(appLovinNativeAd.getIconUri())).setMediaView(appLovinNativeAd.getMediaView()).setOptionsView(appLovinNativeAd.getOptionsView())), null);
                    return;
                }
                AppLovinMediationAdapter appLovinMediationAdapter2 = AppLovinMediationAdapter.this;
                appLovinMediationAdapter2.m4887e("Native ad does not have required assets: " + appLovinNativeAd);
                maxNativeAdAdapterListener.onNativeAdLoadFailed(MaxAdapterError.MISSING_REQUIRED_NATIVE_AD_ASSETS);
            }
        });
    }

    @Override // com.applovin.mediation.adapter.MaxRewardedAdapter
    public void loadRewardedAd(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity, MaxRewardedAdapterListener maxRewardedAdapterListener) {
        loadFullscreenAd("inter_videoa", maxAdapterResponseParameters, MaxAdFormat.REWARDED, maxRewardedAdapterListener);
    }

    @Override // com.applovin.mediation.adapter.MaxRewardedInterstitialAdapter
    public void loadRewardedInterstitialAd(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity, MaxRewardedInterstitialAdapterListener maxRewardedInterstitialAdapterListener) {
        loadFullscreenAd("inter_autorew", maxAdapterResponseParameters, MaxAdFormat.REWARDED_INTERSTITIAL, maxRewardedInterstitialAdapterListener);
    }

    @Override // com.applovin.mediation.adapter.MaxAdapter
    public void onDestroy() {
        this.mLoadedInterstitialAd = null;
        this.mLoadedRewardedAd = null;
        this.mLoadedRewardedInterstitialAd = null;
        AppLovinAdView appLovinAdView = this.mLoadedAdView;
        if (appLovinAdView != null) {
            appLovinAdView.destroy();
            this.mLoadedAdView = null;
        }
        AppLovinNativeAd appLovinNativeAd = this.mNativeAd;
        if (appLovinNativeAd != null) {
            ((AppLovinNativeAdImpl) appLovinNativeAd).setEventListener(null);
            this.mNativeAd.unregisterViewsForInteraction();
            this.mNativeAd.getMediaView().destroy();
            this.mNativeAd = null;
        }
    }

    @Override // com.applovin.mediation.adapter.MaxInterstitialAdapter
    public void showInterstitialAd(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity, MaxInterstitialAdapterListener maxInterstitialAdapterListener) {
        StringBuilder m8752j = C0082b.m8752j("Showing interstitial: ");
        m8752j.append(maxAdapterResponseParameters.getThirdPartyAdPlacementId());
        m8752j.append("...");
        log(m8752j.toString());
        AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(getWrappingSdk(), activity);
        InterstitialListenerWrapper interstitialListenerWrapper = new InterstitialListenerWrapper(maxInterstitialAdapterListener);
        create.setAdDisplayListener(interstitialListenerWrapper);
        create.setAdClickListener(interstitialListenerWrapper);
        create.showAndRender(this.mLoadedInterstitialAd);
    }

    @Override // com.applovin.mediation.adapters.MediationAdapterBase, com.applovin.mediation.adapter.MaxInterstitialAdViewAdapter
    public void showInterstitialAd(MaxAdapterResponseParameters maxAdapterResponseParameters, ViewGroup viewGroup, AbstractC0516f abstractC0516f, Activity activity, MaxInterstitialAdapterListener maxInterstitialAdapterListener) {
        StringBuilder m8752j = C0082b.m8752j("Showing interstitial ad view: ");
        m8752j.append(maxAdapterResponseParameters.getThirdPartyAdPlacementId());
        m8752j.append("...");
        log(m8752j.toString());
        AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(getWrappingSdk(), activity);
        InterstitialListenerWrapper interstitialListenerWrapper = new InterstitialListenerWrapper(maxInterstitialAdapterListener);
        create.setAdDisplayListener(interstitialListenerWrapper);
        create.setAdClickListener(interstitialListenerWrapper);
        create.showAndRender(this.mLoadedInterstitialAd, viewGroup, abstractC0516f);
    }

    @Override // com.applovin.mediation.adapter.MaxRewardedAdapter
    public void showRewardedAd(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity, MaxRewardedAdapterListener maxRewardedAdapterListener) {
        StringBuilder m8752j = C0082b.m8752j("Showing rewarded ad: ");
        m8752j.append(maxAdapterResponseParameters.getThirdPartyAdPlacementId());
        m8752j.append("...");
        log(m8752j.toString());
        configureReward(maxAdapterResponseParameters);
        AppLovinIncentivizedInterstitial create = AppLovinIncentivizedInterstitial.create(getWrappingSdk());
        RewardedAdListenerWrapper rewardedAdListenerWrapper = new RewardedAdListenerWrapper(this, maxRewardedAdapterListener, null);
        create.show(this.mLoadedRewardedAd, activity, rewardedAdListenerWrapper, rewardedAdListenerWrapper, rewardedAdListenerWrapper, rewardedAdListenerWrapper);
    }

    @Override // com.applovin.mediation.adapters.MediationAdapterBase, com.applovin.mediation.adapter.MaxRewardedAdViewAdapter
    public void showRewardedAd(MaxAdapterResponseParameters maxAdapterResponseParameters, ViewGroup viewGroup, AbstractC0516f abstractC0516f, Activity activity, MaxRewardedAdapterListener maxRewardedAdapterListener) {
        StringBuilder m8752j = C0082b.m8752j("Showing rewarded ad view: ");
        m8752j.append(maxAdapterResponseParameters.getThirdPartyAdPlacementId());
        m8752j.append("...");
        log(m8752j.toString());
        configureReward(maxAdapterResponseParameters);
        AppLovinIncentivizedInterstitial create = AppLovinIncentivizedInterstitial.create(getWrappingSdk());
        RewardedAdListenerWrapper rewardedAdListenerWrapper = new RewardedAdListenerWrapper(this, maxRewardedAdapterListener, null);
        create.show(this.mLoadedRewardedAd, viewGroup, abstractC0516f, activity, rewardedAdListenerWrapper, rewardedAdListenerWrapper, rewardedAdListenerWrapper, rewardedAdListenerWrapper);
    }

    @Override // com.applovin.mediation.adapter.MaxRewardedInterstitialAdapter
    public void showRewardedInterstitialAd(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity, MaxRewardedInterstitialAdapterListener maxRewardedInterstitialAdapterListener) {
        StringBuilder m8752j = C0082b.m8752j("Showing rewarded interstitial ad: ");
        m8752j.append(maxAdapterResponseParameters.getThirdPartyAdPlacementId());
        m8752j.append("...");
        log(m8752j.toString());
        RewardedInterstitialAdListenerWrapper rewardedInterstitialAdListenerWrapper = new RewardedInterstitialAdListenerWrapper(this, maxRewardedInterstitialAdapterListener, null);
        if (this.mLoadedRewardedInterstitialAd.getType() == AppLovinAdType.AUTO_INCENTIVIZED) {
            configureReward(maxAdapterResponseParameters);
            AppLovinRewardedInterstitialAd appLovinRewardedInterstitialAd = new AppLovinRewardedInterstitialAd(getWrappingSdk());
            appLovinRewardedInterstitialAd.setAdDisplayListener(rewardedInterstitialAdListenerWrapper);
            appLovinRewardedInterstitialAd.setAdClickListener(rewardedInterstitialAdListenerWrapper);
            appLovinRewardedInterstitialAd.setAdVideoPlaybackListener(rewardedInterstitialAdListenerWrapper);
            appLovinRewardedInterstitialAd.show(this.mLoadedRewardedInterstitialAd, activity, rewardedInterstitialAdListenerWrapper);
            return;
        }
        log("Rewarded interstitial is regular interstitial");
        AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(getWrappingSdk(), activity);
        create.setAdDisplayListener(rewardedInterstitialAdListenerWrapper);
        create.setAdClickListener(rewardedInterstitialAdListenerWrapper);
        create.setAdVideoPlaybackListener(rewardedInterstitialAdListenerWrapper);
        create.showAndRender(this.mLoadedRewardedInterstitialAd);
    }
}
