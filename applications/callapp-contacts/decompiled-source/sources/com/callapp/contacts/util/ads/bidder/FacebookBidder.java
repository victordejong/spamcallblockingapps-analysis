package com.callapp.contacts.util.ads.bidder;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.task.SafeRunnable;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ads.AdSettings;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.AppBidder;
import com.callapp.contacts.util.ads.JSONBidder;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdView;
import com.facebook.ads.BidderTokenProvider;
import com.facebook.biddingkit.a.a;
import com.facebook.biddingkit.c.b;
import com.facebook.biddingkit.c.d;
import com.facebook.biddingkit.facebook.bidder.b;
import com.mopub.common.DataKeys;
import com.mopub.common.MoPub;
import com.mopub.common.util.Views;
import com.mopub.mobileads.FacebookAdapterConfiguration;
import com.mopub.mobileads.FacebookBanner;
import com.mopub.mobileads.FacebookInterstitial;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.BaseNativeAd;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.FacebookAdRenderer;
import com.mopub.nativeads.FacebookNative;
import com.mopub.nativeads.MoPubNative;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/FacebookBidder.class */
public class FacebookBidder implements SimpleBidder {
    private final AtomicBoolean clickReported = new AtomicBoolean(false);
    private Context context;
    private AdView facebookBanner;
    private b facebookBidResponse;
    private d fbAdBidFormat;
    private Handler handler;
    private HandlerThread handlerThread;
    private boolean isDestroyed;
    private JSONBidder jsonBidder;
    private MoPubView.MoPubAdSize moPubAdSize;
    private MoPubInterstitial moPubInterstitial;
    private MoPubView moPubView;
    private NativeAd nativeAd;
    private NativeAdParamGetter nativeAdParamGetter;
    private String requestId;

