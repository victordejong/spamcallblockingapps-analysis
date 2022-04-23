package io.bidmachine.core;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/core/VisibilityTracker.class */
public class VisibilityTracker {
    private static final int NO_TRACK = -1;
    private static final ArrayList<a> holders = new ArrayList<>();

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/VisibilityTracker$VisibilityChangeCallback.class */
    public interface VisibilityChangeCallback {
        void onViewShown();

        void onViewTrackingFinished();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/VisibilityTracker$a.class */
    public static final class a {
        private static final int AFD_MAX_COUNT_OVERLAPPED_VIEWS = 3;
        private static final int CHECK_DELAY = 100;
        private final VisibilityChangeCallback callback;
        private final Runnable checkRunnable = new Runnable() { // from class: io.bidmachine.core.VisibilityTracker.a.2
            @Override // java.lang.Runnable
            public final void run() {
                if (!a.this.check()) {
                    a.this.isCheckerScheduled = false;
                    a.this.scheduleChecker();
                }
            }
        };
        private final Runnable finishRunnable = new Runnable() { // from class: io.bidmachine.core.VisibilityTracker.a.3
            @Override // java.lang.Runnable
            public final void run() {
                a.this.release();
            }
        };
        private final boolean ignoreCheckWindowFocus;
        private boolean isCheckerScheduled;
        private boolean isFinishedRequested;
        private boolean isFinishedTracked;
        private boolean isShownTracked;
        private long lastShownTimeMs;
        private ViewTreeObserver.OnPreDrawListener preDrawListener;
        private final long requiredOnScreenTime;
        private final WeakReference<View> viewReference;
        private final float visibilityPercent;

