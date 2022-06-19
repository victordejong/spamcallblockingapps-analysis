package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.util.ads.AdUtils;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Views;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/GooglePlayServicesBanner.class */
public class GooglePlayServicesBanner extends BaseAd {

    /* renamed from: g */
    private static final String f59207g = "GooglePlayServicesBanner";

    /* renamed from: e */
    private String f59209e;

    /* renamed from: f */
    private double f59210f;

    /* renamed from: h */
    private AdView f59211h;

    /* renamed from: i */
    private String f59212i;

    /* renamed from: j */
    private Integer f59213j;

    /* renamed from: k */
    private Integer f59214k;

    /* renamed from: d */
    private final AtomicBoolean f59208d = new AtomicBoolean(false);

    /* renamed from: l */
    private final GooglePlayServicesAdapterConfiguration f59215l = new GooglePlayServicesAdapterConfiguration();

    /* renamed from: com.mopub.mobileads.GooglePlayServicesBanner$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/GooglePlayServicesBanner$a.class */
    final class C16776a extends AdListener {
        private C16776a() {
            GooglePlayServicesBanner.this = r4;
        }

        /* renamed from: a */
        private static MoPubErrorCode m6512a(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? MoPubErrorCode.UNSPECIFIED : MoPubErrorCode.NO_FILL : MoPubErrorCode.NO_CONNECTION : MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR : MoPubErrorCode.INTERNAL_ERROR;
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(LoadAdError loadAdError) {
            MoPubLog.log(GooglePlayServicesBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, GooglePlayServicesBanner.f59207g, Integer.valueOf(m6512a(loadAdError.getCode()).getIntCode()), m6512a(loadAdError.getCode()));
            String adNetworkId = GooglePlayServicesBanner.this.getAdNetworkId();
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
            String str = GooglePlayServicesBanner.f59207g;
            MoPubLog.log(adNetworkId, adapterLogEvent, str, "Failed to load Google banners with message: " + loadAdError.getMessage() + ". Caused by: " + loadAdError.getCause());
            if (GooglePlayServicesBanner.this.f59119b != null) {
                GooglePlayServicesBanner.this.f59119b.onAdLoadFailed(m6512a(loadAdError.getCode()));
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdImpression() {
            GooglePlayServicesBanner.this.f59208d.set(false);
            CallAppAdsAnalyticsManager.m28741a(GooglePlayServicesBanner.this.f59209e, GooglePlayServicesBanner.this.f59211h.getAdUnitId(), GooglePlayServicesBanner.this.f59210f, CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(GooglePlayServicesBanner.this.f59211h.getAdSize().getHeight()));
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
            GooglePlayServicesBanner.this.f59211h.setTag(2131362238, Integer.valueOf(GooglePlayServicesBanner.this.f59211h.getAdSize().getHeight()));
            int width = GooglePlayServicesBanner.this.f59211h.getAdSize().getWidth();
            int height = GooglePlayServicesBanner.this.f59211h.getAdSize().getHeight();
            if (width <= GooglePlayServicesBanner.this.f59213j.intValue() && height <= GooglePlayServicesBanner.this.f59214k.intValue()) {
                MoPubLog.log(GooglePlayServicesBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, GooglePlayServicesBanner.f59207g);
                MoPubLog.log(GooglePlayServicesBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, GooglePlayServicesBanner.f59207g);
                MoPubLog.log(GooglePlayServicesBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_SUCCESS, GooglePlayServicesBanner.f59207g);
                if (GooglePlayServicesBanner.this.f59119b == null) {
                    return;
                }
                GooglePlayServicesBanner.this.f59119b.onAdLoaded();
                return;
            }
            MoPubLog.log(GooglePlayServicesBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, GooglePlayServicesBanner.f59207g, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
            String adNetworkId = GooglePlayServicesBanner.this.getAdNetworkId();
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
            String str = GooglePlayServicesBanner.f59207g;
            MoPubLog.log(adNetworkId, adapterLogEvent, str, "Google served an ad but it was invalidated because its size of " + width + " x " + height + " exceeds the publisher-specified size of " + GooglePlayServicesBanner.this.f59213j + " x " + GooglePlayServicesBanner.this.f59214k);
            if (GooglePlayServicesBanner.this.f59119b == null) {
                return;
            }
            GooglePlayServicesBanner.this.f59119b.onAdLoadFailed(m6512a(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()));
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            MoPubLog.log(GooglePlayServicesBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CLICKED, GooglePlayServicesBanner.f59207g);
            if (GooglePlayServicesBanner.this.f59120c != null) {
                GooglePlayServicesBanner.this.f59120c.onAdClicked();
            }
            if (!GooglePlayServicesBanner.this.f59208d.getAndSet(true)) {
                CallAppAdsAnalyticsManager.m28738b(GooglePlayServicesBanner.this.f59209e, GooglePlayServicesBanner.this.f59211h.getAdUnitId(), CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(GooglePlayServicesBanner.this.f59211h.getAdSize().getHeight()));
            }
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = this.f59212i;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    @Override // com.mopub.mobileads.BaseAd
    public View getAdView() {
        return this.f59211h;
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getProviderTag() {
        return this.f59209e;
    }

    @Override // com.mopub.mobileads.BaseAd
    protected void load(Context context, AdData adData) {
        this.f59215l.initializeNetwork(context, adData.getExtras());
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(adData);
        this.f59213j = adData.getAdWidth();
        this.f59214k = adData.getAdHeight();
        Map<String, String> extras = adData.getExtras();
        this.f59212i = extras.get(GooglePlayServicesInterstitial.AD_UNIT_ID_KEY);
        this.f59210f = AdUtils.m27266a(extras);
        this.f59209e = AdUtils.m27265a(extras, Payload.SOURCE_GOOGLE);
        AdView adView = new AdView(context.getApplicationContext());
        this.f59211h = adView;
        adView.setAdListener(new C16776a());
        this.f59211h.setAdUnitId(this.f59212i);
        Integer num = this.f59213j;
        AdSize adSize = null;
        if (num != null) {
            adSize = null;
            if (this.f59214k != null) {
                adSize = null;
                if (num.intValue() > 0) {
                    adSize = this.f59214k.intValue() <= 0 ? null : new AdSize(this.f59213j.intValue(), this.f59214k.intValue());
                }
            }
        }
        if (adSize == null) {
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f59207g, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
            if (this.f59119b == null) {
                return;
            }
            this.f59119b.onAdLoadFailed(MoPubErrorCode.NETWORK_NO_FILL);
            return;
        }
        AdSize adSize2 = adSize;
        if (CallAppRemoteConfigManager.get().m28698c("GoogleAdaptiveBannerEnabled")) {
            adSize2 = adSize;
            if (extras.containsKey("callapp_adaptive_ad_width")) {
                if (adSize.getHeight() == AdSize.BANNER.getHeight() && adSize.getWidth() == AdSize.BANNER.getWidth()) {
                    float parseFloat = Float.parseFloat(extras.get("callapp_adaptive_ad_width"));
                    adSize2 = adSize;
                    if (parseFloat > BitmapDescriptorFactory.HUE_RED) {
                        adSize2 = AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(context, (int) parseFloat);
                    }
                } else {
                    adSize2 = adSize;
                    if (adSize.getHeight() == AdSize.MEDIUM_RECTANGLE.getHeight()) {
                        adSize2 = adSize;
                        if (adSize.getWidth() == AdSize.MEDIUM_RECTANGLE.getWidth()) {
                            float parseFloat2 = Float.parseFloat(extras.get("callapp_adaptive_ad_width"));
                            adSize2 = adSize;
                            if (parseFloat2 > BitmapDescriptorFactory.HUE_RED) {
                                adSize2 = AdSize.getCurrentOrientationInlineAdaptiveBannerAdSize(context, (int) parseFloat2);
                            }
                        }
                    }
                }
            }
        }
        this.f59211h.setAdSize(adSize2);
        AdRequest.Builder builder = new AdRequest.Builder();
        builder.setRequestAgent(MoPubLog.LOGTAG);
        String str = extras.get(GooglePlayServicesInterstitial.CONTENT_URL_KEY);
        if (!TextUtils.isEmpty(str)) {
            builder.setContentUrl(str);
        }
        RequestConfiguration.Builder builder2 = new RequestConfiguration.Builder();
        String str2 = extras.get(GooglePlayServicesInterstitial.TEST_DEVICES_KEY);
        if (!TextUtils.isEmpty(str2)) {
            builder2.setTestDeviceIds(Collections.singletonList(str2));
        }
        String str3 = extras.get(GooglePlayServicesInterstitial.TAG_FOR_CHILD_DIRECTED_KEY);
        if (str3 == null) {
            builder2.setTagForChildDirectedTreatment(-1);
        } else if (Boolean.parseBoolean(str3)) {
            builder2.setTagForChildDirectedTreatment(1);
        } else {
            builder2.setTagForChildDirectedTreatment(0);
        }
        String str4 = extras.get(GooglePlayServicesInterstitial.TAG_FOR_UNDER_AGE_OF_CONSENT_KEY);
        if (str4 == null) {
            builder2.setTagForUnderAgeOfConsent(-1);
        } else if (Boolean.parseBoolean(str4)) {
            builder2.setTagForUnderAgeOfConsent(1);
        } else {
            builder2.setTagForUnderAgeOfConsent(0);
        }
        MobileAds.setRequestConfiguration(builder2.build());
        this.f59211h.loadAd(builder.build());
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f59207g);
    }

    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        Views.removeFromParent(this.f59211h);
        AdView adView = this.f59211h;
        if (adView != null) {
            adView.setAdListener(null);
            this.f59211h.destroy();
        }
    }
}
