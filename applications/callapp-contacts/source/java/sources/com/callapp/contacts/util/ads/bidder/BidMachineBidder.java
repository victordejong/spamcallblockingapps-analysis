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
import com.callapp.framework.util.StringUtils;
import com.mopub.common.DataKeys;
import com.mopub.common.MoPub;
import com.mopub.mobileads.BidMachineAdapterConfiguration;
import com.mopub.mobileads.BidMachineInterstitial;
import com.mopub.mobileads.BidMachineUtils;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.BaseNativeAd;
import com.mopub.nativeads.BidMachineNative;
import com.mopub.nativeads.BidMachineNativeRenderer;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import io.bidmachine.AdContentType;
import io.bidmachine.BidMachineFetcher;
import io.bidmachine.banner.BannerListener;
import io.bidmachine.banner.BannerRequest;
import io.bidmachine.banner.BannerSize;
import io.bidmachine.banner.BannerView;
import io.bidmachine.interstitial.InterstitialRequest;
import io.bidmachine.models.AuctionResult;
import io.bidmachine.nativead.NativeRequest;
import io.bidmachine.utils.BMError;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/BidMachineBidder.class */
public class BidMachineBidder implements SimpleBidder {
    private AuctionResult auctionResult;
    private BannerRequest bannerRequest;
    private BannerView bannerView;
    public String cacheKey;
    private Context context;
    private Handler handler;
    private HandlerThread handlerThread;
    private InterstitialRequest interstitialRequest;
    private boolean isDestroyed;
    private JSONBidder jsonBidder;
    private MoPubInterstitial moPubInterstitial;
    private MoPubView moPubView;
    private NativeAd nativeAd;
    private NativeAdParamGetter nativeAdParamGetter;
    private NativeRequest nativeRequest;
    private double price;
    private String requestId;

    public Map<String, String> getServerExtras() {
        HashMap hashMap = new HashMap();
        hashMap.put(DataKeys.AD_UNIT_ID_KEY, this.jsonBidder.getAdUnitId());
        hashMap.put(DataKeys.CALLAPP_FLOOR_PRICE_KEY, String.valueOf(this.price));
        hashMap.put("app_bidder_request_id", this.requestId);
        return hashMap;
    }

