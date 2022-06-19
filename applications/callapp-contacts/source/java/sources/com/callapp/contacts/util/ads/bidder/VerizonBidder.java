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
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.AppBidder;
import com.callapp.contacts.util.ads.BidObjectCache;
import com.callapp.contacts.util.ads.JSONBidder;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
import com.callapp.contacts.util.ads.bidder.Bidder;
import com.callapp.framework.util.StringUtils;
import com.explorestack.iab.vast.VastError;
import com.mopub.common.DataKeys;
import com.mopub.common.MoPub;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.mobileads.VerizonAdapterConfiguration;
import com.mopub.mobileads.VerizonInterstitial;
import com.mopub.mobileads.VerizonUtils;
import com.mopub.nativeads.FacebookNative;
import com.verizon.ads.Bid;
import com.verizon.ads.BidRequestListener;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.inlineplacement.AdSize;
import com.verizon.ads.inlineplacement.InlineAdFactory;
import com.verizon.ads.inlineplacement.InlineAdView;
import com.verizon.ads.interstitialplacement.InterstitialAdFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/VerizonBidder.class */
public class VerizonBidder implements SimpleBidder {
    private static final String AD_IMPRESSION_EVENT_ID = "adImpression";
    private AdSize adSize;
    private Bid bid;
    private String cacheKey;
    private final AtomicBoolean clickReported = new AtomicBoolean(false);
    private Context context;
    private Handler handler;
    private HandlerThread handlerThread;
    private JSONBidder jsonBidder;
    private MoPubView.MoPubAdSize moPubAdSize;
    private MoPubInterstitial moPubInterstitial;
    private MoPubView moPubView;
    private double price;
    private String requestId;
    private InlineAdView verizonInlineAd;

    private AdSize getAdSize(int i) {
        AdSize adSize;
        if (i == 1) {
            adSize = new AdSize(320, 50);
            this.moPubAdSize = MoPubView.MoPubAdSize.HEIGHT_50;
        } else if (i != 2) {
            adSize = null;
        } else {
            adSize = new AdSize(VastError.ERROR_CODE_GENERAL_WRAPPER, 250);
            this.moPubAdSize = MoPubView.MoPubAdSize.HEIGHT_250;
        }
        return adSize;
    }

    public Map<String, String> getServerExtras() {
        HashMap hashMap = new HashMap();
        hashMap.put(FacebookNative.PLACEMENT_ID_KEY, this.jsonBidder.getAdUnitId());
        hashMap.put(DataKeys.CALLAPP_FLOOR_PRICE_KEY, String.valueOf(this.price));
        hashMap.put("app_bidder_request_id", this.requestId);
        return hashMap;
    }

