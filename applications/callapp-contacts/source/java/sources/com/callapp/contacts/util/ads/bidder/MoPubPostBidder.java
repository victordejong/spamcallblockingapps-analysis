package com.callapp.contacts.util.ads.bidder;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.manager.task.SafeRunnable;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ads.AdSettings;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.AppBidder;
import com.callapp.contacts.util.ads.JSONPostBidder;
import com.callapp.contacts.util.ads.JSONPostBidderAdUnit;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
import com.callapp.contacts.util.ads.bidder.Bidder;
import com.callapp.framework.util.CollectionUtils;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/MoPubPostBidder.class */
public class MoPubPostBidder implements PostBidder {
    private AppBidderResult appBidderResult;
    private AdUtils.AdEvents externalAdEvents;
    private Handler handler;
    private HandlerThread handlerThread;
    private boolean isDestroyed;
    private JSONPostBidder jsonPostBidder;
    private MoPubInterstitial moPubInterstitial;
    private MoPubView moPubView;
    private NativeAd nativeAd;
    private double priceToBeat;
    private AtomicInteger remainingRunningTasks;
    private String requestId;
    private final Object allTasksCompletedLock = new Object();
    private final Object appBidderResultLock = new Object();

    public Map<String, Object> getLocalExtras() {
        HashMap hashMap = new HashMap();
        hashMap.put("app_bidder_request_id", this.requestId);
        return hashMap;
    }

