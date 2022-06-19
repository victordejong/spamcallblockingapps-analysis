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
import com.facebook.ads.AbstractC9941Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdView;
import com.facebook.ads.BidderTokenProvider;
import com.facebook.biddingkit.facebook.bidder.C10148b;
import com.facebook.biddingkit.p290a.AbstractC10113a;
import com.facebook.biddingkit.p292c.AbstractC10118b;
import com.facebook.biddingkit.p292c.EnumC10120d;
import com.facebook.biddingkit.p294e.ExecutorC10140a;
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
    private AbstractC10118b facebookBidResponse;
    private EnumC10120d fbAdBidFormat;
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

    private EnumC10120d getAdBidFormat(int i) {
        EnumC10120d enumC10120d;
        if (i == 0) {
            enumC10120d = EnumC10120d.NATIVE;
        } else if (i == 1) {
            enumC10120d = EnumC10120d.BANNER_HEIGHT_50;
            this.moPubAdSize = MoPubView.MoPubAdSize.HEIGHT_50;
        } else if (i != 2) {
            enumC10120d = i != 3 ? i != 4 ? null : EnumC10120d.INTERSTITIAL : EnumC10120d.NATIVE_BANNER;
        } else {
            enumC10120d = EnumC10120d.BANNER_HEIGHT_250;
            this.moPubAdSize = MoPubView.MoPubAdSize.HEIGHT_250;
        }
        return enumC10120d;
    }

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
            public void onAdClicked(AbstractC9941Ad abstractC9941Ad) {
                if (!FacebookBidder.this.clickReported.getAndSet(true)) {
                    String adUnitId = FacebookBidder.this.jsonBidder.getAdUnitId();
                    MoPub.AD_TYPE_AND_SIZE adTypeAndSizeForBanner = CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(FacebookBidder.this.facebookBanner.getHeight());
                    String unused = FacebookBidder.this.requestId;
                    CallAppAdsAnalyticsManager.m28737c("facebook", adUnitId, adTypeAndSizeForBanner);
                }
            }

            @Override // com.facebook.ads.AdListener
            public void onAdLoaded(AbstractC9941Ad abstractC9941Ad) {
                FacebookBidder facebookBidder = FacebookBidder.this;
                facebookBidder.moPubView = AdUtils.m27281a(facebookBidder.context, FacebookBidder.this.moPubAdSize);
                FacebookBidder.this.moPubView.setAdContentView(FacebookBidder.this.facebookBanner);
                FacebookBidder.this.moPubView.setAdUnitId(FacebookBidder.this.jsonBidder.getAdUnitId());
                adEvents.onBannerAdLoaded(FacebookBidder.this.moPubView, FacebookBidder.this.jsonBidder.isCallappDisableRefresh());
            }

            @Override // com.facebook.ads.AdListener
            public void onError(AbstractC9941Ad abstractC9941Ad, AdError adError) {
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
            public void onLoggingImpression(AbstractC9941Ad abstractC9941Ad) {
                FacebookBidder.this.clickReported.set(false);
                CallAppAdsAnalyticsManager.m28740a("facebook", FacebookBidder.this.jsonBidder.getAdUnitId(), FacebookBidder.this.facebookBidResponse.getPrice(), CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(FacebookBidder.this.facebookBanner.getHeight()), FacebookBidder.this.requestId);
            }
        }).withBid(this.facebookBidResponse.getPayload()).build());
    }

    private void loadInterstitialAd(final AdUtils.AdEvents adEvents) {
        HandlerThread handlerThread = new HandlerThread(FacebookBidder.class.toString());
        this.handlerThread = handlerThread;
        handlerThread.start();
        AndroidUtils.m27631a(this.handlerThread.getLooper());
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
                AdSettings mo26137a = FacebookBidder.this.nativeAdParamGetter.mo26137a(FacebookBidder.this.jsonBidder.getAdUnitId());
                FacebookAdRenderer facebookAdRenderer = new FacebookAdRenderer(FacebookBidder.this.nativeAdParamGetter.mo26138a(mo26137a), mo26137a);
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
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.FacebookBidder.6
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
            bidListener.mo27236a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.toString());
            return;
        }
        this.context = context;
        this.requestId = str;
        this.jsonBidder = jSONBidder;
        this.nativeAdParamGetter = nativeAdParamGetter;
        this.fbAdBidFormat = getAdBidFormat(jSONBidder.getAdType());
        C10148b.C10150a c10150a = new C10148b.C10150a(Activities.getString(2131886891), jSONBidder.getAdUnitId(), this.fbAdBidFormat, BidderTokenProvider.getBidderToken(context.getApplicationContext()));
        c10150a.f33561j = true;
        final C10148b c10148b = new C10148b(c10150a);
        if (jSONBidder.getCachetimeInMinutes() > 0) {
            this.facebookBidResponse = (AbstractC10118b) CacheManager.get().m28378b(AbstractC10118b.class, AppBidder.m27252a(jSONBidder), false);
        }
        AbstractC10118b abstractC10118b = this.facebookBidResponse;
        if (abstractC10118b != null) {
            bidListener.mo27237a(abstractC10118b.getPrice() / 100.0d);
            return;
        }
        final AbstractC10113a abstractC10113a = new AbstractC10113a() { // from class: com.callapp.contacts.util.ads.bidder.FacebookBidder.1
            @Override // com.facebook.biddingkit.p290a.AbstractC10113a
            public void handleBidResponse(AbstractC10118b abstractC10118b2) {
                if (abstractC10118b2 == null || abstractC10118b2.getPrice() <= 0.0d) {
                    bidListener.mo27236a("");
                    return;
                }
                FacebookBidder.this.facebookBidResponse = abstractC10118b2;
                if (jSONBidder.getCachetimeInMinutes() > 0) {
                    try {
                        CacheManager.get().m28379b(AbstractC10118b.class, AppBidder.m27252a(jSONBidder), FacebookBidder.this.facebookBidResponse, (int) jSONBidder.getCachetimeInMinutes());
                    } catch (Exception e) {
                        CLog.m27609a(FacebookBidder.class, e);
                    }
                }
                bidListener.mo27237a(abstractC10118b2.getPrice() / 100.0d);
            }

            @Override // com.facebook.biddingkit.p290a.AbstractC10113a
            public void handleBidResponseFailure(String str2) {
                bidListener.mo27236a(str2);
            }
        };
        ExecutorC10140a.f33532a.execute(new Runnable() { // from class: com.facebook.biddingkit.facebook.bidder.b.1
            @Override // java.lang.Runnable
            public final void run() {
                c10148b.f33547b.f33555d = UUID.randomUUID().toString().replaceAll(VerificationLanguage.REGION_PREFIX, "").substring(0, 20);
                FacebookBid m23338a = C10148b.m23338a(c10148b);
                if (m23338a != null) {
                    FacebookNotifier facebookNotifier = new FacebookNotifier(c10148b.f33547b, c10148b.f33548c);
                    facebookNotifier.setFacebookBid(m23338a);
                    m23338a.setNotifier(facebookNotifier);
                }
                C10148b.m23339a(abstractC10113a, m23338a);
            }
        });
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void loadAd(AdUtils.AdEvents adEvents) {
        if (CallAppRemoteConfigManager.get().m28698c("facebookAudienceNetworkBiddingKitWaitForNotifyWin")) {
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
            CacheManager.get().m28390a(AbstractC10118b.class, AppBidder.m27252a(this.jsonBidder));
        }
        int adType = this.jsonBidder.getAdType();
        if (adType != 0) {
            if (adType == 1 || adType == 2) {
                loadBannerAd(adEvents);
                return;
            } else if (adType != 3) {
                if (adType != 4) {
                    return;
                }
                loadInterstitialAd(adEvents);
                return;
            }
        }
        loadNativeAd(adEvents);
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void notifyLoss() {
        AbstractC10118b abstractC10118b = this.facebookBidResponse;
        if (abstractC10118b != null) {
            abstractC10118b.notifyLoss();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FacebookBidder{nativeAd=");
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
