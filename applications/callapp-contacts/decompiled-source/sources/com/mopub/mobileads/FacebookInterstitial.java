package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.ads.AdUtils;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.FacebookNative;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/FacebookInterstitial.class */
public class FacebookInterstitial extends BaseAd implements InterstitialAdExtendedListener {
    private static final String f = "FacebookInterstitial";
    private InterstitialAd e;
    private String h;
    private String l;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f34065d = new AtomicBoolean(false);
    private double g = 0.0d;
    private Handler i = new Handler();
    private FacebookAdapterConfiguration k = new FacebookAdapterConfiguration();
    private Runnable j = new Runnable() { // from class: com.mopub.mobileads.FacebookInterstitial.1
        @Override // java.lang.Runnable
        public final void run() {
            if (FacebookInterstitial.this.f34041b != null) {
                MoPubLog.log(FacebookInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, FacebookInterstitial.f, "Expiring unused Facebook Interstitial ad due to Facebook's 60-minute expiration policy.");
                FacebookInterstitial.this.f34041b.onAdLoadFailed(MoPubErrorCode.FULLSCREEN_SHOW_ERROR);
                MoPubLog.log(FacebookInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_FAILED, FacebookInterstitial.f, Integer.valueOf(MoPubErrorCode.EXPIRED.getIntCode()), MoPubErrorCode.EXPIRED);
                FacebookInterstitial.this.onInvalidate();
            }
        }
    };

    private void d() {
        this.i.removeCallbacks(this.j);
    }

    @Override // com.mopub.mobileads.BaseAd
    protected final void a() {
        String adNetworkId = getAdNetworkId();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED;
        String str = f;
        MoPubLog.log(adNetworkId, adapterLogEvent, str);
        InterstitialAd interstitialAd = this.e;
        if (interstitialAd == null || !interstitialAd.isAdLoaded() || this.e.isAdInvalidated()) {
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_FAILED, str, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, str, "Tried to show a Facebook interstitial ad when it's not ready. Please try again.");
            if (this.f34042c != null) {
                onError(this.e, AdError.INTERNAL_ERROR);
            } else {
                MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, str, "Interstitial listener not instantiated. Please load interstitial again.");
            }
        } else {
            this.e.show();
            d();
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = this.l;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getProviderTag() {
        return "facebook";
    }

    @Override // com.mopub.mobileads.BaseAd
    protected void load(Context context, AdData adData) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(adData);
        Map<String, String> extras = adData.getExtras();
        this.k.initializeNetwork(context, extras);
        if (!AudienceNetworkAds.isInitialized(context)) {
            AudienceNetworkAds.initialize(context);
        }
        this.f34040a = false;
        String str = extras.get(FacebookNative.PLACEMENT_ID_KEY);
        if (str != null && str.length() > 0) {
            this.l = extras.get(FacebookNative.PLACEMENT_ID_KEY);
            this.k.setCachedInitializationParameters(context, extras);
            this.e = new InterstitialAd(context, this.l);
            String str2 = extras.get("adm");
            InterstitialAd.InterstitialAdLoadConfigBuilder withAdListener = this.e.buildLoadAdConfig().withAdListener(this);
            this.g = AdUtils.a(extras);
            this.h = extras.get("app_bidder_request_id");
            if (!TextUtils.isEmpty(str2)) {
                this.e.loadAd(withAdListener.withBid(str2).build());
                MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f);
                return;
            }
            this.e.loadAd(withAdListener.build());
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f);
        } else if (this.f34041b != null) {
            this.f34041b.onAdLoadFailed(MoPubErrorCode.NETWORK_NO_FILL);
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(Ad ad) {
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CLICKED, f);
        if (this.f34042c != null) {
            this.f34042c.onAdClicked();
        }
        if (!this.f34065d.getAndSet(true)) {
            CallAppAdsAnalyticsManager.c(getProviderTag(), ad.getPlacementId(), MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL);
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(Ad ad) {
        d();
        if (this.f34041b != null) {
            this.f34041b.onAdLoaded();
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, f);
        }
        this.i.postDelayed(this.j, Constants.HOUR_IN_MILLIS);
    }

    @Override // com.facebook.ads.AdListener
    public void onError(Ad ad, AdError adError) {
        MoPubErrorCode moPubErrorCode;
        d();
        int errorCode = adError.getErrorCode();
        if (errorCode == 2009) {
            moPubErrorCode = MoPubErrorCode.NETWORK_TIMEOUT;
        } else if (errorCode == 2100) {
            moPubErrorCode = MoPubErrorCode.VIDEO_PLAYBACK_ERROR;
        } else if (errorCode != 3001) {
            switch (errorCode) {
                case 1000:
                    moPubErrorCode = MoPubErrorCode.NO_CONNECTION;
                    break;
                case 1001:
                    moPubErrorCode = MoPubErrorCode.NETWORK_NO_FILL;
                    break;
                case AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE /* 1002 */:
                    moPubErrorCode = MoPubErrorCode.CANCELLED;
                    break;
                default:
                    switch (errorCode) {
                        case 2000:
                            moPubErrorCode = MoPubErrorCode.SERVER_ERROR;
                            break;
                        case AdError.INTERNAL_ERROR_CODE /* 2001 */:
                            moPubErrorCode = MoPubErrorCode.INTERNAL_ERROR;
                            break;
                        case AdError.CACHE_ERROR_CODE /* 2002 */:
                            moPubErrorCode = MoPubErrorCode.VIDEO_CACHE_ERROR;
                            break;
                        default:
                            moPubErrorCode = MoPubErrorCode.UNSPECIFIED;
                            break;
                    }
            }
        } else {
            moPubErrorCode = MoPubErrorCode.NETWORK_INVALID_STATE;
        }
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
        if (this.f34042c == null && this.f34041b != null) {
            this.f34041b.onAdLoadFailed(moPubErrorCode);
        } else if (this.f34042c != null) {
            this.f34042c.onAdFailed(moPubErrorCode);
        }
    }

    @Override // com.facebook.ads.InterstitialAdExtendedListener
    public void onInterstitialActivityDestroyed() {
        if (this.f34042c != null) {
            this.f34042c.onAdDismissed();
        }
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDismissed(Ad ad) {
        if (this.f34042c != null) {
            this.f34042c.onAdDismissed();
        }
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDisplayed(Ad ad) {
        d();
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_SUCCESS, f);
        if (this.f34042c != null) {
            this.f34042c.onAdShown();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        d();
        InterstitialAd interstitialAd = this.e;
        if (interstitialAd != null) {
            interstitialAd.destroy();
            this.e = null;
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(Ad ad) {
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, f, "Facebook interstitial ad logged impression.");
        if (this.f34042c != null) {
            this.f34042c.onAdImpression();
        }
        this.f34065d.set(false);
        CallAppAdsAnalyticsManager.a(getProviderTag(), ad.getPlacementId(), this.g, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL, this.h);
    }

    @Override // com.facebook.ads.RewardedAdListener
    public void onRewardedAdCompleted() {
    }

    @Override // com.facebook.ads.RewardedAdListener
    public void onRewardedAdServerFailed() {
    }

    @Override // com.facebook.ads.RewardedAdListener
    public void onRewardedAdServerSucceeded() {
    }
}
