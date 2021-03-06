package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.util.ads.AdUtils;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Views;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/GooglePlayServicesDfpBanner.class */
public class GooglePlayServicesDfpBanner extends BaseAd {
    public static final String KEY_EXTRA_CALLAPP_ADAPTIVE_AD_WIDTH = "callapp_adaptive_ad_width";

    /* renamed from: g */
    private static final String f59217g = "GooglePlayServicesDfpBanner";

    /* renamed from: e */
    private String f59219e;

    /* renamed from: f */
    private double f59220f;

    /* renamed from: h */
    private PublisherAdView f59221h;

    /* renamed from: i */
    private String f59222i;

    /* renamed from: j */
    private Integer f59223j;

    /* renamed from: k */
    private Integer f59224k;

    /* renamed from: d */
    private final AtomicBoolean f59218d = new AtomicBoolean(false);

    /* renamed from: l */
    private final GooglePlayServicesAdapterConfiguration f59225l = new GooglePlayServicesAdapterConfiguration();

    /* renamed from: com.mopub.mobileads.GooglePlayServicesDfpBanner$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/GooglePlayServicesDfpBanner$a.class */
    final class C16778a extends AdListener {
        private C16778a() {
            GooglePlayServicesDfpBanner.this = r4;
        }

        /* renamed from: a */
        private static MoPubErrorCode m6504a(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? MoPubErrorCode.UNSPECIFIED : MoPubErrorCode.NO_FILL : MoPubErrorCode.NO_CONNECTION : MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR : MoPubErrorCode.INTERNAL_ERROR;
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(LoadAdError loadAdError) {
            MoPubLog.log(GooglePlayServicesDfpBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, GooglePlayServicesDfpBanner.f59217g, Integer.valueOf(m6504a(loadAdError.getCode()).getIntCode()), m6504a(loadAdError.getCode()));
            String adNetworkId = GooglePlayServicesDfpBanner.this.getAdNetworkId();
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
            String str = GooglePlayServicesDfpBanner.f59217g;
            MoPubLog.log(adNetworkId, adapterLogEvent, str, "Failed to load Google banners with message: " + loadAdError.getMessage() + ". Caused by: " + loadAdError.getCause());
            if (GooglePlayServicesDfpBanner.this.f59119b != null) {
                GooglePlayServicesDfpBanner.this.f59119b.onAdLoadFailed(m6504a(loadAdError.getCode()));
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdImpression() {
            GooglePlayServicesDfpBanner.this.f59218d.set(false);
            CallAppAdsAnalyticsManager.m28741a(GooglePlayServicesDfpBanner.this.f59219e, GooglePlayServicesDfpBanner.this.f59221h.getAdUnitId(), GooglePlayServicesDfpBanner.this.f59220f, CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(GooglePlayServicesDfpBanner.this.f59221h.getAdSize().getHeight()));
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
            GooglePlayServicesDfpBanner.this.f59221h.setTag(2131362238, Integer.valueOf(GooglePlayServicesDfpBanner.this.f59221h.getAdSize().getHeight()));
            int width = GooglePlayServicesDfpBanner.this.f59221h.getAdSize().getWidth();
            int height = GooglePlayServicesDfpBanner.this.f59221h.getAdSize().getHeight();
            if (width <= GooglePlayServicesDfpBanner.this.f59223j.intValue() && height <= GooglePlayServicesDfpBanner.this.f59224k.intValue()) {
                MoPubLog.log(GooglePlayServicesDfpBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, GooglePlayServicesDfpBanner.f59217g);
                MoPubLog.log(GooglePlayServicesDfpBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, GooglePlayServicesDfpBanner.f59217g);
                MoPubLog.log(GooglePlayServicesDfpBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_SUCCESS, GooglePlayServicesDfpBanner.f59217g);
                if (GooglePlayServicesDfpBanner.this.f59119b == null) {
                    return;
                }
                GooglePlayServicesDfpBanner.this.f59119b.onAdLoaded();
                return;
            }
            MoPubLog.log(GooglePlayServicesDfpBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, GooglePlayServicesDfpBanner.f59217g, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
            String adNetworkId = GooglePlayServicesDfpBanner.this.getAdNetworkId();
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
            String str = GooglePlayServicesDfpBanner.f59217g;
            MoPubLog.log(adNetworkId, adapterLogEvent, str, "Google served an ad but it was invalidated because its size of " + width + " x " + height + " exceeds the publisher-specified size of " + GooglePlayServicesDfpBanner.this.f59223j + " x " + GooglePlayServicesDfpBanner.this.f59224k);
            if (GooglePlayServicesDfpBanner.this.f59119b == null) {
                return;
            }
            GooglePlayServicesDfpBanner.this.f59119b.onAdLoadFailed(m6504a(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()));
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            MoPubLog.log(GooglePlayServicesDfpBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CLICKED, GooglePlayServicesDfpBanner.f59217g);
            if (GooglePlayServicesDfpBanner.this.f59120c != null) {
                GooglePlayServicesDfpBanner.this.f59120c.onAdClicked();
            }
            if (!GooglePlayServicesDfpBanner.this.f59218d.getAndSet(true)) {
                CallAppAdsAnalyticsManager.m28738b(GooglePlayServicesDfpBanner.this.f59219e, GooglePlayServicesDfpBanner.this.f59221h.getAdUnitId(), CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(GooglePlayServicesDfpBanner.this.f59221h.getAdSize().getHeight()));
            }
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = this.f59222i;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    @Override // com.mopub.mobileads.BaseAd
    public View getAdView() {
        return this.f59221h;
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getProviderTag() {
        return this.f59219e;
    }

    @Override // com.mopub.mobileads.BaseAd
    protected void load(Context context, AdData adData) {
        this.f59225l.initializeNetwork(context, adData.getExtras());
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(adData);
        this.f59223j = adData.getAdWidth();
        this.f59224k = adData.getAdHeight();
        Map<String, String> extras = adData.getExtras();
        this.f59222i = extras.get(GooglePlayServicesInterstitial.AD_UNIT_ID_KEY);
        this.f59220f = AdUtils.m27266a(extras);
        this.f59219e = AdUtils.m27265a(extras, Payload.SOURCE_GOOGLE);
        PublisherAdView publisherAdView = new PublisherAdView(context.getApplicationContext());
        this.f59221h = publisherAdView;
        publisherAdView.setAdListener(new C16778a());
        this.f59221h.setAdUnitId(this.f59222i);
        Integer num = this.f59223j;
        AdSize adSize = null;
        if (num != null) {
            adSize = null;
            if (this.f59224k != null) {
                adSize = null;
                if (num.intValue() > 0) {
                    adSize = this.f59224k.intValue() <= 0 ? null : new AdSize(this.f59223j.intValue(), this.f59224k.intValue());
                }
            }
        }
        if (adSize == null) {
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f59217g, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
            if (this.f59119b == null) {
                return;
            }
            this.f59119b.onAdLoadFailed(MoPubErrorCode.NETWORK_NO_FILL);
            return;
        }
        ArrayList arrayList = new ArrayList();
        AdSize adSize2 = adSize;
        if (CallAppRemoteConfigManager.get().m28698c("GoogleAdaptiveBannerEnabled")) {
            adSize2 = adSize;
            if (extras.containsKey("callapp_adaptive_ad_width")) {
                if (adSize.getHeight() == AdSize.BANNER.getHeight() && adSize.getWidth() == AdSize.BANNER.getWidth()) {
                    float parseFloat = Float.parseFloat(extras.get("callapp_adaptive_ad_width"));
                    if (parseFloat > BitmapDescriptorFactory.HUE_RED) {
                        adSize = AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(context, (int) parseFloat);
                    }
                    arrayList.add(AdSize.BANNER);
                    arrayList.add(AdSize.LARGE_BANNER);
                    adSize2 = adSize;
                } else {
                    adSize2 = adSize;
                    if (adSize.getHeight() == AdSize.MEDIUM_RECTANGLE.getHeight()) {
                        adSize2 = adSize;
                        if (adSize.getWidth() == AdSize.MEDIUM_RECTANGLE.getWidth()) {
                            float parseFloat2 = Float.parseFloat(extras.get("callapp_adaptive_ad_width"));
                            if (parseFloat2 > BitmapDescriptorFactory.HUE_RED) {
                                adSize = AdSize.getCurrentOrientationInlineAdaptiveBannerAdSize(context, (int) parseFloat2);
                            }
                            arrayList.add(AdSize.MEDIUM_RECTANGLE);
                            arrayList.add(AdSize.LARGE_BANNER);
                            arrayList.add(AdSize.BANNER);
                            adSize2 = adSize;
                        }
                    }
                }
            }
        }
        arrayList.add(adSize2);
        this.f59221h.setAdSizes((AdSize[]) arrayList.toArray(new AdSize[0]));
        PublisherAdRequest.Builder builder = new PublisherAdRequest.Builder();
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
        this.f59221h.loadAd(builder.build());
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f59217g);
    }

    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        Views.removeFromParent(this.f59221h);
        PublisherAdView publisherAdView = this.f59221h;
        if (publisherAdView != null) {
            publisherAdView.setAdListener(null);
            this.f59221h.destroy();
        }
    }
}
