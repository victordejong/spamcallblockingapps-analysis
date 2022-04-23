package com.callapp.contacts.util.ads.bidder;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.task.SafeRunnable;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ads.AdSettings;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.AppBidder;
import com.callapp.contacts.util.ads.JSONBidder;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
import com.callapp.contacts.util.ads.bidder.Bidder;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/MoPubBidder.class */
public class MoPubBidder implements SimpleBidder {
    private AdUtils.AdEvents externalAdEvents;
    private Handler handler;
    private HandlerThread handlerThread;
    private boolean isCallappDisableRefresh;
    private boolean isDestroyed;
    private JSONBidder jsonBidder;
    private MoPubInterstitial moPubInterstitial;
    private MoPubView moPubView;
    private NativeAd nativeAd;
    private String requestId;
    private AtomicBoolean resultReported = new AtomicBoolean(false);

    private void loadBanner(Context context, final AppBidder.BidListener bidListener, MoPubView.MoPubAdSize moPubAdSize) {
        AdUtils.a(context, this.jsonBidder.getAdUnitId(), moPubAdSize, new AdUtils.AdEvents() { // from class: com.callapp.contacts.util.ads.bidder.MoPubBidder.2
            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public /* synthetic */ void onAdClick() {
                AdUtils.AdEvents._CC.$default$onAdClick(this);
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
                moPubView.destroy();
                if (!MoPubBidder.this.resultReported.getAndSet(true)) {
                    bidListener.a(moPubErrorCode.toString());
                }
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public void onBannerAdLoaded(MoPubView moPubView, boolean z) {
                if (MoPubBidder.this.isDestroyed) {
                    moPubView.destroy();
                    return;
                }
                MoPubBidder.this.moPubView = moPubView;
                double publisherRevenue = MoPubBidder.this.moPubView.getAdViewController().getPublisherRevenue();
                if (!MoPubBidder.this.resultReported.getAndSet(true)) {
                    bidListener.a(publisherRevenue);
                }
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public /* synthetic */ void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
                AdUtils.AdEvents._CC.$default$onInterstitialClicked(this, moPubInterstitial);
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public /* synthetic */ void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
                AdUtils.AdEvents._CC.$default$onInterstitialDismissed(this, moPubInterstitial);
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public /* synthetic */ void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
                AdUtils.AdEvents._CC.$default$onInterstitialFailed(this, moPubInterstitial, moPubErrorCode);
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public /* synthetic */ void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
                AdUtils.AdEvents._CC.$default$onInterstitialLoaded(this, moPubInterstitial);
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public /* synthetic */ void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
                AdUtils.AdEvents._CC.$default$onInterstitialShown(this, moPubInterstitial);
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public /* synthetic */ void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                AdUtils.AdEvents._CC.$default$onNativeAdFailed(this, nativeErrorCode);
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public /* synthetic */ void onNativeAdLoaded(NativeAd nativeAd, boolean z) {
                AdUtils.AdEvents._CC.$default$onNativeAdLoaded(this, nativeAd, z);
            }
        }, false, null);
    }

    private void loadInterstitial(Context context, final AppBidder.BidListener bidListener) {
        AdUtils.a((Activity) context, this.jsonBidder.getAdUnitId(), new AdUtils.AdEvents() { // from class: com.callapp.contacts.util.ads.bidder.MoPubBidder.3
            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public /* synthetic */ void onAdClick() {
                AdUtils.AdEvents._CC.$default$onAdClick(this);
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public /* synthetic */ void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
                AdUtils.AdEvents._CC.$default$onBannerAdFailed(this, moPubView, moPubErrorCode);
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public /* synthetic */ void onBannerAdLoaded(MoPubView moPubView, boolean z) {
                AdUtils.AdEvents._CC.$default$onBannerAdLoaded(this, moPubView, z);
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
                if (MoPubBidder.this.externalAdEvents != null) {
                    MoPubBidder.this.externalAdEvents.onInterstitialClicked(moPubInterstitial);
                }
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
                if (MoPubBidder.this.externalAdEvents != null) {
                    MoPubBidder.this.externalAdEvents.onInterstitialDismissed(moPubInterstitial);
                }
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
                moPubInterstitial.destroy();
                if (!MoPubBidder.this.resultReported.getAndSet(true)) {
                    bidListener.a(moPubErrorCode.toString());
                }
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
                if (MoPubBidder.this.isDestroyed) {
                    moPubInterstitial.destroy();
                    return;
                }
                MoPubBidder.this.moPubInterstitial = moPubInterstitial;
                double publisherRevenue = moPubInterstitial.getAdViewController().getPublisherRevenue();
                if (!MoPubBidder.this.resultReported.getAndSet(true)) {
                    bidListener.a(publisherRevenue);
                }
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
                if (MoPubBidder.this.externalAdEvents != null) {
                    MoPubBidder.this.externalAdEvents.onInterstitialShown(moPubInterstitial);
                }
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public /* synthetic */ void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                AdUtils.AdEvents._CC.$default$onNativeAdFailed(this, nativeErrorCode);
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public /* synthetic */ void onNativeAdLoaded(NativeAd nativeAd, boolean z) {
                AdUtils.AdEvents._CC.$default$onNativeAdLoaded(this, nativeAd, z);
            }
        }, false);
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void destroy() {
        this.isDestroyed = true;
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.handlerThread.quit();
        }
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.MoPubBidder.4
            @Override // java.lang.Runnable
            public void run() {
                if (MoPubBidder.this.moPubView != null) {
                    MoPubBidder.this.moPubView.destroy();
                    MoPubBidder.this.moPubView = null;
                }
                if (MoPubBidder.this.nativeAd != null) {
                    MoPubBidder.this.nativeAd.destroy();
                    MoPubBidder.this.nativeAd = null;
                }
                if (MoPubBidder.this.moPubInterstitial != null) {
                    MoPubBidder.this.moPubInterstitial.destroy();
                    MoPubBidder.this.moPubInterstitial = null;
                }
            }
        });
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public int getAdHeight() {
        MoPubView moPubView = this.moPubView;
        if (moPubView != null) {
            return moPubView.getAdHeight();
        }
        return 0;
    }

    @Override // com.callapp.contacts.util.ads.bidder.SimpleBidder
    public void getBid(Context context, final JSONBidder jSONBidder, final AppBidder.BidListener bidListener, final NativeAdParamGetter nativeAdParamGetter, long j, String str) {
        this.jsonBidder = jSONBidder;
        this.requestId = str;
        this.isCallappDisableRefresh = jSONBidder.isCallappDisableRefresh();
        int adType = jSONBidder.getAdType();
        if (adType != 0) {
            if (adType == 1) {
                loadBanner(context, bidListener, MoPubView.MoPubAdSize.HEIGHT_50);
                return;
            } else if (adType == 2) {
                loadBanner(context, bidListener, MoPubView.MoPubAdSize.HEIGHT_250);
                return;
            } else if (adType != 3) {
                if (adType != 4) {
                    bidListener.a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.toString());
                    return;
                } else {
                    loadInterstitial(context, bidListener);
                    return;
                }
            }
        }
        HandlerThread handlerThread = new HandlerThread(MoPubBidder.class.toString());
        this.handlerThread = handlerThread;
        handlerThread.start();
        AndroidUtils.a(this.handlerThread.getLooper());
        Handler handler = new Handler(this.handlerThread.getLooper());
        this.handler = handler;
        handler.post(new SafeRunnable() { // from class: com.callapp.contacts.util.ads.bidder.MoPubBidder.1
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                AdSettings a2 = nativeAdParamGetter.a(jSONBidder.getAdUnitId());
                AdUtils.a(a2, nativeAdParamGetter.a(a2), nativeAdParamGetter.b(a2), new AdUtils.AdEvents() { // from class: com.callapp.contacts.util.ads.bidder.MoPubBidder.1.1
                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public /* synthetic */ void onAdClick() {
                        AdUtils.AdEvents._CC.$default$onAdClick(this);
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public /* synthetic */ void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
                        AdUtils.AdEvents._CC.$default$onBannerAdFailed(this, moPubView, moPubErrorCode);
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public /* synthetic */ void onBannerAdLoaded(MoPubView moPubView, boolean z) {
                        AdUtils.AdEvents._CC.$default$onBannerAdLoaded(this, moPubView, z);
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public /* synthetic */ void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
                        AdUtils.AdEvents._CC.$default$onInterstitialClicked(this, moPubInterstitial);
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public /* synthetic */ void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
                        AdUtils.AdEvents._CC.$default$onInterstitialDismissed(this, moPubInterstitial);
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public /* synthetic */ void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
                        AdUtils.AdEvents._CC.$default$onInterstitialFailed(this, moPubInterstitial, moPubErrorCode);
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public /* synthetic */ void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
                        AdUtils.AdEvents._CC.$default$onInterstitialLoaded(this, moPubInterstitial);
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public /* synthetic */ void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
                        AdUtils.AdEvents._CC.$default$onInterstitialShown(this, moPubInterstitial);
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                        bidListener.a(nativeErrorCode.toString());
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public void onNativeAdLoaded(NativeAd nativeAd, boolean z) {
                        if (MoPubBidder.this.isDestroyed) {
                            nativeAd.destroy();
                        } else {
                            MoPubBidder.this.nativeAd = nativeAd;
                        }
                        bidListener.a(nativeAd.getBaseNativeAd().getPublisherRevenue());
                    }
                }, false, (Map<String, Object>) null, jSONBidder.isCallappDisableRefresh());
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
                bidListener.a(NativeErrorCode.UNSPECIFIED.toString());
            }
        });
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void loadAd(AdUtils.AdEvents adEvents) {
        int adType = this.jsonBidder.getAdType();
        if (adType != 0) {
            if (adType == 1 || adType == 2) {
                MoPubView moPubView = this.moPubView;
                if (moPubView != null) {
                    adEvents.onBannerAdLoaded(moPubView, this.isCallappDisableRefresh);
                    return;
                } else {
                    adEvents.onBannerAdFailed(moPubView, MoPubErrorCode.INTERNAL_ERROR);
                    return;
                }
            } else if (adType != 3) {
                if (adType == 4) {
                    this.externalAdEvents = adEvents;
                    MoPubInterstitial moPubInterstitial = this.moPubInterstitial;
                    if (moPubInterstitial != null) {
                        adEvents.onInterstitialLoaded(moPubInterstitial);
                        return;
                    } else {
                        adEvents.onInterstitialFailed(moPubInterstitial, MoPubErrorCode.INTERNAL_ERROR);
                        return;
                    }
                } else {
                    return;
                }
            }
        }
        NativeAd nativeAd = this.nativeAd;
        if (nativeAd != null) {
            adEvents.onNativeAdLoaded(nativeAd, this.isCallappDisableRefresh);
        } else {
            adEvents.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
        }
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public /* synthetic */ void notifyLoss() {
        Bidder._CC.$default$notifyLoss(this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("MoPubBidder{nativeAd=");
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
