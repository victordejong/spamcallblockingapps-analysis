package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.DTBAdCallback;
import com.amazon.device.ads.DTBAdRequest;
import com.amazon.device.ads.DTBAdResponse;
import com.amazon.device.ads.DTBAdSize;
import com.amazon.device.ads.DTBAdUtil;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.bidder.AmazonA9Bidder;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.mopub.common.MoPub;
import com.mopub.mobileads.MoPubInterstitial;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AmazonA9DTBInterstitial.class */
public class AmazonA9DTBInterstitial extends BaseAd {
    public static final String DFP_AD_UNIT_FORHTML_KEY = "dfp_ad_unit_for_html";
    public static final String MOPUB_AD_UNIT_FORHTML_KEY = "mopub_ad_unit_for_html";
    public static final String SLOT_UUID_KEY = "slot_uuid";

    /* renamed from: f */
    private DTBAdResponse f59104f;

    /* renamed from: g */
    private MoPubInterstitial f59105g;

    /* renamed from: h */
    private PublisherInterstitialAd f59106h;

    /* renamed from: i */
    private double f59107i;

    /* renamed from: j */
    private String f59108j;

    /* renamed from: k */
    private String f59109k;

    /* renamed from: e */
    private final AtomicBoolean f59103e = new AtomicBoolean(false);

    /* renamed from: d */
    private final AmazonAdapterConfiguration f59102d = new AmazonAdapterConfiguration();

