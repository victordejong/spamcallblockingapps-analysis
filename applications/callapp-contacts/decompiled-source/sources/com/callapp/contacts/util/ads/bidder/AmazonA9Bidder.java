package com.callapp.contacts.util.ads.bidder;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.DTBAdCallback;
import com.amazon.device.ads.DTBAdRequest;
import com.amazon.device.ads.DTBAdResponse;
import com.amazon.device.ads.DTBAdSize;
import com.amazon.device.ads.DTBAdUtil;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.task.SafeRunnable;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.AppBidder;
import com.callapp.contacts.util.ads.JSONBidder;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
import com.callapp.contacts.util.ads.bidder.Bidder;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.explorestack.iab.vast.VastError;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.mopub.common.DataKeys;
import com.mopub.common.MoPub;
import com.mopub.mobileads.AmazonA9DTBInterstitial;
import com.mopub.mobileads.AmazonAdapterConfiguration;
import com.mopub.mobileads.InlineVisibilityTracker;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/AmazonA9Bidder.class */
public class AmazonA9Bidder implements SimpleBidder {
    private PublisherAdView adView;
    private DTBAdResponse amazonA9BidResponse;
    private final AtomicBoolean clickReported = new AtomicBoolean(false);
    private Context context;
    private DTBAdSize dtbAdSize;
    private Handler handler;
    private HandlerThread handlerThread;
    private InlineVisibilityTracker inlineVisibilityTracker;
    private boolean isDestroyed;
    private JSONBidder jsonBidder;
    private MoPubView.MoPubAdSize moPubAdSize;
    private MoPubInterstitial moPubInterstitial;
    private MoPubView moPubView;
    private double price;
    private String requestId;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.util.ads.bidder.AmazonA9Bidder$3  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3.class */
    public class AnonymousClass3 implements Runnable {
        final /* synthetic */ AdUtils.AdEvents val$adEvents;
        final /* synthetic */ String val$adUnitForHTMLAd;
        final /* synthetic */ AdSize val$dfpAdSize;

        AnonymousClass3(String str, AdSize adSize, AdUtils.AdEvents adEvents) {
            this.val$adUnitForHTMLAd = str;
            this.val$dfpAdSize = adSize;
            this.val$adEvents = adEvents;
        }

