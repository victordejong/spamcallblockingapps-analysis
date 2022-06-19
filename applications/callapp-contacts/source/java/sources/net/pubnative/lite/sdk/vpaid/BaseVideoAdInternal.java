package net.pubnative.lite.sdk.vpaid;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.viewability.HyBidViewabilityNativeVideoAdSession;
import net.pubnative.lite.sdk.vpaid.VideoAdController;
import net.pubnative.lite.sdk.vpaid.enums.VastError;
import net.pubnative.lite.sdk.vpaid.helpers.AssetsLoader;
import net.pubnative.lite.sdk.vpaid.helpers.ErrorLog;
import net.pubnative.lite.sdk.vpaid.helpers.SimpleTimer;
import net.pubnative.lite.sdk.vpaid.models.vpaid.AdSpotDimensions;
import net.pubnative.lite.sdk.vpaid.response.AdParams;
import net.pubnative.lite.sdk.vpaid.response.VastProcessor;
import net.pubnative.lite.sdk.vpaid.utils.Utils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/BaseVideoAdInternal.class */
public abstract class BaseVideoAdInternal {
    private static final String LOG_TAG = "BaseVideoAdInternal";
    private VideoAdController mAdController;
    private long mAdLoadingStartTime;
    private int mAdState;
    private final AssetsLoader mAssetsLoader;
    private VideoAdCacheItem mCacheItem;
    private final Context mContext;
    private SimpleTimer mExpirationTimer;
    private SimpleTimer mFetcherTimer;
    private boolean mIsReady;
    private SimpleTimer mPrepareTimer;
    private String mVastData;
    private VideoAdListener mVideoAdListener;
    private HyBidViewabilityNativeVideoAdSession mViewabilityAdSession;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private boolean mIsRewarded = false;

