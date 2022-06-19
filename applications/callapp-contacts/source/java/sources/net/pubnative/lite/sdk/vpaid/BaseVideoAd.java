package net.pubnative.lite.sdk.vpaid;

import android.content.Context;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.vpaid.helpers.EventTracker;
import net.pubnative.lite.sdk.vpaid.helpers.FileLoader;
import net.pubnative.lite.sdk.vpaid.utils.FileUtils;
import net.pubnative.lite.sdk.vpaid.utils.Utils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/BaseVideoAd.class */
public abstract class BaseVideoAd extends BaseVideoAdInternal {
    private static final String LOG_TAG = "BaseVideoAd";

    public BaseVideoAd(Context context, String str) {
        super(context, str);
    }

    public void clearCache() {
        FileUtils.clearCache(getContext());
    }

    public void destroy() {
        Logger.m630d(LOG_TAG, "Ad will be destroyed");
        setReady();
        stopExpirationTimer();
        stopFetcherTimer();
        setAdState(200);
        cancelFetcher();
        releaseAdController();
        getViewabilityAdSession().stopAdSession();
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal
    public abstract void dismiss();

    public boolean isLoading() {
        return getAdState() == 201;
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal
    public boolean isReady() {
        return super.isReady();
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal
    public boolean isRewarded() {
        return super.isRewarded();
    }

    public boolean isShowing() {
        return getAdState() == 202;
    }

    public void load() {
        runOnUiThread(new Runnable() { // from class: net.pubnative.lite.sdk.vpaid.BaseVideoAd.1
            @Override // java.lang.Runnable
            public void run() {
                Logger.m630d(BaseVideoAd.LOG_TAG, "Start loading ad");
                if (BaseVideoAd.this.getAdState() == 201 || BaseVideoAd.this.getAdState() == 202) {
                    Logger.m630d(BaseVideoAd.LOG_TAG, "Ad already loading or showing");
                    return;
                }
                EventTracker.clear();
                BaseVideoAd.this.setAdState(201);
                BaseVideoAd.this.initAdLoadingStartTime();
                BaseVideoAd.this.startFetcherTimer();
                FileUtils.deleteExpiredFiles(BaseVideoAd.this.getContext());
                if (BaseVideoAd.this.isReady()) {
                    Logger.m630d(BaseVideoAd.LOG_TAG, "Ad already loaded");
                    BaseVideoAd.this.onAdLoadSuccessInternal();
                } else if (Utils.isOnline()) {
                    BaseVideoAd.this.proceedLoad();
                } else {
                    BaseVideoAd.this.onAdLoadFailInternal(new PlayerInfo("No connection"));
                }
            }
        });
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal
    public void setAdListener(VideoAdListener videoAdListener) {
        super.setAdListener(videoAdListener);
    }

    public void setDebugMode(boolean z) {
        Utils.setDebugMode(z);
    }

    @Override // net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal
    public void setRewarded(boolean z) {
        super.setRewarded(z);
    }

    public void useMobileNetworkForCaching(boolean z) {
        FileLoader.setUseMobileNetworkForCaching(z);
    }
}
