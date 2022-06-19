package net.pubnative.lite.sdk.visibility;

import android.graphics.Rect;
import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/visibility/VisibilityTracker.class */
public class VisibilityTracker {
    private static final String TAG = "VisibilityTracker";
    private static final int VISIBILITY_CHECK_DELAY = 100;
    protected WeakReference<View> mDeviceView = null;
    protected WeakReference<Listener> mListener = null;
    protected List<PubnativeVisibilityTrackerItem> mTrackedViews = new ArrayList();
    protected Handler mHandler = new Handler();
    protected boolean mIsVisibilityCheckScheduled = false;
    protected VisibilityRunnable mVisibilityRunnable = new VisibilityRunnable();
    protected ViewTreeObserver.OnPreDrawListener mOnPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: net.pubnative.lite.sdk.visibility.VisibilityTracker.1
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (VisibilityTracker.this.mListener == null || VisibilityTracker.this.mListener.get() == null) {
                VisibilityTracker.this.clear();
                return true;
            }
            VisibilityTracker.this.scheduleVisibilityCheck();
            return true;
        }
    };

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/visibility/VisibilityTracker$Listener.class */
    public interface Listener {
        void onVisibilityCheck(List<View> list, List<View> list2);
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem.class */
    public class PubnativeVisibilityTrackerItem {
        private final String TAG = PubnativeVisibilityTrackerItem.class.getSimpleName();
        public double mMinVisibilityPercent;
        public View mTrackingView;

        protected PubnativeVisibilityTrackerItem() {
            VisibilityTracker.this = r4;
        }

        public boolean equals(Object obj) {
            return obj instanceof View ? obj.equals(this.mTrackingView) : super.equals(obj);
        }
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable.class */
    public class VisibilityRunnable implements Runnable {
        private Rect mVisibleRect = new Rect();
        private ArrayList<View> mInvisibleViews = new ArrayList<>();
        private ArrayList<View> mVisibleViews = new ArrayList<>();

        VisibilityRunnable() {
            VisibilityTracker.this = r5;
        }

        protected boolean isVisible(PubnativeVisibilityTrackerItem pubnativeVisibilityTrackerItem) {
            View view = pubnativeVisibilityTrackerItem.mTrackingView;
            boolean z = false;
            if (view != null) {
                z = false;
                if (view.isShown()) {
                    z = false;
                    if (view.getParent() != null) {
                        z = false;
                        if (view.getLocalVisibleRect(this.mVisibleRect)) {
                            z = false;
                            if ((this.mVisibleRect.height() * this.mVisibleRect.width()) / (view.getHeight() * view.getWidth()) >= pubnativeVisibilityTrackerItem.mMinVisibilityPercent) {
                                z = true;
                            }
                        }
                    }
                }
            }
            return z;
        }

        @Override // java.lang.Runnable
        public void run() {
            VisibilityTracker.this.mIsVisibilityCheckScheduled = false;
            for (PubnativeVisibilityTrackerItem pubnativeVisibilityTrackerItem : VisibilityTracker.this.mTrackedViews) {
                if (isVisible(pubnativeVisibilityTrackerItem)) {
                    this.mVisibleViews.add(pubnativeVisibilityTrackerItem.mTrackingView);
                } else {
                    this.mInvisibleViews.add(pubnativeVisibilityTrackerItem.mTrackingView);
                }
            }
            if (VisibilityTracker.this.mListener != null && VisibilityTracker.this.mListener.get() != null) {
                VisibilityTracker.this.mListener.get().onVisibilityCheck(this.mVisibleViews, this.mInvisibleViews);
            }
            this.mInvisibleViews.clear();
            this.mVisibleViews.clear();
        }
    }

    public void addView(View view, double d) {
        if (this.mDeviceView == null) {
            this.mDeviceView = new WeakReference<>(view);
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnPreDrawListener(this.mOnPreDrawListener);
            }
        }
        if (containsTrackedView(view)) {
            return;
        }
        PubnativeVisibilityTrackerItem pubnativeVisibilityTrackerItem = new PubnativeVisibilityTrackerItem();
        pubnativeVisibilityTrackerItem.mTrackingView = view;
        pubnativeVisibilityTrackerItem.mMinVisibilityPercent = d;
        this.mTrackedViews.add(pubnativeVisibilityTrackerItem);
        scheduleVisibilityCheck();
    }

    public void clear() {
        View view;
        this.mHandler.removeMessages(0);
        this.mTrackedViews.clear();
        this.mIsVisibilityCheckScheduled = false;
        WeakReference<View> weakReference = this.mDeviceView;
        if (weakReference != null && (view = weakReference.get()) != null && this.mOnPreDrawListener != null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.mOnPreDrawListener);
            }
            this.mOnPreDrawListener = null;
        }
        this.mListener = null;
    }

    protected boolean containsTrackedView(View view) {
        return indexOfTrackedView(view) >= 0;
    }

    protected int indexOfTrackedView(View view) {
        int i = 0;
        while (true) {
            if (i >= this.mTrackedViews.size()) {
                i = -1;
                break;
            } else if (this.mTrackedViews.get(i).equals(view)) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }

    public void removeView(View view) {
        this.mTrackedViews.remove(view);
    }

    protected void scheduleVisibilityCheck() {
        if (!this.mIsVisibilityCheckScheduled) {
            this.mIsVisibilityCheckScheduled = true;
            this.mHandler.postDelayed(this.mVisibilityRunnable, 100L);
        }
    }

    public void setListener(Listener listener) {
        this.mListener = new WeakReference<>(listener);
    }
}