    public BaseVideoAdInternal(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Wrong parameters");
        }
        this.mAdState = 200;
        this.mContext = context;
        this.mVastData = str;
        this.mAssetsLoader = new AssetsLoader();
        Utils.init(context);
        this.mViewabilityAdSession = new HyBidViewabilityNativeVideoAdSession(HyBid.getViewabilityManager());
    }

    private AssetsLoader.OnAssetsLoaded createAssetsLoadListener() {
        return new AssetsLoader.OnAssetsLoaded() { // from class: net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal.5
            @Override // net.pubnative.lite.sdk.vpaid.helpers.AssetsLoader.OnAssetsLoaded
            public void onAssetsLoaded(String str, String str2) {
                BaseVideoAdInternal.this.prepareAdController(str, str2);
            }

            @Override // net.pubnative.lite.sdk.vpaid.helpers.AssetsLoader.OnAssetsLoaded
            public void onError(PlayerInfo playerInfo) {
                BaseVideoAdInternal.this.onAdLoadFailInternal(playerInfo);
            }
        };
    }

    public VideoAdController.OnPreparedListener createOnPrepareListener() {
        return new VideoAdController.OnPreparedListener() { // from class: net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal.7
            @Override // net.pubnative.lite.sdk.vpaid.VideoAdController.OnPreparedListener
            public void onPrepared() {
                if (BaseVideoAdInternal.this.getAdState() == 202) {
                    Logger.m630d(BaseVideoAdInternal.LOG_TAG, "Creative call unexpected AdLoaded");
                    return;
                }
                BaseVideoAdInternal.this.stopPrepareTimer();
                BaseVideoAdInternal.this.onAdLoadSuccessInternal();
            }
        };
    }

    private void fetchAd() {
        new VastProcessor(getContext(), getAdSpotDimensions()).parseResponse(this.mVastData, new VastProcessor.Listener() { // from class: net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal.4
            @Override // net.pubnative.lite.sdk.vpaid.response.VastProcessor.Listener
            public void onParseError(PlayerInfo playerInfo) {
                BaseVideoAdInternal.this.onAdLoadFailInternal(playerInfo);
            }

            @Override // net.pubnative.lite.sdk.vpaid.response.VastProcessor.Listener
            public void onParseSuccess(AdParams adParams, String str) {
                BaseVideoAdInternal.this.prepare(adParams, str);
            }
        });
    }

    public void onAdExpired() {
        Logger.m630d(LOG_TAG, "Ad content is expired");
        this.mExpirationTimer = null;
        this.mIsReady = false;
        this.mAdState = 200;
        this.mAssetsLoader.breakLoading();
        VideoAdListener videoAdListener = this.mVideoAdListener;
        if (videoAdListener != null) {
            videoAdListener.onAdExpired();
        }
    }

    public void onAdLoadFail(PlayerInfo playerInfo) {
        String str = LOG_TAG;
        Logger.m630d(str, "Ad fails to load: " + playerInfo.getMessage());
        this.mAdState = 200;
        this.mIsReady = false;
        stopFetcherTimer();
        VideoAdListener videoAdListener = this.mVideoAdListener;
        if (videoAdListener != null) {
            videoAdListener.onAdLoadFail(playerInfo);
        } else {
            Logger.m626w(str, "Warning: empty listener");
        }
    }

    public void onAdLoadSuccess() {
        startExpirationTimer();
        long currentTimeMillis = System.currentTimeMillis();
        long j = this.mAdLoadingStartTime;
        String str = LOG_TAG;
        Logger.m630d(str, "Ad successfully loaded (" + (currentTimeMillis - j) + "ms)");
        this.mIsReady = true;
        this.mAdState = 200;
        stopFetcherTimer();
        VideoAdListener videoAdListener = this.mVideoAdListener;
        if (videoAdListener != null) {
            videoAdListener.onAdLoadSuccess();
        } else {
            Logger.m626w(str, "Warning: empty listener");
        }
    }

    public void prepare(AdParams adParams, String str) {
        if (adParams.isVpaid()) {
            this.mAdController = new VideoAdControllerVpaid(this, adParams, getAdSpotDimensions(), str, getViewabilityAdSession());
        } else {
            this.mAdController = new VideoAdControllerVast(this, adParams, getViewabilityAdSession());
        }
        VideoAdCacheItem videoAdCacheItem = this.mCacheItem;
        if (videoAdCacheItem != null) {
            prepareAdController(videoAdCacheItem.getVideoFilePath(), this.mCacheItem.getEndCardFilePath());
        } else {
            this.mAssetsLoader.load(adParams, this.mContext, createAssetsLoadListener());
        }
    }

    public void prepareAdController(String str, String str2) {
        VideoAdController videoAdController = this.mAdController;
        if (videoAdController == null) {
            onAdLoadFailInternal(new PlayerInfo("Error during video loading"));
            ErrorLog.postError(getContext(), VastError.UNDEFINED);
            Logger.m630d(LOG_TAG, "VideoAdController == null, after onAssetsLoaded success");
            return;
        }
        videoAdController.setVideoFilePath(str);
        this.mAdController.setEndCardFilePath(str2);
        runOnUiThread(new Runnable() { // from class: net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal.6
            @Override // java.lang.Runnable
            public void run() {
                BaseVideoAdInternal.this.startPrepareTimer();
                BaseVideoAdInternal.this.mAdController.prepare(BaseVideoAdInternal.this.createOnPrepareListener());
            }
        });
    }

    private void startExpirationTimer() {
        if (this.mExpirationTimer != null) {
            return;
        }
        SimpleTimer simpleTimer = new SimpleTimer(600000L, new SimpleTimer.Listener() { // from class: net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal.1
            @Override // net.pubnative.lite.sdk.vpaid.helpers.SimpleTimer.Listener
            public void onFinish() {
                BaseVideoAdInternal.this.onAdExpired();
            }
        });
        this.mExpirationTimer = simpleTimer;
        simpleTimer.start();
        Logger.m630d(LOG_TAG, "Start schedule expiration");
    }

    public void startPrepareTimer() {
        if (this.mPrepareTimer != null) {
            return;
        }
        SimpleTimer simpleTimer = new SimpleTimer(FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT, new SimpleTimer.Listener() { // from class: net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal.2
            @Override // net.pubnative.lite.sdk.vpaid.helpers.SimpleTimer.Listener
            public void onFinish() {
                BaseVideoAdInternal.this.mPrepareTimer = null;
                if (BaseVideoAdInternal.this.mAdController != null && (BaseVideoAdInternal.this.mAdController instanceof VideoAdControllerVpaid)) {
                    ErrorLog.postError(BaseVideoAdInternal.this.getContext(), VastError.FILE_NOT_FOUND);
                    BaseVideoAdInternal.this.onAdLoadFail(new PlayerInfo("Problem with js file"));
                }
                BaseVideoAdInternal.this.cancelFetcher();
            }
        });
        this.mPrepareTimer = simpleTimer;
        simpleTimer.start();
        Logger.m630d(LOG_TAG, "Start prepare timer");
    }

    public void stopPrepareTimer() {
        Logger.m630d(LOG_TAG, "Stop prepare timer");
        SimpleTimer simpleTimer = this.mPrepareTimer;
        if (simpleTimer != null) {
            simpleTimer.cancel();
            this.mPrepareTimer = null;
        }
    }

    public void cancelFetcher() {
        Logger.m630d(LOG_TAG, "Cancel ad fetcher");
        this.mAssetsLoader.breakLoading();
        this.mHandler.removeCallbacksAndMessages(null);
    }

    public abstract void dismiss();

    public VideoAdController getAdController() {
        return this.mAdController;
    }

    abstract int getAdFormat();

    public VideoAdListener getAdListener() {
        return this.mVideoAdListener;
    }

    abstract AdSpotDimensions getAdSpotDimensions();

    public int getAdState() {
        return this.mAdState;
    }

    protected VideoAdCacheItem getCacheItem() {
        return this.mCacheItem;
    }

    public Context getContext() {
        return this.mContext;
    }

    public HyBidViewabilityNativeVideoAdSession getViewabilityAdSession() {
        return this.mViewabilityAdSession;
    }

    public void initAdLoadingStartTime() {
        this.mAdLoadingStartTime = System.currentTimeMillis();
    }

    public boolean isReady() {
        return this.mIsReady;
    }

    public boolean isRewarded() {
        return this.mIsRewarded;
    }

    public void onAdClicked() {
        Logger.m630d(LOG_TAG, "Ad received click event");
        VideoAdListener videoAdListener = this.mVideoAdListener;
        if (videoAdListener != null) {
            videoAdListener.onAdClicked();
        }
    }

    public void onAdDidReachEnd() {
        Logger.m630d(LOG_TAG, "Video reach end");
        VideoAdListener videoAdListener = this.mVideoAdListener;
        if (videoAdListener != null) {
            videoAdListener.onAdDidReachEnd();
        }
    }

    void onAdLeaveApp() {
        Logger.m630d(LOG_TAG, "adLeaveApp");
        VideoAdListener videoAdListener = this.mVideoAdListener;
        if (videoAdListener != null) {
            videoAdListener.onLeaveApp();
        }
    }

    public void onAdLoadFailInternal(final PlayerInfo playerInfo) {
        runOnUiThread(new Runnable() { // from class: net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal.8
            @Override // java.lang.Runnable
            public void run() {
                BaseVideoAdInternal.this.onAdLoadFail(playerInfo);
            }
        });
    }

    public void onAdLoadSuccessInternal() {
        runOnUiThread(new Runnable() { // from class: net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal.9
            @Override // java.lang.Runnable
            public void run() {
                BaseVideoAdInternal.this.onAdLoadSuccess();
            }
        });
    }

    public void proceedLoad() {
        VideoAdCacheItem videoAdCacheItem = this.mCacheItem;
        if (videoAdCacheItem != null) {
            prepare(videoAdCacheItem.getAdParams(), this.mVastData);
        } else {
            fetchAd();
        }
    }

    public void releaseAdController() {
        Logger.m630d(LOG_TAG, "Release ViewControllerVast");
        VideoAdController videoAdController = this.mAdController;
        if (videoAdController != null) {
            videoAdController.destroy();
            this.mAdController = null;
        }
    }

    public void runOnUiThread(Runnable runnable) {
        this.mHandler.post(runnable);
    }

    public void setAdListener(VideoAdListener videoAdListener) {
        this.mVideoAdListener = videoAdListener;
    }

    public void setAdState(int i) {
        this.mAdState = i;
    }

    public void setReady() {
        this.mIsReady = false;
    }

    public void setRewarded(boolean z) {
        this.mIsRewarded = z;
    }

    public void setVideoCacheItem(VideoAdCacheItem videoAdCacheItem) {
        this.mCacheItem = videoAdCacheItem;
    }

    public void startFetcherTimer() {
        if (this.mFetcherTimer != null) {
            return;
        }
        SimpleTimer simpleTimer = new SimpleTimer(180000L, new SimpleTimer.Listener() { // from class: net.pubnative.lite.sdk.vpaid.BaseVideoAdInternal.3
            @Override // net.pubnative.lite.sdk.vpaid.helpers.SimpleTimer.Listener
            public void onFinish() {
                BaseVideoAdInternal.this.cancelFetcher();
                ErrorLog.postError(BaseVideoAdInternal.this.getContext(), VastError.TIMEOUT);
                BaseVideoAdInternal.this.onAdLoadFail(new PlayerInfo("Ad processing timeout"));
            }
        });
        this.mFetcherTimer = simpleTimer;
        simpleTimer.start();
        Logger.m630d(LOG_TAG, "Start fetcher timer");
    }

    public void stopExpirationTimer() {
        if (this.mExpirationTimer != null) {
            Logger.m630d(LOG_TAG, "Stop schedule expiration");
            this.mExpirationTimer.cancel();
            this.mExpirationTimer = null;
        }
    }

    public void stopFetcherTimer() {
        Logger.m630d(LOG_TAG, "Stop fetcher timer");
        SimpleTimer simpleTimer = this.mFetcherTimer;
        if (simpleTimer != null) {
            simpleTimer.cancel();
            this.mFetcherTimer = null;
        }
    }
}
