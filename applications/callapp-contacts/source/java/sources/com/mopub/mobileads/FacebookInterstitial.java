package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.ads.AdUtils;
import com.facebook.ads.AbstractC9941Ad;
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

    /* renamed from: f */
    private static final String f59163f = "FacebookInterstitial";

    /* renamed from: e */
    private InterstitialAd f59165e;

    /* renamed from: h */
    private String f59167h;

    /* renamed from: l */
    private String f59171l;

    /* renamed from: d */
    private final AtomicBoolean f59164d = new AtomicBoolean(false);

    /* renamed from: g */
    private double f59166g = 0.0d;

    /* renamed from: i */
    private Handler f59168i = new Handler();

    /* renamed from: k */
    private FacebookAdapterConfiguration f59170k = new FacebookAdapterConfiguration();

    /* renamed from: j */
    private Runnable f59169j = new Runnable() { // from class: com.mopub.mobileads.FacebookInterstitial.1
        @Override // java.lang.Runnable
        public final void run() {
            if (FacebookInterstitial.this.f59119b != null) {
                MoPubLog.log(FacebookInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, FacebookInterstitial.f59163f, "Expiring unused Facebook Interstitial ad due to Facebook's 60-minute expiration policy.");
                FacebookInterstitial.this.f59119b.onAdLoadFailed(MoPubErrorCode.FULLSCREEN_SHOW_ERROR);
                MoPubLog.log(FacebookInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_FAILED, FacebookInterstitial.f59163f, Integer.valueOf(MoPubErrorCode.EXPIRED.getIntCode()), MoPubErrorCode.EXPIRED);
                FacebookInterstitial.this.onInvalidate();
            }
        }
    };

    /* renamed from: d */
    private void m6539d() {
        this.f59168i.removeCallbacks(this.f59169j);
    }

    @Override // com.mopub.mobileads.BaseAd
    /* renamed from: a */
    protected final void mo6371a() {
        String adNetworkId = getAdNetworkId();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED;
        String str = f59163f;
        MoPubLog.log(adNetworkId, adapterLogEvent, str);
        InterstitialAd interstitialAd = this.f59165e;
        if (interstitialAd != null && interstitialAd.isAdLoaded() && !this.f59165e.isAdInvalidated()) {
            this.f59165e.show();
            m6539d();
            return;
        }
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_FAILED, str, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, str, "Tried to show a Facebook interstitial ad when it's not ready. Please try again.");
        if (this.f59120c != null) {
            onError(this.f59165e, AdError.INTERNAL_ERROR);
        } else {
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, str, "Interstitial listener not instantiated. Please load interstitial again.");
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = this.f59171l;
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
        this.f59170k.initializeNetwork(context, extras);
        if (!AudienceNetworkAds.isInitialized(context)) {
            AudienceNetworkAds.initialize(context);
        }
        this.f59118a = false;
        String str = extras.get(FacebookNative.PLACEMENT_ID_KEY);
        if (!(str != null && str.length() > 0)) {
            if (this.f59119b == null) {
                return;
            }
            this.f59119b.onAdLoadFailed(MoPubErrorCode.NETWORK_NO_FILL);
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f59163f, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
            return;
        }
        this.f59171l = extras.get(FacebookNative.PLACEMENT_ID_KEY);
        this.f59170k.setCachedInitializationParameters(context, extras);
        this.f59165e = new InterstitialAd(context, this.f59171l);
        String str2 = extras.get("adm");
        InterstitialAd.InterstitialAdLoadConfigBuilder withAdListener = this.f59165e.buildLoadAdConfig().withAdListener(this);
        this.f59166g = AdUtils.m27266a(extras);
        this.f59167h = extras.get("app_bidder_request_id");
        if (!TextUtils.isEmpty(str2)) {
            this.f59165e.loadAd(withAdListener.withBid(str2).build());
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f59163f);
            return;
        }
        this.f59165e.loadAd(withAdListener.build());
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f59163f);
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(AbstractC9941Ad abstractC9941Ad) {
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CLICKED, f59163f);
        if (this.f59120c != null) {
            this.f59120c.onAdClicked();
        }
        if (!this.f59164d.getAndSet(true)) {
            CallAppAdsAnalyticsManager.m28737c(getProviderTag(), abstractC9941Ad.getPlacementId(), MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL);
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(AbstractC9941Ad abstractC9941Ad) {
        m6539d();
        if (this.f59119b != null) {
            this.f59119b.onAdLoaded();
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, f59163f);
        }
        this.f59168i.postDelayed(this.f59169j, Constants.HOUR_IN_MILLIS);
    }

    @Override // com.facebook.ads.AdListener
    public void onError(AbstractC9941Ad abstractC9941Ad, AdError adError) {
        MoPubErrorCode moPubErrorCode;
        m6539d();
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
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f59163f, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
        if (this.f59120c == null && this.f59119b != null) {
            this.f59119b.onAdLoadFailed(moPubErrorCode);
        } else if (this.f59120c == null) {
        } else {
            this.f59120c.onAdFailed(moPubErrorCode);
        }
    }

    @Override // com.facebook.ads.InterstitialAdExtendedListener
    public void onInterstitialActivityDestroyed() {
        if (this.f59120c != null) {
            this.f59120c.onAdDismissed();
        }
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDismissed(AbstractC9941Ad abstractC9941Ad) {
        if (this.f59120c != null) {
            this.f59120c.onAdDismissed();
        }
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDisplayed(AbstractC9941Ad abstractC9941Ad) {
        m6539d();
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_SUCCESS, f59163f);
        if (this.f59120c != null) {
            this.f59120c.onAdShown();
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        m6539d();
        InterstitialAd interstitialAd = this.f59165e;
        if (interstitialAd != null) {
            interstitialAd.destroy();
            this.f59165e = null;
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(AbstractC9941Ad abstractC9941Ad) {
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, f59163f, "Facebook interstitial ad logged impression.");
        if (this.f59120c != null) {
            this.f59120c.onAdImpression();
        }
        this.f59164d.set(false);
        CallAppAdsAnalyticsManager.m28740a(getProviderTag(), abstractC9941Ad.getPlacementId(), this.f59166g, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL, this.f59167h);
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
