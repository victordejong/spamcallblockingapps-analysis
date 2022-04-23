package net.pubnative.lite.sdk.visibility;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.pubnative.lite.sdk.visibility.VisibilityTracker;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/visibility/ImpressionTracker.class */
public class ImpressionTracker {
    private static final double DEFAULT_MIN_VISIBLE_PERCENT = 0.5d;
    private static final int VISIBILITY_CHECK_MILLIS = 250;
    private static final int VISIBILITY_TIME_MILLIS = 1000;
    protected WeakReference<Listener> mImpressionListener = null;
    protected List<View> mTrackingViews = new ArrayList();
    protected HashMap<View, Long> mVisibleViews = new HashMap<>();
    protected Handler mHandler = new Handler(Looper.getMainLooper());
    protected Runnable mImpressionRunnable = new ImpressionRunnable();
    protected VisibilityTracker mVisibilityTracker = null;
    protected VisibilityTracker.Listener mVisibilityListener = new VisibilityTracker.Listener() { // from class: net.pubnative.lite.sdk.visibility.ImpressionTracker.1
        @Override // net.pubnative.lite.sdk.visibility.VisibilityTracker.Listener
        public void onVisibilityCheck(List<View> list, List<View> list2) {
            if (ImpressionTracker.this.mImpressionListener == null && ImpressionTracker.this.mImpressionListener.get() == null) {
                ImpressionTracker.this.clear();
                return;
            }
            for (View view : list) {
                if (!ImpressionTracker.this.mVisibleViews.containsKey(view)) {
                    ImpressionTracker.this.mVisibleViews.put(view, Long.valueOf(SystemClock.uptimeMillis()));
                }
            }
            for (View view2 : list2) {
                ImpressionTracker.this.mVisibleViews.remove(view2);
            }
            if (!ImpressionTracker.this.mVisibleViews.isEmpty()) {
                ImpressionTracker.this.scheduleNextRun();
            }
        }
    };

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/visibility/ImpressionTracker$ImpressionRunnable.class */
    protected class ImpressionRunnable implements Runnable {
        private List<View> mRemovedViews = new ArrayList();

        ImpressionRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (Map.Entry<View, Long> entry : ImpressionTracker.this.mVisibleViews.entrySet()) {
                View key = entry.getKey();
                if (SystemClock.uptimeMillis() - entry.getValue().longValue() >= 1000) {
                    if (!(ImpressionTracker.this.mImpressionListener == null || ImpressionTracker.this.mImpressionListener.get() == null)) {
                        ImpressionTracker.this.mImpressionListener.get().onImpression(key);
                    }
                    this.mRemovedViews.add(key);
                }
            }
            for (View view : this.mRemovedViews) {
                ImpressionManager.stopTrackingView(view);
            }
            this.mRemovedViews.clear();
            if (!ImpressionTracker.this.mVisibleViews.isEmpty()) {
                ImpressionTracker.this.scheduleNextRun();
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/visibility/ImpressionTracker$Listener.class */
    public interface Listener {
        void onImpression(View view);
    }

    public void addView(View view) {
        if (!this.mTrackingViews.contains(view)) {
            this.mTrackingViews.add(view);
            getVisibilityTracker().addView(view, DEFAULT_MIN_VISIBLE_PERCENT);
        }
    }

    public void clear() {
        for (View view : this.mTrackingViews) {
            ImpressionManager.stopTrackingView(view);
        }
        this.mHandler.removeMessages(0);
        this.mTrackingViews.clear();
        this.mVisibleViews.clear();
        VisibilityTracker visibilityTracker = this.mVisibilityTracker;
        if (visibilityTracker != null) {
            visibilityTracker.clear();
            this.mVisibilityTracker = null;
        }
    }

    public boolean equals(Object obj) {
        return obj instanceof View ? this.mTrackingViews.contains(obj) : obj instanceof Listener ? this.mImpressionListener.equals(obj) : super.equals(obj);
    }

    protected VisibilityTracker getVisibilityTracker() {
        if (this.mVisibilityTracker == null) {
            VisibilityTracker visibilityTracker = new VisibilityTracker();
            this.mVisibilityTracker = visibilityTracker;
            visibilityTracker.setListener(this.mVisibilityListener);
        }
        return this.mVisibilityTracker;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public boolean isEmpty() {
        return this.mTrackingViews.isEmpty();
    }

    public void removeView(View view) {
        this.mTrackingViews.remove(view);
        this.mVisibleViews.remove(view);
        getVisibilityTracker().removeView(view);
    }

    protected void scheduleNextRun() {
        if (!this.mHandler.hasMessages(0)) {
            this.mHandler.postDelayed(this.mImpressionRunnable, 250L);
        }
    }

    public void setListener(Listener listener) {
        this.mImpressionListener = new WeakReference<>(listener);
    }
}
