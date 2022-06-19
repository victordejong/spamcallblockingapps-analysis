package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.util.ads.AdUtils;
import com.facebook.ads.AbstractC9941Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.AudienceNetworkAds;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Views;
import com.mopub.nativeads.FacebookNative;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/FacebookBanner.class */
public class FacebookBanner extends BaseAd implements AdListener {

    /* renamed from: e */
    private static final String f59156e = "FacebookBanner";

    /* renamed from: f */
    private AdView f59158f;

    /* renamed from: h */
    private String f59160h;

    /* renamed from: i */
    private double f59161i;

    /* renamed from: j */
    private String f59162j;

    /* renamed from: d */
    private final AtomicBoolean f59157d = new AtomicBoolean(false);

    /* renamed from: g */
    private final FacebookAdapterConfiguration f59159g = new FacebookAdapterConfiguration();

    public static AdSize calculateAdSize(int i) {
        return i >= AdSize.RECTANGLE_HEIGHT_250.getHeight() ? AdSize.RECTANGLE_HEIGHT_250 : i >= AdSize.BANNER_HEIGHT_90.getHeight() ? AdSize.BANNER_HEIGHT_90 : AdSize.BANNER_HEIGHT_50;
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = this.f59160h;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    @Override // com.mopub.mobileads.BaseAd
    public View getAdView() {
        return this.f59158f;
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getProviderTag() {
        return "facebook";
    }

    @Override // com.mopub.mobileads.BaseAd
    protected void load(Context context, AdData adData) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(adData);
        if (!AudienceNetworkAds.isInitialized(context)) {
            AudienceNetworkAds.initialize(context);
        }
        this.f59118a = false;
        Map<String, String> extras = adData.getExtras();
        this.f59159g.initializeNetwork(context, extras);
        String str = extras.get(FacebookNative.PLACEMENT_ID_KEY);
        if (!(str != null && str.length() > 0)) {
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f59156e, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
            if (this.f59119b == null) {
                return;
            }
            this.f59119b.onAdLoadFailed(MoPubErrorCode.NETWORK_NO_FILL);
            return;
        }
        this.f59160h = extras.get(FacebookNative.PLACEMENT_ID_KEY);
        this.f59159g.setCachedInitializationParameters(context, extras);
        AdView adView = new AdView(context.getApplicationContext(), this.f59160h, calculateAdSize(adData.getAdHeight() == null ? 0 : adData.getAdHeight().intValue()));
        this.f59158f = adView;
        AdView.AdViewLoadConfigBuilder withAdListener = adView.buildLoadAdConfig().withAdListener(this);
        this.f59161i = AdUtils.m27266a(extras);
        this.f59162j = extras.get("app_bidder_request_id");
        String str2 = extras.get("adm");
        if (!TextUtils.isEmpty(str2)) {
            this.f59158f.loadAd(withAdListener.withBid(str2).build());
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f59156e);
            return;
        }
        this.f59158f.loadAd(withAdListener.build());
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f59156e);
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(AbstractC9941Ad abstractC9941Ad) {
        if (this.f59120c != null) {
            this.f59120c.onAdClicked();
        }
        if (!this.f59157d.getAndSet(true)) {
            CallAppAdsAnalyticsManager.m28737c("facebook", this.f59160h, CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(this.f59158f.getHeight()));
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(AbstractC9941Ad abstractC9941Ad) {
        String adNetworkId = getAdNetworkId();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
        String str = f59156e;
        MoPubLog.log(adNetworkId, adapterLogEvent, str, "Facebook banner ad loaded successfully. Showing ad...");
        if (this.f59119b != null) {
            this.f59119b.onAdLoaded();
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, str);
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onError(AbstractC9941Ad abstractC9941Ad, AdError adError) {
        MoPubErrorCode moPubErrorCode;
        String adNetworkId = getAdNetworkId();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
        String str = f59156e;
        MoPubLog.log(adNetworkId, adapterLogEvent, str, "Facebook banner ad failed to load.");
        int errorCode = adError.getErrorCode();
        if (errorCode == 2100) {
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
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, str, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
        if (this.f59120c == null && this.f59119b != null) {
            this.f59119b.onAdLoadFailed(moPubErrorCode);
        } else if (this.f59120c == null) {
        } else {
            this.f59120c.onAdFailed(moPubErrorCode);
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        AdView adView = this.f59158f;
        if (adView != null) {
            Views.removeFromParent(adView);
            this.f59158f.destroy();
            this.f59158f = null;
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(AbstractC9941Ad abstractC9941Ad) {
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, f59156e, "Facebook banner ad logged impression.");
        if (this.f59120c != null) {
            this.f59120c.onAdImpression();
        }
        this.f59157d.set(false);
        CallAppAdsAnalyticsManager.m28740a("facebook", this.f59160h, this.f59161i, CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(this.f59158f.getHeight()), this.f59162j);
    }
}
