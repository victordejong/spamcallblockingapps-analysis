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

    /* renamed from: f */
    private static final String f59227f = "GooglePlayServicesInterstitial";

    /* renamed from: e */
    private String f59229e;

    /* renamed from: h */
    private PublisherInterstitialAd f59231h;

    /* renamed from: i */
    private String f59232i;

    /* renamed from: k */
    private String f59234k;

    /* renamed from: d */
    private final AtomicBoolean f59228d = new AtomicBoolean(false);

    /* renamed from: j */
    private double f59233j = 0.0d;

    /* renamed from: g */
    private GooglePlayServicesAdapterConfiguration f59230g = new GooglePlayServicesAdapterConfiguration();

    /* renamed from: com.mopub.mobileads.GooglePlayServicesInterstitial$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/GooglePlayServicesInterstitial$a.class */
    final class C16780a extends AdListener {
        private C16780a() {
            GooglePlayServicesInterstitial.this = r4;
        }

        /* renamed from: a */
        private static MoPubErrorCode m6497a(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? MoPubErrorCode.UNSPECIFIED : MoPubErrorCode.NO_FILL : MoPubErrorCode.NO_CONNECTION : MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR : MoPubErrorCode.INTERNAL_ERROR;
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClicked() {
            if (GooglePlayServicesInterstitial.this.f59120c != null) {
                GooglePlayServicesInterstitial.this.f59120c.onAdClicked();
            }
            if (!GooglePlayServicesInterstitial.this.f59228d.getAndSet(true)) {
                String str = GooglePlayServicesInterstitial.this.f59229e;
                String str2 = GooglePlayServicesInterstitial.this.f59232i;
                MoPub.AD_TYPE_AND_SIZE ad_type_and_size = MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL;
                String unused = GooglePlayServicesInterstitial.this.f59234k;
                CallAppAdsAnalyticsManager.m28737c(str, str2, ad_type_and_size);
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
            if (GooglePlayServicesInterstitial.this.f59120c != null) {
                GooglePlayServicesInterstitial.this.f59120c.onAdDismissed();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(LoadAdError loadAdError) {
            MoPubLog.log(GooglePlayServicesInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, GooglePlayServicesInterstitial.f59227f, Integer.valueOf(m6497a(loadAdError.getCode()).getIntCode()), m6497a(loadAdError.getCode()));
            String adNetworkId = GooglePlayServicesInterstitial.this.getAdNetworkId();
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
            String str = GooglePlayServicesInterstitial.f59227f;
            MoPubLog.log(adNetworkId, adapterLogEvent, str, "Failed to load Google interstitial with message: " + loadAdError.getMessage() + ". Caused by: " + loadAdError.getCause());
            if (GooglePlayServicesInterstitial.this.f59119b != null) {
                GooglePlayServicesInterstitial.this.f59119b.onAdLoadFailed(m6497a(loadAdError.getCode()));
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
            MoPubLog.log(GooglePlayServicesInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, GooglePlayServicesInterstitial.f59227f);
            if (GooglePlayServicesInterstitial.this.f59119b != null) {
                GooglePlayServicesInterstitial.this.f59119b.onAdLoaded();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            MoPubLog.log(GooglePlayServicesInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_SUCCESS, GooglePlayServicesInterstitial.f59227f);
            if (GooglePlayServicesInterstitial.this.f59120c != null) {
                GooglePlayServicesInterstitial.this.f59120c.onAdShown();
                GooglePlayServicesInterstitial.this.f59120c.onAdImpression();
            }
            GooglePlayServicesInterstitial.this.f59228d.set(false);
            CallAppAdsAnalyticsManager.m28740a(GooglePlayServicesInterstitial.this.f59229e, GooglePlayServicesInterstitial.this.f59232i, GooglePlayServicesInterstitial.this.f59233j, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL, GooglePlayServicesInterstitial.this.f59234k);
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    /* renamed from: a */
    protected final void mo6371a() {
        String adNetworkId = getAdNetworkId();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED;
        String str = f59227f;
        MoPubLog.log(adNetworkId, adapterLogEvent, str);
        if (this.f59231h.isLoaded()) {
            this.f59231h.show();
            return;
        }
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_FAILED, str, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
        if (this.f59120c == null) {
            return;
        }
        this.f59120c.onAdFailed(MoPubErrorCode.NETWORK_NO_FILL);
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = this.f59232i;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getProviderTag() {
        return this.f59229e;
    }

    @Override // com.mopub.mobileads.BaseAd
    protected void load(Context context, AdData adData) {
        this.f59230g.initializeNetwork(context, adData.getExtras());
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(adData);
        this.f59118a = false;
        KeyguardActivityStateManager.get();
        boolean m28280b = KeyguardActivityStateManager.m28280b();
        Map<String, String> extras = adData.getExtras();
        if (m28280b || !extras.containsKey(AD_UNIT_ID_KEY)) {
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f59227f, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
            if (this.f59119b == null) {
                return;
            }
            this.f59119b.onAdLoadFailed(MoPubErrorCode.NETWORK_NO_FILL);
            return;
        }
        this.f59232i = extras.get(AD_UNIT_ID_KEY);
        this.f59230g.setCachedInitializationParameters(context, extras);
        this.f59229e = AdUtils.m27265a(extras, Payload.SOURCE_GOOGLE);
        PublisherInterstitialAd publisherInterstitialAd = new PublisherInterstitialAd(context);
        this.f59231h = publisherInterstitialAd;
        publisherInterstitialAd.setAdListener(new C16780a());
        this.f59231h.setAdUnitId(this.f59232i);
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
            builder.addCustomTargeting("bid_price", AdUtils.m27271a(Double.valueOf(Double.parseDouble(extras.get("callapp_bid_price")))));
        }
        PublisherAdRequest build = builder.build();
        this.f59233j = AdUtils.m27266a(extras);
        this.f59234k = extras.get("app_bidder_request_id");
        this.f59231h.loadAd(build);
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f59227f);
    }

    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        PublisherInterstitialAd publisherInterstitialAd = this.f59231h;
        if (publisherInterstitialAd != null) {
            publisherInterstitialAd.setAdListener(null);
            this.f59231h = null;
        }
    }
}
