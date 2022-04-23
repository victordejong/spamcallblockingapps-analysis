package com.callapp.contacts.util.ads.bidder;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.task.SafeRunnable;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ads.AdSettings;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.AppBidder;
import com.callapp.contacts.util.ads.BidObjectCache;
import com.callapp.contacts.util.ads.JSONBidder;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
import com.callapp.contacts.util.ads.bidder.Bidder;
import com.callapp.framework.util.StringUtils;
import com.criteo.publisher.Bid;
import com.criteo.publisher.BidResponseListener;
import com.criteo.publisher.Criteo;
import com.criteo.publisher.CriteoBannerAdListener;
import com.criteo.publisher.CriteoBannerView;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.advancednative.CriteoNativeAd;
import com.criteo.publisher.advancednative.CriteoNativeAdListener;
import com.criteo.publisher.advancednative.CriteoNativeLoader;
import com.criteo.publisher.model.AdSize;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.BannerAdUnit;
import com.criteo.publisher.model.InterstitialAdUnit;
import com.criteo.publisher.model.NativeAdUnit;
import com.explorestack.iab.vast.VastError;
import com.facebook.biddingkit.c.b;
import com.mopub.common.DataKeys;
import com.mopub.common.MoPub;
import com.mopub.mobileads.CriteoAdapterConfiguration;
import com.mopub.mobileads.CriteoBiddingInterstital;
import com.mopub.mobileads.InlineVisibilityTracker;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.CriteoAdRenderer;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.StaticNativeAd;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/CriteoBidder.class */
public class CriteoBidder implements SimpleBidder {
    private AdSize adSize;
    private AdUnit adUnit;
    private CriteoBannerView bannerView;
    private Bid bidResponse;
    private String cacheKey;
    private AtomicBoolean clickReported = new AtomicBoolean(false);
    private Context context;
    private Handler handler;
    private HandlerThread handlerThread;
    private InlineVisibilityTracker inlineVisibilityTracker;
    private boolean isDestroyed;
    private JSONBidder jsonBidder;
    private MoPubView.MoPubAdSize moPubAdSize;
    private MoPubInterstitial moPubInterstitial;
    private MoPubView moPubView;
    private NativeAd nativeAd;
    private NativeAdParamGetter nativeAdParamGetter;
    private CriteoNativeLoader nativeLoader;
    private String requestId;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.util.ads.bidder.CriteoBidder$3  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/CriteoBidder$3.class */
    public class AnonymousClass3 implements Runnable {
        final /* synthetic */ AdUtils.AdEvents val$adEvents;

        /* renamed from: com.callapp.contacts.util.ads.bidder.CriteoBidder$3$1  reason: invalid class name */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/CriteoBidder$3$1.class */
        class AnonymousClass1 implements CriteoBannerAdListener {
            AnonymousClass1() {
            }

            @Override // com.criteo.publisher.j
            public void onAdClicked() {
                if (!CriteoBidder.this.clickReported.getAndSet(true)) {
                    String adUnitId = CriteoBidder.this.jsonBidder.getAdUnitId();
                    MoPub.AD_TYPE_AND_SIZE a2 = CallAppAdsAnalyticsManager.a(CriteoBidder.this.moPubAdSize);
                    String unused = CriteoBidder.this.requestId;
                    CallAppAdsAnalyticsManager.c("criteo", adUnitId, a2);
                }
                AnonymousClass3.this.val$adEvents.onAdClick();
            }

