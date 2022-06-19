package com.millennialmedia.internal;

import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.adadapters.AdAdapter;
import com.millennialmedia.internal.adwrapper.AdWrapper;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/PlayList.class */
public class PlayList {
    private static final String TAG = "PlayList";
    public static final String VERSION = "2";
    public String handshakeConfig;
    public String placementId;
    public String placementName;
    public String playListVersion;
    public String responseId;
    public String siteId;
    private final List<AdWrapper> playListItems = new ArrayList();
    private int currentPlayListPosition = 0;
    public boolean reportingEnabled = false;

    public void addItem(AdWrapper adWrapper) {
        if (adWrapper == null) {
            if (!MMLog.isDebugEnabled()) {
                return;
            }
            MMLog.m4070d(TAG, "Unable to add null playlist item");
            return;
        }
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Adding playlist item.\n\tPlaylist: " + this + "\n\tPlaylist item: " + adWrapper + "\n\tPlaylist item ID: " + adWrapper.itemId);
        }
        this.playListItems.add(adWrapper);
    }

    public void enableReporting() {
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Enabling reporting for placement id <" + this.placementId + "> and playlist <" + this + ">");
        }
        this.reportingEnabled = true;
    }

    public AdWrapper getItem(int i) {
        return this.playListItems.size() > i ? this.playListItems.get(i) : null;
    }

    public AdAdapter getNextAdAdapter(AdPlacement adPlacement, AdPlacementReporter.PlayListItemReporter playListItemReporter) {
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Attempting to get ad adapter for placement.\n\tPlacement: " + adPlacement + "\n\tPlacement ID: " + adPlacement.placementId);
        }
        AtomicInteger atomicInteger = new AtomicInteger(-3);
        synchronized (this) {
            if (this.currentPlayListPosition >= this.playListItems.size()) {
                if (playListItemReporter != null) {
                    playListItemReporter.status = -3;
                }
                return null;
            }
            List<AdWrapper> list = this.playListItems;
            int i = this.currentPlayListPosition;
            this.currentPlayListPosition = i + 1;
            AdWrapper adWrapper = list.get(i);
            if (playListItemReporter != null) {
                playListItemReporter.itemId = adWrapper.itemId;
            }
            if (MMLog.isDebugEnabled()) {
                String str2 = TAG;
                MMLog.m4070d(str2, "Processing playlist item ID: " + adWrapper.itemId);
            }
            AdAdapter adAdapter = adWrapper.getAdAdapter(adPlacement, playListItemReporter, atomicInteger);
            if (adAdapter != null) {
                atomicInteger.set(1);
                if (adWrapper != null) {
                    adAdapter.setAdMetadata(adWrapper.adMetadata);
                }
            }
            if (playListItemReporter != null) {
                playListItemReporter.status = atomicInteger.get();
            }
            return adAdapter;
        }
    }

    public boolean hasNext() {
        return this.currentPlayListPosition < this.playListItems.size();
    }
}
