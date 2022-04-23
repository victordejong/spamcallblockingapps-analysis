package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.util.ads.AdUtils;
import com.facebook.ads.Ad;
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
    private static final String e = "FacebookBanner";
    private AdView f;
    private String h;
    private double i;
    private String j;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f34064d = new AtomicBoolean(false);
    private final FacebookAdapterConfiguration g = new FacebookAdapterConfiguration();

    public static AdSize calculateAdSize(int i) {
        return i >= AdSize.RECTANGLE_HEIGHT_250.getHeight() ? AdSize.RECTANGLE_HEIGHT_250 : i >= AdSize.BANNER_HEIGHT_90.getHeight() ? AdSize.BANNER_HEIGHT_90 : AdSize.BANNER_HEIGHT_50;
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = this.h;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    @Override // com.mopub.mobileads.BaseAd
    public View getAdView() {
        return this.f;
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
        this.f34040a = false;
        Map<String, String> extras = adData.getExtras();
        this.g.initializeNetwork(context, extras);
        String str = extras.get(FacebookNative.PLACEMENT_ID_KEY);
        if (str != null && str.length() > 0) {
            this.h = extras.get(FacebookNative.PLACEMENT_ID_KEY);
            this.g.setCachedInitializationParameters(context, extras);
            AdView adView = new AdView(context.getApplicationContext(), this.h, calculateAdSize(adData.getAdHeight() == null ? 0 : adData.getAdHeight().intValue()));
            this.f = adView;
            AdView.AdViewLoadConfigBuilder withAdListener = adView.buildLoadAdConfig().withAdListener(this);
            this.i = AdUtils.a(extras);
            this.j = extras.get("app_bidder_request_id");
            String str2 = extras.get("adm");
            if (!TextUtils.isEmpty(str2)) {
                this.f.loadAd(withAdListener.withBid(str2).build());
                MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, e);
                return;
            }
            this.f.loadAd(withAdListener.build());
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, e);
            return;
        }
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, e, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
        if (this.f34041b != null) {
            this.f34041b.onAdLoadFailed(MoPubErrorCode.NETWORK_NO_FILL);
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(Ad ad) {
        if (this.f34042c != null) {
            this.f34042c.onAdClicked();
        }
        if (!this.f34064d.getAndSet(true)) {
            CallAppAdsAnalyticsManager.c("facebook", this.h, CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(this.f.getHeight()));
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(Ad ad) {
        String adNetworkId = getAdNetworkId();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
        String str = e;
        MoPubLog.log(adNetworkId, adapterLogEvent, str, "Facebook banner ad loaded successfully. Showing ad...");
        if (this.f34041b != null) {
            this.f34041b.onAdLoaded();
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, str);
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onError(Ad ad, AdError adError) {
        MoPubErrorCode moPubErrorCode;
        String adNetworkId = getAdNetworkId();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
        String str = e;
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
        if (this.f34042c == null && this.f34041b != null) {
            this.f34041b.onAdLoadFailed(moPubErrorCode);
        } else if (this.f34042c != null) {
            this.f34042c.onAdFailed(moPubErrorCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        AdView adView = this.f;
        if (adView != null) {
            Views.removeFromParent(adView);
            this.f.destroy();
            this.f = null;
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(Ad ad) {
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, e, "Facebook banner ad logged impression.");
        if (this.f34042c != null) {
            this.f34042c.onAdImpression();
        }
        this.f34064d.set(false);
        CallAppAdsAnalyticsManager.a("facebook", this.h, this.i, CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(this.f.getHeight()), this.j);
    }
}
