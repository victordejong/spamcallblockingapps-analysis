package com.millennialmedia;

import android.content.Context;
import com.millennialmedia.XIncentivizedEventListener;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.AdPlacementMetadata;
import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.ErrorStatus;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.PlayList;
import com.millennialmedia.internal.adadapters.InterstitialAdapter;
import com.millennialmedia.internal.playlistserver.PlayListServer;
import com.millennialmedia.internal.utils.ThreadUtils;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/InterstitialAd.class */
public class InterstitialAd extends AdPlacement {
    public static final String STATE_EXPIRED = "expired";
    public static final String STATE_SHOWING = "showing";
    public static final String STATE_SHOWN = "shown";
    public static final String STATE_SHOW_FAILED = "show_failed";
    private static final String TAG = "InterstitialAd";
    private ThreadUtils.ScheduledRunnable adAdapterRequestTimeoutRunnable;
    private WeakReference<Context> contextRef;
    private volatile InterstitialAdapter currentInterstitialAdAdapter;
    private ThreadUtils.ScheduledRunnable expirationRunnable;
    private InterstitialAdMetadata interstitialAdMetadata;
    private InterstitialListener interstitialListener;
    private volatile InterstitialAdapter nextInterstitialAdAdapter;
    private ThreadUtils.ScheduledRunnable placementRequestTimeoutRunnable;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/InterstitialAd$ExpirationRunnable.class */
    public static class ExpirationRunnable implements Runnable {
        public WeakReference<InterstitialAd> interstitialAdRef;
        public WeakReference<AdPlacement.RequestState> requestStateRef;

