package com.millennialmedia;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.millennialmedia.XIncentivizedEventListener;
import com.millennialmedia.internal.ActivityListenerManager;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.AdPlacementMetadata;
import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.ErrorStatus;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.PlayList;
import com.millennialmedia.internal.adadapters.AdAdapter;
import com.millennialmedia.internal.adadapters.InlineAdapter;
import com.millennialmedia.internal.playlistserver.PlayListServer;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.Utils;
import com.millennialmedia.internal.utils.ViewUtils;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/InlineAd.class */
public class InlineAd extends AdPlacement {
    public static final String STATE_ATTACHING = "attaching";
    public static final String STATE_LOAD_ABORTED = "aborted";
    private static final String TAG = "InlineAd";
    private ThreadUtils.ScheduledRunnable adAdapterRequestTimeoutRunnable;
    private final WeakReference<ViewGroup> adContainerRef;
    private volatile InlineAdapter currentInlineAdAdapter;
    private AdPlacement.DisplayOptions displayOptions;
    private volatile ImpressionListener impressionListener;
    private InlineAbortListener inlineAbortListener;
    private InlineAdMetadata inlineAdMetadata;
    private InlineListener inlineListener;
    private long lastRequestTime;
    private RelativeLayout mmAdContainer;
    private volatile InlineAdapter nextInlineAdAdapter;
    private ThreadUtils.ScheduledRunnable placementRequestTimeoutRunnable;
    private ThreadUtils.ScheduledRunnable refreshRunnable;
    private Integer requestedRefreshInterval;
    private volatile boolean hasRequested = false;
    private volatile boolean isResized = false;
    private volatile boolean isExpanded = false;
    private volatile boolean aborting = false;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/InlineAd$AdSize.class */
    public static class AdSize {
        public static final int AUTO_HEIGHT = 0;
        public static final int AUTO_WIDTH = 0;
        public static final AdSize BANNER = new AdSize(320, 50);
        public static final AdSize FULL_BANNER = new AdSize(468, 60);
        public static final AdSize LARGE_BANNER = new AdSize(320, 100);
        public static final AdSize LEADERBOARD = new AdSize(728, 90);
        public static final AdSize MEDIUM_RECTANGLE = new AdSize(300, 250);
        public static final AdSize SMART_BANNER = new AdSize(0, 0);
        public final int height;
        public final int width;