            @Override // com.criteo.publisher.j
            public void onAdFailedToReceive(CriteoErrorCode criteoErrorCode) {
                AnonymousClass3.this.val$adEvents.onBannerAdFailed(null, CriteoBidder.this.getMoPubErrorCode(criteoErrorCode));
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.CriteoBidder.3.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CriteoBidder.this.bannerView != null) {
                            CriteoBidder.this.bannerView.destroy();
                            CriteoBidder.this.bannerView = null;
                        }
                    }
                });
            }

            @Override // com.criteo.publisher.j
            public void onAdLeftApplication() {
            }

            @Override // com.criteo.publisher.CriteoBannerAdListener
            public void onAdReceived(CriteoBannerView criteoBannerView) {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.CriteoBidder.3.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!CriteoBidder.this.isDestroyed) {
                            CriteoBidder.this.moPubView = AdUtils.a(CriteoBidder.this.context, CriteoBidder.this.moPubAdSize);
                            CriteoBidder.this.moPubView.setAdContentView(CriteoBidder.this.bannerView);
                            CriteoBidder.this.moPubView.setAdUnitId(CriteoBidder.this.jsonBidder.getAdUnitId());
                            CriteoBidder.this.inlineVisibilityTracker = new InlineVisibilityTracker(CallAppApplication.get(), CriteoBidder.this.moPubView.getRootView(), CriteoBidder.this.moPubView, 1, 0);
                            CriteoBidder.this.inlineVisibilityTracker.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.util.ads.bidder.CriteoBidder.3.1.1.1
                                @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
                                public void onVisibilityChanged() {
                                    CriteoBidder.this.clickReported.set(false);
                                    CallAppAdsAnalyticsManager.a("criteo", CriteoBidder.this.jsonBidder.getAdUnitId(), CriteoBidder.this.bidResponse.getPrice(), CallAppAdsAnalyticsManager.a(CriteoBidder.this.moPubAdSize), CriteoBidder.this.requestId);
                                }
                            });
                            AnonymousClass3.this.val$adEvents.onBannerAdLoaded(CriteoBidder.this.moPubView, CriteoBidder.this.jsonBidder.isCallappDisableRefresh());
                        } else if (CriteoBidder.this.bannerView != null) {
                            CriteoBidder.this.bannerView.destroy();
                            CriteoBidder.this.bannerView = null;
                        }
                    }
                });
            }
        }

        AnonymousClass3(AdUtils.AdEvents adEvents) {
            this.val$adEvents = adEvents;
        }

        @Override // java.lang.Runnable
        public void run() {
            CriteoBidder.this.bannerView = new CriteoBannerView(CriteoBidder.this.context, (BannerAdUnit) CriteoBidder.this.adUnit);
            CriteoBidder.this.bannerView.setCriteoBannerAdListener(new AnonymousClass1());
            CriteoBidder.this.bannerView.loadAd(CriteoBidder.this.bidResponse);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.util.ads.bidder.CriteoBidder$6  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/CriteoBidder$6.class */
    public static /* synthetic */ class AnonymousClass6 {
        static final /* synthetic */ int[] $SwitchMap$com$criteo$publisher$CriteoErrorCode;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[CriteoErrorCode.values().length];
            $SwitchMap$com$criteo$publisher$CriteoErrorCode = iArr;
            try {
                iArr[CriteoErrorCode.ERROR_CODE_NO_FILL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$criteo$publisher$CriteoErrorCode[CriteoErrorCode.ERROR_CODE_NETWORK_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$criteo$publisher$CriteoErrorCode[CriteoErrorCode.ERROR_CODE_INTERNAL_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$criteo$publisher$CriteoErrorCode[CriteoErrorCode.ERROR_CODE_INVALID_REQUEST.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/CriteoBidder$CriteoStaticNativeAd.class */
    public static class CriteoStaticNativeAd extends StaticNativeAd {
        final CriteoNativeAd criteoNativeAd;

        public CriteoStaticNativeAd(CriteoNativeAd criteoNativeAd) {
            this.criteoNativeAd = criteoNativeAd;
        }

        public CriteoNativeAd getCriteoNativeAd() {
            return this.criteoNativeAd;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MoPubErrorCode getMoPubErrorCode(CriteoErrorCode criteoErrorCode) {
        int i = AnonymousClass6.$SwitchMap$com$criteo$publisher$CriteoErrorCode[criteoErrorCode.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? MoPubErrorCode.UNSPECIFIED : MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR : MoPubErrorCode.INTERNAL_ERROR : MoPubErrorCode.NETWORK_TIMEOUT : MoPubErrorCode.NO_FILL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> getServerExtras() {
        HashMap hashMap = new HashMap();
        hashMap.put(CriteoBiddingInterstital.AD_UNIT_ID_KEY, this.jsonBidder.getAdUnitId());
        hashMap.put(DataKeys.CALLAPP_FLOOR_PRICE_KEY, String.valueOf(this.bidResponse.getPrice()));
        hashMap.put("app_bidder_request_id", this.requestId);
        return hashMap;
    }

    private void loadInterstitialAd(final AdUtils.AdEvents adEvents) {
        HandlerThread handlerThread = new HandlerThread(CriteoBidder.class.toString());
        this.handlerThread = handlerThread;
        handlerThread.start();
        AndroidUtils.a(this.handlerThread.getLooper());
        Handler handler = new Handler(this.handlerThread.getLooper());
        this.handler = handler;
        handler.post(new SafeRunnable() { // from class: com.callapp.contacts.util.ads.bidder.CriteoBidder.4
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                HashMap hashMap = new HashMap();
                CriteoBidder.this.cacheKey = UUID.randomUUID().toString();
                BidObjectCache.Companion companion = BidObjectCache.f16056a;
                BidObjectCache.Companion.a(CriteoBidder.this.cacheKey, CriteoBidder.this.bidResponse);
                hashMap.put("adm", CriteoBidder.this.cacheKey);
                CriteoBidder criteoBidder = CriteoBidder.this;
                criteoBidder.moPubInterstitial = new MoPubInterstitial((Activity) criteoBidder.context, CriteoBidder.this.jsonBidder.getAdUnitId());
                CriteoBidder.this.moPubInterstitial.setLocalExtras(hashMap);
                CriteoBidder.this.moPubInterstitial.setInterstitialAdListener(new MoPubInterstitial.InterstitialAdListener() { // from class: com.callapp.contacts.util.ads.bidder.CriteoBidder.4.1
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
                CriteoBidder.this.moPubInterstitial.fakeLoad(CriteoBiddingInterstital.class.getName(), CriteoBidder.this.getServerExtras());
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
                adEvents.onInterstitialFailed(CriteoBidder.this.moPubInterstitial, MoPubErrorCode.UNSPECIFIED);
            }
        });
    }

    private boolean setAdSize(JSONBidder jSONBidder, int i) {
        if (i == 0) {
            this.adUnit = new NativeAdUnit(jSONBidder.getAdUnitId());
            return true;
        } else if (i == 1) {
            this.adSize = new AdSize(320, 50);
            this.moPubAdSize = MoPubView.MoPubAdSize.HEIGHT_50;
            this.adUnit = new BannerAdUnit(jSONBidder.getAdUnitId(), this.adSize);
            return true;
        } else if (i == 2) {
            this.adSize = new AdSize(VastError.ERROR_CODE_GENERAL_WRAPPER, 250);
            this.moPubAdSize = MoPubView.MoPubAdSize.HEIGHT_250;
            this.adUnit = new BannerAdUnit(jSONBidder.getAdUnitId(), this.adSize);
            return true;
        } else if (i != 4) {
            return false;
        } else {
            this.adUnit = new InterstitialAdUnit(jSONBidder.getAdUnitId());
            return true;
        }
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void destroy() {
        this.isDestroyed = true;
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.handlerThread.quit();
        }
        if (StringUtils.b((CharSequence) this.cacheKey)) {
            BidObjectCache.Companion companion = BidObjectCache.f16056a;
            BidObjectCache.Companion.a(this.cacheKey);
            this.cacheKey = null;
        }
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.CriteoBidder.5
            @Override // java.lang.Runnable
            public void run() {
                if (CriteoBidder.this.moPubView != null) {
                    CriteoBidder.this.moPubView.destroy();
                    CriteoBidder.this.moPubView = null;
                }
                if (CriteoBidder.this.nativeAd != null) {
                    CriteoBidder.this.nativeAd.destroy();
                    CriteoBidder.this.nativeAd = null;
                }
                if (CriteoBidder.this.moPubInterstitial != null) {
                    CriteoBidder.this.moPubInterstitial.destroy();
                    CriteoBidder.this.moPubInterstitial = null;
                }
                if (CriteoBidder.this.bannerView != null) {
                    CriteoBidder.this.bannerView.destroy();
                    CriteoBidder.this.bannerView = null;
                }
                if (CriteoBidder.this.inlineVisibilityTracker != null) {
                    try {
                        CriteoBidder.this.inlineVisibilityTracker.destroy();
                    } catch (Exception e) {
                    }
                    CriteoBidder.this.inlineVisibilityTracker = null;
                }
            }
        });
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public int getAdHeight() {
        return this.adSize.getHeight();
    }

    @Override // com.callapp.contacts.util.ads.bidder.SimpleBidder
    public void getBid(Context context, final JSONBidder jSONBidder, final AppBidder.BidListener bidListener, NativeAdParamGetter nativeAdParamGetter, long j, String str) {
        if (!CriteoAdapterConfiguration.isInitialized()) {
            new CriteoAdapterConfiguration().initializeNetwork(context, new HashMap());
        }
        if (!CriteoAdapterConfiguration.isInitialized()) {
            bidListener.a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.toString());
        } else if (!setAdSize(jSONBidder, jSONBidder.getAdType())) {
            bidListener.a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.toString());
        } else {
            this.context = context;
            this.requestId = str;
            this.jsonBidder = jSONBidder;
            this.nativeAdParamGetter = nativeAdParamGetter;
            if (jSONBidder.getCachetimeInMinutes() > 0) {
                this.bidResponse = (Bid) CacheManager.get().b(Bid.class, AppBidder.a(jSONBidder), false);
            }
            Bid bid = this.bidResponse;
            if (bid == null) {
                Criteo.getInstance().loadBid(this.adUnit, new BidResponseListener() { // from class: com.callapp.contacts.util.ads.bidder.CriteoBidder.1
                    @Override // com.criteo.publisher.BidResponseListener
                    public void onResponse(Bid bid2) {
                        if (bid2 == null || bid2.getPrice() <= 0.0d) {
                            bidListener.a("");
                            return;
                        }
                        CriteoBidder.this.bidResponse = bid2;
                        if (jSONBidder.getCachetimeInMinutes() > 0) {
                            try {
                                CacheManager.get().a((Class<String>) Bid.class, AppBidder.a(jSONBidder), (String) CriteoBidder.this.bidResponse, (int) jSONBidder.getCachetimeInMinutes(), false);
                            } catch (Exception e) {
                                CLog.a(CriteoBidder.class, e);
                            }
                        }
                        bidListener.a(bid2.getPrice());
                    }
                });
            } else {
                bidListener.a(bid.getPrice());
            }
        }
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void loadAd(AdUtils.AdEvents adEvents) {
        if (this.jsonBidder.getCachetimeInMinutes() > 0) {
            CacheManager.get().a(b.class, AppBidder.a(this.jsonBidder), false);
        }
        int adType = this.jsonBidder.getAdType();
        if (adType == 0) {
            loadNativeAd(adEvents);
        } else if (adType == 1 || adType == 2) {
            loadBannerAd(adEvents);
        } else if (adType == 4) {
            loadInterstitialAd(adEvents);
        }
    }

    public void loadBannerAd(AdUtils.AdEvents adEvents) {
        CallAppApplication.get().d(new AnonymousClass3(adEvents));
    }

    public void loadNativeAd(final AdUtils.AdEvents adEvents) {
        HandlerThread handlerThread = new HandlerThread(CriteoBidder.class.toString());
        this.handlerThread = handlerThread;
        handlerThread.start();
        AndroidUtils.a(this.handlerThread.getLooper());
        Handler handler = new Handler(this.handlerThread.getLooper());
        this.handler = handler;
        handler.post(new SafeRunnable() { // from class: com.callapp.contacts.util.ads.bidder.CriteoBidder.2
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                AdSettings a2 = CriteoBidder.this.nativeAdParamGetter.a(CriteoBidder.this.jsonBidder.getAdUnitId());
                final CriteoAdRenderer criteoAdRenderer = new CriteoAdRenderer(CriteoBidder.this.nativeAdParamGetter.a(a2), a2);
                CriteoBidder criteoBidder = CriteoBidder.this;
                criteoBidder.nativeLoader = new CriteoNativeLoader((NativeAdUnit) criteoBidder.adUnit, new CriteoNativeAdListener() { // from class: com.callapp.contacts.util.ads.bidder.CriteoBidder.2.1
                    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
                    public void onAdClicked() {
                        if (!CriteoBidder.this.clickReported.getAndSet(true)) {
                            String adUnitId = CriteoBidder.this.jsonBidder.getAdUnitId();
                            MoPub.AD_TYPE_AND_SIZE ad_type_and_size = MoPub.AD_TYPE_AND_SIZE.NATIVE;
                            String unused = CriteoBidder.this.requestId;
                            CallAppAdsAnalyticsManager.c("criteo", adUnitId, ad_type_and_size);
                        }
                        adEvents.onAdClick();
                    }

                    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
                    public /* synthetic */ void onAdClosed() {
                        CriteoNativeAdListener._CC.$default$onAdClosed(this);
                    }

                    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
                    public void onAdFailedToReceive(CriteoErrorCode criteoErrorCode) {
                        adEvents.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
                    }

                    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
                    public void onAdImpression() {
                        CriteoBidder.this.clickReported.set(false);
                        CallAppAdsAnalyticsManager.a("criteo", CriteoBidder.this.jsonBidder.getAdUnitId(), CriteoBidder.this.bidResponse.getPrice(), MoPub.AD_TYPE_AND_SIZE.NATIVE, CriteoBidder.this.requestId);
                    }

                    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
                    public /* synthetic */ void onAdLeftApplication() {
                        CriteoNativeAdListener._CC.$default$onAdLeftApplication(this);
                    }

                    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
                    public void onAdReceived(CriteoNativeAd criteoNativeAd) {
                        if (!CriteoBidder.this.isDestroyed) {
                            criteoAdRenderer.setCriteoNativeAd(criteoNativeAd);
                            CriteoStaticNativeAd criteoStaticNativeAd = new CriteoStaticNativeAd(criteoNativeAd);
                            CriteoBidder.this.nativeAd = new NativeAd(CriteoBidder.this.context, Collections.emptyList(), Collections.emptyList(), CriteoBidder.this.jsonBidder.getAdUnitId(), criteoStaticNativeAd, criteoAdRenderer);
                            adEvents.onNativeAdLoaded(CriteoBidder.this.nativeAd, CriteoBidder.this.jsonBidder.isCallappDisableRefresh());
                        }
                    }
                }, criteoAdRenderer);
                CriteoBidder.this.nativeLoader.loadAd(CriteoBidder.this.bidResponse);
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
                adEvents.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
            }
        });
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public /* synthetic */ void notifyLoss() {
        Bidder._CC.$default$notifyLoss(this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CriteoBidder{nativeAd=");
        NativeAd nativeAd = this.nativeAd;
        String str = null;
        sb.append(nativeAd != null ? nativeAd.getAdUnitId() : null);
        sb.append(", moPubView=");
        MoPubView moPubView = this.moPubView;
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
