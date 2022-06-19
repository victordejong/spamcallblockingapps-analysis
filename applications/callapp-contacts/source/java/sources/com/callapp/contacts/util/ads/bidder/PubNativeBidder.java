package com.callapp.contacts.util.ads.bidder;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.View;
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
import com.mopub.common.DataKeys;
import com.mopub.common.MoPub;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.mobileads.PubNativeAdapterConfiguration;
import com.mopub.mobileads.PubNativeInterstitial;
import com.mopub.nativeads.BaseNativeAd;
import com.mopub.nativeads.CallAppMoPubStaticNativeAdRenderer;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.PubNativeNative;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import net.pubnative.lite.sdk.api.BannerRequestManager;
import net.pubnative.lite.sdk.api.InterstitialRequestManager;
import net.pubnative.lite.sdk.api.MRectRequestManager;
import net.pubnative.lite.sdk.api.RequestManager;
import net.pubnative.lite.sdk.banner.presenter.BannerPresenterFactory;
import net.pubnative.lite.sdk.models.C20576Ad;
import net.pubnative.lite.sdk.mrect.presenter.MRectPresenterFactory;
import net.pubnative.lite.sdk.presenter.AdPresenter;
import net.pubnative.lite.sdk.presenter.PresenterFactory;
import net.pubnative.lite.sdk.request.NativeRequestManager;
import net.pubnative.lite.sdk.utils.PrebidUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/PubNativeBidder.class */
public class PubNativeBidder implements SimpleBidder {

    /* renamed from: ad */
    private C20576Ad f28051ad;
    private AdPresenter adPresenter;
    private String cacheKey;
    private Context context;
    private Handler handler;
    private HandlerThread handlerThread;
    private boolean isDestroyed;
    private JSONBidder jsonBidder;
    private MoPubInterstitial moPubInterstitial;
    private MoPubView moPubView;
    private NativeAd nativeAd;
    private NativeAdParamGetter nativeAdParamGetter;
    private double price;
    private String requestId;

    public void extractAndSetPriceAndNotifyListener(C20576Ad c20576Ad, AppBidder.BidListener bidListener) throws NumberFormatException {
        try {
            double parseDouble = Double.parseDouble(StringUtils.m26023h(PrebidUtils.getPrebidKeywords(c20576Ad, PrebidUtils.KeywordMode.TWO_DECIMALS), ":"));
            this.price = parseDouble;
            bidListener.mo27237a(parseDouble);
        } catch (NumberFormatException e) {
            bidListener.mo27236a(e.getMessage());
        }
    }

    private RequestManager getRequestManager(int i) {
        if (i != 0) {
            if (i == 1) {
                return new BannerRequestManager();
            }
            if (i == 2) {
                return new MRectRequestManager();
            }
            if (i == 4) {
                return new InterstitialRequestManager();
            }
            return null;
        }
        return new NativeRequestManager();
    }

    public Map<String, String> getServerExtras() {
        HashMap hashMap = new HashMap();
        hashMap.put(PubNativeInterstitial.ZONE_ID_KEY, this.jsonBidder.getAdUnitId());
        hashMap.put(DataKeys.CALLAPP_FLOOR_PRICE_KEY, String.valueOf(this.price));
        hashMap.put("app_bidder_request_id", this.requestId);
        return hashMap;
    }

    private void initHandlerIfNeeded() {
        if (this.handlerThread == null) {
            HandlerThread handlerThread = new HandlerThread(PubNativeBidder.class.toString());
            this.handlerThread = handlerThread;
            handlerThread.start();
            AndroidUtils.m27631a(this.handlerThread.getLooper());
            this.handler = new Handler(this.handlerThread.getLooper());
        }
    }

