package com.millennialmedia.internal;

import android.content.Context;
import android.text.TextUtils;
import com.millennialmedia.BidRequestErrorStatus;
import com.millennialmedia.BidRequestListener;
import com.millennialmedia.CreativeInfo;
import com.millennialmedia.MMException;
import com.millennialmedia.MMLog;
import com.millennialmedia.XIncentivizedEventListener;
import com.millennialmedia.internal.adwrapper.AdWrapper;
import com.millennialmedia.internal.adwrapper.SuperAuctionAdWrapperType;
import com.millennialmedia.internal.playlistserver.PlayListServer;
import com.millennialmedia.internal.utils.ThreadUtils;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/AdPlacement.class */
public abstract class AdPlacement {
    public static final String STATE_AD_ADAPTER_LOAD_FAILED = "ad_adapter_load_failed";
    public static final String STATE_DESTROYED = "destroyed";
    public static final String STATE_IDLE = "idle";
    public static final String STATE_LOADED = "loaded";
    public static final String STATE_LOADING_AD_ADAPTER = "loading_ad_adapter";
    public static final String STATE_LOADING_PLAY_LIST = "loading_play_list";
    public static final String STATE_LOAD_FAILED = "load_failed";
    public static final String STATE_PLAY_LIST_LOADED = "play_list_loaded";
    private static final String TAG = "AdPlacement";
    public Context context;
    public volatile RequestState currentRequestState;
    public XIncentivizedEventListener incentivizedEventListener;
    public String placementId;
    public volatile PlayList playList;
    private volatile boolean pendingDestroy = false;
    public volatile String placementState = STATE_IDLE;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/AdPlacement$DisplayOptions.class */
    public static class DisplayOptions {
        private Integer enterAnimationId;
        private Integer exitAnimationId;
        private boolean immersive = true;

        public Integer getEnterAnimationId() {
            return this.enterAnimationId;
        }

        public Integer getExitAnimationId() {
            return this.exitAnimationId;
        }

        public boolean isImmersive() {
            return this.immersive;
        }

        public DisplayOptions setImmersive(boolean z) {
            this.immersive = z;
            return this;
        }