    private void loadBannerAd(final AdUtils.AdEvents adEvents, final MoPubView.MoPubAdSize moPubAdSize) {
        BannerRequest bannerRequest = this.bannerRequest;
        if (bannerRequest == null || bannerRequest.isExpired()) {
            adEvents.onBannerAdFailed(null, MoPubErrorCode.EXPIRED);
            return;
        }
        BannerView bannerView = new BannerView(CallAppApplication.get());
        this.bannerView = bannerView;
        bannerView.setListener(new BannerListener() { // from class: com.callapp.contacts.util.ads.bidder.BidMachineBidder.5
            public void onAdClicked(BannerView bannerView2) {
                String adUnitId = BidMachineBidder.this.jsonBidder.getAdUnitId();
                MoPub.AD_TYPE_AND_SIZE m28742a = CallAppAdsAnalyticsManager.m28742a(moPubAdSize);
                String unused = BidMachineBidder.this.requestId;
                CallAppAdsAnalyticsManager.m28737c("bidmachine", adUnitId, m28742a);
            }

            public void onAdExpired(BannerView bannerView2) {
                adEvents.onBannerAdFailed(null, MoPubErrorCode.INTERNAL_ERROR);
            }

            public void onAdImpression(BannerView bannerView2) {
                CallAppAdsAnalyticsManager.m28740a("bidmachine", BidMachineBidder.this.jsonBidder.getAdUnitId(), BidMachineBidder.this.price, CallAppAdsAnalyticsManager.m28742a(moPubAdSize), BidMachineBidder.this.requestId);
            }

            public void onAdLoadFailed(BannerView bannerView2, BMError bMError) {
                adEvents.onBannerAdFailed(null, MoPubErrorCode.INTERNAL_ERROR);
            }

            public void onAdLoaded(final BannerView bannerView2) {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.BidMachineBidder.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!BidMachineBidder.this.isDestroyed) {
                            BidMachineBidder.this.moPubView = AdUtils.m27281a(BidMachineBidder.this.context, moPubAdSize);
                            BidMachineBidder.this.moPubView.setAdContentView(bannerView2);
                            BidMachineBidder.this.moPubView.setAdUnitId(BidMachineBidder.this.jsonBidder.getAdUnitId());
                            adEvents.onBannerAdLoaded(BidMachineBidder.this.moPubView, BidMachineBidder.this.jsonBidder.isCallappDisableRefresh());
                        }
                    }
                });
            }

            public void onAdShown(BannerView bannerView2) {
            }
        });
        this.bannerView.load((BannerView) this.bannerRequest);
        this.bannerRequest.notifyMediationWin();
    }

    private void loadInterstitialAd(final AdUtils.AdEvents adEvents) {
        HandlerThread handlerThread = new HandlerThread(PubNativeBidder.class.toString());
        this.handlerThread = handlerThread;
        handlerThread.start();
        AndroidUtils.m27631a(this.handlerThread.getLooper());
        Handler handler = new Handler(this.handlerThread.getLooper());
        this.handler = handler;
        handler.post(new SafeRunnable() { // from class: com.callapp.contacts.util.ads.bidder.BidMachineBidder.6
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                if (BidMachineBidder.this.interstitialRequest == null || BidMachineBidder.this.interstitialRequest.isExpired()) {
                    adEvents.onInterstitialFailed(BidMachineBidder.this.moPubInterstitial, MoPubErrorCode.EXPIRED);
                    return;
                }
                HashMap hashMap = new HashMap();
                BidMachineBidder.this.cacheKey = UUID.randomUUID().toString();
                BidObjectCache.Companion companion = BidObjectCache.f28004a;
                BidObjectCache.Companion.m27232a(BidMachineBidder.this.cacheKey, BidMachineBidder.this.interstitialRequest);
                hashMap.put(BidMachineFetcher.KEY_ID, BidMachineBidder.this.cacheKey);
                BidMachineBidder bidMachineBidder = BidMachineBidder.this;
                bidMachineBidder.moPubInterstitial = new MoPubInterstitial((Activity) bidMachineBidder.context, BidMachineBidder.this.jsonBidder.getAdUnitId());
                BidMachineBidder.this.moPubInterstitial.setLocalExtras(hashMap);
                BidMachineBidder.this.moPubInterstitial.setInterstitialAdListener(new MoPubInterstitial.InterstitialAdListener() { // from class: com.callapp.contacts.util.ads.bidder.BidMachineBidder.6.1
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
                BidMachineBidder.this.moPubInterstitial.fakeLoad(BidMachineInterstitial.class.getName(), BidMachineBidder.this.getServerExtras());
                BidMachineBidder.this.interstitialRequest.notifyMediationWin();
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
                adEvents.onInterstitialFailed(BidMachineBidder.this.moPubInterstitial, MoPubErrorCode.INTERNAL_ERROR);
            }
        });
    }

    private void loadNativeAd(final AdUtils.AdEvents adEvents) {
        HandlerThread handlerThread = new HandlerThread(PubNativeBidder.class.toString());
        this.handlerThread = handlerThread;
        handlerThread.start();
        AndroidUtils.m27631a(this.handlerThread.getLooper());
        Handler handler = new Handler(this.handlerThread.getLooper());
        this.handler = handler;
        handler.post(new SafeRunnable() { // from class: com.callapp.contacts.util.ads.bidder.BidMachineBidder.7
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                if (BidMachineBidder.this.nativeRequest == null || BidMachineBidder.this.nativeRequest.isExpired()) {
                    adEvents.onNativeAdFailed(NativeErrorCode.NETWORK_INVALID_STATE);
                    return;
                }
                HashMap hashMap = new HashMap();
                hashMap.put(BidMachineFetcher.KEY_ID, BidMachineBidder.this.nativeRequest);
                new BidMachineNative().loadNativeAd(BidMachineBidder.this.context, new CustomEventNative.CustomEventNativeListener() { // from class: com.callapp.contacts.util.ads.bidder.BidMachineBidder.7.1
                    @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                    public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                        adEvents.onNativeAdFailed(nativeErrorCode);
                    }

                    @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                    public void onNativeAdLoaded(BaseNativeAd baseNativeAd) {
                        if (BidMachineBidder.this.isDestroyed) {
                            baseNativeAd.destroy();
                            return;
                        }
                        AdSettings mo26137a = BidMachineBidder.this.nativeAdParamGetter.mo26137a(BidMachineBidder.this.jsonBidder.getAdUnitId());
                        BidMachineNativeRenderer bidMachineNativeRenderer = new BidMachineNativeRenderer(BidMachineBidder.this.nativeAdParamGetter.mo26138a(mo26137a), mo26137a);
                        BidMachineBidder.this.nativeAd = new NativeAd(BidMachineBidder.this.context, Collections.emptyList(), Collections.emptyList(), BidMachineBidder.this.jsonBidder.getAdUnitId(), baseNativeAd, bidMachineNativeRenderer);
                        adEvents.onNativeAdLoaded(BidMachineBidder.this.nativeAd, BidMachineBidder.this.jsonBidder.isCallappDisableRefresh());
                    }
                }, hashMap, BidMachineBidder.this.getServerExtras());
                BidMachineBidder.this.nativeRequest.notifyMediationWin();
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
                adEvents.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
            }
        });
    }

    public void saveToMemCache(AuctionResult auctionResult) {
        if (this.jsonBidder.getCachetimeInMinutes() > 0) {
            try {
                CacheManager.get().m28387a((Class<String>) AuctionResult.class, AppBidder.m27252a(this.jsonBidder), (String) auctionResult, (int) this.jsonBidder.getCachetimeInMinutes(), false);
            } catch (Exception e) {
                CLog.m27609a(BidMachineBidder.class, e);
            }
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
        if (StringUtils.m26045b((CharSequence) this.cacheKey)) {
            BidObjectCache.Companion companion = BidObjectCache.f28004a;
            BidObjectCache.Companion.m27233a(this.cacheKey);
            this.cacheKey = null;
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.BidMachineBidder.8
            @Override // java.lang.Runnable
            public void run() {
                if (BidMachineBidder.this.moPubView != null) {
                    BidMachineBidder.this.moPubView.destroy();
                    BidMachineBidder.this.moPubView = null;
                }
                if (BidMachineBidder.this.nativeRequest != null) {
                    BidMachineBidder.this.nativeRequest.destroy();
                    BidMachineBidder.this.nativeRequest = null;
                }
                if (BidMachineBidder.this.bannerRequest != null) {
                    BidMachineBidder.this.bannerRequest.destroy();
                    BidMachineBidder.this.bannerRequest = null;
                }
                if (BidMachineBidder.this.interstitialRequest != null) {
                    BidMachineBidder.this.interstitialRequest.destroy();
                    BidMachineBidder.this.interstitialRequest = null;
                }
                if (BidMachineBidder.this.bannerView != null) {
                    BidMachineBidder.this.bannerView.destroy();
                    BidMachineBidder.this.bannerView = null;
                }
                if (BidMachineBidder.this.nativeAd != null) {
                    BidMachineBidder.this.nativeAd.destroy();
                    BidMachineBidder.this.nativeAd = null;
                }
                if (BidMachineBidder.this.moPubInterstitial != null) {
                    BidMachineBidder.this.moPubInterstitial.destroy();
                    BidMachineBidder.this.moPubInterstitial = null;
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
    public void getBid(Context context, JSONBidder jSONBidder, final AppBidder.BidListener bidListener, NativeAdParamGetter nativeAdParamGetter, long j, String str) {
        if (!BidMachineAdapterConfiguration.isInitialized()) {
            new BidMachineAdapterConfiguration().initializeNetwork(context, new HashMap());
        }
        if (!BidMachineAdapterConfiguration.isInitialized()) {
            bidListener.mo27236a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.toString());
            return;
        }
        this.context = context;
        this.jsonBidder = jSONBidder;
        this.requestId = str;
        this.nativeAdParamGetter = nativeAdParamGetter;
        if (jSONBidder.getCachetimeInMinutes() > 0) {
            this.auctionResult = (AuctionResult) CacheManager.get().m28378b(AuctionResult.class, AppBidder.m27252a(jSONBidder), false);
        }
        AuctionResult auctionResult = this.auctionResult;
        if (auctionResult != null) {
            double price = auctionResult.getPrice();
            this.price = price;
            bidListener.mo27237a(price);
            return;
        }
        int adType = jSONBidder.getAdType();
        if (adType == 0) {
            NativeRequest.Builder listener = new NativeRequest.Builder().setListener(new NativeRequest.AdRequestListener() { // from class: com.callapp.contacts.util.ads.bidder.BidMachineBidder.3
                public void onRequestExpired(NativeRequest nativeRequest) {
                    bidListener.mo27236a(MoPubErrorCode.EXPIRED.toString());
                    nativeRequest.removeListener(this);
                }

                public void onRequestFailed(NativeRequest nativeRequest, BMError bMError) {
                    bidListener.mo27236a(BidMachineUtils.transformToMoPubNativeErrorCode(bMError).toString());
                    nativeRequest.removeListener(this);
                }

                public void onRequestSuccess(NativeRequest nativeRequest, AuctionResult auctionResult2) {
                    BidMachineBidder.this.saveToMemCache(auctionResult2);
                    BidMachineBidder.this.nativeRequest = nativeRequest;
                    BidMachineBidder.this.price = auctionResult2.getPrice();
                    bidListener.mo27237a(BidMachineBidder.this.price);
                    nativeRequest.removeListener(this);
                }
            });
            NativeRequest.Builder builder = listener;
            if (j > 0) {
                builder = listener.setLoadingTimeOut((int) j);
            }
            builder.build().request(CallAppApplication.get());
        } else if (adType == 1) {
            BannerRequest.Builder listener2 = new BannerRequest.Builder().setSize(BannerSize.Size_320x50).setListener(new BannerRequest.AdRequestListener() { // from class: com.callapp.contacts.util.ads.bidder.BidMachineBidder.1
                public void onRequestExpired(BannerRequest bannerRequest) {
                    bidListener.mo27236a(MoPubErrorCode.EXPIRED.toString());
                    bannerRequest.removeListener(this);
                }

                public void onRequestFailed(BannerRequest bannerRequest, BMError bMError) {
                    bidListener.mo27236a(BidMachineUtils.transformToMoPubErrorCode(bMError).toString());
                    bannerRequest.removeListener(this);
                }

                public void onRequestSuccess(BannerRequest bannerRequest, AuctionResult auctionResult2) {
                    BidMachineBidder.this.saveToMemCache(auctionResult2);
                    BidMachineBidder.this.bannerRequest = bannerRequest;
                    BidMachineBidder.this.price = auctionResult2.getPrice();
                    bidListener.mo27237a(BidMachineBidder.this.price);
                    bannerRequest.removeListener(this);
                }
            });
            BannerRequest.Builder builder2 = listener2;
            if (j > 0) {
                builder2 = listener2.setLoadingTimeOut((int) j);
            }
            builder2.build().request(CallAppApplication.get());
        } else if (adType == 2) {
            BannerRequest.Builder listener3 = new BannerRequest.Builder().setSize(BannerSize.Size_300x250).setListener(new BannerRequest.AdRequestListener() { // from class: com.callapp.contacts.util.ads.bidder.BidMachineBidder.2
                public void onRequestExpired(BannerRequest bannerRequest) {
                    bidListener.mo27236a(MoPubErrorCode.EXPIRED.toString());
                    bannerRequest.removeListener(this);
                }

                public void onRequestFailed(BannerRequest bannerRequest, BMError bMError) {
                    bidListener.mo27236a(BidMachineUtils.transformToMoPubErrorCode(bMError).toString());
                    bannerRequest.removeListener(this);
                }

                public void onRequestSuccess(BannerRequest bannerRequest, AuctionResult auctionResult2) {
                    BidMachineBidder.this.saveToMemCache(auctionResult2);
                    BidMachineBidder.this.bannerRequest = bannerRequest;
                    BidMachineBidder.this.price = auctionResult2.getPrice();
                    bidListener.mo27237a(BidMachineBidder.this.price);
                    bannerRequest.removeListener(this);
                }
            });
            BannerRequest.Builder builder3 = listener3;
            if (j > 0) {
                builder3 = listener3.setLoadingTimeOut((int) j);
            }
            builder3.build().request(CallAppApplication.get());
        } else if (adType != 4) {
            bidListener.mo27236a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.toString());
        } else {
            InterstitialRequest.Builder builder4 = (InterstitialRequest.Builder) new InterstitialRequest.Builder().setAdContentType(AdContentType.All).setListener(new InterstitialRequest.AdRequestListener() { // from class: com.callapp.contacts.util.ads.bidder.BidMachineBidder.4
                public void onRequestExpired(InterstitialRequest interstitialRequest) {
                    bidListener.mo27236a(MoPubErrorCode.EXPIRED.toString());
                    interstitialRequest.removeListener(this);
                }

                public void onRequestFailed(InterstitialRequest interstitialRequest, BMError bMError) {
                    bidListener.mo27236a(BidMachineUtils.transformToMoPubErrorCode(bMError).toString());
                    interstitialRequest.removeListener(this);
                }

                public void onRequestSuccess(InterstitialRequest interstitialRequest, AuctionResult auctionResult2) {
                    BidMachineBidder.this.saveToMemCache(auctionResult2);
                    BidMachineBidder.this.interstitialRequest = interstitialRequest;
                    BidMachineBidder.this.price = auctionResult2.getPrice();
                    bidListener.mo27237a(BidMachineBidder.this.price);
                    interstitialRequest.removeListener(this);
                }
            });
            InterstitialRequest.Builder builder5 = builder4;
            if (j > 0) {
                builder5 = (InterstitialRequest.Builder) builder4.setLoadingTimeOut((int) j);
            }
            ((InterstitialRequest) builder5.build()).request(CallAppApplication.get());
        }
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void loadAd(AdUtils.AdEvents adEvents) {
        if (this.jsonBidder.getCachetimeInMinutes() > 0) {
            CacheManager.get().m28385a(AuctionResult.class, AppBidder.m27252a(this.jsonBidder), false);
        }
        int adType = this.jsonBidder.getAdType();
        if (adType == 0) {
            loadNativeAd(adEvents);
        } else if (adType == 1) {
            loadBannerAd(adEvents, MoPubView.MoPubAdSize.HEIGHT_50);
        } else if (adType == 2) {
            loadBannerAd(adEvents, MoPubView.MoPubAdSize.HEIGHT_250);
        } else if (adType != 4) {
        } else {
            loadInterstitialAd(adEvents);
        }
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void notifyLoss() {
        BannerRequest bannerRequest = this.bannerRequest;
        if (bannerRequest != null && !bannerRequest.isExpired()) {
            this.bannerRequest.notifyMediationLoss();
            return;
        }
        InterstitialRequest interstitialRequest = this.interstitialRequest;
        if (interstitialRequest != null && !interstitialRequest.isExpired()) {
            this.interstitialRequest.notifyMediationLoss();
            return;
        }
        NativeRequest nativeRequest = this.nativeRequest;
        if (nativeRequest == null || nativeRequest.isExpired()) {
            return;
        }
        this.nativeRequest.notifyMediationLoss();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BidMachineBidder{nativeAd=");
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