    /* renamed from: com.mopub.mobileads.AmazonA9DTBInterstitial$2 */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AmazonA9DTBInterstitial$2.class */
    static final /* synthetic */ class C167592 {

        /* renamed from: a */
        static final /* synthetic */ int[] f59117a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[AdError.ErrorCode.values().length];
            f59117a = iArr;
            try {
                iArr[AdError.ErrorCode.NO_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f59117a[AdError.ErrorCode.NO_FILL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f59117a[AdError.ErrorCode.NETWORK_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f59117a[AdError.ErrorCode.NETWORK_TIMEOUT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f59117a[AdError.ErrorCode.INTERNAL_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f59117a[AdError.ErrorCode.REQUEST_ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    /* renamed from: a */
    protected final void mo6371a() {
        MoPubInterstitial moPubInterstitial = this.f59105g;
        if (moPubInterstitial != null && moPubInterstitial.isReady()) {
            this.f59105g.show();
        }
        PublisherInterstitialAd publisherInterstitialAd = this.f59106h;
        if (publisherInterstitialAd == null || !publisherInterstitialAd.isLoaded()) {
            return;
        }
        this.f59106h.show();
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = this.f59109k;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getProviderTag() {
        return AmazonA9Bidder.getNetworkName(this.f59104f);
    }

    @Override // com.mopub.mobileads.BaseAd
    protected void load(final Context context, AdData adData) {
        final Map<String, String> extras = adData.getExtras();
        this.f59102d.initializeNetwork(context, extras);
        if (!(context instanceof Activity)) {
            this.f59120c.onAdFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        final Activity activity = (Activity) context;
        this.f59109k = extras.get(SLOT_UUID_KEY);
        this.f59108j = extras.get("app_bidder_request_id");
        final String str = extras.get(CallAppRemoteConfigManager.get().m28698c("amazonFromDfpEnabled") ? DFP_AD_UNIT_FORHTML_KEY : MOPUB_AD_UNIT_FORHTML_KEY);
        if (!StringUtils.m26059a((CharSequence) this.f59109k) && !StringUtils.m26059a((CharSequence) str)) {
            this.f59102d.setCachedInitializationParameters(context, extras);
            DTBAdRequest dTBAdRequest = new DTBAdRequest();
            dTBAdRequest.m38979a(new DTBAdSize.DTBInterstitialAdSize(this.f59109k));
            dTBAdRequest.m38983a(new DTBAdCallback() { // from class: com.mopub.mobileads.AmazonA9DTBInterstitial.1
                @Override // com.amazon.device.ads.DTBAdCallback
                public final void onFailure(AdError adError) {
                    switch (C167592.f59117a[adError.f11667a.ordinal()]) {
                        case 1:
                        case 2:
                            AmazonA9DTBInterstitial.this.f59119b.onAdLoadFailed(MoPubErrorCode.NETWORK_NO_FILL);
                            return;
                        case 3:
                            AmazonA9DTBInterstitial.this.f59119b.onAdLoadFailed(MoPubErrorCode.NO_CONNECTION);
                            return;
                        case 4:
                            AmazonA9DTBInterstitial.this.f59119b.onAdLoadFailed(MoPubErrorCode.NETWORK_TIMEOUT);
                            return;
                        case 5:
                        case 6:
                            AmazonA9DTBInterstitial.this.f59119b.onAdLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
                            return;
                        default:
                            AmazonA9DTBInterstitial.this.f59119b.onAdLoadFailed(MoPubErrorCode.UNSPECIFIED);
                            return;
                    }
                }

                @Override // com.amazon.device.ads.DTBAdCallback
                public final void onSuccess(DTBAdResponse dTBAdResponse) {
                    AmazonA9DTBInterstitial.this.f59104f = dTBAdResponse;
                    if (dTBAdResponse.m38966b() <= 0) {
                        AmazonA9DTBInterstitial.this.f59119b.onAdLoadFailed(MoPubErrorCode.NETWORK_NO_FILL);
                        return;
                    }
                    try {
                        double m27266a = AdUtils.m27266a(extras);
                        if (m27266a > 0.0d) {
                            String m38968a = dTBAdResponse.m38968a(dTBAdResponse.m38965c().get(0));
                            if (StringUtils.m26045b((CharSequence) m38968a)) {
                                AmazonA9DTBInterstitial amazonA9DTBInterstitial = AmazonA9DTBInterstitial.this;
                                amazonA9DTBInterstitial.f59107i = amazonA9DTBInterstitial.f59102d.getPricePoints(m38968a);
                                if (AmazonA9DTBInterstitial.this.f59107i > 0.0d && AmazonA9DTBInterstitial.this.f59107i < m27266a) {
                                    AmazonA9DTBInterstitial.this.f59120c.onAdFailed(MoPubErrorCode.NETWORK_NO_FILL);
                                    return;
                                }
                            }
                        }
                    } catch (Exception e) {
                    }
                    if (!CallAppRemoteConfigManager.get().m28698c("amazonFromDfpEnabled")) {
                        AmazonA9DTBInterstitial.this.f59105g = new MoPubInterstitial(activity, str);
                        AmazonA9DTBInterstitial.this.f59105g.setKeywords(dTBAdResponse.m38964d());
                        AmazonA9DTBInterstitial.this.f59105g.setInterstitialAdListener(new MoPubInterstitial.InterstitialAdListener() { // from class: com.mopub.mobileads.AmazonA9DTBInterstitial.1.2
                            @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                            public final void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
                                AmazonA9DTBInterstitial.this.f59120c.onAdClicked();
                                if (!AmazonA9DTBInterstitial.this.f59103e.getAndSet(true)) {
                                    String providerTag = AmazonA9DTBInterstitial.this.getProviderTag();
                                    String str2 = AmazonA9DTBInterstitial.this.f59109k;
                                    MoPub.AD_TYPE_AND_SIZE ad_type_and_size = MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL;
                                    String unused = AmazonA9DTBInterstitial.this.f59108j;
                                    CallAppAdsAnalyticsManager.m28737c(providerTag, str2, ad_type_and_size);
                                }
                            }

                            @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                            public final void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
                                AmazonA9DTBInterstitial.this.f59120c.onAdDismissed();
                            }

                            @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                            public final void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
                                AmazonA9DTBInterstitial.this.f59119b.onAdLoadFailed(moPubErrorCode);
                            }

                            @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                            public final void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
                                AmazonA9DTBInterstitial.this.f59119b.onAdLoaded();
                            }

                            @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                            public final void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
                                AmazonA9DTBInterstitial.this.f59120c.onAdShown();
                                AmazonA9DTBInterstitial.this.f59120c.onAdImpression();
                                AmazonA9DTBInterstitial.this.f59103e.set(false);
                                CallAppAdsAnalyticsManager.m28740a(AmazonA9DTBInterstitial.this.getProviderTag(), AmazonA9DTBInterstitial.this.f59109k, AmazonA9DTBInterstitial.this.f59107i, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL, AmazonA9DTBInterstitial.this.f59108j);
                            }
                        });
                        AmazonA9DTBInterstitial.this.f59105g.load();
                        return;
                    }
                    AmazonA9DTBInterstitial.this.f59106h = new PublisherInterstitialAd(context);
                    AmazonA9DTBInterstitial.this.f59106h.setAdUnitId(str);
                    AmazonA9DTBInterstitial.this.f59106h.setAdListener(new AdListener() { // from class: com.mopub.mobileads.AmazonA9DTBInterstitial.1.1
                        @Override // com.google.android.gms.ads.AdListener
                        public final void onAdClicked() {
                            AmazonA9DTBInterstitial.this.f59120c.onAdClicked();
                            if (!AmazonA9DTBInterstitial.this.f59103e.getAndSet(true)) {
                                String providerTag = AmazonA9DTBInterstitial.this.getProviderTag();
                                String str2 = AmazonA9DTBInterstitial.this.f59109k;
                                MoPub.AD_TYPE_AND_SIZE ad_type_and_size = MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL;
                                String unused = AmazonA9DTBInterstitial.this.f59108j;
                                CallAppAdsAnalyticsManager.m28737c(providerTag, str2, ad_type_and_size);
                            }
                        }

                        @Override // com.google.android.gms.ads.AdListener
                        public final void onAdClosed() {
                            AmazonA9DTBInterstitial.this.f59120c.onAdDismissed();
                        }

                        @Override // com.google.android.gms.ads.AdListener
                        public final void onAdFailedToLoad(LoadAdError loadAdError) {
                            int code = loadAdError.getCode();
                            AmazonA9DTBInterstitial.this.f59119b.onAdLoadFailed(code != 0 ? code != 1 ? code != 2 ? code != 3 ? MoPubErrorCode.UNSPECIFIED : MoPubErrorCode.NO_FILL : MoPubErrorCode.NO_CONNECTION : MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR : MoPubErrorCode.INTERNAL_ERROR);
                        }

                        @Override // com.google.android.gms.ads.AdListener
                        public final void onAdLoaded() {
                            if (AmazonA9DTBInterstitial.this.f59119b != null) {
                                AmazonA9DTBInterstitial.this.f59119b.onAdLoaded();
                            }
                        }

                        @Override // com.google.android.gms.ads.AdListener
                        public final void onAdOpened() {
                            AmazonA9DTBInterstitial.this.f59120c.onAdShown();
                            AmazonA9DTBInterstitial.this.f59120c.onAdImpression();
                            AmazonA9DTBInterstitial.this.f59103e.set(false);
                            CallAppAdsAnalyticsManager.m28740a(AmazonA9DTBInterstitial.this.getProviderTag(), AmazonA9DTBInterstitial.this.f59109k, AmazonA9DTBInterstitial.this.f59107i, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL, AmazonA9DTBInterstitial.this.f59108j);
                        }
                    });
                    DTBAdUtil dTBAdUtil = DTBAdUtil.f11778b;
                    AmazonA9DTBInterstitial.this.f59106h.loadAd(DTBAdUtil.m38958a(dTBAdResponse).build());
                }
            });
            return;
        }
        this.f59120c.onAdFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
        CLog.m27611a(AmazonA9DTBInterstitial.class, "Empty slotUUid: " + this.f59109k + ", or adUnitForHTMLAd: " + str);
    }

    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        MoPubInterstitial moPubInterstitial = this.f59105g;
        if (moPubInterstitial != null) {
            moPubInterstitial.destroy();
        }
        PublisherInterstitialAd publisherInterstitialAd = this.f59106h;
        if (publisherInterstitialAd != null) {
            publisherInterstitialAd.setAdListener(null);
        }
    }
}