        public AdSize(int i, int i2) {
            this.width = i <= 0 ? 0 : i;
            this.height = i2 <= 0 ? 0 : i2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass() || !(obj instanceof AdSize)) {
                return false;
            }
            AdSize adSize = (AdSize) obj;
            if (this.width != adSize.width || this.height != adSize.height) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.width * 31) + this.height;
        }

        public boolean isAuto() {
            return this.width == 0 || this.height == 0;
        }

        public String toString() {
            return "Inline ad of size " + this.width + " by " + this.height;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/InlineAd$ImpressionListener.class */
    public static class ImpressionListener {
        public volatile boolean impressionFound = false;
        public volatile ThreadUtils.ScheduledRunnable impressionTimerRunnable;
        public WeakReference<InlineAd> inlineAdRef;
        public long minImpressionDelay;
        public int minViewabilityPercentage;
        public ViewUtils.ViewabilityWatcher viewabilityWatcher;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2 */
        /* JADX WARN: Type inference failed for: r11v3 */
        public ImpressionListener(InlineAd inlineAd, View view, long j, int i) {
            this.minViewabilityPercentage = i;
            this.minImpressionDelay = i == 0 ? 0 : j;
            this.inlineAdRef = new WeakReference<>(inlineAd);
            this.viewabilityWatcher = new ViewUtils.ViewabilityWatcher(view, new ViewUtils.ViewabilityListener() { // from class: com.millennialmedia.InlineAd.ImpressionListener.1
                @Override // com.millennialmedia.internal.utils.ViewUtils.ViewabilityListener
                public void onViewableChanged(boolean z) {
                    synchronized (ImpressionListener.this) {
                        if (z) {
                            if (ImpressionListener.this.impressionTimerRunnable == null && !ImpressionListener.this.impressionFound) {
                                ImpressionListener.this.impressionTimerRunnable = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.InlineAd.ImpressionListener.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        InlineAd inlineAd2 = ImpressionListener.this.inlineAdRef.get();
                                        if (inlineAd2 == null || inlineAd2.isDestroyed()) {
                                            return;
                                        }
                                        synchronized (ImpressionListener.this) {
                                            ImpressionListener.this.impressionTimerRunnable = null;
                                            if (ImpressionListener.this.viewabilityWatcher.viewable && !ImpressionListener.this.impressionFound) {
                                                int i2 = 1;
                                                ImpressionListener.this.impressionFound = true;
                                                if (ImpressionListener.this.minImpressionDelay == 0) {
                                                    i2 = 0;
                                                }
                                                inlineAd2.reportImpression(i2);
                                            }
                                        }
                                    }
                                }, ImpressionListener.this.minImpressionDelay);
                            }
                        }
                        if (!z && ImpressionListener.this.impressionTimerRunnable != null) {
                            ImpressionListener.this.impressionTimerRunnable.cancel();
                            ImpressionListener.this.impressionTimerRunnable = null;
                        }
                    }
                }
            });
        }

        public void cancel() {
            synchronized (this) {
                this.viewabilityWatcher.stopWatching();
                if (this.impressionTimerRunnable != null) {
                    this.impressionTimerRunnable.cancel();
                    this.impressionTimerRunnable = null;
                }
            }
        }

        public void listen() {
            ViewUtils.ViewabilityWatcher viewabilityWatcher = this.viewabilityWatcher;
            if (viewabilityWatcher == null) {
                return;
            }
            viewabilityWatcher.setMinViewabilityPercent(this.minViewabilityPercentage);
            this.viewabilityWatcher.startWatching();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/InlineAd$InlineAbortListener.class */
    public interface InlineAbortListener {
        void onAbortFailed(InlineAd inlineAd);

        void onAborted(InlineAd inlineAd);
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/InlineAd$InlineAdMetadata.class */
    public static class InlineAdMetadata extends AdPlacementMetadata<InlineAdMetadata> {
        private static final String PLACEMENT_TYPE_INLINE = "inline";
        private AdSize adSize;

        public InlineAdMetadata() {
            super("inline");
        }

        private Map<String, Object> addElementsToMap(Map<String, Object> map, InlineAd inlineAd) {
            Utils.injectIfNotNull(map, "width", Integer.valueOf(getWidth(inlineAd)));
            Utils.injectIfNotNull(map, "height", Integer.valueOf(getHeight(inlineAd)));
            if (inlineAd != null) {
                Utils.injectIfNotNull(map, "refreshRate", inlineAd.getRefreshInterval());
            }
            return map;
        }

        public AdSize getAdSize() {
            return this.adSize;
        }

        public int getHeight(InlineAd inlineAd) {
            ViewGroup viewGroup;
            int i;
            AdSize adSize = this.adSize;
            if (adSize == null || (i = adSize.height) == 0) {
                if (inlineAd != null && (viewGroup = (ViewGroup) inlineAd.adContainerRef.get()) != null) {
                    return ViewUtils.convertPixelsToDips(viewGroup.getHeight());
                }
                return 0;
            }
            return i;
        }

        public int getWidth(InlineAd inlineAd) {
            ViewGroup viewGroup;
            int i;
            AdSize adSize = this.adSize;
            if (adSize == null || (i = adSize.width) == 0) {
                if (inlineAd != null && (viewGroup = (ViewGroup) inlineAd.adContainerRef.get()) != null) {
                    return ViewUtils.convertPixelsToDips(viewGroup.getWidth());
                }
                return 0;
            }
            return i;
        }

        public boolean hasValidAdSize() {
            AdSize adSize = this.adSize;
            return adSize != null && adSize.width >= 0 && adSize.height >= 0;
        }

        public InlineAdMetadata setAdSize(AdSize adSize) {
            if (adSize == null) {
                MMLog.m4068e(InlineAd.TAG, "Provided AdSize cannot be null");
            } else {
                this.adSize = adSize;
            }
            return this;
        }

        public Map<String, Object> toMap(InlineAd inlineAd) {
            return addElementsToMap(super.toMap((AdPlacement) inlineAd), inlineAd);
        }

        @Override // com.millennialmedia.internal.AdPlacementMetadata
        public Map<String, Object> toMap(String str) {
            return addElementsToMap(super.toMap(str), null);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/InlineAd$InlineErrorStatus.class */
    public static class InlineErrorStatus extends ErrorStatus {
        public InlineErrorStatus(int i) {
            super(i);
        }

        public InlineErrorStatus(int i, String str) {
            super(i, str);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/InlineAd$InlineListener.class */
    public interface InlineListener {
        void onAdLeftApplication(InlineAd inlineAd);

        void onClicked(InlineAd inlineAd);

        void onCollapsed(InlineAd inlineAd);

        void onExpanded(InlineAd inlineAd);

        void onRequestFailed(InlineAd inlineAd, InlineErrorStatus inlineErrorStatus);

        void onRequestSucceeded(InlineAd inlineAd);

        void onResize(InlineAd inlineAd, int i, int i2);

        void onResized(InlineAd inlineAd, int i, int i2, boolean z);
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/InlineAd$RefreshRunnable.class */
    public static class RefreshRunnable implements Runnable {
        public WeakReference<InlineAd> inlineAdRef;

        public RefreshRunnable(InlineAd inlineAd) {
            this.inlineAdRef = new WeakReference<>(inlineAd);
        }

        @Override // java.lang.Runnable
        public void run() {
            ThreadUtils.ScheduledRunnable runOnWorkerThreadDelayed;
            String str;
            String str2;
            final InlineAd inlineAd = this.inlineAdRef.get();
            if (inlineAd == null) {
                str = InlineAd.TAG;
                str2 = "InlineAd instance has been destroyed, shutting down refresh behavior";
            } else {
                ViewGroup viewGroup = (ViewGroup) inlineAd.adContainerRef.get();
                if (viewGroup != null) {
                    if (!inlineAd.isRefreshEnabled()) {
                        if (MMLog.isDebugEnabled()) {
                            MMLog.m4070d(InlineAd.TAG, "Inline refresh disabled, aborting refresh behavior");
                        }
                        runOnWorkerThreadDelayed = null;
                    } else {
                        Activity activityForView = ViewUtils.getActivityForView(viewGroup);
                        if (activityForView == null) {
                            str = InlineAd.TAG;
                            str2 = "Unable to find valid activity context for placement container, aborting refresh";
                        } else {
                            boolean z = ActivityListenerManager.getLifecycleState(activityForView) == ActivityListenerManager.LifecycleState.RESUMED;
                            boolean z2 = true;
                            if (inlineAd.impressionListener != null) {
                                z2 = inlineAd.impressionListener.impressionFound;
                            }
                            if (viewGroup.isShown() && !inlineAd.isResized && !inlineAd.isExpanded && z && z2) {
                                ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.InlineAd.RefreshRunnable.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        inlineAd.loadPlayList();
                                    }
                                });
                            }
                            runOnWorkerThreadDelayed = ThreadUtils.runOnWorkerThreadDelayed(this, inlineAd.getRefreshInterval().intValue());
                        }
                    }
                    inlineAd.refreshRunnable = runOnWorkerThreadDelayed;
                    return;
                }
                str = InlineAd.TAG;
                str2 = "InlineAd container has been destroyed, shutting down refresh behavior";
            }
            MMLog.m4068e(str, str2);
        }
    }

    private InlineAd(String str, ViewGroup viewGroup) {
        super(str);
        this.adContainerRef = new WeakReference<>(viewGroup);
    }

    public static InlineAd createInstance(String str, ViewGroup viewGroup) {
        if (MMSDK.isInitialized()) {
            if (viewGroup == null) {
                throw new MMException("Unable to create instance, ad container cannot be null");
            }
            if (viewGroup.getContext() == null) {
                throw new MMException("Unable to create instance, ad container must have an associated context");
            }
            return new InlineAd(str, viewGroup);
        }
        throw new MMInitializationException("Unable to create instance, SDK must be initialized first");
    }

    public static long getImpressionDelay(AdAdapter adAdapter) {
        return adAdapter.getImpressionDelay();
    }

    public static int getMinViewabilityPercentage(AdAdapter adAdapter) {
        return adAdapter.getMinImpressionViewabilityPercentage();
    }

    private boolean isLoading() {
        return !this.placementState.equals(AdPlacement.STATE_IDLE) && !this.placementState.equals(AdPlacement.STATE_LOAD_FAILED) && !this.placementState.equals(AdPlacement.STATE_LOADED) && !this.placementState.equals(STATE_LOAD_ABORTED) && !this.placementState.equals(AdPlacement.STATE_DESTROYED);
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
                    onRequestFailed(copy);
                } else if (this.aborting) {
                    onAborted(copy);
                } else {
                    final AdPlacementReporter.PlayListItemReporter playListItemReporter = AdPlacementReporter.getPlayListItemReporter(requestState.getAdPlacementReporter());
                    this.nextInlineAdAdapter = (InlineAdapter) this.playList.getNextAdAdapter(this, playListItemReporter);
                    ViewGroup viewGroup = this.adContainerRef.get();
                    if (this.nextInlineAdAdapter == null || viewGroup == null) {
                        AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter);
                        onAdAdapterLoadFailed(copy);
                        return;
                    }
                    int i = this.nextInlineAdAdapter.requestTimeout;
                    if (i > 0) {
                        ThreadUtils.ScheduledRunnable scheduledRunnable = this.adAdapterRequestTimeoutRunnable;
                        if (scheduledRunnable != null) {
                            scheduledRunnable.cancel();
                        }
                        this.adAdapterRequestTimeoutRunnable = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.InlineAd.3
                            @Override // java.lang.Runnable
                            public void run() {
                                if (MMLog.isDebugEnabled()) {
                                    MMLog.m4070d(InlineAd.TAG, "Ad adapter load timed out");
                                }
                                AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter, -2);
                                InlineAd.this.onAdAdapterLoadFailed(copy);
                            }
                        }, i);
                    }
                    this.nextInlineAdAdapter.init(viewGroup.getContext(), new InlineAdapter.InlineAdapterListener() { // from class: com.millennialmedia.InlineAd.4
                        @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                        public void displayFailed() {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.m4070d(InlineAd.TAG, "Ad adapter display failed");
                            }
                            AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter, -3);
                            InlineAd.this.onAdAdapterLoadFailed(copy);
                        }

                        @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                        public void displaySucceeded() {
                            ViewGroup viewGroup2 = (ViewGroup) InlineAd.this.adContainerRef.get();
                            if (viewGroup2 == null) {
                                displayFailed();
                                return;
                            }
                            if (MMLog.isDebugEnabled()) {
                                MMLog.m4070d(InlineAd.TAG, "Ad adapter display succeeded");
                            }
                            AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter);
                            InlineAd inlineAd = InlineAd.this;
                            inlineAd.onRequestSucceeded(viewGroup2, copy, inlineAd.currentInlineAdAdapter);
                        }

                        @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                        public void initFailed() {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.m4070d(InlineAd.TAG, "Ad adapter init failed");
                            }
                            AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter, -3);
                            InlineAd.this.onAdAdapterLoadFailed(copy);
                        }

                        @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                        public void initSucceeded() {
                            synchronized (InlineAd.this) {
                                if (!InlineAd.this.currentRequestState.compare(copy)) {
                                    if (MMLog.isDebugEnabled()) {
                                        MMLog.m4070d(InlineAd.TAG, "initSucceeded called but request state is not valid");
                                    }
                                } else if (!InlineAd.this.placementState.equals(AdPlacement.STATE_LOADING_AD_ADAPTER)) {
                                    if (MMLog.isDebugEnabled()) {
                                        String str = InlineAd.TAG;
                                        MMLog.m4070d(str, "initSucceeded called but placement state is not valid: " + InlineAd.this.placementState);
                                    }
                                } else {
                                    final ViewGroup viewGroup2 = (ViewGroup) InlineAd.this.adContainerRef.get();
                                    if (viewGroup2 == null) {
                                        displayFailed();
                                        return;
                                    }
                                    InlineAd inlineAd = InlineAd.this;
                                    inlineAd.setCurrentAdAdapter(inlineAd.nextInlineAdAdapter);
                                    InlineAd.this.nextInlineAdAdapter = null;
                                    ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.4.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            if (InlineAd.this.mmAdContainer != null) {
                                                viewGroup2.removeView(InlineAd.this.mmAdContainer);
                                            }
                                            InlineAd.this.mmAdContainer = new RelativeLayout(viewGroup2.getContext());
                                            InlineAd.this.currentInlineAdAdapter.display(InlineAd.this.mmAdContainer, new AdSize(InlineAd.this.inlineAdMetadata.getWidth(InlineAd.this), InlineAd.this.inlineAdMetadata.getHeight(InlineAd.this)));
                                        }
                                    });
                                }
                            }
                        }

                        @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                        public void onAdLeftApplication() {
                            InlineAd.this.onAdLeftApplication(copy);
                        }

                        @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                        public void onClicked() {
                            InlineAd.this.onClicked(copy);
                        }

                        @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                        public void onCollapsed() {
                            InlineAd.this.onCollapsed(copy);
                        }

                        @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                        public void onExpanded() {
                            InlineAd.this.onExpanded(copy);
                        }

                        @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                        public void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent) {
                            InlineAd.this.onIncentiveEarned(xIncentiveEvent);
                        }

                        @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                        public void onResize(int i2, int i3) {
                            InlineAd.this.onResize(copy, i2, i3);
                        }

                        @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                        public void onResized(int i2, int i3, boolean z) {
                            InlineAd.this.onResized(copy, i2, i3, z);
                        }
                    }, this.displayOptions);
                }
            }
        }
    }

    public void loadPlayList() {
        if (this.isResized || this.isExpanded) {
            MMLog.m4062w(TAG, "Inline ad is resized or expanded, unable to request new ad");
        } else if (System.currentTimeMillis() < this.lastRequestTime + Handshake.getMinInlineRefreshRate()) {
            MMLog.m4068e(TAG, "Too soon since last inline ad request, unable to request ad");
        } else {
            synchronized (this) {
                if (isDestroyed()) {
                    return;
                }
                if (isLoading()) {
                    return;
                }
                this.aborting = false;
                this.inlineAbortListener = null;
                this.placementState = AdPlacement.STATE_LOADING_PLAY_LIST;
                this.playList = null;
                this.lastRequestTime = System.currentTimeMillis();
                if (this.inlineAdMetadata == null) {
                    this.inlineAdMetadata = new InlineAdMetadata();
                }
                if (this.displayOptions == null) {
                    this.displayOptions = new AdPlacement.DisplayOptions();
                }
                final AdPlacement.RequestState requestState = getRequestState();
                ThreadUtils.ScheduledRunnable scheduledRunnable = this.placementRequestTimeoutRunnable;
                if (scheduledRunnable != null) {
                    scheduledRunnable.cancel();
                }
                int inlineTimeout = Handshake.getInlineTimeout();
                this.placementRequestTimeoutRunnable = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.InlineAd.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MMLog.isDebugEnabled()) {
                            MMLog.m4070d(InlineAd.TAG, "Play list load timed out");
                        }
                        InlineAd.this.onRequestFailed(requestState);
                    }
                }, inlineTimeout);
                final String impressionGroup = this.inlineAdMetadata.getImpressionGroup();
                PlayListServer.loadPlayList(this.inlineAdMetadata.toMap(this), new PlayListServer.PlayListLoadListener() { // from class: com.millennialmedia.InlineAd.2
                    @Override // com.millennialmedia.internal.playlistserver.PlayListServer.PlayListLoadListener
                    public void onLoadFailed(Throwable th) {
                        if (MMLog.isDebugEnabled()) {
                            MMLog.m4070d(InlineAd.TAG, "Play list load failed");
                        }
                        InlineAd.this.onRequestFailed(requestState);
                    }

                    @Override // com.millennialmedia.internal.playlistserver.PlayListServer.PlayListLoadListener
                    public void onLoaded(PlayList playList) {
                        synchronized (InlineAd.this) {
                            if (InlineAd.this.doPendingDestroy()) {
                                return;
                            }
                            if (InlineAd.this.currentRequestState.compareRequest(requestState) && InlineAd.this.placementState.equals(AdPlacement.STATE_LOADING_PLAY_LIST)) {
                                InlineAd.this.placementState = AdPlacement.STATE_PLAY_LIST_LOADED;
                                InlineAd.this.playList = playList;
                                requestState.setAdPlacementReporter(AdPlacementReporter.getPlayListReporter(playList, impressionGroup));
                                InlineAd.this.currentRequestState = requestState;
                                InlineAd.this.loadAdAdapter(requestState);
                            }
                        }
                    }
                }, inlineTimeout);
            }
        }
    }

    public void onAbortFailed() {
        MMLog.m4066i(TAG, "Ad abort failed");
        final InlineAbortListener inlineAbortListener = this.inlineAbortListener;
        if (inlineAbortListener != null) {
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.14
                @Override // java.lang.Runnable
                public void run() {
                    inlineAbortListener.onAbortFailed(InlineAd.this);
                }
            });
        }
    }

    private void onAborted(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (doPendingDestroy()) {
                return;
            }
            if (!this.currentRequestState.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onAborted called but request state is not valid");
                }
            } else if (!this.placementState.equals(AdPlacement.STATE_LOADING_AD_ADAPTER)) {
                if (MMLog.isDebugEnabled()) {
                    String str = TAG;
                    MMLog.m4070d(str, "onAborted called but placement state is not valid: " + this.placementState);
                }
            } else {
                this.placementState = STATE_LOAD_ABORTED;
                MMLog.m4066i(TAG, "Ad aborted");
                AdPlacementReporter.reportPlayList(requestState.getAdPlacementReporter());
                final InlineAbortListener inlineAbortListener = this.inlineAbortListener;
                if (inlineAbortListener == null) {
                    return;
                }
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.13
                    @Override // java.lang.Runnable
                    public void run() {
                        inlineAbortListener.onAborted(InlineAd.this);
                    }
                });
            }
        }
    }

    public void onAdAdapterLoadFailed(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.currentRequestState.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onAdAdapterLoadFailed called but request state is not valid");
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
                    MMLog.m4070d(TAG, "onAdLeftApplication called but request state is not valid");
                }
                return;
            }
            MMLog.m4066i(TAG, "Ad left application");
            final InlineListener inlineListener = this.inlineListener;
            if (inlineListener == null) {
                return;
            }
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.12
                @Override // java.lang.Runnable
                public void run() {
                    inlineListener.onAdLeftApplication(InlineAd.this);
                }
            });
        }
    }

    public void onClicked(AdPlacement.RequestState requestState) {
        MMLog.m4066i(TAG, "Ad clicked");
        reportImpression(2);
        AdPlacementReporter.setClicked(requestState.getAdPlacementReporter());
        final InlineListener inlineListener = this.inlineListener;
        if (inlineListener != null) {
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.7
                @Override // java.lang.Runnable
                public void run() {
                    inlineListener.onClicked(InlineAd.this);
                }
            });
        }
    }

    public void onCollapsed(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.currentRequestState.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onCollapsed called but request state is not valid");
                }
                return;
            }
            MMLog.m4066i(TAG, "Ad collapsed");
            this.isExpanded = false;
            final InlineListener inlineListener = this.inlineListener;
            if (inlineListener == null) {
                return;
            }
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.11
                @Override // java.lang.Runnable
                public void run() {
                    inlineListener.onCollapsed(InlineAd.this);
                }
            });
        }
    }

    public void onExpanded(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.currentRequestState.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onExpanded called but request state is not valid");
                }
                return;
            }
            MMLog.m4066i(TAG, "Ad expanded");
            this.isExpanded = true;
            this.isResized = false;
            final InlineListener inlineListener = this.inlineListener;
            if (inlineListener == null) {
                return;
            }
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.10
                @Override // java.lang.Runnable
                public void run() {
                    inlineListener.onExpanded(InlineAd.this);
                }
            });
        }
    }

    public void onRequestFailed(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (doPendingDestroy()) {
                return;
            }
            if (!this.currentRequestState.compareRequest(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onRequestFailed called but request state is not valid");
                }
            } else if (!this.placementState.equals(AdPlacement.STATE_LOADING_AD_ADAPTER) && !this.placementState.equals(AdPlacement.STATE_LOADING_PLAY_LIST)) {
                if (MMLog.isDebugEnabled()) {
                    String str = TAG;
                    MMLog.m4070d(str, "onRequestFailed called but placement state is not valid: " + this.placementState);
                }
            } else {
                this.placementState = AdPlacement.STATE_LOAD_FAILED;
                String str2 = TAG;
                MMLog.m4062w(str2, "Request failed for placement ID: " + this.placementId + ". If this warning persists please check your placement configuration.");
                stopRequestTimeoutTimers();
                AdPlacementReporter.reportPlayList(requestState.getAdPlacementReporter());
                final InlineListener inlineListener = this.inlineListener;
                if (inlineListener == null) {
                    return;
                }
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.6
                    @Override // java.lang.Runnable
                    public void run() {
                        inlineListener.onRequestFailed(InlineAd.this, new InlineErrorStatus(5));
                        if (InlineAd.this.aborting) {
                            InlineAd.this.onAbortFailed();
                        }
                    }
                });
            }
        }
    }

    public void onRequestSucceeded(final ViewGroup viewGroup, final AdPlacement.RequestState requestState, final InlineAdapter inlineAdapter) {
        synchronized (this) {
            if (!this.currentRequestState.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onRequestSucceeded called but request state is not valid");
                }
            } else if (!this.placementState.equals(AdPlacement.STATE_LOADING_AD_ADAPTER)) {
                if (MMLog.isDebugEnabled()) {
                    String str = TAG;
                    MMLog.m4070d(str, "onRequestSucceeded called but placement state is not valid: " + this.placementState);
                }
            } else if (doPendingDestroy()) {
            } else {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "InlineAd in attaching state.");
                }
                this.placementState = STATE_ATTACHING;
                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.5
                    @Override // java.lang.Runnable
                    public void run() {
                        viewGroup.addView(InlineAd.this.mmAdContainer, new ViewGroup.LayoutParams(-1, -1));
                        InlineAd.this.placementState = AdPlacement.STATE_LOADED;
                        MMLog.m4066i(InlineAd.TAG, "Request succeeded");
                        InlineAd.this.stopRequestTimeoutTimers();
                        AdPlacementReporter.reportPlayList(requestState.getAdPlacementReporter());
                        InlineAd inlineAd = InlineAd.this;
                        inlineAd.impressionListener = new ImpressionListener(inlineAd, inlineAd.mmAdContainer, InlineAd.getImpressionDelay(inlineAdapter), InlineAd.getMinViewabilityPercentage(inlineAdapter));
                        InlineAd.this.impressionListener.listen();
                        final InlineListener inlineListener = InlineAd.this.inlineListener;
                        if (inlineListener != null) {
                            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.5.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    inlineListener.onRequestSucceeded(InlineAd.this);
                                    if (InlineAd.this.aborting) {
                                        InlineAd.this.onAbortFailed();
                                    }
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    public void onResize(AdPlacement.RequestState requestState, final int i, final int i2) {
        synchronized (this) {
            if (!this.currentRequestState.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onResize called but request state is not valid");
                }
                return;
            }
            MMLog.m4066i(TAG, "Ad resizing");
            this.isResized = true;
            final InlineListener inlineListener = this.inlineListener;
            if (inlineListener == null) {
                return;
            }
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.8
                @Override // java.lang.Runnable
                public void run() {
                    inlineListener.onResize(InlineAd.this, i, i2);
                }
            });
        }
    }

    public void onResized(AdPlacement.RequestState requestState, final int i, final int i2, final boolean z) {
        synchronized (this) {
            if (!this.currentRequestState.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onResized called but request state is not valid");
                }
                return;
            }
            String str = TAG;
            MMLog.m4066i(str, "Ad resized, is closed: " + z);
            if (z) {
                this.isResized = false;
            }
            final InlineListener inlineListener = this.inlineListener;
            if (inlineListener == null) {
                return;
            }
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.9
                @Override // java.lang.Runnable
                public void run() {
                    inlineListener.onResized(InlineAd.this, i, i2, z);
                }
            });
        }
    }

    private void releaseAdapters() {
        if (this.currentInlineAdAdapter != null) {
            this.currentInlineAdAdapter.release();
            this.currentInlineAdAdapter = null;
        }
        if (this.nextInlineAdAdapter != null) {
            this.nextInlineAdAdapter.release();
            this.nextInlineAdAdapter = null;
        }
    }

    public void reportImpression(int i) {
        AdPlacementReporter.setDisplayed(this.currentRequestState.getAdPlacementReporter(), i);
        if (this.impressionListener != null) {
            this.impressionListener.cancel();
            this.impressionListener = null;
        }
    }

    public static void requestBid(String str, InlineAdMetadata inlineAdMetadata, BidRequestListener bidRequestListener) {
        if (inlineAdMetadata != null) {
            AdSize adSize = inlineAdMetadata.getAdSize();
            if (inlineAdMetadata.hasValidAdSize() && !adSize.isAuto()) {
                AdPlacement.requestBid(str, inlineAdMetadata, bidRequestListener);
                return;
            }
            throw new MMException("Invalid AdSize <" + adSize + ">");
        }
        throw new MMException("Metadata must not be null");
    }

    public void setCurrentAdAdapter(InlineAdapter inlineAdapter) {
        if (this.currentInlineAdAdapter != null && this.currentInlineAdAdapter != inlineAdapter) {
            this.currentInlineAdAdapter.release();
        }
        this.currentInlineAdAdapter = inlineAdapter;
    }

    private void startRefresh() {
        synchronized (this) {
            if (isRefreshEnabled() && this.refreshRunnable == null) {
                this.refreshRunnable = ThreadUtils.runOnWorkerThreadDelayed(new RefreshRunnable(this), getRefreshInterval().intValue());
                return;
            }
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, "Refresh disabled or already started, returning");
            }
        }
    }

    public void stopRequestTimeoutTimers() {
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

    public void abort(InlineAbortListener inlineAbortListener) {
        if (isDestroyed()) {
            return;
        }
        String str = TAG;
        MMLog.m4066i(str, "Attempting to abort playlist request for placement ID: " + this.placementId);
        this.inlineAbortListener = inlineAbortListener;
        synchronized (this) {
            if (!isLoading()) {
                onAbortFailed();
                return;
            }
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(str, "Aborting playlist request for placement ID: " + this.placementId);
            }
            this.aborting = true;
        }
    }

    @Override // com.millennialmedia.internal.AdPlacement
    public boolean canDestroyNow() {
        return !isLoading();
    }

    @Override // com.millennialmedia.internal.AdPlacement
    public Map<String, Object> getAdPlacementMetaDataMap() {
        InlineAdMetadata inlineAdMetadata = this.inlineAdMetadata;
        if (inlineAdMetadata == null) {
            return null;
        }
        return inlineAdMetadata.toMap(this);
    }

    @Override // com.millennialmedia.internal.AdPlacement
    public Context getContext() {
        WeakReference<ViewGroup> weakReference = this.adContainerRef;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return this.adContainerRef.get().getContext();
    }

    @Override // com.millennialmedia.internal.AdPlacement
    public CreativeInfo getCreativeInfo() {
        return this.currentInlineAdAdapter != null ? this.currentInlineAdAdapter.getCreativeInfo() : null;
    }

    public Integer getRefreshInterval() {
        if (isDestroyed()) {
            return null;
        }
        return isRefreshEnabled() ? Integer.valueOf(Math.max(this.requestedRefreshInterval.intValue(), Handshake.getMinInlineRefreshRate())) : this.requestedRefreshInterval;
    }

    public boolean isRefreshEnabled() {
        if (isDestroyed()) {
            return false;
        }
        Integer num = this.requestedRefreshInterval;
        boolean z = false;
        if (num != null) {
            z = false;
            if (num.intValue() > 0) {
                z = true;
            }
        }
        return z;
    }

    @Override // com.millennialmedia.internal.AdPlacement
    public void onDestroy() {
        this.inlineListener = null;
        this.inlineAbortListener = null;
        this.incentivizedEventListener = null;
        if (this.impressionListener != null) {
            this.impressionListener.cancel();
            this.impressionListener = null;
        }
        stopRequestTimeoutTimers();
        ThreadUtils.ScheduledRunnable scheduledRunnable = this.refreshRunnable;
        if (scheduledRunnable != null) {
            scheduledRunnable.cancel();
            this.refreshRunnable = null;
        }
        releaseAdapters();
        final WeakReference<ViewGroup> weakReference = this.adContainerRef;
        if (weakReference.get() != null) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.15
                @Override // java.lang.Runnable
                public void run() {
                    ((ViewGroup) weakReference.get()).removeAllViews();
                }
            });
        }
        this.mmAdContainer = null;
        this.inlineAdMetadata = null;
        this.playList = null;
    }

    public void request(InlineAdMetadata inlineAdMetadata) {
        if (isDestroyed()) {
            return;
        }
        String str = TAG;
        MMLog.m4066i(str, "Requesting playlist for placement ID: " + this.placementId);
        this.inlineAdMetadata = inlineAdMetadata;
        this.hasRequested = true;
        loadPlayList();
        startRefresh();
    }

    public void setDisplayOptions(AdPlacement.DisplayOptions displayOptions) {
        this.displayOptions = displayOptions;
    }

    public void setListener(InlineListener inlineListener) {
        if (isDestroyed()) {
            return;
        }
        this.inlineListener = inlineListener;
    }

    public void setRefreshInterval(int i) {
        if (isDestroyed()) {
            return;
        }
        this.requestedRefreshInterval = Integer.valueOf(Math.max(0, i));
        if (!this.hasRequested) {
            return;
        }
        startRefresh();
    }
}
