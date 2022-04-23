package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.manager.keyguard.KeyguardActivityStateManager;
import com.callapp.contacts.util.ads.AdUtils;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/GooglePlayServicesInterstitial.class */
public class GooglePlayServicesInterstitial extends BaseAd {
    public static final String AD_UNIT_ID_KEY = "adUnitID";
    public static final String CONTENT_URL_KEY = "contentUrl";
    public static final String KEY_EXTRA_CALLAPP_BID_PRICE = "callapp_bid_price";
    public static final String TAG_FOR_CHILD_DIRECTED_KEY = "tagForChildDirectedTreatment";
    public static final String TAG_FOR_UNDER_AGE_OF_CONSENT_KEY = "tagForUnderAgeOfConsent";
    public static final String TEST_DEVICES_KEY = "testDevices";
    private static final String f = "GooglePlayServicesInterstitial";
    private String e;
    private PublisherInterstitialAd h;
    private String i;
    private String k;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f34084d = new AtomicBoolean(false);
    private double j = 0.0d;
    private GooglePlayServicesAdapterConfiguration g = new GooglePlayServicesAdapterConfiguration();

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/GooglePlayServicesInterstitial$a.class */
    final class a extends AdListener {
        private a() {
        }

        private static MoPubErrorCode a(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? MoPubErrorCode.UNSPECIFIED : MoPubErrorCode.NO_FILL : MoPubErrorCode.NO_CONNECTION : MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR : MoPubErrorCode.INTERNAL_ERROR;
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClicked() {
            if (GooglePlayServicesInterstitial.this.f34042c != null) {
                GooglePlayServicesInterstitial.this.f34042c.onAdClicked();
            }
            if (!GooglePlayServicesInterstitial.this.f34084d.getAndSet(true)) {
                String str = GooglePlayServicesInterstitial.this.e;
                String str2 = GooglePlayServicesInterstitial.this.i;
                MoPub.AD_TYPE_AND_SIZE ad_type_and_size = MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL;
                String unused = GooglePlayServicesInterstitial.this.k;
                CallAppAdsAnalyticsManager.c(str, str2, ad_type_and_size);
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
            if (GooglePlayServicesInterstitial.this.f34042c != null) {
                GooglePlayServicesInterstitial.this.f34042c.onAdDismissed();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(LoadAdError loadAdError) {
            MoPubLog.log(GooglePlayServicesInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, GooglePlayServicesInterstitial.f, Integer.valueOf(a(loadAdError.getCode()).getIntCode()), a(loadAdError.getCode()));
            String adNetworkId = GooglePlayServicesInterstitial.this.getAdNetworkId();
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
            String str = GooglePlayServicesInterstitial.f;
            MoPubLog.log(adNetworkId, adapterLogEvent, str, "Failed to load Google interstitial with message: " + loadAdError.getMessage() + ". Caused by: " + loadAdError.getCause());
            if (GooglePlayServicesInterstitial.this.f34041b != null) {
                GooglePlayServicesInterstitial.this.f34041b.onAdLoadFailed(a(loadAdError.getCode()));
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
            MoPubLog.log(GooglePlayServicesInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, GooglePlayServicesInterstitial.f);
            if (GooglePlayServicesInterstitial.this.f34041b != null) {
                GooglePlayServicesInterstitial.this.f34041b.onAdLoaded();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            MoPubLog.log(GooglePlayServicesInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_SUCCESS, GooglePlayServicesInterstitial.f);
            if (GooglePlayServicesInterstitial.this.f34042c != null) {
                GooglePlayServicesInterstitial.this.f34042c.onAdShown();
                GooglePlayServicesInterstitial.this.f34042c.onAdImpression();
            }
            GooglePlayServicesInterstitial.this.f34084d.set(false);
            CallAppAdsAnalyticsManager.a(GooglePlayServicesInterstitial.this.e, GooglePlayServicesInterstitial.this.i, GooglePlayServicesInterstitial.this.j, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL, GooglePlayServicesInterstitial.this.k);
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    protected final void a() {
        String adNetworkId = getAdNetworkId();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED;
        String str = f;
        MoPubLog.log(adNetworkId, adapterLogEvent, str);
        if (this.h.isLoaded()) {
            this.h.show();
            return;
        }
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_FAILED, str, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
        if (this.f34042c != null) {
            this.f34042c.onAdFailed(MoPubErrorCode.NETWORK_NO_FILL);
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

    @Override // com.mopub.mobileads.BaseAd
    public String getProviderTag() {
        return this.e;
    }

    @Override // com.mopub.mobileads.BaseAd
    protected void load(Context context, AdData adData) {
        this.g.initializeNetwork(context, adData.getExtras());
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(adData);
        this.f34040a = false;
        KeyguardActivityStateManager.get();
        boolean b2 = KeyguardActivityStateManager.b();
        Map<String, String> extras = adData.getExtras();
        if (b2 || !extras.containsKey(AD_UNIT_ID_KEY)) {
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
            if (this.f34041b != null) {
                this.f34041b.onAdLoadFailed(MoPubErrorCode.NETWORK_NO_FILL);
                return;
            }
            return;
        }
        this.i = extras.get(AD_UNIT_ID_KEY);
        this.g.setCachedInitializationParameters(context, extras);
        this.e = AdUtils.a(extras, Payload.SOURCE_GOOGLE);
        PublisherInterstitialAd publisherInterstitialAd = new PublisherInterstitialAd(context);
        this.h = publisherInterstitialAd;
        publisherInterstitialAd.setAdListener(new a());
        this.h.setAdUnitId(this.i);
        PublisherAdRequest.Builder builder = new PublisherAdRequest.Builder();
        builder.setRequestAgent(MoPubLog.LOGTAG);
        String str = extras.get(CONTENT_URL_KEY);
        if (!TextUtils.isEmpty(str)) {
            builder.setContentUrl(str);
        }
        RequestConfiguration.Builder builder2 = new RequestConfiguration.Builder();
        String str2 = extras.get(TEST_DEVICES_KEY);
        if (!TextUtils.isEmpty(str2)) {
            builder2.setTestDeviceIds(Collections.singletonList(str2));
        }
        String str3 = extras.get(TAG_FOR_CHILD_DIRECTED_KEY);
        if (str3 == null) {
            builder2.setTagForChildDirectedTreatment(-1);
        } else if (Boolean.parseBoolean(str3)) {
            builder2.setTagForChildDirectedTreatment(1);
        } else {
            builder2.setTagForChildDirectedTreatment(0);
        }
        String str4 = extras.get(TAG_FOR_UNDER_AGE_OF_CONSENT_KEY);
        if (str4 == null) {
            builder2.setTagForUnderAgeOfConsent(-1);
        } else if (Boolean.parseBoolean(str4)) {
            builder2.setTagForUnderAgeOfConsent(1);
        } else {
            builder2.setTagForUnderAgeOfConsent(0);
        }
        MobileAds.setRequestConfiguration(builder2.build());
        if (extras.containsKey("callapp_bid_price")) {
            builder.addCustomTargeting("bid_price", AdUtils.a(Double.valueOf(Double.parseDouble(extras.get("callapp_bid_price")))));
        }
        PublisherAdRequest build = builder.build();
        this.j = AdUtils.a(extras);
        this.k = extras.get("app_bidder_request_id");
        this.h.loadAd(build);
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        PublisherInterstitialAd publisherInterstitialAd = this.h;
        if (publisherInterstitialAd != null) {
            publisherInterstitialAd.setAdListener(null);
            this.h = null;
        }
    }
}