    private void loadBannerAd(final AdUtils.AdEvents adEvents) {
        new InlineAdFactory(this.context, this.jsonBidder.getAdUnitId(), Collections.singletonList(new AdSize(this.adSize.getWidth(), this.adSize.getHeight())), new InlineAdFactory.InlineAdFactoryListener() { // from class: com.callapp.contacts.util.ads.bidder.VerizonBidder.2
            @Override // com.verizon.ads.inlineplacement.InlineAdFactory.InlineAdFactoryListener
            public void onError(InlineAdFactory inlineAdFactory, ErrorInfo errorInfo) {
                adEvents.onBannerAdFailed(null, VerizonUtils.convertErrorInfoToMoPub(errorInfo));
            }

            @Override // com.verizon.ads.inlineplacement.InlineAdFactory.InlineAdFactoryListener
            public void onLoaded(InlineAdFactory inlineAdFactory, InlineAdView inlineAdView) {
                VerizonBidder verizonBidder = VerizonBidder.this;
                verizonBidder.verizonInlineAd = verizonBidder.verizonInlineAd;
                VerizonBidder verizonBidder2 = VerizonBidder.this;
                verizonBidder2.moPubView = AdUtils.m27281a(verizonBidder2.context, VerizonBidder.this.moPubAdSize);
                VerizonBidder.this.moPubView.setAdContentView(inlineAdView);
                VerizonBidder.this.moPubView.setAdUnitId(VerizonBidder.this.jsonBidder.getAdUnitId());
                adEvents.onBannerAdLoaded(VerizonBidder.this.moPubView, VerizonBidder.this.jsonBidder.isCallappDisableRefresh());
            }
        }).load(this.bid, new InlineAdView.InlineAdListener() { // from class: com.callapp.contacts.util.ads.bidder.VerizonBidder.3
            @Override // com.verizon.ads.inlineplacement.InlineAdView.InlineAdListener
            public void onAdLeftApplication(InlineAdView inlineAdView) {
            }

            @Override // com.verizon.ads.inlineplacement.InlineAdView.InlineAdListener
            public void onAdRefreshed(InlineAdView inlineAdView) {
            }

            @Override // com.verizon.ads.inlineplacement.InlineAdView.InlineAdListener
            public void onClicked(InlineAdView inlineAdView) {
                if (!VerizonBidder.this.clickReported.getAndSet(true)) {
                    String adUnitId = VerizonBidder.this.jsonBidder.getAdUnitId();
                    MoPub.AD_TYPE_AND_SIZE adTypeAndSizeForBanner = CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(inlineAdView.getHeight());
                    String unused = VerizonBidder.this.requestId;
                    CallAppAdsAnalyticsManager.m28737c("verizon", adUnitId, adTypeAndSizeForBanner);
                }
            }

            @Override // com.verizon.ads.inlineplacement.InlineAdView.InlineAdListener
            public void onCollapsed(InlineAdView inlineAdView) {
            }

            @Override // com.verizon.ads.inlineplacement.InlineAdView.InlineAdListener
            public void onError(InlineAdView inlineAdView, ErrorInfo errorInfo) {
                adEvents.onBannerAdFailed(null, VerizonUtils.convertErrorInfoToMoPub(errorInfo));
            }

            @Override // com.verizon.ads.inlineplacement.InlineAdView.InlineAdListener
            public void onEvent(InlineAdView inlineAdView, String str, String str2, Map<String, Object> map) {
                if (VerizonBidder.AD_IMPRESSION_EVENT_ID.equals(str2)) {
                    VerizonBidder.this.clickReported.set(false);
                    CallAppAdsAnalyticsManager.m28740a("verizon", VerizonBidder.this.jsonBidder.getAdUnitId(), VerizonBidder.this.price, CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(inlineAdView.getHeight()), VerizonBidder.this.requestId);
                }
            }

            @Override // com.verizon.ads.inlineplacement.InlineAdView.InlineAdListener
            public void onExpanded(InlineAdView inlineAdView) {
            }

            @Override // com.verizon.ads.inlineplacement.InlineAdView.InlineAdListener
            public void onResized(InlineAdView inlineAdView) {
            }
        });
    }

