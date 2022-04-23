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
    private DTBAdResponse f;
    private MoPubInterstitial g;
    private PublisherInterstitialAd h;
    private double i;
    private String j;
    private String k;
    private final AtomicBoolean e = new AtomicBoolean(false);

    /* renamed from: d  reason: collision with root package name */
    private final AmazonAdapterConfiguration f34032d = new AmazonAdapterConfiguration();

    /* renamed from: com.mopub.mobileads.AmazonA9DTBInterstitial$2  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AmazonA9DTBInterstitial$2.class */
    static final /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f34039a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[AdError.ErrorCode.values().length];
            f34039a = iArr;
            try {
                iArr[AdError.ErrorCode.NO_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34039a[AdError.ErrorCode.NO_FILL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34039a[AdError.ErrorCode.NETWORK_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34039a[AdError.ErrorCode.NETWORK_TIMEOUT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f34039a[AdError.ErrorCode.INTERNAL_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f34039a[AdError.ErrorCode.REQUEST_ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    protected final void a() {
        MoPubInterstitial moPubInterstitial = this.g;
        if (moPubInterstitial != null && moPubInterstitial.isReady()) {
            this.g.show();
        }
        PublisherInterstitialAd publisherInterstitialAd = this.h;
        if (publisherInterstitialAd != null && publisherInterstitialAd.isLoaded()) {
            this.h.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = this.k;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getProviderTag() {
        return AmazonA9Bidder.getNetworkName(this.f);
    }

    @Override // com.mopub.mobileads.BaseAd
    protected void load(final Context context, AdData adData) {
        final Map<String, String> extras = adData.getExtras();
        this.f34032d.initializeNetwork(context, extras);
        if (context instanceof Activity) {
            final Activity activity = (Activity) context;
            this.k = extras.get(SLOT_UUID_KEY);
            this.j = extras.get("app_bidder_request_id");
            final String str = extras.get(CallAppRemoteConfigManager.get().c("amazonFromDfpEnabled") ? DFP_AD_UNIT_FORHTML_KEY : MOPUB_AD_UNIT_FORHTML_KEY);
            if (StringUtils.a((CharSequence) this.k) || StringUtils.a((CharSequence) str)) {
                this.f34042c.onAdFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                CLog.a(AmazonA9DTBInterstitial.class, "Empty slotUUid: " + this.k + ", or adUnitForHTMLAd: " + str);
                return;
            }
            this.f34032d.setCachedInitializationParameters(context, extras);
            DTBAdRequest dTBAdRequest = new DTBAdRequest();
            dTBAdRequest.a(new DTBAdSize.DTBInterstitialAdSize(this.k));
            dTBAdRequest.a(new DTBAdCallback() { // from class: com.mopub.mobileads.AmazonA9DTBInterstitial.1
                @Override // com.amazon.device.ads.DTBAdCallback
                public final void onFailure(AdError adError) {
                    switch (AnonymousClass2.f34039a[adError.f6365a.ordinal()]) {
                        case 1:
                        case 2:
                            AmazonA9DTBInterstitial.this.f34041b.onAdLoadFailed(MoPubErrorCode.NETWORK_NO_FILL);
                            return;
                        case 3:
                            AmazonA9DTBInterstitial.this.f34041b.onAdLoadFailed(MoPubErrorCode.NO_CONNECTION);
                            return;
                        case 4:
                            AmazonA9DTBInterstitial.this.f34041b.onAdLoadFailed(MoPubErrorCode.NETWORK_TIMEOUT);
                            return;
                        case 5:
                        case 6:
                            AmazonA9DTBInterstitial.this.f34041b.onAdLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
                            return;
                        default:
                            AmazonA9DTBInterstitial.this.f34041b.onAdLoadFailed(MoPubErrorCode.UNSPECIFIED);
                            return;
                    }
                }

                @Override // com.amazon.device.ads.DTBAdCallback
                public final void onSuccess(DTBAdResponse dTBAdResponse) {
                    AmazonA9DTBInterstitial.this.f = dTBAdResponse;
                    if (dTBAdResponse.b() <= 0) {
                        AmazonA9DTBInterstitial.this.f34041b.onAdLoadFailed(MoPubErrorCode.NETWORK_NO_FILL);
                        return;
                    }
                    try {
                        double a2 = AdUtils.a(extras);
                        if (a2 > 0.0d) {
                            String a3 = dTBAdResponse.a(dTBAdResponse.c().get(0));
                            if (StringUtils.b((CharSequence) a3)) {
                                AmazonA9DTBInterstitial amazonA9DTBInterstitial = AmazonA9DTBInterstitial.this;
                                amazonA9DTBInterstitial.i = amazonA9DTBInterstitial.f34032d.getPricePoints(a3);
                                if (AmazonA9DTBInterstitial.this.i > 0.0d && AmazonA9DTBInterstitial.this.i < a2) {
                                    AmazonA9DTBInterstitial.this.f34042c.onAdFailed(MoPubErrorCode.NETWORK_NO_FILL);
                                    return;
                                }
                            }
                        }
                    } catch (Exception e) {
                    }
                    if (CallAppRemoteConfigManager.get().c("amazonFromDfpEnabled")) {
                        AmazonA9DTBInterstitial.this.h = new PublisherInterstitialAd(context);
                        AmazonA9DTBInterstitial.this.h.setAdUnitId(str);
                        AmazonA9DTBInterstitial.this.h.setAdListener(new AdListener() { // from class: com.mopub.mobileads.AmazonA9DTBInterstitial.1.1
                            @Override // com.google.android.gms.ads.AdListener
                            public final void onAdClicked() {
                                AmazonA9DTBInterstitial.this.f34042c.onAdClicked();
                                if (!AmazonA9DTBInterstitial.this.e.getAndSet(true)) {
                                    String providerTag = AmazonA9DTBInterstitial.this.getProviderTag();
                                    String str2 = AmazonA9DTBInterstitial.this.k;
                                    MoPub.AD_TYPE_AND_SIZE ad_type_and_size = MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL;
                                    String unused = AmazonA9DTBInterstitial.this.j;
                                    CallAppAdsAnalyticsManager.c(providerTag, str2, ad_type_and_size);
                                }
                            }

                            @Override // com.google.android.gms.ads.AdListener
                            public final void onAdClosed() {
                                AmazonA9DTBInterstitial.this.f34042c.onAdDismissed();
                            }

                            @Override // com.google.android.gms.ads.AdListener
                            public final void onAdFailedToLoad(LoadAdError loadAdError) {
                                int code = loadAdError.getCode();
                                AmazonA9DTBInterstitial.this.f34041b.onAdLoadFailed(code != 0 ? code != 1 ? code != 2 ? code != 3 ? MoPubErrorCode.UNSPECIFIED : MoPubErrorCode.NO_FILL : MoPubErrorCode.NO_CONNECTION : MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR : MoPubErrorCode.INTERNAL_ERROR);
                            }

                            @Override // com.google.android.gms.ads.AdListener
                            public final void onAdLoaded() {
                                if (AmazonA9DTBInterstitial.this.f34041b != null) {
                                    AmazonA9DTBInterstitial.this.f34041b.onAdLoaded();
                                }
                            }

                            @Override // com.google.android.gms.ads.AdListener
                            public final void onAdOpened() {
                                AmazonA9DTBInterstitial.this.f34042c.onAdShown();
                                AmazonA9DTBInterstitial.this.f34042c.onAdImpression();
                                AmazonA9DTBInterstitial.this.e.set(false);
                                CallAppAdsAnalyticsManager.a(AmazonA9DTBInterstitial.this.getProviderTag(), AmazonA9DTBInterstitial.this.k, AmazonA9DTBInterstitial.this.i, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL, AmazonA9DTBInterstitial.this.j);
                            }
                        });
                        DTBAdUtil dTBAdUtil = DTBAdUtil.f6415b;
                        AmazonA9DTBInterstitial.this.h.loadAd(DTBAdUtil.a(dTBAdResponse).build());
                        return;
                    }
                    AmazonA9DTBInterstitial.this.g = new MoPubInterstitial(activity, str);
                    AmazonA9DTBInterstitial.this.g.setKeywords(dTBAdResponse.d());
                    AmazonA9DTBInterstitial.this.g.setInterstitialAdListener(new MoPubInterstitial.InterstitialAdListener() { // from class: com.mopub.mobileads.AmazonA9DTBInterstitial.1.2
                        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                        public final void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
                            AmazonA9DTBInterstitial.this.f34042c.onAdClicked();
                            if (!AmazonA9DTBInterstitial.this.e.getAndSet(true)) {
                                String providerTag = AmazonA9DTBInterstitial.this.getProviderTag();
                                String str2 = AmazonA9DTBInterstitial.this.k;
                                MoPub.AD_TYPE_AND_SIZE ad_type_and_size = MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL;
                                String unused = AmazonA9DTBInterstitial.this.j;
                                CallAppAdsAnalyticsManager.c(providerTag, str2, ad_type_and_size);
                            }
                        }

                        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                        public final void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
                            AmazonA9DTBInterstitial.this.f34042c.onAdDismissed();
                        }

                        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                        public final void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
                            AmazonA9DTBInterstitial.this.f34041b.onAdLoadFailed(moPubErrorCode);
                        }

                        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                        public final void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
                            AmazonA9DTBInterstitial.this.f34041b.onAdLoaded();
                        }

                        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                        public final void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
                            AmazonA9DTBInterstitial.this.f34042c.onAdShown();
                            AmazonA9DTBInterstitial.this.f34042c.onAdImpression();
                            AmazonA9DTBInterstitial.this.e.set(false);
                            CallAppAdsAnalyticsManager.a(AmazonA9DTBInterstitial.this.getProviderTag(), AmazonA9DTBInterstitial.this.k, AmazonA9DTBInterstitial.this.i, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL, AmazonA9DTBInterstitial.this.j);
                        }
                    });
                    AmazonA9DTBInterstitial.this.g.load();
                }
            });
            return;
        }
        this.f34042c.onAdFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        MoPubInterstitial moPubInterstitial = this.g;
        if (moPubInterstitial != null) {
            moPubInterstitial.destroy();
        }
        PublisherInterstitialAd publisherInterstitialAd = this.h;
        if (publisherInterstitialAd != null) {
            publisherInterstitialAd.setAdListener(null);
        }
    }
}