        @Override // java.lang.Runnable
        public void run() {
            AmazonA9Bidder.this.adView = new PublisherAdView(AmazonA9Bidder.this.context.getApplicationContext());
            AmazonA9Bidder.this.adView.setAdUnitId(this.val$adUnitForHTMLAd);
            AmazonA9Bidder.this.adView.setAdSizes(this.val$dfpAdSize);
            DTBAdUtil dTBAdUtil = DTBAdUtil.f6415b;
            PublisherAdRequest build = DTBAdUtil.a(AmazonA9Bidder.this.amazonA9BidResponse).build();
            AmazonA9Bidder.this.adView.setAdListener(new AdListener() { // from class: com.callapp.contacts.util.ads.bidder.AmazonA9Bidder.3.1
                @Override // com.google.android.gms.ads.AdListener
                public void onAdClicked() {
                    AnonymousClass3.this.val$adEvents.onAdClick();
                    String networkName = AmazonA9Bidder.getNetworkName(AmazonA9Bidder.this.amazonA9BidResponse);
                    String adUnitId = AmazonA9Bidder.this.jsonBidder.getAdUnitId();
                    MoPub.AD_TYPE_AND_SIZE adTypeAndSizeForBanner = CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(AmazonA9Bidder.this.dtbAdSize.f6411b);
                    String unused = AmazonA9Bidder.this.requestId;
                    CallAppAdsAnalyticsManager.c(networkName, adUnitId, adTypeAndSizeForBanner);
                }

                @Override // com.google.android.gms.ads.AdListener
                public void onAdClosed() {
                }

                @Override // com.google.android.gms.ads.AdListener
                public void onAdFailedToLoad(LoadAdError loadAdError) {
                    int code = loadAdError.getCode();
                    AnonymousClass3.this.val$adEvents.onBannerAdFailed(null, code != 0 ? code != 1 ? code != 2 ? code != 3 ? MoPubErrorCode.UNSPECIFIED : MoPubErrorCode.NO_FILL : MoPubErrorCode.NO_CONNECTION : MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR : MoPubErrorCode.INTERNAL_ERROR);
                }

                @Override // com.google.android.gms.ads.AdListener
                public void onAdImpression() {
                }

                @Override // com.google.android.gms.ads.AdListener
                public void onAdLoaded() {
                    AmazonA9Bidder.this.moPubView = AdUtils.a(AmazonA9Bidder.this.context, AmazonA9Bidder.this.moPubAdSize);
                    AmazonA9Bidder.this.moPubView.setAdContentView(AmazonA9Bidder.this.adView);
                    AmazonA9Bidder.this.moPubView.setAdUnitId(AmazonA9Bidder.this.jsonBidder.getAdUnitId());
                    AnonymousClass3.this.val$adEvents.onBannerAdLoaded(AmazonA9Bidder.this.moPubView, AmazonA9Bidder.this.jsonBidder.isCallappDisableRefresh());
                    AmazonA9Bidder.this.inlineVisibilityTracker = new InlineVisibilityTracker(AmazonA9Bidder.this.adView.getContext().getApplicationContext(), AmazonA9Bidder.this.adView.getRootView(), AmazonA9Bidder.this.adView, 1, 0);
                    AmazonA9Bidder.this.inlineVisibilityTracker.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.util.ads.bidder.AmazonA9Bidder.3.1.1
                        @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
                        public void onVisibilityChanged() {
                            AmazonA9Bidder.this.clickReported.set(false);
                            CallAppAdsAnalyticsManager.a(AmazonA9Bidder.getNetworkName(AmazonA9Bidder.this.amazonA9BidResponse), AmazonA9Bidder.this.jsonBidder.getAdUnitId(), AmazonA9Bidder.this.price, CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(AmazonA9Bidder.this.dtbAdSize.f6411b), AmazonA9Bidder.this.requestId);
                        }
                    });
                }

                @Override // com.google.android.gms.ads.AdListener
                public void onAdOpened() {
                    AnonymousClass3.this.val$adEvents.onAdClick();
                    if (!AmazonA9Bidder.this.clickReported.getAndSet(true)) {
                        String networkName = AmazonA9Bidder.getNetworkName(AmazonA9Bidder.this.amazonA9BidResponse);
                        String adUnitId = AmazonA9Bidder.this.jsonBidder.getAdUnitId();
                        MoPub.AD_TYPE_AND_SIZE adTypeAndSizeForBanner = CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(AmazonA9Bidder.this.dtbAdSize.f6411b);
                        String unused = AmazonA9Bidder.this.requestId;
                        CallAppAdsAnalyticsManager.c(networkName, adUnitId, adTypeAndSizeForBanner);
                    }
                }
            });
            AmazonA9Bidder.this.adView.loadAd(build);
        }
    }

    private DTBAdSize getDTBAdSize(int i, String str) {
        DTBAdSize dTBAdSize;
        if (i == 1) {
            dTBAdSize = new DTBAdSize(320, 50, str);
            this.moPubAdSize = MoPubView.MoPubAdSize.HEIGHT_50;
        } else if (i != 2) {
            dTBAdSize = i != 4 ? null : new DTBAdSize.DTBInterstitialAdSize(str);
        } else {
            dTBAdSize = new DTBAdSize(VastError.ERROR_CODE_GENERAL_WRAPPER, 250, str);
            this.moPubAdSize = MoPubView.MoPubAdSize.HEIGHT_250;
        }
        return dTBAdSize;
    }

    public static String getNetworkName(DTBAdResponse dTBAdResponse) {
        Map<String, List<String>> a2 = dTBAdResponse.a();
        if (!CollectionUtils.b(a2)) {
            return "amazona9";
        }
        List<String> list = a2.get("amznp");
        return CollectionUtils.b(list) ? list.get(0) : "amazona9";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double getPrice(DTBAdResponse dTBAdResponse) {
        AmazonAdapterConfiguration amazonAdapterConfiguration = new AmazonAdapterConfiguration();
        dTBAdResponse.c();
        if (dTBAdResponse.c().size() <= 0) {
            return 0.0d;
        }
        String a2 = dTBAdResponse.a(dTBAdResponse.c().get(0));
        if (StringUtils.b((CharSequence) a2)) {
            return amazonAdapterConfiguration.getPricePoints(a2);
        }
        return 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> getServerExtras() {
        HashMap hashMap = new HashMap();
        hashMap.put(AmazonAdapterConfiguration.APP_KEY, CallAppRemoteConfigManager.get().a("amazona9_app_id"));
        hashMap.put(AmazonA9DTBInterstitial.MOPUB_AD_UNIT_FORHTML_KEY, this.jsonBidder.getMoPubAdUnitId());
        hashMap.put(AmazonA9DTBInterstitial.DFP_AD_UNIT_FORHTML_KEY, this.jsonBidder.getDfpAdUnitId());
        hashMap.put(AmazonA9DTBInterstitial.SLOT_UUID_KEY, this.jsonBidder.getAdUnitId());
        hashMap.put("adm", this.amazonA9BidResponse.d());
        hashMap.put(DataKeys.CALLAPP_FLOOR_PRICE_KEY, String.valueOf(this.price));
        hashMap.put("app_bidder_request_id", this.requestId);
        return hashMap;
    }

    private void loadBannerAd(AdUtils.AdEvents adEvents) {
        if (this.jsonBidder.getCachetimeInMinutes() > 0) {
            CacheManager.get().a(DTBAdResponse.class, AppBidder.a(this.jsonBidder));
        }
        CallAppAdsAnalyticsManager.f14798a.add(this.jsonBidder.getMoPubAdUnitId());
        boolean c2 = CallAppRemoteConfigManager.get().c("amazonFromDfpEnabled");
        JSONBidder jSONBidder = this.jsonBidder;
        String dfpAdUnitId = c2 ? jSONBidder.getDfpAdUnitId() : jSONBidder.getMoPubAdUnitId();
        if (c2) {
            loadBannerAdFromKeywordsDFP(adEvents, dfpAdUnitId);
        } else {
            loadBannerAdFromKeywordsMoPub(adEvents, dfpAdUnitId);
        }
    }

    private void loadBannerAdFromKeywordsDFP(AdUtils.AdEvents adEvents, String str) {
        AnalyticsManager.get().a(Constants.AD, "loading Amazon ad from DFP", this.jsonBidder.getAdUnitId(), this.price, new String[0]);
        CallAppApplication.get().d(new AnonymousClass3(str, this.dtbAdSize.f6411b == 250 ? AdSize.MEDIUM_RECTANGLE : AdSize.BANNER, adEvents));
    }

    private void loadBannerAdFromKeywordsMoPub(final AdUtils.AdEvents adEvents, final String str) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.AmazonA9Bidder.2
            @Override // java.lang.Runnable
            public void run() {
                AmazonA9Bidder amazonA9Bidder = AmazonA9Bidder.this;
                amazonA9Bidder.moPubView = AdUtils.a(amazonA9Bidder.context, CallAppAdsAnalyticsManager.getMoPubAdSize(AmazonA9Bidder.this.dtbAdSize.f6411b));
                AmazonA9Bidder.this.moPubView.setAdUnitId(str);
                AmazonA9Bidder.this.moPubView.setKeywords(AmazonA9Bidder.this.amazonA9BidResponse.d());
                AmazonA9Bidder.this.moPubView.setAutorefreshEnabled(false);
                AmazonA9Bidder.this.moPubView.setBannerAdListener(new MoPubView.BannerAdListener() { // from class: com.callapp.contacts.util.ads.bidder.AmazonA9Bidder.2.1
                    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
                    public void onBannerClicked(MoPubView moPubView) {
                        adEvents.onAdClick();
                        String networkName = AmazonA9Bidder.getNetworkName(AmazonA9Bidder.this.amazonA9BidResponse);
                        String adUnitId = AmazonA9Bidder.this.jsonBidder.getAdUnitId();
                        MoPub.AD_TYPE_AND_SIZE adTypeAndSizeForBanner = CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(AmazonA9Bidder.this.dtbAdSize.f6411b);
                        String unused = AmazonA9Bidder.this.requestId;
                        CallAppAdsAnalyticsManager.c(networkName, adUnitId, adTypeAndSizeForBanner);
                    }

                    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
                    public void onBannerCollapsed(MoPubView moPubView) {
                    }

                    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
                    public void onBannerExpanded(MoPubView moPubView) {
                    }

                    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
                    public void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
                        adEvents.onBannerAdFailed(moPubView, moPubErrorCode);
                    }

                    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
                    public void onBannerLoaded(MoPubView moPubView) {
                        adEvents.onBannerAdLoaded(moPubView, AmazonA9Bidder.this.jsonBidder.isCallappDisableRefresh());
                        CallAppAdsAnalyticsManager.a(AmazonA9Bidder.getNetworkName(AmazonA9Bidder.this.amazonA9BidResponse), AmazonA9Bidder.this.jsonBidder.getAdUnitId(), AmazonA9Bidder.this.price, CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(AmazonA9Bidder.this.dtbAdSize.f6411b), AmazonA9Bidder.this.requestId);
                    }
                });
                AmazonA9Bidder.this.moPubView.loadAd();
            }
        });
    }

    private void loadInterstitialAd(final AdUtils.AdEvents adEvents) {
        if (this.jsonBidder.getCachetimeInMinutes() > 0) {
            CacheManager.get().a(DTBAdResponse.class, AppBidder.a(this.jsonBidder));
        }
        HandlerThread handlerThread = new HandlerThread(AmazonA9Bidder.class.toString());
        this.handlerThread = handlerThread;
        handlerThread.start();
        AndroidUtils.a(this.handlerThread.getLooper());
        Handler handler = new Handler(this.handlerThread.getLooper());
        this.handler = handler;
        handler.post(new SafeRunnable() { // from class: com.callapp.contacts.util.ads.bidder.AmazonA9Bidder.4
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                AmazonA9Bidder amazonA9Bidder = AmazonA9Bidder.this;
                amazonA9Bidder.moPubInterstitial = new MoPubInterstitial((Activity) amazonA9Bidder.context, AmazonA9Bidder.this.jsonBidder.getAdUnitId());
                AmazonA9Bidder.this.moPubInterstitial.setInterstitialAdListener(new MoPubInterstitial.InterstitialAdListener() { // from class: com.callapp.contacts.util.ads.bidder.AmazonA9Bidder.4.1
                    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                    public void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
                        adEvents.onInterstitialClicked(moPubInterstitial);
                    }

                    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                    public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
                        adEvents.onInterstitialDismissed(moPubInterstitial);
                    }

                    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                    public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
                        adEvents.onInterstitialFailed(moPubInterstitial, moPubErrorCode);
                    }

                    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                    public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
                        adEvents.onInterstitialLoaded(moPubInterstitial);
                    }

                    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                    public void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
                        adEvents.onInterstitialShown(moPubInterstitial);
                    }
                });
                AmazonA9Bidder.this.moPubInterstitial.fakeLoad(AmazonA9DTBInterstitial.class.getName(), AmazonA9Bidder.this.getServerExtras());
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
                adEvents.onInterstitialFailed(AmazonA9Bidder.this.moPubInterstitial, MoPubErrorCode.UNSPECIFIED);
            }
        });
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void destroy() {
        this.isDestroyed = true;
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.handlerThread.quit();
        }
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.AmazonA9Bidder.5
            @Override // java.lang.Runnable
            public void run() {
                if (AmazonA9Bidder.this.inlineVisibilityTracker != null) {
                    AmazonA9Bidder.this.inlineVisibilityTracker.destroy();
                    AmazonA9Bidder.this.inlineVisibilityTracker = null;
                }
                if (AmazonA9Bidder.this.adView != null) {
                    AmazonA9Bidder.this.adView.destroy();
                    AmazonA9Bidder.this.adView = null;
                }
                if (AmazonA9Bidder.this.moPubView != null) {
                    AmazonA9Bidder.this.moPubView.destroy();
                    AmazonA9Bidder.this.moPubView = null;
                }
                if (AmazonA9Bidder.this.moPubInterstitial != null) {
                    AmazonA9Bidder.this.moPubInterstitial.destroy();
                    AmazonA9Bidder.this.moPubInterstitial = null;
                }
            }
        });
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public int getAdHeight() {
        return this.dtbAdSize.f6411b;
    }

    @Override // com.callapp.contacts.util.ads.bidder.SimpleBidder
    public void getBid(Context context, final JSONBidder jSONBidder, final AppBidder.BidListener bidListener, NativeAdParamGetter nativeAdParamGetter, long j, String str) {
        if (!AmazonAdapterConfiguration.isInitialized()) {
            new AmazonAdapterConfiguration().initializeNetwork(context, new HashMap());
        }
        if (!AmazonAdapterConfiguration.isInitialized()) {
            bidListener.a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.toString());
            return;
        }
        this.context = context;
        this.jsonBidder = jSONBidder;
        this.requestId = str;
        DTBAdSize dTBAdSize = getDTBAdSize(jSONBidder.getAdType(), jSONBidder.getAdUnitId());
        this.dtbAdSize = dTBAdSize;
        if (dTBAdSize == null) {
            bidListener.a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.toString());
            return;
        }
        if (jSONBidder.getCachetimeInMinutes() > 0) {
            this.amazonA9BidResponse = (DTBAdResponse) CacheManager.get().b(DTBAdResponse.class, AppBidder.a(jSONBidder), false);
        }
        if (this.amazonA9BidResponse == null) {
            DTBAdRequest dTBAdRequest = new DTBAdRequest();
            dTBAdRequest.a(this.dtbAdSize);
            dTBAdRequest.a(new DTBAdCallback() { // from class: com.callapp.contacts.util.ads.bidder.AmazonA9Bidder.1
                @Override // com.amazon.device.ads.DTBAdCallback
                public void onFailure(AdError adError) {
                    bidListener.a(adError.f6366b);
                }

                @Override // com.amazon.device.ads.DTBAdCallback
                public void onSuccess(DTBAdResponse dTBAdResponse) {
                    AmazonA9Bidder amazonA9Bidder = AmazonA9Bidder.this;
                    amazonA9Bidder.price = amazonA9Bidder.getPrice(dTBAdResponse);
                    AmazonA9Bidder.this.amazonA9BidResponse = dTBAdResponse;
                    if (jSONBidder.getCachetimeInMinutes() > 0) {
                        try {
                            CacheManager.get().b(DTBAdResponse.class, AppBidder.a(jSONBidder), AmazonA9Bidder.this.amazonA9BidResponse, (int) jSONBidder.getCachetimeInMinutes());
                        } catch (Exception e) {
                            CLog.a(AmazonA9Bidder.class, e);
                        }
                    }
                    bidListener.a(AmazonA9Bidder.this.price);
                }
            });
            return;
        }
        CLog.a(AmazonA9Bidder.class, "Loading bid from cache - placementId: " + jSONBidder.getAdUnitId());
        double price = getPrice(this.amazonA9BidResponse);
        this.price = price;
        bidListener.a(price);
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void loadAd(AdUtils.AdEvents adEvents) {
        int adType = this.jsonBidder.getAdType();
        if (adType == 1 || adType == 2) {
            loadBannerAd(adEvents);
        } else if (adType == 4) {
            loadInterstitialAd(adEvents);
        }
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public /* synthetic */ void notifyLoss() {
        Bidder._CC.$default$notifyLoss(this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AmazonA9Bidder{moPubView=");
        MoPubView moPubView = this.moPubView;
        String str = null;
        sb.append(moPubView != null ? moPubView.getAdUnitId() : null);
        sb.append(", moPubInterstitial=");
        MoPubInterstitial moPubInterstitial = this.moPubInterstitial;
        if (moPubInterstitial != null) {
            str = moPubInterstitial.getAdUnitId();
        }
        sb.append(str);
        sb.append('}');
        return sb.toString();
    }
}
