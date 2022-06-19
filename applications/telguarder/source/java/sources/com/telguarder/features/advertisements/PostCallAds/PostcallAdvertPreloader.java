package com.telguarder.features.advertisements.PostCallAds;

import android.os.Handler;
import android.os.Looper;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.postCallStatistics.LastPhoneCallActivity;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader.class */
public class PostcallAdvertPreloader {
    private AdvertPreloadState mState = null;
    private ScheduledExecutorService mTimeoutHandler = null;
    public Runnable mTimeoutRunnable = null;
    private ScheduledExecutorService mExpiredAdHandler = null;
    public Runnable mExpiredAdRunnable = null;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState.class */
    public enum AdvertPreloadState {
        LOADING,
        LOADED,
        ERROR,
        NO_AD
    }

    private void setExpiredAdHandler() {
        cancelExpiredAdHandler(false);
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.mExpiredAdHandler = newSingleThreadScheduledExecutor;
        newSingleThreadScheduledExecutor.schedule(new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdvertPreloader$nQwuxsimowzpQd9bKa8Wxe_A_gg
            @Override // java.lang.Runnable
            public final void run() {
                PostcallAdvertPreloader.this.lambda$setExpiredAdHandler$3$PostcallAdvertPreloader();
            }
        }, 45L, TimeUnit.MINUTES);
    }

    private void setPreloadTimeoutHandler() {
        cancelPreloadTimeoutHandler(false);
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.mTimeoutHandler = newSingleThreadScheduledExecutor;
        newSingleThreadScheduledExecutor.schedule(new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdvertPreloader$CqPLCLHmX9XIAvlFgHdGoMw5Bzo
            @Override // java.lang.Runnable
            public final void run() {
                PostcallAdvertPreloader.this.lambda$setPreloadTimeoutHandler$1$PostcallAdvertPreloader();
            }
        }, 15L, TimeUnit.SECONDS);
    }

    public void cancelAllPreloadTimeoutHandlers() {
        cancelPreloadTimeoutHandler();
        cancelExpiredAdHandler();
    }

    public void cancelExpiredAdHandler() {
        cancelExpiredAdHandler(true);
    }

    public void cancelExpiredAdHandler(Boolean bool) {
        try {
            ScheduledExecutorService scheduledExecutorService = this.mExpiredAdHandler;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdown();
                this.mExpiredAdHandler = null;
            }
            if (!bool.booleanValue()) {
                return;
            }
            this.mExpiredAdRunnable = null;
        } catch (Exception e) {
        }
    }

    public void cancelPreloadTimeoutHandler() {
        cancelPreloadTimeoutHandler(true);
    }

    public void cancelPreloadTimeoutHandler(Boolean bool) {
        try {
            ScheduledExecutorService scheduledExecutorService = this.mTimeoutHandler;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdown();
                this.mTimeoutHandler = null;
            }
            if (!bool.booleanValue()) {
                return;
            }
            this.mTimeoutRunnable = null;
        } catch (Exception e) {
        }
    }

    public AdvertPreloadState getState() {
        return this.mState;
    }

    public /* synthetic */ void lambda$null$0$PostcallAdvertPreloader() {
        if ((!LastPhoneCallActivity.isInstantiated() || !LastPhoneCallActivity.getInstance().isActive()) && this.mTimeoutRunnable != null && this.mTimeoutHandler != null && this.mState.equals(AdvertPreloadState.LOADING)) {
            try {
                this.mTimeoutRunnable.run();
            } catch (Exception e) {
            }
        }
        cancelPreloadTimeoutHandler();
    }

    public /* synthetic */ void lambda$null$2$PostcallAdvertPreloader() {
        if ((!LastPhoneCallActivity.isInstantiated() || !LastPhoneCallActivity.getInstance().isActive()) && this.mExpiredAdRunnable != null && this.mExpiredAdHandler != null && this.mState.equals(AdvertPreloadState.LOADED)) {
            try {
                AdvertManager.addAdNetworkFlowDebugInfo("\n");
                AdvertManager.addAdNetworkFlowDebugInfo(" PRELOAD REFRESH\n");
                this.mExpiredAdRunnable.run();
            } catch (Exception e) {
            }
        }
        cancelExpiredAdHandler();
    }

    public /* synthetic */ void lambda$setExpiredAdHandler$3$PostcallAdvertPreloader() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdvertPreloader$pSj_YN5icxxEdYFDwAhIcVtZKGA
            @Override // java.lang.Runnable
            public final void run() {
                PostcallAdvertPreloader.this.lambda$null$2$PostcallAdvertPreloader();
            }
        });
    }

    public /* synthetic */ void lambda$setPreloadTimeoutHandler$1$PostcallAdvertPreloader() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdvertPreloader$lCWoantW3zpAP8XnBkcObGdhS_0
            @Override // java.lang.Runnable
            public final void run() {
                PostcallAdvertPreloader.this.lambda$null$0$PostcallAdvertPreloader();
            }
        });
    }

    public void setState(AdvertPreloadState advertPreloadState) {
        this.mState = advertPreloadState;
        if (LastPhoneCallActivity.isInstantiated() && LastPhoneCallActivity.getInstance().isActive()) {
            cancelAllPreloadTimeoutHandlers();
        } else if (this.mState == AdvertPreloadState.LOADING) {
            setPreloadTimeoutHandler();
        } else if (this.mState != AdvertPreloadState.LOADED) {
            cancelAllPreloadTimeoutHandlers();
        } else {
            setExpiredAdHandler();
            cancelPreloadTimeoutHandler();
        }
    }
}