        a(View view, long j, float f, boolean z, VisibilityChangeCallback visibilityChangeCallback) {
            this.viewReference = new WeakReference<>(view);
            this.requiredOnScreenTime = j;
            this.visibilityPercent = f;
            this.ignoreCheckWindowFocus = z;
            this.callback = visibilityChangeCallback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean check() {
            View view = this.viewReference.get();
            if (view == null) {
                release();
                return true;
            } else if (this.isShownTracked && this.isFinishedTracked) {
                release();
                return true;
            } else if (isOnTop(view, this.visibilityPercent, this.ignoreCheckWindowFocus)) {
                if (!this.isShownTracked) {
                    this.callback.onViewShown();
                    this.isShownTracked = true;
                }
                if (this.isFinishedRequested || this.isFinishedTracked) {
                    return false;
                }
                Utils.onUiThread(this.finishRunnable, this.requiredOnScreenTime);
                this.lastShownTimeMs = System.currentTimeMillis();
                this.isFinishedRequested = true;
                return false;
            } else if (this.isFinishedTracked) {
                return false;
            } else {
                Utils.cancelUiThreadTask(this.finishRunnable);
                this.isFinishedRequested = false;
                this.lastShownTimeMs = 0L;
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void release() {
            View view = this.viewReference.get();
            if (view != null) {
                Logger.log("Stop tracking - " + view.toString());
                if (this.isShownTracked && !this.isFinishedTracked && this.requiredOnScreenTime > -1 && this.lastShownTimeMs > 0 && System.currentTimeMillis() - this.lastShownTimeMs >= this.requiredOnScreenTime) {
                    this.isFinishedTracked = true;
                    this.callback.onViewTrackingFinished();
                }
                view.getViewTreeObserver().removeOnPreDrawListener(this.preDrawListener);
            }
            Utils.cancelUiThreadTask(this.checkRunnable);
            Utils.cancelUiThreadTask(this.finishRunnable);
            synchronized (VisibilityTracker.holders) {
                VisibilityTracker.holders.remove(this);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void scheduleChecker() {
            if (!this.isCheckerScheduled) {
                this.isCheckerScheduled = true;
                Utils.onUiThread(this.checkRunnable, 100L);
            }
        }

        private static float viewNotOverlappedAreaPercent(Rect rect, Rect rect2) {
            int width = rect.width() * rect.height();
            if (width == 0) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            return (width - (Math.max(0, Math.min(rect.right, rect2.right) - Math.max(rect.left, rect2.left)) * Math.max(0, Math.min(rect.bottom, rect2.bottom) - Math.max(rect.top, rect2.top)))) / width;
        }

        public final boolean isOnTop(View view, float f, boolean z) {
            try {
                Rect rect = new Rect();
                ViewGroup viewGroup = view;
                if (!viewGroup.getGlobalVisibleRect(rect)) {
                    Logger.log(String.format("Show wasn't tracked: global visibility verification failed - %s", view.toString()));
                    return false;
                } else if (!view.isShown()) {
                    Logger.log(String.format("Show wasn't tracked: view visibility verification failed - %s", view.toString()));
                    return false;
                } else if (Utils.isViewTransparent(view)) {
                    Logger.log(String.format("Show wasn't tracked: view transparent verification failed - %s", view.toString()));
                    return false;
                } else if (z || view.hasWindowFocus()) {
                    float width = view.getWidth() * view.getHeight();
                    if (width == BitmapDescriptorFactory.HUE_RED) {
                        Logger.log(String.format("Show wasn't tracked: view size verification failed - %s", view.toString()));
                        return false;
                    }
                    float width2 = (rect.width() * rect.height()) / width;
                    if (width2 < f) {
                        Logger.log(String.format("Show wasn't tracked: ad view not completely visible (%s / %s) - %s", Float.valueOf(width2), Float.valueOf(f), view.toString()));
                        return false;
                    }
                    View view2 = (View) view.getParent();
                    while (view2 != null && view2.getId() != 16908290) {
                        view2 = (View) view2.getParent();
                    }
                    if (view2 == null) {
                        Logger.log(String.format("Show wasn't tracked: activity content layout not found - %s", view.toString()));
                        return false;
                    }
                    Rect rect2 = new Rect();
                    view2.getGlobalVisibleRect(rect2);
                    if (!Rect.intersects(rect, rect2)) {
                        Logger.log(String.format("Show wasn't tracked: ad view is out of current window - %s", view.toString()));
                        return false;
                    }
                    ViewGroup viewGroup2 = (ViewGroup) view.getRootView();
                    ViewGroup viewGroup3 = (ViewGroup) view.getParent();
                    int i = 0;
                    while (viewGroup3 != null) {
                        for (int indexOfChild = viewGroup3.indexOfChild(viewGroup) + 1; indexOfChild < viewGroup3.getChildCount(); indexOfChild++) {
                            View childAt = viewGroup3.getChildAt(indexOfChild);
                            i = i;
                            if (childAt.getVisibility() == 0) {
                                childAt.getLocationInWindow(new int[2]);
                                Rect viewRectangle = Utils.getViewRectangle(childAt);
                                i = i;
                                if (Rect.intersects(rect, viewRectangle)) {
                                    float viewNotOverlappedAreaPercent = viewNotOverlappedAreaPercent(rect, viewRectangle);
                                    Logger.log(String.format("Show wasn't tracked: ad view is overlapped by another visible view (%s), visible percent: %s / %s", childAt.toString(), Float.valueOf(viewNotOverlappedAreaPercent), Float.valueOf(f)));
                                    if (viewNotOverlappedAreaPercent < f) {
                                        Logger.log(String.format("Show wasn't tracked: ad view is covered by another view - %s", viewGroup.toString()));
                                        return false;
                                    }
                                    int i2 = i + 1;
                                    i = i2;
                                    if (i2 >= 3) {
                                        Logger.log(String.format("Show wasn't tracked: ad view is covered by too many views - %s", viewGroup.toString()));
                                        return false;
                                    }
                                } else {
                                    continue;
                                }
                            }
                        }
                        if (viewGroup3 != viewGroup2) {
                            viewGroup3 = (ViewGroup) viewGroup3.getParent();
                            viewGroup = viewGroup3;
                        } else {
                            viewGroup3 = null;
                        }
                    }
                    return true;
                } else {
                    Logger.log(String.format("Show wasn't tracked: window focus verification failed - %s", view.toString()));
                    return false;
                }
            } catch (Exception e) {
                Logger.log(e.getMessage());
                return true;
            }
        }

        public final void start() {
            View view = this.viewReference.get();
            if (view == null) {
                release();
                return;
            }
            Logger.log(String.format("Start tracking - %s", view.toString()));
            if (this.preDrawListener == null) {
                this.preDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: io.bidmachine.core.VisibilityTracker.a.1
                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public final boolean onPreDraw() {
                        a.this.scheduleChecker();
                        return true;
                    }
                };
            }
            view.getViewTreeObserver().addOnPreDrawListener(this.preDrawListener);
        }
    }

    public static void startTracking(View view, long j, float f, boolean z, VisibilityChangeCallback visibilityChangeCallback) {
        ArrayList<a> arrayList = holders;
        synchronized (arrayList) {
            stopTracking(view);
            a aVar = new a(view, j, f, z, visibilityChangeCallback);
            arrayList.add(aVar);
            aVar.start();
        }
    }

    public static void stopTracking(View view) {
        ArrayList<a> arrayList = holders;
        synchronized (arrayList) {
            Iterator<a> it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                a next = it2.next();
                if (next.viewReference.get() == view) {
                    next.release();
                    break;
                }
            }
        }
    }
}