    private void loadInterstitialAd(final AdUtils.AdEvents adEvents) {
        HandlerThread handlerThread = new HandlerThread(VerizonBidder.class.toString());
        this.handlerThread = handlerThread;
        handlerThread.start();
        AndroidUtils.m27631a(this.handlerThread.getLooper());
        Handler handler = new Handler(this.handlerThread.getLooper());
        this.handler = handler;
        handler.post(new SafeRunnable() { // from class: com.callapp.contacts.util.ads.bidder.VerizonBidder.4
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                HashMap hashMap = new HashMap();
                VerizonBidder.this.cacheKey = UUID.randomUUID().toString();
                BidObjectCache.Companion companion = BidObjectCache.f28004a;
                BidObjectCache.Companion.m27232a(VerizonBidder.this.cacheKey, VerizonBidder.this.bid);
                hashMap.put("adm", VerizonBidder.this.cacheKey);
                VerizonBidder verizonBidder = VerizonBidder.this;
                verizonBidder.moPubInterstitial = new MoPubInterstitial((Activity) verizonBidder.context, VerizonBidder.this.jsonBidder.getAdUnitId());
                VerizonBidder.this.moPubInterstitial.setLocalExtras(hashMap);
                VerizonBidder.this.moPubInterstitial.setInterstitialAdListener(new MoPubInterstitial.InterstitialAdListener() { // from class: com.callapp.contacts.util.ads.bidder.VerizonBidder.4.1
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
                VerizonBidder.this.moPubInterstitial.fakeLoad(VerizonInterstitial.class.getName(), VerizonBidder.this.getServerExtras());
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
                adEvents.onInterstitialFailed(VerizonBidder.this.moPubInterstitial, MoPubErrorCode.UNSPECIFIED);
            }
        });
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void destroy() {
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
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.VerizonBidder.5
            @Override // java.lang.Runnable
            public void run() {
                if (VerizonBidder.this.verizonInlineAd != null) {
                    VerizonBidder.this.verizonInlineAd.destroy();
                    VerizonBidder.this.verizonInlineAd = null;
                }
                if (VerizonBidder.this.moPubView != null) {
                    VerizonBidder.this.moPubView.destroy();
                    VerizonBidder.this.moPubView = null;
                }
                if (VerizonBidder.this.moPubInterstitial != null) {
                    VerizonBidder.this.moPubInterstitial.destroy();
                    VerizonBidder.this.moPubInterstitial = null;
                }
            }
        });
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public int getAdHeight() {
        AdSize adSize = this.adSize;
        if (adSize != null) {
            return adSize.getHeight();
        }
        return -1;
    }

    @Override // com.callapp.contacts.util.ads.bidder.SimpleBidder
    public void getBid(Context context, final JSONBidder jSONBidder, final AppBidder.BidListener bidListener, NativeAdParamGetter nativeAdParamGetter, long j, String str) {
        if (!VerizonAdapterConfiguration.isInitialized()) {
            new VerizonAdapterConfiguration().initializeNetwork(context, new HashMap());
        }
        if (!VerizonAdapterConfiguration.isInitialized()) {
            bidListener.mo27236a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.toString());
            return;
        }
        this.context = context;
        this.requestId = str;
        this.jsonBidder = jSONBidder;
        BidRequestListener bidRequestListener = new BidRequestListener() { // from class: com.callapp.contacts.util.ads.bidder.VerizonBidder.1
            @Override // com.verizon.ads.BidRequestListener
            public void onComplete(Bid bid, ErrorInfo errorInfo) {
                if (errorInfo != null) {
                    bidListener.mo27236a(errorInfo.getDescription());
                    return;
                }
                if (jSONBidder.getCachetimeInMinutes() > 0) {
                    try {
                        CacheManager.get().m28387a((Class<String>) Bid.class, AppBidder.m27252a(jSONBidder), (String) bid, (int) jSONBidder.getCachetimeInMinutes(), false);
                    } catch (Exception e) {
                        CLog.m27609a(VerizonBidder.class, e);
                    }
                }
                VerizonBidder.this.bid = bid;
                try {
                    VerizonBidder.this.price = Double.parseDouble(bid.value);
                    bidListener.mo27237a(VerizonBidder.this.price);
                } catch (NumberFormatException e2) {
                    bidListener.mo27236a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.name());
                }
            }
        };
        if (jSONBidder.getCachetimeInMinutes() > 0) {
            this.bid = (Bid) CacheManager.get().m28378b(Bid.class, AppBidder.m27252a(jSONBidder), false);
        }
        Bid bid = this.bid;
        if (bid != null) {
            this.price = Double.parseDouble(bid.value);
            bidRequestListener.onComplete(this.bid, null);
            return;
        }
        int adType = jSONBidder.getAdType();
        if (adType != 1 && adType != 2) {
            if (adType != 4) {
                bidListener.mo27236a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.name());
                return;
            } else {
                InterstitialAdFactory.requestBid(context, jSONBidder.getAdUnitId(), null, bidRequestListener);
                return;
            }
        }
        AdSize adSize = getAdSize(jSONBidder.getAdType());
        this.adSize = adSize;
        if (adSize == null) {
            bidListener.mo27236a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.toString());
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.adSize);
        InlineAdFactory.requestBid(context, jSONBidder.getAdUnitId(), arrayList, null, bidRequestListener);
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void loadAd(AdUtils.AdEvents adEvents) {
        if (this.jsonBidder.getCachetimeInMinutes() > 0) {
            CacheManager.get().m28385a(Bid.class, AppBidder.m27252a(this.jsonBidder), false);
        }
        int adType = this.jsonBidder.getAdType();
        if (adType == 1 || adType == 2) {
            loadBannerAd(adEvents);
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
        StringBuilder sb = new StringBuilder("VerizonBidder{moPubView=");
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