    public void loadBanner(Context context, JSONPostBidderAdUnit jSONPostBidderAdUnit, MoPubView.MoPubAdSize moPubAdSize) {
        AdUtils.m27279a(context, jSONPostBidderAdUnit.getAdUnitId(), moPubAdSize, new AdUtils.AdEvents() { // from class: com.callapp.contacts.util.ads.bidder.MoPubPostBidder.3
            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public /* synthetic */ void onAdClick() {
                AdUtils.AdEvents._CC.$default$onAdClick(this);
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
                moPubView.destroy();
                MoPubPostBidder.this.notifyDone();
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public void onBannerAdLoaded(MoPubView moPubView, boolean z) {
                if (MoPubPostBidder.this.isDestroyed) {
                    moPubView.destroy();
                } else {
                    double publisherRevenue = moPubView.getAdViewController().getPublisherRevenue();
                    synchronized (MoPubPostBidder.this.appBidderResultLock) {
                        if (MoPubPostBidder.this.appBidderResult != null && MoPubPostBidder.this.appBidderResult.price >= publisherRevenue) {
                            moPubView.destroy();
                        }
                        if (MoPubPostBidder.this.appBidderResult != null && MoPubPostBidder.this.appBidderResult.nativeAd != null) {
                            MoPubPostBidder.this.appBidderResult.nativeAd.destroy();
                        }
                        MoPubPostBidder.this.appBidderResult = new AppBidderResult();
                        MoPubPostBidder.this.appBidderResult.price = publisherRevenue;
                        MoPubPostBidder.this.appBidderResult.moPubView = moPubView;
                        MoPubPostBidder.this.appBidderResult.disableRefresh = MoPubPostBidder.this.jsonPostBidder.isCallappDisableRefresh();
                    }
                }
                MoPubPostBidder.this.notifyDone();
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
        }, false, getLocalExtras(), Double.valueOf(this.priceToBeat));
    }

    public void loadInterstitial(Context context, JSONPostBidderAdUnit jSONPostBidderAdUnit) {
        AdUtils.m27282a((Activity) context, jSONPostBidderAdUnit.getAdUnitId(), new AdUtils.AdEvents() { // from class: com.callapp.contacts.util.ads.bidder.MoPubPostBidder.4
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
                if (MoPubPostBidder.this.externalAdEvents != null) {
                    MoPubPostBidder.this.externalAdEvents.onInterstitialClicked(moPubInterstitial);
                }
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
                if (MoPubPostBidder.this.externalAdEvents != null) {
                    MoPubPostBidder.this.externalAdEvents.onInterstitialDismissed(moPubInterstitial);
                }
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
                moPubInterstitial.destroy();
                MoPubPostBidder.this.notifyDone();
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
                if (MoPubPostBidder.this.isDestroyed) {
                    moPubInterstitial.destroy();
                } else {
                    double publisherRevenue = moPubInterstitial.getAdViewController().getPublisherRevenue();
                    synchronized (MoPubPostBidder.this.appBidderResultLock) {
                        if (MoPubPostBidder.this.appBidderResult == null || MoPubPostBidder.this.appBidderResult.price < publisherRevenue) {
                            MoPubPostBidder.this.appBidderResult = new AppBidderResult();
                            MoPubPostBidder.this.appBidderResult.price = publisherRevenue;
                            MoPubPostBidder.this.appBidderResult.moPubInterstitial = moPubInterstitial;
                            MoPubPostBidder.this.appBidderResult.disableRefresh = MoPubPostBidder.this.jsonPostBidder.isCallappDisableRefresh();
                        }
                    }
                }
                MoPubPostBidder.this.notifyDone();
            }

            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
            public void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
                if (MoPubPostBidder.this.externalAdEvents != null) {
                    MoPubPostBidder.this.externalAdEvents.onInterstitialShown(moPubInterstitial);
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
        }, false, Double.valueOf(this.priceToBeat));
    }

    public void loadNative(final JSONPostBidderAdUnit jSONPostBidderAdUnit, final NativeAdParamGetter nativeAdParamGetter) {
        HandlerThread handlerThread = new HandlerThread(MoPubBidder.class.toString());
        this.handlerThread = handlerThread;
        handlerThread.start();
        AndroidUtils.m27631a(this.handlerThread.getLooper());
        Handler handler = new Handler(this.handlerThread.getLooper());
        this.handler = handler;
        handler.post(new SafeRunnable() { // from class: com.callapp.contacts.util.ads.bidder.MoPubPostBidder.2
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                AdSettings mo26137a = nativeAdParamGetter.mo26137a(jSONPostBidderAdUnit.getAdUnitId());
                AdUtils.m27277a(mo26137a, nativeAdParamGetter.mo26138a(mo26137a), nativeAdParamGetter.mo26136b(mo26137a), new AdUtils.AdEvents() { // from class: com.callapp.contacts.util.ads.bidder.MoPubPostBidder.2.1
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
                        MoPubPostBidder.this.notifyDone();
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public void onNativeAdLoaded(NativeAd nativeAd, boolean z) {
                        if (MoPubPostBidder.this.isDestroyed) {
                            nativeAd.destroy();
                        } else {
                            double publisherRevenue = nativeAd.getBaseNativeAd().getPublisherRevenue();
                            synchronized (MoPubPostBidder.this.appBidderResultLock) {
                                if (MoPubPostBidder.this.appBidderResult != null && MoPubPostBidder.this.appBidderResult.price >= publisherRevenue) {
                                    nativeAd.destroy();
                                }
                                if (MoPubPostBidder.this.appBidderResult != null && MoPubPostBidder.this.appBidderResult.moPubView != null) {
                                    final MoPubView moPubView = MoPubPostBidder.this.appBidderResult.moPubView;
                                    CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.MoPubPostBidder.2.1.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            moPubView.destroy();
                                        }
                                    });
                                }
                                MoPubPostBidder.this.appBidderResult = new AppBidderResult();
                                MoPubPostBidder.this.appBidderResult.price = publisherRevenue;
                                MoPubPostBidder.this.appBidderResult.nativeAd = nativeAd;
                                MoPubPostBidder.this.appBidderResult.disableRefresh = MoPubPostBidder.this.jsonPostBidder.isCallappDisableRefresh();
                            }
                        }
                        MoPubPostBidder.this.notifyDone();
                    }
                }, false, MoPubPostBidder.this.getLocalExtras(), Double.valueOf(MoPubPostBidder.this.priceToBeat), MoPubPostBidder.this.jsonPostBidder.isCallappDisableRefresh());
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
                MoPubPostBidder.this.notifyDone();
            }
        });
    }

    public void notifyDone() {
        if (this.remainingRunningTasks.decrementAndGet() == 0) {
            synchronized (this.allTasksCompletedLock) {
                this.allTasksCompletedLock.notify();
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
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.MoPubPostBidder.5
            @Override // java.lang.Runnable
            public void run() {
                if (MoPubPostBidder.this.moPubView != null) {
                    MoPubPostBidder.this.moPubView.destroy();
                    MoPubPostBidder.this.moPubView = null;
                }
                if (MoPubPostBidder.this.nativeAd != null) {
                    MoPubPostBidder.this.nativeAd.destroy();
                    MoPubPostBidder.this.nativeAd = null;
                }
                if (MoPubPostBidder.this.moPubInterstitial != null) {
                    MoPubPostBidder.this.moPubInterstitial.destroy();
                    MoPubPostBidder.this.moPubInterstitial = null;
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

    @Override // com.callapp.contacts.util.ads.bidder.PostBidder
    public void getBid(final Context context, JSONPostBidder jSONPostBidder, AppBidder.BidListener bidListener, final NativeAdParamGetter nativeAdParamGetter, double d, String str, float f) {
        this.jsonPostBidder = jSONPostBidder;
        this.requestId = str;
        double d2 = this.priceToBeat;
        if (d2 * d < 30.0d) {
            this.priceToBeat = d2 * d;
        }
        double d3 = this.priceToBeat;
        if (d3 >= 30.0d) {
            bidListener.mo27236a(MoPubErrorCode.CANCELLED.toString());
            return;
        }
        if (d3 > 10.0d) {
            this.priceToBeat = (Math.round(d3 * 10.0d) / 10.0d) + 0.1d;
        }
        List<JSONPostBidderAdUnit> adUnits = jSONPostBidder.getAdUnits();
        if (CollectionUtils.m26076a(adUnits)) {
            bidListener.mo27236a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.toString());
            return;
        }
        MultiTaskRunner multiTaskRunner = new MultiTaskRunner();
        this.remainingRunningTasks = new AtomicInteger(adUnits.size());
        for (final JSONPostBidderAdUnit jSONPostBidderAdUnit : adUnits) {
            multiTaskRunner.m28974a(new Task() { // from class: com.callapp.contacts.util.ads.bidder.MoPubPostBidder.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    int intValue = jSONPostBidderAdUnit.getMultiAdType().get(0).intValue();
                    if (intValue != 0) {
                        if (intValue == 1) {
                            MoPubPostBidder.this.loadBanner(context, jSONPostBidderAdUnit, MoPubView.MoPubAdSize.HEIGHT_50);
                            return;
                        } else if (intValue == 2) {
                            MoPubPostBidder.this.loadBanner(context, jSONPostBidderAdUnit, MoPubView.MoPubAdSize.HEIGHT_250);
                            return;
                        } else if (intValue != 3) {
                            if (intValue != 4) {
                                return;
                            }
                            MoPubPostBidder.this.loadInterstitial(context, jSONPostBidderAdUnit);
                            return;
                        }
                    }
                    MoPubPostBidder.this.loadNative(jSONPostBidderAdUnit, nativeAdParamGetter);
                }
            });
        }
        multiTaskRunner.m28972c();
        synchronized (this.allTasksCompletedLock) {
            try {
                this.allTasksCompletedLock.wait(jSONPostBidder.getAdUnitTimeout());
            } catch (InterruptedException e) {
            }
        }
        synchronized (this.appBidderResultLock) {
            AppBidderResult appBidderResult = this.appBidderResult;
            if (appBidderResult != null) {
                if (appBidderResult.nativeAd != null) {
                    this.nativeAd = this.appBidderResult.nativeAd;
                } else if (this.appBidderResult.moPubView != null) {
                    this.moPubView = this.appBidderResult.moPubView;
                } else if (this.appBidderResult.moPubInterstitial != null) {
                    this.moPubInterstitial = this.appBidderResult.moPubInterstitial;
                }
                bidListener.mo27237a(this.appBidderResult.price);
            } else {
                bidListener.mo27236a(MoPubErrorCode.NETWORK_NO_FILL.toString());
            }
        }
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void loadAd(AdUtils.AdEvents adEvents) {
        if (this.appBidderResult.moPubView != null) {
            MoPubView moPubView = this.moPubView;
            if (moPubView != null) {
                adEvents.onBannerAdLoaded(moPubView, this.appBidderResult.disableRefresh);
            } else {
                adEvents.onBannerAdFailed(moPubView, MoPubErrorCode.INTERNAL_ERROR);
            }
        } else if (this.appBidderResult.nativeAd != null) {
            NativeAd nativeAd = this.nativeAd;
            if (nativeAd != null) {
                adEvents.onNativeAdLoaded(nativeAd, this.appBidderResult.disableRefresh);
            } else {
                adEvents.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
            }
        } else if (this.appBidderResult.moPubInterstitial == null) {
        } else {
            this.externalAdEvents = adEvents;
            MoPubInterstitial moPubInterstitial = this.moPubInterstitial;
            if (moPubInterstitial != null) {
                adEvents.onInterstitialLoaded(moPubInterstitial);
            } else {
                adEvents.onInterstitialFailed(moPubInterstitial, MoPubErrorCode.INTERNAL_ERROR);
            }
        }
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public /* synthetic */ void notifyLoss() {
        Bidder._CC.$default$notifyLoss(this);
    }

    @Override // com.callapp.contacts.util.ads.bidder.PostBidder
    public void setPriceToBeat(double d) {
        this.priceToBeat = d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("MoPubPostBidder{nativeAd=");
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
