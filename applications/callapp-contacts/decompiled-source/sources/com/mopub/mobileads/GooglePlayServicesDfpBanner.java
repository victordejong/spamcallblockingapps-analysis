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
    private static final String g = "GooglePlayServicesDfpBanner";
    private String e;
    private double f;
    private PublisherAdView h;
    private String i;
    private Integer j;
    private Integer k;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f34082d = new AtomicBoolean(false);
    private final GooglePlayServicesAdapterConfiguration l = new GooglePlayServicesAdapterConfiguration();

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/GooglePlayServicesDfpBanner$a.class */
    final class a extends AdListener {
        private a() {
        }

        private static MoPubErrorCode a(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? MoPubErrorCode.UNSPECIFIED : MoPubErrorCode.NO_FILL : MoPubErrorCode.NO_CONNECTION : MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR : MoPubErrorCode.INTERNAL_ERROR;
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(LoadAdError loadAdError) {
            MoPubLog.log(GooglePlayServicesDfpBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, GooglePlayServicesDfpBanner.g, Integer.valueOf(a(loadAdError.getCode()).getIntCode()), a(loadAdError.getCode()));
            String adNetworkId = GooglePlayServicesDfpBanner.this.getAdNetworkId();
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
            String str = GooglePlayServicesDfpBanner.g;
            MoPubLog.log(adNetworkId, adapterLogEvent, str, "Failed to load Google banners with message: " + loadAdError.getMessage() + ". Caused by: " + loadAdError.getCause());
            if (GooglePlayServicesDfpBanner.this.f34041b != null) {
                GooglePlayServicesDfpBanner.this.f34041b.onAdLoadFailed(a(loadAdError.getCode()));
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdImpression() {
            GooglePlayServicesDfpBanner.this.f34082d.set(false);
            CallAppAdsAnalyticsManager.a(GooglePlayServicesDfpBanner.this.e, GooglePlayServicesDfpBanner.this.h.getAdUnitId(), GooglePlayServicesDfpBanner.this.f, CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(GooglePlayServicesDfpBanner.this.h.getAdSize().getHeight()));
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
            GooglePlayServicesDfpBanner.this.h.setTag(2131362238, Integer.valueOf(GooglePlayServicesDfpBanner.this.h.getAdSize().getHeight()));
            int width = GooglePlayServicesDfpBanner.this.h.getAdSize().getWidth();
            int height = GooglePlayServicesDfpBanner.this.h.getAdSize().getHeight();
            if (width > GooglePlayServicesDfpBanner.this.j.intValue() || height > GooglePlayServicesDfpBanner.this.k.intValue()) {
                MoPubLog.log(GooglePlayServicesDfpBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, GooglePlayServicesDfpBanner.g, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
                String adNetworkId = GooglePlayServicesDfpBanner.this.getAdNetworkId();
                MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
                String str = GooglePlayServicesDfpBanner.g;
                MoPubLog.log(adNetworkId, adapterLogEvent, str, "Google served an ad but it was invalidated because its size of " + width + " x " + height + " exceeds the publisher-specified size of " + GooglePlayServicesDfpBanner.this.j + " x " + GooglePlayServicesDfpBanner.this.k);
                if (GooglePlayServicesDfpBanner.this.f34041b != null) {
                    GooglePlayServicesDfpBanner.this.f34041b.onAdLoadFailed(a(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()));
                    return;
                }
                return;
            }
            MoPubLog.log(GooglePlayServicesDfpBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, GooglePlayServicesDfpBanner.g);
            MoPubLog.log(GooglePlayServicesDfpBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, GooglePlayServicesDfpBanner.g);
            MoPubLog.log(GooglePlayServicesDfpBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_SUCCESS, GooglePlayServicesDfpBanner.g);
            if (GooglePlayServicesDfpBanner.this.f34041b != null) {
                GooglePlayServicesDfpBanner.this.f34041b.onAdLoaded();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            MoPubLog.log(GooglePlayServicesDfpBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CLICKED, GooglePlayServicesDfpBanner.g);
            if (GooglePlayServicesDfpBanner.this.f34042c != null) {
                GooglePlayServicesDfpBanner.this.f34042c.onAdClicked();
            }
            if (!GooglePlayServicesDfpBanner.this.f34082d.getAndSet(true)) {
                CallAppAdsAnalyticsManager.b(GooglePlayServicesDfpBanner.this.e, GooglePlayServicesDfpBanner.this.h.getAdUnitId(), CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(GooglePlayServicesDfpBanner.this.h.getAdSize().getHeight()));
            }
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = this.i;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public View getAdView() {
        return this.h;
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getProviderTag() {
        return this.e;
    }

    @Override // com.mopub.mobileads.BaseAd
    protected void load(Context context, AdData adData) {
        this.l.initializeNetwork(context, adData.getExtras());
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(adData);
        this.j = adData.getAdWidth();
        this.k = adData.getAdHeight();
        Map<String, String> extras = adData.getExtras();
        this.i = extras.get(GooglePlayServicesInterstitial.AD_UNIT_ID_KEY);
        this.f = AdUtils.a(extras);
        this.e = AdUtils.a(extras, Payload.SOURCE_GOOGLE);
        PublisherAdView publisherAdView = new PublisherAdView(context.getApplicationContext());
        this.h = publisherAdView;
        publisherAdView.setAdListener(new a());
        this.h.setAdUnitId(this.i);
        Integer num = this.j;
        AdSize adSize = null;
        if (num != null) {
            adSize = null;
            if (this.k != null) {
                adSize = null;
                if (num.intValue() > 0) {
                    adSize = this.k.intValue() <= 0 ? null : new AdSize(this.j.intValue(), this.k.intValue());
                }
            }
        }
        if (adSize != null) {
            ArrayList arrayList = new ArrayList();
            adSize = adSize;
            if (CallAppRemoteConfigManager.get().c("GoogleAdaptiveBannerEnabled")) {
                adSize = adSize;
                if (extras.containsKey("callapp_adaptive_ad_width")) {
                    if (adSize.getHeight() == AdSize.BANNER.getHeight() && adSize.getWidth() == AdSize.BANNER.getWidth()) {
                        float parseFloat = Float.parseFloat(extras.get("callapp_adaptive_ad_width"));
                        if (parseFloat > BitmapDescriptorFactory.HUE_RED) {
                            adSize = AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(context, (int) parseFloat);
                        }
                        arrayList.add(AdSize.BANNER);
                        arrayList.add(AdSize.LARGE_BANNER);
                    } else {
                        adSize = adSize;
                        if (adSize.getHeight() == AdSize.MEDIUM_RECTANGLE.getHeight()) {
                            adSize = adSize;
                            if (adSize.getWidth() == AdSize.MEDIUM_RECTANGLE.getWidth()) {
                                float parseFloat2 = Float.parseFloat(extras.get("callapp_adaptive_ad_width"));
                                if (parseFloat2 > BitmapDescriptorFactory.HUE_RED) {
                                    adSize = AdSize.getCurrentOrientationInlineAdaptiveBannerAdSize(context, (int) parseFloat2);
                                }
                                arrayList.add(AdSize.MEDIUM_RECTANGLE);
                                arrayList.add(AdSize.LARGE_BANNER);
                                arrayList.add(AdSize.BANNER);
                            }
                        }
                    }
                }
            }
            arrayList.add(adSize);
            this.h.setAdSizes((AdSize[]) arrayList.toArray(new AdSize[0]));
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
            this.h.loadAd(builder.build());
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, g);
            return;
        }
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, g, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
        if (this.f34041b != null) {
            this.f34041b.onAdLoadFailed(MoPubErrorCode.NETWORK_NO_FILL);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        Views.removeFromParent(this.h);
        PublisherAdView publisherAdView = this.h;
        if (publisherAdView != null) {
            publisherAdView.setAdListener(null);
            this.h.destroy();
        }
    }
}