    private void loadBannerAd(PresenterFactory presenterFactory, final AdUtils.AdEvents adEvents, final MoPubView.MoPubAdSize moPubAdSize) {
        AdPresenter createPresenter = presenterFactory.createPresenter(this.f28051ad, new AdPresenter.Listener() { // from class: com.callapp.contacts.util.ads.bidder.PubNativeBidder.3
            @Override // net.pubnative.lite.sdk.presenter.AdPresenter.Listener
            public void onAdClicked(AdPresenter adPresenter) {
                String adUnitId = PubNativeBidder.this.jsonBidder.getAdUnitId();
                MoPub.AD_TYPE_AND_SIZE m28742a = CallAppAdsAnalyticsManager.m28742a(moPubAdSize);
                String unused = PubNativeBidder.this.requestId;
                CallAppAdsAnalyticsManager.m28737c("pubnative", adUnitId, m28742a);
                adEvents.onAdClick();
            }

            @Override // net.pubnative.lite.sdk.presenter.AdPresenter.Listener
            public void onAdError(AdPresenter adPresenter) {
                adEvents.onBannerAdFailed(null, MoPubErrorCode.INTERNAL_ERROR);
            }

            @Override // net.pubnative.lite.sdk.presenter.AdPresenter.Listener
            public void onAdLoaded(AdPresenter adPresenter, final View view) {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.PubNativeBidder.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!PubNativeBidder.this.isDestroyed) {
                            PubNativeBidder.this.moPubView = AdUtils.m27281a(PubNativeBidder.this.context, moPubAdSize);
                            PubNativeBidder.this.moPubView.setAdContentView(view);
                            PubNativeBidder.this.moPubView.setAdUnitId(PubNativeBidder.this.jsonBidder.getAdUnitId());
                            CallAppAdsAnalyticsManager.m28740a("pubnative", PubNativeBidder.this.jsonBidder.getAdUnitId(), PubNativeBidder.this.price, CallAppAdsAnalyticsManager.m28742a(moPubAdSize), PubNativeBidder.this.requestId);
                            adEvents.onBannerAdLoaded(PubNativeBidder.this.moPubView, PubNativeBidder.this.jsonBidder.isCallappDisableRefresh());
                        }
                    }
                });
            }
        });
        this.adPresenter = createPresenter;
        if (createPresenter != null) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.PubNativeBidder.4
                @Override // java.lang.Runnable
                public void run() {
                    PubNativeBidder.this.adPresenter.load();
                }
            });
        } else {
            adEvents.onBannerAdFailed(this.moPubView, MoPubErrorCode.INTERNAL_ERROR);
        }
    }

    private void loadInterstitialAd(final AdUtils.AdEvents adEvents) {
        HandlerThread handlerThread = new HandlerThread(PubNativeBidder.class.toString());
        this.handlerThread = handlerThread;
        handlerThread.start();
        AndroidUtils.m27631a(this.handlerThread.getLooper());
        Handler handler = new Handler(this.handlerThread.getLooper());
        this.handler = handler;
        handler.post(new SafeRunnable() { // from class: com.callapp.contacts.util.ads.bidder.PubNativeBidder.5
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                HashMap hashMap = new HashMap();
                PubNativeBidder.this.cacheKey = UUID.randomUUID().toString();
                BidObjectCache.Companion companion = BidObjectCache.f28004a;
                BidObjectCache.Companion.m27232a(PubNativeBidder.this.cacheKey, PubNativeBidder.this.f28051ad);
                hashMap.put("adm", PubNativeBidder.this.cacheKey);
                PubNativeBidder pubNativeBidder = PubNativeBidder.this;
                pubNativeBidder.moPubInterstitial = new MoPubInterstitial((Activity) pubNativeBidder.context, PubNativeBidder.this.jsonBidder.getAdUnitId());
                PubNativeBidder.this.moPubInterstitial.setLocalExtras(hashMap);
                PubNativeBidder.this.moPubInterstitial.setInterstitialAdListener(new MoPubInterstitial.InterstitialAdListener() { // from class: com.callapp.contacts.util.ads.bidder.PubNativeBidder.5.1
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
                PubNativeBidder.this.moPubInterstitial.fakeLoad(PubNativeInterstitial.class.getName(), PubNativeBidder.this.getServerExtras());
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
                adEvents.onInterstitialFailed(PubNativeBidder.this.moPubInterstitial, MoPubErrorCode.UNSPECIFIED);
            }
        });
    }

    private void loadNativeAd(final AdUtils.AdEvents adEvents) {
        final HashMap hashMap = new HashMap();
        final PubNativeNative pubNativeNative = new PubNativeNative();
        initHandlerIfNeeded();
        this.handler.post(new SafeRunnable() { // from class: com.callapp.contacts.util.ads.bidder.PubNativeBidder.6
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                pubNativeNative.loadNativeAd(PubNativeBidder.this.context, new CustomEventNative.CustomEventNativeListener() { // from class: com.callapp.contacts.util.ads.bidder.PubNativeBidder.6.1
                    @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                    public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                        adEvents.onNativeAdFailed(nativeErrorCode);
                    }

                    @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                    public void onNativeAdLoaded(BaseNativeAd baseNativeAd) {
                        if (PubNativeBidder.this.isDestroyed) {
                            baseNativeAd.destroy();
                            return;
                        }
                        AdSettings mo26137a = PubNativeBidder.this.nativeAdParamGetter.mo26137a(PubNativeBidder.this.jsonBidder.getAdUnitId());
                        CallAppMoPubStaticNativeAdRenderer callAppMoPubStaticNativeAdRenderer = new CallAppMoPubStaticNativeAdRenderer(PubNativeBidder.this.nativeAdParamGetter.mo26138a(mo26137a), mo26137a);
                        PubNativeBidder.this.nativeAd = new NativeAd(PubNativeBidder.this.context, Collections.emptyList(), Collections.emptyList(), PubNativeBidder.this.jsonBidder.getAdUnitId(), baseNativeAd, callAppMoPubStaticNativeAdRenderer);
                        adEvents.onNativeAdLoaded(PubNativeBidder.this.nativeAd, PubNativeBidder.this.jsonBidder.isCallappDisableRefresh());
                    }
                }, hashMap, PubNativeBidder.this.getServerExtras());
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
                adEvents.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
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
        if (StringUtils.m26045b((CharSequence) this.cacheKey)) {
            BidObjectCache.Companion companion = BidObjectCache.f28004a;
            BidObjectCache.Companion.m27233a(this.cacheKey);
            this.cacheKey = null;
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.PubNativeBidder.7
            @Override // java.lang.Runnable
            public void run() {
                if (PubNativeBidder.this.adPresenter != null) {
                    PubNativeBidder.this.adPresenter.destroy();
                    PubNativeBidder.this.adPresenter = null;
                }
                if (PubNativeBidder.this.moPubView != null) {
                    PubNativeBidder.this.moPubView.destroy();
                    PubNativeBidder.this.moPubView = null;
                }
                if (PubNativeBidder.this.nativeAd != null) {
                    PubNativeBidder.this.nativeAd.destroy();
                    PubNativeBidder.this.nativeAd = null;
                }
                if (PubNativeBidder.this.moPubInterstitial != null) {
                    PubNativeBidder.this.moPubInterstitial.destroy();
                    PubNativeBidder.this.moPubInterstitial = null;
                }
            }
        });
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public int getAdHeight() {
        MoPubView moPubView = this.moPubView;
        if (moPubView != null) {
            return moPubView.getAdSize().toInt();
        }
        return 0;
    }

    @Override // com.callapp.contacts.util.ads.bidder.SimpleBidder
    public void getBid(Context context, final JSONBidder jSONBidder, final AppBidder.BidListener bidListener, NativeAdParamGetter nativeAdParamGetter, long j, String str) {
        if (!PubNativeAdapterConfiguration.isInitialized()) {
            new PubNativeAdapterConfiguration().initializeNetwork(context, new HashMap());
        }
        if (!PubNativeAdapterConfiguration.isInitialized()) {
            bidListener.mo27236a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.toString());
            return;
        }
        this.context = context;
        this.jsonBidder = jSONBidder;
        this.requestId = str;
        this.nativeAdParamGetter = nativeAdParamGetter;
        if (jSONBidder.getCachetimeInMinutes() > 0) {
            this.f28051ad = (C20576Ad) CacheManager.get().m28378b(C20576Ad.class, AppBidder.m27252a(jSONBidder), false);
        }
        C20576Ad c20576Ad = this.f28051ad;
        if (c20576Ad != null) {
            extractAndSetPriceAndNotifyListener(c20576Ad, bidListener);
            return;
        }
        final RequestManager requestManager = getRequestManager(jSONBidder.getAdType());
        if (requestManager == null) {
            bidListener.mo27236a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.toString());
            return;
        }
        requestManager.setZoneId(jSONBidder.getAdUnitId());
        final RequestManager.RequestListener requestListener = new RequestManager.RequestListener() { // from class: com.callapp.contacts.util.ads.bidder.PubNativeBidder.1
            @Override // net.pubnative.lite.sdk.api.RequestManager.RequestListener
            public void onRequestFail(Throwable th) {
                bidListener.mo27236a(MoPubErrorCode.NETWORK_NO_FILL.toString());
            }

            @Override // net.pubnative.lite.sdk.api.RequestManager.RequestListener
            public void onRequestSuccess(C20576Ad c20576Ad2) {
                if (jSONBidder.getCachetimeInMinutes() > 0) {
                    try {
                        CacheManager.get().m28379b(C20576Ad.class, AppBidder.m27252a(jSONBidder), c20576Ad2, (int) jSONBidder.getCachetimeInMinutes());
                    } catch (Exception e) {
                        CLog.m27609a(PubNativeBidder.class, e);
                    }
                }
                PubNativeBidder.this.f28051ad = c20576Ad2;
                PubNativeBidder.this.extractAndSetPriceAndNotifyListener(c20576Ad2, bidListener);
            }
        };
        requestManager.setRequestListener(requestListener);
        initHandlerIfNeeded();
        this.handler.post(new SafeRunnable() { // from class: com.callapp.contacts.util.ads.bidder.PubNativeBidder.2
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                try {
                    requestManager.requestAd();
                } catch (Exception e) {
                    CLog.m27609a(PubNativeBidder.class, e);
                    requestListener.onRequestFail(e);
                }
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
                requestListener.onRequestFail(th);
            }
        });
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void loadAd(AdUtils.AdEvents adEvents) {
        if (this.jsonBidder.getCachetimeInMinutes() > 0) {
            CacheManager.get().m28390a(C20576Ad.class, AppBidder.m27252a(this.jsonBidder));
        }
        int adType = this.jsonBidder.getAdType();
        if (adType == 0) {
            loadNativeAd(adEvents);
        } else if (adType == 1) {
            loadBannerAd(new BannerPresenterFactory(this.context), adEvents, MoPubView.MoPubAdSize.HEIGHT_50);
        } else if (adType == 2) {
            loadBannerAd(new MRectPresenterFactory(this.context), adEvents, MoPubView.MoPubAdSize.HEIGHT_250);
        } else if (adType != 4) {
        } else {
            loadInterstitialAd(adEvents);
        }
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public /* synthetic */ void notifyLoss() {
        Bidder._CC.$default$notifyLoss(this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PunNativeBidder{nativeAd=");
        NativeAd nativeAd = this.nativeAd;
        sb.append(nativeAd != null ? nativeAd.getAdUnitId() : null);
        sb.append(", moPubView=");
        MoPubView moPubView = this.moPubView;
        sb.append(moPubView != null ? moPubView.getAdUnitId() : null);
        sb.append(", moPubInterstitial=");
        MoPubInterstitial moPubInterstitial = this.moPubInterstitial;
        String str = null;
        if (moPubInterstitial != null) {
            str = moPubInterstitial.getAdUnitId();
        }
        sb.append(str);
        sb.append('}');
        return sb.toString();
    }
}
