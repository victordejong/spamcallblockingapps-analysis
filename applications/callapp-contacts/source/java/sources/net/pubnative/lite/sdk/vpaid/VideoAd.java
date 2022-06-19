package net.pubnative.lite.sdk.vpaid;

import android.content.Context;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.viewability.HyBidViewabilityFriendlyObstruction;
import net.pubnative.lite.sdk.vpaid.models.vpaid.AdSpotDimensions;
import net.pubnative.lite.sdk.vpaid.utils.Utils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/VideoAd.class */
public class VideoAd extends BaseVideoAd {
    private static final String LOG_TAG = "VideoAd";
    private volatile VideoAdView mBannerView;

    public VideoAd(Context context, String str) {
        super(context, str);
    }

    public void onBannerHide() {
        Logger.m630d(LOG_TAG, "Ad disappeared from screen");
        setReady();
        setAdState(200);
        if (getAdListener() != null) {
            getAdListener().onAdDismissed();
        }
    }

    public void onBannerShow() {
        Logger.m630d(LOG_TAG, "Ad appeared on screen");
        if (getAdListener() != null) {
            getAdListener().onAdStarted();
        }
    }

    public void bindView(VideoAdView videoAdView) {
        if (videoAdView == null) {
            Logger.m628e(LOG_TAG, "Bind view is null");
            return;
        }
        String str = LOG_TAG;
        Logger.m630d(str, "Bind view (visibility: " + videoAdView.getVisibility() + ")");
        this.mBannerView = videoAdView;
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAd
    public /* bridge */ /* synthetic */ void clearCache() {
        super.clearCache();
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAd
    public /* bridge */ /* synthetic */ void destroy() {
        super.destroy();
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAd, net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal
    public void dismiss() {
        runOnUiThread(new Runnable() { // from class: net.pubnative.lite.sdk.vpaid.VideoAd.2
            @Override // java.lang.Runnable
            public void run() {
                Logger.m630d(VideoAd.LOG_TAG, "Video will be dismissed");
                if (VideoAd.this.getAdState() != 202) {
                    Logger.m628e(VideoAd.LOG_TAG, "Can't dismiss ad, it's not displaying");
                    return;
                }
                if (VideoAd.this.mBannerView != null) {
                    VideoAd.this.mBannerView.setVisibility(8);
                    VideoAd.this.mBannerView.removeAllViews();
                }
                if (VideoAd.this.getAdController() != null) {
                    VideoAd.this.getAdController().dismiss();
                }
                VideoAd.this.onBannerHide();
            }
        });
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal
    int getAdFormat() {
        return 1000;
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal
    AdSpotDimensions getAdSpotDimensions() {
        if (this.mBannerView != null) {
            return new AdSpotDimensions(this.mBannerView.getWidth(), this.mBannerView.getHeight());
        }
        return null;
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAd
    public /* bridge */ /* synthetic */ boolean isLoading() {
        return super.isLoading();
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAd, net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal
    public /* bridge */ /* synthetic */ boolean isReady() {
        return super.isReady();
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAd, net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal
    public /* bridge */ /* synthetic */ boolean isRewarded() {
        return super.isRewarded();
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAd
    public /* bridge */ /* synthetic */ boolean isShowing() {
        return super.isShowing();
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAd
    public /* bridge */ /* synthetic */ void load() {
        super.load();
    }

    public void pause() {
        if (getAdController() != null) {
            getAdController().pause();
        }
    }

    public void resume() {
        Logger.m630d(LOG_TAG, "resume");
        if (getAdController() == null || !isReady()) {
            return;
        }
        getAdController().resume();
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAd, net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal
    public /* bridge */ /* synthetic */ void setAdListener(VideoAdListener videoAdListener) {
        super.setAdListener(videoAdListener);
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAd
    public /* bridge */ /* synthetic */ void setDebugMode(boolean z) {
        super.setDebugMode(z);
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAd, net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal
    public /* bridge */ /* synthetic */ void setRewarded(boolean z) {
        super.setRewarded(z);
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal
    public /* bridge */ /* synthetic */ void setVideoCacheItem(VideoAdCacheItem videoAdCacheItem) {
        super.setVideoCacheItem(videoAdCacheItem);
    }

    public void show() {
        runOnUiThread(new Runnable() { // from class: net.pubnative.lite.sdk.vpaid.VideoAd.1
            @Override // java.lang.Runnable
            public void run() {
                Logger.m630d(VideoAd.LOG_TAG, "Banner did start showing ad");
                if (VideoAd.this.getAdState() == 202) {
                    Logger.m630d(VideoAd.LOG_TAG, "Banner already displays on screen");
                } else if (!VideoAd.this.isReady() || VideoAd.this.mBannerView == null) {
                    Logger.m628e(VideoAd.LOG_TAG, "Banner is not ready");
                } else {
                    VideoAd.this.setAdState(202);
                    VideoAd.this.stopExpirationTimer();
                    if (VideoAd.this.getAdController() == null) {
                        Logger.m628e(VideoAd.LOG_TAG, "getAdController() is null and can not set attributes to banner view ");
                        if (VideoAd.this.getAdListener() == null) {
                            return;
                        }
                        VideoAd.this.getAdListener().onAdLoadFail(new PlayerInfo("getAdController() is null and can not set attributes to banner view "));
                        return;
                    }
                    synchronized (this) {
                        if (VideoAd.this.getAdController() != null && VideoAd.this.getAdController().getAdParams() != null) {
                            VideoAd.this.getViewabilityAdSession().initAdSession(VideoAd.this.mBannerView, VideoAd.this.getAdController().getAdParams().getVerificationScriptResources());
                        }
                    }
                    VideoAd.this.getAdController().buildVideoAdView(VideoAd.this.mBannerView);
                    for (HyBidViewabilityFriendlyObstruction hyBidViewabilityFriendlyObstruction : VideoAd.this.getAdController().getViewabilityFriendlyObstructions()) {
                        VideoAd.this.getViewabilityAdSession().addFriendlyObstruction(hyBidViewabilityFriendlyObstruction.getView(), hyBidViewabilityFriendlyObstruction.getPurpose(), hyBidViewabilityFriendlyObstruction.getReason());
                    }
                    VideoAd.this.getViewabilityAdSession().fireLoaded();
                    VideoAd.this.getViewabilityAdSession().fireImpression();
                    VideoAd.this.getAdController().playAd();
                    if (Utils.isPhoneMuted()) {
                        VideoAd.this.getAdController().toggleMute();
                    }
                    if (VideoAd.this.mBannerView.getVisibility() != 0) {
                        VideoAd.this.mBannerView.setVisibility(0);
                    }
                    VideoAd.this.onBannerShow();
                }
            }
        });
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAd
    public /* bridge */ /* synthetic */ void useMobileNetworkForCaching(boolean z) {
        super.useMobileNetworkForCaching(z);
    }
}