        public ExpirationRunnable(InterstitialAd interstitialAd, AdPlacement.RequestState requestState) {
            this.interstitialAdRef = new WeakReference<>(interstitialAd);
            this.requestStateRef = new WeakReference<>(requestState);
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            String str2;
            InterstitialAd interstitialAd = this.interstitialAdRef.get();
            if (interstitialAd == null) {
                str = InterstitialAd.TAG;
                str2 = "InterstitialAd instance has been destroyed, aborting expiration state change";
            } else {
                interstitialAd.expirationRunnable = null;
                AdPlacement.RequestState requestState = this.requestStateRef.get();
                if (requestState != null) {
                    interstitialAd.onExpired(requestState);
                    return;
                } else {
                    str = InterstitialAd.TAG;
                    str2 = "No valid RequestState is available, unable to trigger expired state change";
                }
            }
            MMLog.m4068e(str, str2);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/InterstitialAd$InterstitialAdMetadata.class */
    public static class InterstitialAdMetadata extends AdPlacementMetadata<InterstitialAdMetadata> {
        private static final String PLACEMENT_TYPE_INTERSTITIAL = "interstitial";

        public InterstitialAdMetadata() {
            super("interstitial");
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/InterstitialAd$InterstitialErrorStatus.class */
    public static class InterstitialErrorStatus extends ErrorStatus {
        public static final int ALREADY_LOADED = 203;
        public static final int EXPIRED = 201;
        public static final int NOT_LOADED = 202;

        static {
            Map<Integer, String> map = ErrorStatus.errorCodes;
            map.put(Integer.valueOf((int) EXPIRED), "EXPIRED");
            map.put(Integer.valueOf((int) NOT_LOADED), "NOT_LOADED");
            map.put(Integer.valueOf((int) ALREADY_LOADED), "ALREADY_LOADED");
        }

        public InterstitialErrorStatus(int i) {
            super(i);
        }

        public InterstitialErrorStatus(int i, String str) {
            super(i, str);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/InterstitialAd$InterstitialListener.class */
    public interface InterstitialListener {
        void onAdLeftApplication(InterstitialAd interstitialAd);

        void onClicked(InterstitialAd interstitialAd);

        void onClosed(InterstitialAd interstitialAd);

        void onExpired(InterstitialAd interstitialAd);

        void onLoadFailed(InterstitialAd interstitialAd, InterstitialErrorStatus interstitialErrorStatus);

        void onLoaded(InterstitialAd interstitialAd);

        void onShowFailed(InterstitialAd interstitialAd, InterstitialErrorStatus interstitialErrorStatus);

        void onShown(InterstitialAd interstitialAd);
    }

    private InterstitialAd(String str) {
        super(str);
    }

    public static InterstitialAd createInstance(String str) {
        if (MMSDK.isInitialized()) {
            return new InterstitialAd(str);
        }
        throw new MMInitializationException("Unable to create instance, SDK must be initialized first");
    }

    private boolean isLoading() {
        return !this.placementState.equals(AdPlacement.STATE_IDLE) && !this.placementState.equals(AdPlacement.STATE_LOAD_FAILED) && !this.placementState.equals(AdPlacement.STATE_LOADED) && !this.placementState.equals("expired") && !this.placementState.equals(AdPlacement.STATE_DESTROYED) && !this.placementState.equals(STATE_SHOW_FAILED) && !this.placementState.equals(STATE_SHOWN);
    }

    public void loadAdAdapter(AdPlacement.RequestState requestState) {
        final AdPlacement.RequestState copy = requestState.copy();
        synchronized (this) {
            if (doPendingDestroy()) {
                return;
            }
            if (this.currentRequestState.compareRequest(copy) && (this.placementState.equals(AdPlacement.STATE_PLAY_LIST_LOADED) || this.placementState.equals(AdPlacement.STATE_AD_ADAPTER_LOAD_FAILED))) {
                this.placementState = AdPlacement.STATE_LOADING_AD_ADAPTER;
                copy.getItemHash();
                this.currentRequestState = copy;
                if (!this.playList.hasNext()) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(TAG, "Unable to find ad adapter in play list");
                    }
                    onLoadFailed(copy);
                    return;
                }
                final AdPlacementReporter.PlayListItemReporter playListItemReporter = AdPlacementReporter.getPlayListItemReporter(requestState.getAdPlacementReporter());
                this.nextInterstitialAdAdapter = (InterstitialAdapter) this.playList.getNextAdAdapter(this, playListItemReporter);
                Context context = this.contextRef.get();
                if (this.nextInterstitialAdAdapter == null || context == null) {
                    AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter);
                    onAdAdapterLoadFailed(copy);
                    return;
                }
                int i = this.nextInterstitialAdAdapter.requestTimeout;
                if (i > 0) {
                    ThreadUtils.ScheduledRunnable scheduledRunnable = this.adAdapterRequestTimeoutRunnable;
                    if (scheduledRunnable != null) {
                        scheduledRunnable.cancel();
                    }
                    this.adAdapterRequestTimeoutRunnable = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.InterstitialAd.3
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.m4070d(InterstitialAd.TAG, "Ad adapter load timed out");
                            }
                            AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter, -2);
                            InterstitialAd.this.onAdAdapterLoadFailed(copy);
                        }
                    }, i);
                }
                this.nextInterstitialAdAdapter.init(context, new InterstitialAdapter.InterstitialAdapterListener() { // from class: com.millennialmedia.InterstitialAd.4
                    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                    public void initFailed() {
                        AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter, -3);
                        InterstitialAd.this.onAdAdapterLoadFailed(copy);
                    }

                    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                    public void initSucceeded() {
                        synchronized (InterstitialAd.this) {
                            if (!InterstitialAd.this.currentRequestState.compare(copy)) {
                                if (MMLog.isDebugEnabled()) {
                                    MMLog.m4070d(InterstitialAd.TAG, "initSucceeded called but request state is not valid");
                                }
                            } else if (InterstitialAd.this.placementState.equals(AdPlacement.STATE_LOADING_AD_ADAPTER)) {
                                InterstitialAd interstitialAd = InterstitialAd.this;
                                interstitialAd.setCurrentAdAdapter(interstitialAd.nextInterstitialAdAdapter);
                                InterstitialAd.this.nextInterstitialAdAdapter = null;
                                AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter);
                                InterstitialAd.this.onLoadSucceeded(copy);
                            } else {
                                if (MMLog.isDebugEnabled()) {
                                    String str = InterstitialAd.TAG;
                                    MMLog.m4070d(str, "initSucceeded called but placement state is not valid: " + InterstitialAd.this.placementState);
                                }
                            }
                        }
                    }

                    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                    public void onAdLeftApplication() {
                        InterstitialAd.this.onAdLeftApplication(copy);
                    }

                    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                    public void onClicked() {
                        InterstitialAd.this.onClicked(copy);
                    }

                    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                    public void onClosed() {
                        InterstitialAd.this.onClosed(copy);
                    }

                    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                    public void onExpired() {
                        InterstitialAd.this.onExpired(copy);
                    }

                    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                    public void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent) {
                        InterstitialAd.this.onIncentiveEarned(xIncentiveEvent);
                    }

                    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                    public void showFailed(InterstitialErrorStatus interstitialErrorStatus) {
                        synchronized (InterstitialAd.this) {
                            if (InterstitialAd.this.currentRequestState.compare(copy)) {
                                InterstitialAd.this.onShowFailed(interstitialErrorStatus);
                                return;
                            }
                            if (MMLog.isDebugEnabled()) {
                                MMLog.m4070d(InterstitialAd.TAG, "show failed but load state is not valid");
                            }
                        }
                    }

                    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                    public void shown() {
                        InterstitialAd.this.onShown(copy);
                    }
                });
            }
        }
    }

    public void onAdAdapterLoadFailed(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.currentRequestState.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onAdAdapterLoadFailed called but load state is not valid");
                }
            } else if (this.placementState.equals(AdPlacement.STATE_LOADING_AD_ADAPTER)) {
                if (doPendingDestroy()) {
                    return;
                }
                this.placementState = AdPlacement.STATE_AD_ADAPTER_LOAD_FAILED;
                loadAdAdapter(requestState);
            } else {
                if (MMLog.isDebugEnabled()) {
                    String str = TAG;
                    MMLog.m4070d(str, "onAdAdapterLoadFailed called but placement state is not valid: " + this.placementState);
                }
            }
        }
    }

    public void onAdLeftApplication(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.currentRequestState.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onAdLeftApplication called but load state is not valid");
                }
                return;
            }
            MMLog.m4066i(TAG, "Ad left application");
            final InterstitialListener interstitialListener = this.interstitialListener;
            if (interstitialListener == null) {
                return;
            }
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InterstitialAd.11
                @Override // java.lang.Runnable
                public void run() {
                    interstitialListener.onAdLeftApplication(InterstitialAd.this);
                }
            });
        }
    }

    public void onClicked(AdPlacement.RequestState requestState) {
        MMLog.m4066i(TAG, "Ad clicked");
        AdPlacementReporter.setClicked(requestState.getAdPlacementReporter());
        final InterstitialListener interstitialListener = this.interstitialListener;
        if (interstitialListener != null) {
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InterstitialAd.10
                @Override // java.lang.Runnable
                public void run() {
                    interstitialListener.onClicked(InterstitialAd.this);
                }
            });
        }
    }

    public void onClosed(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.currentRequestState.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onClosed called but load state is not valid");
                }
                return;
            }
            this.placementState = AdPlacement.STATE_IDLE;
            MMLog.m4066i(TAG, "Ad closed");
            final InterstitialListener interstitialListener = this.interstitialListener;
            if (interstitialListener != null) {
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InterstitialAd.9
                    @Override // java.lang.Runnable
                    public void run() {
                        interstitialListener.onClosed(InterstitialAd.this);
                    }
                });
            }
            setCurrentAdAdapter(null);
        }
    }

    public void onExpired(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.currentRequestState.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onExpired called but load state is not valid");
                }
            } else if (!this.placementState.equals(AdPlacement.STATE_LOADED) && !this.placementState.equals(STATE_SHOW_FAILED)) {
                if (MMLog.isDebugEnabled()) {
                    String str = TAG;
                    MMLog.m4070d(str, "onExpired called but placement state is not valid: " + this.placementState);
                }
            } else {
                this.placementState = "expired";
                MMLog.m4066i(TAG, "Ad expired");
                releaseAdapters();
                final InterstitialListener interstitialListener = this.interstitialListener;
                if (interstitialListener == null) {
                    return;
                }
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InterstitialAd.12
                    @Override // java.lang.Runnable
                    public void run() {
                        interstitialListener.onExpired(InterstitialAd.this);
                    }
                });
            }
        }
    }

    public void onLoadFailed(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (doPendingDestroy()) {
                return;
            }
            if (!this.currentRequestState.compareRequest(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onLoadFailed called but load state is not valid");
                }
            } else if (!this.placementState.equals(AdPlacement.STATE_LOADING_AD_ADAPTER) && !this.placementState.equals(AdPlacement.STATE_LOADING_PLAY_LIST)) {
                if (MMLog.isDebugEnabled()) {
                    String str = TAG;
                    MMLog.m4070d(str, "onLoadFailed called but placement state is not valid: " + this.placementState);
                }
            } else {
                this.placementState = AdPlacement.STATE_LOAD_FAILED;
                stopRequestTimeoutTimers();
                AdPlacementReporter.reportPlayList(requestState.getAdPlacementReporter());
                String str2 = TAG;
                MMLog.m4062w(str2, "Load failed for placement ID: " + this.placementId + ". If this warning persists please check your placement configuration.");
                final InterstitialListener interstitialListener = this.interstitialListener;
                if (interstitialListener == null) {
                    return;
                }
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InterstitialAd.6
                    @Override // java.lang.Runnable
                    public void run() {
                        interstitialListener.onLoadFailed(InterstitialAd.this, new InterstitialErrorStatus(5));
                    }
                });
            }
        }
    }

    public void onLoadSucceeded(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.currentRequestState.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onLoadSucceeded called but load state is not valid");
                }
            } else if (!this.placementState.equals(AdPlacement.STATE_LOADING_AD_ADAPTER)) {
                if (MMLog.isDebugEnabled()) {
                    String str = TAG;
                    MMLog.m4070d(str, "onLoadSucceeded called but placement state is not valid: " + this.placementState);
                }
            } else if (doPendingDestroy()) {
            } else {
                this.placementState = AdPlacement.STATE_LOADED;
                MMLog.m4066i(TAG, "Load succeeded");
                stopRequestTimeoutTimers();
                startExpirationTimer(requestState);
                AdPlacementReporter.reportPlayList(requestState.getAdPlacementReporter());
                final InterstitialListener interstitialListener = this.interstitialListener;
                if (interstitialListener == null) {
                    return;
                }
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InterstitialAd.5
                    @Override // java.lang.Runnable
                    public void run() {
                        interstitialListener.onLoaded(InterstitialAd.this);
                    }
                });
            }
        }
    }

    public void onShowFailed(final InterstitialErrorStatus interstitialErrorStatus) {
        synchronized (this) {
            if (doPendingDestroy()) {
                return;
            }
            if (this.placementState == STATE_SHOWING) {
                this.placementState = STATE_SHOW_FAILED;
            }
            MMLog.m4066i(TAG, "Ad show failed");
            final InterstitialListener interstitialListener = this.interstitialListener;
            if (interstitialListener == null) {
                return;
            }
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InterstitialAd.8
                @Override // java.lang.Runnable
                public void run() {
                    interstitialListener.onShowFailed(InterstitialAd.this, interstitialErrorStatus);
                }
            });
        }
    }

    public void onShown(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (doPendingDestroy()) {
                return;
            }
            if (!this.currentRequestState.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onShown called but load state is not valid");
                }
                return;
            }
            this.placementState = STATE_SHOWN;
            AdPlacementReporter.setDisplayed(requestState.getAdPlacementReporter(), 0);
            MMLog.m4066i(TAG, "Ad shown");
            final InterstitialListener interstitialListener = this.interstitialListener;
            if (interstitialListener == null) {
                return;
            }
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InterstitialAd.7
                @Override // java.lang.Runnable
                public void run() {
                    interstitialListener.onShown(InterstitialAd.this);
                }
            });
        }
    }

    private void releaseAdapters() {
        if (this.currentInterstitialAdAdapter != null) {
            this.currentInterstitialAdAdapter.release();
            this.currentInterstitialAdAdapter = null;
        }
        if (this.nextInterstitialAdAdapter != null) {
            this.nextInterstitialAdAdapter.release();
            this.nextInterstitialAdAdapter = null;
        }
    }

    public static void requestBid(String str, InterstitialAdMetadata interstitialAdMetadata, BidRequestListener bidRequestListener) {
        AdPlacement.requestBid(str, interstitialAdMetadata, bidRequestListener);
    }

    public void setCurrentAdAdapter(InterstitialAdapter interstitialAdapter) {
        if (this.currentInterstitialAdAdapter != null && this.currentInterstitialAdAdapter != interstitialAdapter) {
            this.currentInterstitialAdAdapter.release();
        }
        this.currentInterstitialAdAdapter = interstitialAdapter;
    }

    private void startExpirationTimer(AdPlacement.RequestState requestState) {
        stopExpirationTimer();
        int interstitialExpirationDuration = Handshake.getInterstitialExpirationDuration();
        if (interstitialExpirationDuration > 0) {
            this.expirationRunnable = ThreadUtils.runOnWorkerThreadDelayed(new ExpirationRunnable(this, requestState), interstitialExpirationDuration);
        }
    }

    private void stopExpirationTimer() {
        ThreadUtils.ScheduledRunnable scheduledRunnable = this.expirationRunnable;
        if (scheduledRunnable != null) {
            scheduledRunnable.cancel();
            this.expirationRunnable = null;
        }
    }

    private void stopRequestTimeoutTimers() {
        ThreadUtils.ScheduledRunnable scheduledRunnable = this.placementRequestTimeoutRunnable;
        if (scheduledRunnable != null) {
            scheduledRunnable.cancel();
            this.placementRequestTimeoutRunnable = null;
        }
        ThreadUtils.ScheduledRunnable scheduledRunnable2 = this.adAdapterRequestTimeoutRunnable;
        if (scheduledRunnable2 != null) {
            scheduledRunnable2.cancel();
            this.adAdapterRequestTimeoutRunnable = null;
        }
    }

    @Override // com.millennialmedia.internal.AdPlacement
    public boolean canDestroyNow() {
        return !isLoading() && !this.placementState.equals(STATE_SHOWING);
    }

    @Override // com.millennialmedia.internal.AdPlacement
    public Map<String, Object> getAdPlacementMetaDataMap() {
        InterstitialAdMetadata interstitialAdMetadata = this.interstitialAdMetadata;
        if (interstitialAdMetadata == null) {
            return null;
        }
        return interstitialAdMetadata.toMap(this);
    }

    @Override // com.millennialmedia.internal.AdPlacement
    public Context getContext() {
        WeakReference<Context> weakReference = this.contextRef;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.millennialmedia.internal.AdPlacement
    public CreativeInfo getCreativeInfo() {
        return this.currentInterstitialAdAdapter != null ? this.currentInterstitialAdAdapter.getCreativeInfo() : null;
    }

    public boolean hasExpired() {
        if (isDestroyed()) {
            return false;
        }
        return this.placementState.equals("expired");
    }

    public boolean isReady() {
        if (isDestroyed()) {
            return false;
        }
        return this.placementState.equals(AdPlacement.STATE_LOADED);
    }

    public void load(Context context, InterstitialAdMetadata interstitialAdMetadata) {
        if (isDestroyed()) {
            return;
        }
        String str = TAG;
        MMLog.m4066i(str, "Loading playlist for placement ID: " + this.placementId);
        this.contextRef = new WeakReference<>(context);
        this.interstitialAdMetadata = interstitialAdMetadata;
        synchronized (this) {
            if (!this.placementState.equals(AdPlacement.STATE_IDLE) && !this.placementState.equals(AdPlacement.STATE_LOAD_FAILED) && !this.placementState.equals("expired") && !this.placementState.equals(STATE_SHOW_FAILED)) {
                MMLog.m4062w(str, "Unable to load interstitial ad, state is invalid: " + this.placementState);
                return;
            }
            this.placementState = AdPlacement.STATE_LOADING_PLAY_LIST;
            this.playList = null;
            InterstitialAdMetadata interstitialAdMetadata2 = interstitialAdMetadata;
            if (interstitialAdMetadata == null) {
                interstitialAdMetadata2 = new InterstitialAdMetadata();
            }
            final AdPlacement.RequestState requestState = getRequestState();
            ThreadUtils.ScheduledRunnable scheduledRunnable = this.placementRequestTimeoutRunnable;
            if (scheduledRunnable != null) {
                scheduledRunnable.cancel();
            }
            int interstitialTimeout = Handshake.getInterstitialTimeout();
            this.placementRequestTimeoutRunnable = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.InterstitialAd.1
                @Override // java.lang.Runnable
                public void run() {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(InterstitialAd.TAG, "Play list load timed out");
                    }
                    InterstitialAd.this.onLoadFailed(requestState);
                }
            }, interstitialTimeout);
            final String impressionGroup = interstitialAdMetadata2.getImpressionGroup();
            PlayListServer.loadPlayList(interstitialAdMetadata2.toMap(this), new PlayListServer.PlayListLoadListener() { // from class: com.millennialmedia.InterstitialAd.2
                @Override // com.millennialmedia.internal.playlistserver.PlayListServer.PlayListLoadListener
                public void onLoadFailed(Throwable th) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(InterstitialAd.TAG, "Play list load failed");
                    }
                    InterstitialAd.this.onLoadFailed(requestState);
                }

                @Override // com.millennialmedia.internal.playlistserver.PlayListServer.PlayListLoadListener
                public void onLoaded(PlayList playList) {
                    synchronized (InterstitialAd.this) {
                        if (InterstitialAd.this.doPendingDestroy()) {
                            return;
                        }
                        if (!InterstitialAd.this.currentRequestState.compareRequest(requestState)) {
                            return;
                        }
                        InterstitialAd.this.placementState = AdPlacement.STATE_PLAY_LIST_LOADED;
                        InterstitialAd.this.playList = playList;
                        requestState.setAdPlacementReporter(AdPlacementReporter.getPlayListReporter(playList, impressionGroup));
                        InterstitialAd.this.currentRequestState = requestState;
                        InterstitialAd.this.loadAdAdapter(requestState);
                    }
                }
            }, interstitialTimeout);
        }
    }

    @Override // com.millennialmedia.internal.AdPlacement
    public void onDestroy() {
        this.interstitialListener = null;
        this.incentivizedEventListener = null;
        this.interstitialAdMetadata = null;
        stopRequestTimeoutTimers();
        ThreadUtils.ScheduledRunnable scheduledRunnable = this.expirationRunnable;
        if (scheduledRunnable != null) {
            scheduledRunnable.cancel();
            this.expirationRunnable = null;
        }
        releaseAdapters();
        this.playList = null;
    }

    public void setListener(InterstitialListener interstitialListener) {
        if (isDestroyed()) {
            return;
        }
        this.interstitialListener = interstitialListener;
    }

    public void show(Context context) {
        show(context, null);
    }

    public void show(Context context, AdPlacement.DisplayOptions displayOptions) {
        if (isDestroyed()) {
            return;
        }
        String str = null;
        if (context == null) {
            throw new MMException("Unable to show interstitial, specified context cannot be null");
        }
        synchronized (this) {
            if (!this.placementState.equals(AdPlacement.STATE_LOADED)) {
                str = "Unable to show interstitial ad, state is not valid: " + this.placementState;
            } else {
                this.placementState = STATE_SHOWING;
            }
        }
        if (str != null) {
            onShowFailed(new InterstitialErrorStatus(4, str));
            return;
        }
        stopExpirationTimer();
        this.currentInterstitialAdAdapter.show(context, displayOptions);
    }
}
