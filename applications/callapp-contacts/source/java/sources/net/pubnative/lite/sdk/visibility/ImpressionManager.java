package net.pubnative.lite.sdk.visibility;

import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import net.pubnative.lite.sdk.visibility.ImpressionTracker;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/visibility/ImpressionManager.class */
public class ImpressionManager {
    private static final String TAG = "ImpressionManager";
    private static ImpressionManager instance;
    protected List<ImpressionTracker> mTrackers;

    private ImpressionManager() {
    }

    public static ImpressionManager getInstance() {
        if (instance == null) {
            ImpressionManager impressionManager = new ImpressionManager();
            instance = impressionManager;
            impressionManager.mTrackers = new ArrayList();
        }
        return instance;
    }

    public static void startTrackingView(View view, ImpressionTracker.Listener listener) {
        getInstance().addView(view, listener);
    }

    public static void stopTrackingAll(ImpressionTracker.Listener listener) {
        getInstance().stopTracking(listener);
    }

    public static void stopTrackingView(View view) {
        getInstance().removeView(view);
    }

    protected void addView(View view, ImpressionTracker.Listener listener) {
        ImpressionTracker impressionTracker;
        if (view == null) {
            Log.w(TAG, "trying to start tracking null view, dropping this calll");
        } else if (listener == null) {
            Log.w(TAG, "trying to start tracking with null listener");
        } else {
            if (containsTracker(view)) {
                if (!this.mTrackers.get(indexOfTracker(view)).equals(listener)) {
                    removeView(view);
                }
            }
            if (containsTracker(listener)) {
                impressionTracker = this.mTrackers.get(indexOfTracker(view));
            } else {
                ImpressionTracker impressionTracker2 = new ImpressionTracker();
                impressionTracker2.setListener(listener);
                this.mTrackers.add(impressionTracker2);
                impressionTracker = impressionTracker2;
            }
            impressionTracker.addView(view);
        }
    }

    protected boolean containsTracker(View view) {
        return indexOfTracker(view) >= 0;
    }

    protected boolean containsTracker(ImpressionTracker.Listener listener) {
        return indexOfTracker(listener) >= 0;
    }

    protected int indexOfTracker(View view) {
        int i = 0;
        while (true) {
            if (i >= this.mTrackers.size()) {
                i = -1;
                break;
            } else if (this.mTrackers.get(i).equals(view)) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }

    protected int indexOfTracker(ImpressionTracker.Listener listener) {
        int i = 0;
        while (true) {
            if (i >= this.mTrackers.size()) {
                i = -1;
                break;
            } else if (this.mTrackers.get(i).equals(listener)) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }

    protected void removeView(View view) {
        if (view == null) {
            Log.w(TAG, "trying to remove null view, dropping this call");
        } else if (!containsTracker(view)) {
        } else {
            ImpressionTracker impressionTracker = this.mTrackers.get(indexOfTracker(view));
            impressionTracker.removeView(view);
            if (!impressionTracker.isEmpty()) {
                return;
            }
            impressionTracker.clear();
            this.mTrackers.remove(impressionTracker);
        }
    }

    protected void stopTracking(ImpressionTracker.Listener listener) {
        if (listener == null) {
            Log.w(TAG, "trying to remove all views from null listener, dropping this call");
        } else if (!containsTracker(listener)) {
        } else {
            this.mTrackers.get(indexOfTracker(listener)).clear();
            this.mTrackers.remove(listener);
        }
    }
}