    private d getAdBidFormat(int i) {
        d dVar;
        if (i == 0) {
            dVar = d.NATIVE;
        } else if (i == 1) {
            dVar = d.BANNER_HEIGHT_50;
            this.moPubAdSize = MoPubView.MoPubAdSize.HEIGHT_50;
        } else if (i != 2) {
            dVar = i != 3 ? i != 4 ? null : d.INTERSTITIAL : d.NATIVE_BANNER;
        } else {
            dVar = d.BANNER_HEIGHT_250;
            this.moPubAdSize = MoPubView.MoPubAdSize.HEIGHT_250;
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> getServerExtras() {
        HashMap hashMap = new HashMap();
        hashMap.put(FacebookNative.PLACEMENT_ID_KEY, this.jsonBidder.getAdUnitId());
        hashMap.put("adm", this.facebookBidResponse.getPayload());
        hashMap.put(DataKeys.CALLAPP_FLOOR_PRICE_KEY, String.valueOf(this.facebookBidResponse.getPrice() / 100.0d));
        hashMap.put("app_bidder_request_id", this.requestId);
        return hashMap;
    }

    private void loadBannerAd(final AdUtils.AdEvents adEvents) {
        AdView adView = new AdView(this.context.getApplicationContext(), this.jsonBidder.getAdUnitId(), FacebookBanner.calculateAdSize(this.fbAdBidFormat.getHeight()));
        this.facebookBanner = adView;
        this.facebookBanner.loadAd(adView.buildLoadAdConfig().withAdListener(new AdListener() { // from class: com.callapp.contacts.util.ads.bidder.FacebookBidder.4
            @Override // com.facebook.ads.AdListener
            public void onAdClicked(Ad ad) {
                if (!FacebookBidder.this.clickReported.getAndSet(true)) {
                    String adUnitId = FacebookBidder.this.jsonBidder.getAdUnitId();
                    MoPub.AD_TYPE_AND_SIZE adTypeAndSizeForBanner = CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(FacebookBidder.this.facebookBanner.getHeight());
                    String unused = FacebookBidder.this.requestId;
                    CallAppAdsAnalyticsManager.c("facebook", adUnitId, adTypeAndSizeForBanner);
                }
            }

            @Override // com.facebook.ads.AdListener
            public void onAdLoaded(Ad ad) {
                FacebookBidder facebookBidder = FacebookBidder.this;
                facebookBidder.moPubView = AdUtils.a(facebookBidder.context, FacebookBidder.this.moPubAdSize);
                FacebookBidder.this.moPubView.setAdContentView(FacebookBidder.this.facebookBanner);
                FacebookBidder.this.moPubView.setAdUnitId(FacebookBidder.this.jsonBidder.getAdUnitId());
                adEvents.onBannerAdLoaded(FacebookBidder.this.moPubView, FacebookBidder.this.jsonBidder.isCallappDisableRefresh());
            }

            @Override // com.facebook.ads.AdListener
            public void onError(Ad ad, AdError adError) {
                MoPubErrorCode moPubErrorCode;
                int errorCode = adError.getErrorCode();
                if (errorCode == 2100) {
                    moPubErrorCode = MoPubErrorCode.VIDEO_PLAYBACK_ERROR;
                } else if (errorCode != 3001) {
                    switch (errorCode) {
                        case 1000:
                            moPubErrorCode = MoPubErrorCode.NO_CONNECTION;
                            break;
                        case 1001:
                            moPubErrorCode = MoPubErrorCode.NETWORK_NO_FILL;
                            break;
                        case AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE /* 1002 */:
                            moPubErrorCode = MoPubErrorCode.CANCELLED;
                            break;
                        default:
                            switch (errorCode) {
                                case 2000:
                                    moPubErrorCode = MoPubErrorCode.SERVER_ERROR;
                                    break;
                                case AdError.INTERNAL_ERROR_CODE /* 2001 */:
                                    moPubErrorCode = MoPubErrorCode.INTERNAL_ERROR;
                                    break;
                                case AdError.CACHE_ERROR_CODE /* 2002 */:
                                    moPubErrorCode = MoPubErrorCode.VIDEO_CACHE_ERROR;
                                    break;
                                default:
                                    moPubErrorCode = MoPubErrorCode.UNSPECIFIED;
                                    break;
                            }
                    }
                } else {
                    moPubErrorCode = MoPubErrorCode.NETWORK_INVALID_STATE;
                }
                adEvents.onBannerAdFailed(null, moPubErrorCode);
            }

            @Override // com.facebook.ads.AdListener
            public void onLoggingImpression(Ad ad) {
                FacebookBidder.this.clickReported.set(false);
                CallAppAdsAnalyticsManager.a("facebook", FacebookBidder.this.jsonBidder.getAdUnitId(), FacebookBidder.this.facebookBidResponse.getPrice(), CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(FacebookBidder.this.facebookBanner.getHeight()), FacebookBidder.this.requestId);
            }
        }).withBid(this.facebookBidResponse.getPayload()).build());
    }

    private void loadInterstitialAd(final AdUtils.AdEvents adEvents) {
        HandlerThread handlerThread = new HandlerThread(FacebookBidder.class.toString());
        this.handlerThread = handlerThread;
        handlerThread.start();
        AndroidUtils.a(this.handlerThread.getLooper());
        Handler handler = new Handler(this.handlerThread.getLooper());
        this.handler = handler;
        handler.post(new SafeRunnable() { // from class: com.callapp.contacts.util.ads.bidder.FacebookBidder.5
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                FacebookBidder facebookBidder = FacebookBidder.this;
                facebookBidder.moPubInterstitial = new MoPubInterstitial((Activity) facebookBidder.context, FacebookBidder.this.jsonBidder.getAdUnitId());
                FacebookBidder.this.moPubInterstitial.setInterstitialAdListener(new MoPubInterstitial.InterstitialAdListener() { // from class: com.callapp.contacts.util.ads.bidder.FacebookBidder.5.1
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
                FacebookBidder.this.moPubInterstitial.fakeLoad(FacebookInterstitial.class.getName(), FacebookBidder.this.getServerExtras());
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
                adEvents.onInterstitialFailed(FacebookBidder.this.moPubInterstitial, MoPubErrorCode.UNSPECIFIED);
            }
        });
    }

    private void loadNativeAd(final AdUtils.AdEvents adEvents) {
        HashMap hashMap = new HashMap();
        if (this.jsonBidder.getAdType() == 0) {
            hashMap.put(MoPubNative.HAS_MAIN_IMAGE, Boolean.TRUE);
        }
        new FacebookNative().loadNativeAd(this.context, new CustomEventNative.CustomEventNativeListener() { // from class: com.callapp.contacts.util.ads.bidder.FacebookBidder.3
            @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
            public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                adEvents.onNativeAdFailed(nativeErrorCode);
            }

            @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
            public void onNativeAdLoaded(BaseNativeAd baseNativeAd) {
                if (FacebookBidder.this.isDestroyed) {
                    baseNativeAd.destroy();
                    return;
                }
                AdSettings a2 = FacebookBidder.this.nativeAdParamGetter.a(FacebookBidder.this.jsonBidder.getAdUnitId());
                FacebookAdRenderer facebookAdRenderer = new FacebookAdRenderer(FacebookBidder.this.nativeAdParamGetter.a(a2), a2);
                FacebookBidder facebookBidder = FacebookBidder.this;
                facebookBidder.nativeAd = new NativeAd(facebookBidder.context, Collections.emptyList(), Collections.emptyList(), FacebookBidder.this.jsonBidder.getAdUnitId(), baseNativeAd, facebookAdRenderer);
                adEvents.onNativeAdLoaded(FacebookBidder.this.nativeAd, FacebookBidder.this.jsonBidder.isCallappDisableRefresh());
            }
        }, hashMap, getServerExtras());
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void destroy() {
        this.isDestroyed = true;
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.handlerThread.quit();
        }
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.FacebookBidder.6
            @Override // java.lang.Runnable
            public void run() {
                if (FacebookBidder.this.moPubView != null) {
                    FacebookBidder.this.moPubView.destroy();
                    FacebookBidder.this.moPubView = null;
                }
                if (FacebookBidder.this.facebookBanner != null) {
                    Views.removeFromParent(FacebookBidder.this.facebookBanner);
                    FacebookBidder.this.facebookBanner.destroy();
                    FacebookBidder.this.facebookBanner = null;
                }
                if (FacebookBidder.this.nativeAd != null) {
                    FacebookBidder.this.nativeAd.destroy();
                    FacebookBidder.this.nativeAd = null;
                }
                if (FacebookBidder.this.moPubInterstitial != null) {
                    FacebookBidder.this.moPubInterstitial.destroy();
                    FacebookBidder.this.moPubInterstitial = null;
                }
            }
        });
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public int getAdHeight() {
        return this.fbAdBidFormat.getHeight();
    }

    @Override // com.callapp.contacts.util.ads.bidder.SimpleBidder
    public void getBid(Context context, final JSONBidder jSONBidder, final AppBidder.BidListener bidListener, NativeAdParamGetter nativeAdParamGetter, long j, String str) {
        if (!FacebookAdapterConfiguration.isInitialized()) {
            new FacebookAdapterConfiguration().initializeNetwork(context, new HashMap());
        }
        if (!FacebookAdapterConfiguration.isInitialized()) {
            bidListener.a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.toString());
            return;
        }
        this.context = context;
        this.requestId = str;
        this.jsonBidder = jSONBidder;
        this.nativeAdParamGetter = nativeAdParamGetter;
        this.fbAdBidFormat = getAdBidFormat(jSONBidder.getAdType());
        b.a aVar = new b.a(Activities.getString(2131886891), jSONBidder.getAdUnitId(), this.fbAdBidFormat, BidderTokenProvider.getBidderToken(context.getApplicationContext()));
        aVar.j = true;
        final com.facebook.biddingkit.facebook.bidder.b bVar = new com.facebook.biddingkit.facebook.bidder.b(aVar);
        if (jSONBidder.getCachetimeInMinutes() > 0) {
            this.facebookBidResponse = (com.facebook.biddingkit.c.b) CacheManager.get().b(com.facebook.biddingkit.c.b.class, AppBidder.a(jSONBidder), false);
        }
        com.facebook.biddingkit.c.b bVar2 = this.facebookBidResponse;
        if (bVar2 == null) {
            final a aVar2 = new a() { // from class: com.callapp.contacts.util.ads.bidder.FacebookBidder.1
                @Override // com.facebook.biddingkit.a.a
                public void handleBidResponse(com.facebook.biddingkit.c.b bVar3) {
                    if (bVar3 == null || bVar3.getPrice() <= 0.0d) {
                        bidListener.a("");
                        return;
                    }
                    FacebookBidder.this.facebookBidResponse = bVar3;
                    if (jSONBidder.getCachetimeInMinutes() > 0) {
                        try {
                            CacheManager.get().b(com.facebook.biddingkit.c.b.class, AppBidder.a(jSONBidder), FacebookBidder.this.facebookBidResponse, (int) jSONBidder.getCachetimeInMinutes());
                        } catch (Exception e) {
                            CLog.a(FacebookBidder.class, e);
                        }
                    }
                    bidListener.a(bVar3.getPrice() / 100.0d);
                }

                @Override // com.facebook.biddingkit.a.a
                public void handleBidResponseFailure(String str2) {
                    bidListener.a(str2);
                }
            };
            com.facebook.biddingkit.e.a.f19728a.execute(new Runnable() { // from class: com.facebook.biddingkit.facebook.bidder.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    bVar.f19741b.f19749d = UUID.randomUUID().toString().replaceAll(VerificationLanguage.REGION_PREFIX, "").substring(0, 20);
                    FacebookBid a2 = b.a(bVar);
                    if (a2 != null) {
                        FacebookNotifier facebookNotifier = new FacebookNotifier(bVar.f19741b, bVar.f19742c);
                        facebookNotifier.setFacebookBid(a2);
                        a2.setNotifier(facebookNotifier);
                    }
                    b.a(aVar2, a2);
                }
            });
            return;
        }
        bidListener.a(bVar2.getPrice() / 100.0d);
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void loadAd(AdUtils.AdEvents adEvents) {
        if (CallAppRemoteConfigManager.get().c("facebookAudienceNetworkBiddingKitWaitForNotifyWin")) {
            this.facebookBidResponse.notifyWin();
        } else {
            new Task() { // from class: com.callapp.contacts.util.ads.bidder.FacebookBidder.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    FacebookBidder.this.facebookBidResponse.notifyWin();
                }
            }.execute();
        }
        if (this.jsonBidder.getCachetimeInMinutes() > 0) {
            CacheManager.get().a(com.facebook.biddingkit.c.b.class, AppBidder.a(this.jsonBidder));
        }
        int adType = this.jsonBidder.getAdType();
        if (adType != 0) {
            if (adType == 1 || adType == 2) {
                loadBannerAd(adEvents);
                return;
            } else if (adType != 3) {
                if (adType == 4) {
                    loadInterstitialAd(adEvents);
                    return;
                }
                return;
            }
        }
        loadNativeAd(adEvents);
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void notifyLoss() {
        com.facebook.biddingkit.c.b bVar = this.facebookBidResponse;
        if (bVar != null) {
            bVar.notifyLoss();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FacebookBidder{nativeAd=");
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