        public DisplayOptions setTransitionAnimation(int i, int i2) {
            this.enterAnimationId = Integer.valueOf(i);
            this.exitAnimationId = Integer.valueOf(i2);
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/AdPlacement$RequestState.class */
    public static class RequestState {
        private AdPlacementReporter adPlacementReporter;
        private int itemHash;
        private int requestHash = new Object().hashCode();

        public boolean compare(RequestState requestState) {
            return this.requestHash == requestState.requestHash && this.itemHash == requestState.itemHash;
        }

        public boolean compareRequest(RequestState requestState) {
            return this.requestHash == requestState.requestHash;
        }

        public RequestState copy() {
            RequestState requestState = new RequestState();
            requestState.requestHash = this.requestHash;
            requestState.itemHash = this.itemHash;
            requestState.adPlacementReporter = this.adPlacementReporter;
            return requestState;
        }

        public AdPlacementReporter getAdPlacementReporter() {
            return this.adPlacementReporter;
        }

        public int getItemHash() {
            int hashCode = new Object().hashCode();
            this.itemHash = hashCode;
            return hashCode;
        }

        public void setAdPlacementReporter(AdPlacementReporter adPlacementReporter) {
            this.adPlacementReporter = adPlacementReporter;
        }

        public String toString() {
            return "RequestState{requestHash=" + this.requestHash + ", itemHash=" + this.itemHash + "}";
        }
    }

    public AdPlacement(String str) {
        this.placementId = cleanPlacementId(str);
    }

    private static String cleanPlacementId(String str) {
        if (str != null) {
            String trim = str.trim();
            if (trim.isEmpty()) {
                throw new MMException("PlacementId cannot be an empty string.");
            }
            return trim;
        }
        throw new MMException("PlacementId must be a non null.");
    }

    private void doDestroy() {
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4066i(str, "Destroying ad " + hashCode());
        }
        this.placementState = STATE_DESTROYED;
        this.pendingDestroy = false;
        onDestroy();
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "Ad destroyed");
        }
    }

    public static void onBidRequestFailed(final BidRequestListener bidRequestListener, final BidRequestErrorStatus bidRequestErrorStatus) {
        if (bidRequestListener != null) {
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.internal.AdPlacement.4
                @Override // java.lang.Runnable
                public void run() {
                    bidRequestListener.onRequestFailed(bidRequestErrorStatus);
                }
            });
        }
    }

    public static void onBidRequestSucceeded(final BidRequestListener bidRequestListener, final String str) {
        if (bidRequestListener != null) {
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.internal.AdPlacement.3
                @Override // java.lang.Runnable
                public void run() {
                    bidRequestListener.onRequestSucceeded(str);
                }
            });
        }
    }

    public static void requestBid(String str, final AdPlacementMetadata<?> adPlacementMetadata, final BidRequestListener bidRequestListener) {
        final String cleanPlacementId = cleanPlacementId(str);
        if (bidRequestListener != null) {
            if (adPlacementMetadata == null) {
                throw new MMException("Metadata must not be null");
            }
            PlayListServer.loadPlayList(adPlacementMetadata.toMap(cleanPlacementId), new PlayListServer.PlayListLoadListener() { // from class: com.millennialmedia.internal.AdPlacement.2
                @Override // com.millennialmedia.internal.playlistserver.PlayListServer.PlayListLoadListener
                public void onLoadFailed(Throwable th) {
                    MMLog.m4067e(AdPlacement.TAG, "Play list load failed", th);
                    AdPlacement.onBidRequestFailed(bidRequestListener, new BidRequestErrorStatus(5));
                }

                @Override // com.millennialmedia.internal.playlistserver.PlayListServer.PlayListLoadListener
                public void onLoaded(PlayList playList) {
                    AdWrapper item = playList.getItem(0);
                    if (!(item instanceof SuperAuctionAdWrapperType.SuperAuctionAdWrapper)) {
                        String str2 = AdPlacement.TAG;
                        MMLog.m4068e(str2, "Invalid playlist item <" + item + ">. Playlist item must be of type super_auction.");
                        AdPlacement.onBidRequestFailed(bidRequestListener, new BidRequestErrorStatus(5));
                        SuperAuctionAdWrapperType.reportBidFailed(playList, null, adPlacementMetadata.getImpressionGroup(), 110);
                        return;
                    }
                    SuperAuctionAdWrapperType.SuperAuctionAdWrapper superAuctionAdWrapper = (SuperAuctionAdWrapperType.SuperAuctionAdWrapper) item;
                    String bidPrice = superAuctionAdWrapper.getBidPrice();
                    if (TextUtils.isEmpty(bidPrice)) {
                        AdPlacement.onBidRequestFailed(bidRequestListener, new BidRequestErrorStatus(BidRequestErrorStatus.INVALID_BID_PRICE));
                        SuperAuctionAdWrapperType.reportBidFailed(playList, superAuctionAdWrapper, adPlacementMetadata.getImpressionGroup(), 110);
                        return;
                    }
                    PlayListServer.addPlaylistToCache(cleanPlacementId, playList, adPlacementMetadata.getImpressionGroup(), Handshake.getSuperAuctionCacheTimeout());
                    if (MMLog.isDebugEnabled()) {
                        String str3 = AdPlacement.TAG;
                        MMLog.m4070d(str3, "Added Playlist to cache for placement id: <" + cleanPlacementId + ">");
                    }
                    AdPlacement.onBidRequestSucceeded(bidRequestListener, bidPrice);
                }
            }, Handshake.getInlineTimeout(), false);
            return;
        }
        throw new MMException("BidRequestListener must not be null");
    }

    public abstract boolean canDestroyNow();

    public void destroy() {
        synchronized (this) {
            if (isDestroyed()) {
                return;
            }
            if (canDestroyNow()) {
                doDestroy();
            } else {
                if (MMLog.isDebugEnabled()) {
                    String str = TAG;
                    MMLog.m4068e(str, "Destroy is pending " + hashCode());
                }
                this.pendingDestroy = true;
            }
        }
    }

    public boolean doPendingDestroy() {
        synchronized (this) {
            if (this.placementState.equals(STATE_DESTROYED)) {
                return true;
            }
            if (!this.pendingDestroy) {
                return false;
            }
            if (MMLog.isDebugEnabled()) {
                String str = TAG;
                MMLog.m4068e(str, "Processing pending destroy " + hashCode());
            }
            doDestroy();
            return true;
        }
    }

    public abstract Map<String, Object> getAdPlacementMetaDataMap();

    public abstract Context getContext();

    public abstract CreativeInfo getCreativeInfo();

    public RequestState getRequestState() {
        this.currentRequestState = new RequestState();
        return this.currentRequestState;
    }

    public boolean isDestroyed() {
        if (this.placementState.equals(STATE_DESTROYED) || this.pendingDestroy) {
            MMLog.m4068e(TAG, "Placement has been destroyed");
            return true;
        }
        return false;
    }

    public abstract void onDestroy();

    public void onIncentiveEarned(final XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent) {
        if (xIncentiveEvent == null) {
            return;
        }
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Incentive earned <" + xIncentiveEvent.eventId + ">");
        }
        final XIncentivizedEventListener xIncentivizedEventListener = this.incentivizedEventListener;
        if (xIncentivizedEventListener == null) {
            return;
        }
        ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.internal.AdPlacement.1
            @Override // java.lang.Runnable
            public void run() {
                if (XIncentivizedEventListener.XIncentiveEvent.INCENTIVE_VIDEO_COMPLETE.equalsIgnoreCase(xIncentiveEvent.eventId)) {
                    xIncentivizedEventListener.onVideoComplete();
                } else {
                    xIncentivizedEventListener.onCustomEvent(xIncentiveEvent);
                }
            }
        });
    }

    public XIncentivizedEventListener xGetIncentivizedListener() {
        return this.incentivizedEventListener;
    }

    public void xSetIncentivizedListener(XIncentivizedEventListener xIncentivizedEventListener) {
        this.incentivizedEventListener = xIncentivizedEventListener;
    }
}
