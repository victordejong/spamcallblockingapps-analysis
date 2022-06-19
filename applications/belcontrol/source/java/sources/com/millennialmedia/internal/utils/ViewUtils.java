package com.millennialmedia.internal.utils;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.ActivityListenerManager;
import java.lang.ref.WeakReference;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/ViewUtils.class */
public class ViewUtils {
    public static final int AT_LEAST_ONE_PIXEL_VIEWABLE = -1;
    private static final String TAG = "ViewUtils";

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/ViewUtils$ViewabilityListener.class */
    public interface ViewabilityListener {
        void onViewableChanged(boolean z);
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher.class */
    public static class ViewabilityWatcher implements ViewTreeObserver.OnPreDrawListener, View.OnLayoutChangeListener, View.OnAttachStateChangeListener, Runnable {
        public volatile ActivityListenerManager.ActivityListener activityListener;
        public volatile ActivityListenerManager.LifecycleState lifecycleState;
        public volatile ViewabilityListener listener;
        public volatile WeakReference<View> viewRef;
        public int minViewabilityPercent = -1;
        public Rect clipRect = new Rect();
        public volatile boolean watching = false;
        public volatile boolean listeningToActivity = false;
        public volatile boolean observingViewTree = false;
        public volatile boolean viewable = false;

        public ViewabilityWatcher(View view, ViewabilityListener viewabilityListener) {
            if (MMLog.isDebugEnabled()) {
                String str = ViewUtils.TAG;
                MMLog.m4070d(str, "Creating viewability watcher <" + this + "> for view <" + view + ">");
            }
            this.viewRef = new WeakReference<>(view);
            this.listener = viewabilityListener;
            this.activityListener = new ActivityListenerManager.ActivityListener() { // from class: com.millennialmedia.internal.utils.ViewUtils.ViewabilityWatcher.1
                @Override // com.millennialmedia.internal.ActivityListenerManager.ActivityListener
                public void onPaused(Activity activity) {
                    ViewabilityWatcher.this.lifecycleState = ActivityListenerManager.LifecycleState.PAUSED;
                    ViewabilityWatcher.this.checkViewable();
                }

                @Override // com.millennialmedia.internal.ActivityListenerManager.ActivityListener
                public void onResumed(Activity activity) {
                    ViewabilityWatcher.this.lifecycleState = ActivityListenerManager.LifecycleState.RESUMED;
                    ViewabilityWatcher.this.checkViewable();
                }
            };
        }

        public void addObserver(View view) {
            if (this.observingViewTree) {
                if (!MMLog.isDebugEnabled()) {
                    return;
                }
                MMLog.m4070d(ViewUtils.TAG, "Trying to set view tree observer when already set");
                return;
            }
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return;
            }
            if (MMLog.isDebugEnabled()) {
                String str = ViewUtils.TAG;
                MMLog.m4070d(str, "Adding ViewTreeObserver.\n\tViewability watcher: " + this + "\n\tViewTreeObserver: " + viewTreeObserver + "\n\tView: " + view);
            }
            viewTreeObserver.addOnPreDrawListener(this);
            this.observingViewTree = true;
        }

        public void checkViewable() {
            ThreadUtils.postOnUiThread(this);
        }

        private boolean isViewViewable(View view) {
            if (view == null) {
                return false;
            }
            if (this.minViewabilityPercent == 0) {
                return true;
            }
            boolean z = false;
            if (this.lifecycleState == ActivityListenerManager.LifecycleState.RESUMED) {
                z = false;
                if (view.isShown()) {
                    z = false;
                    if (view.getAlpha() > 0.0d) {
                        z = false;
                        if (view.getGlobalVisibleRect(this.clipRect)) {
                            long height = this.clipRect.height() * this.clipRect.width();
                            long height2 = view.getHeight() * view.getWidth();
                            z = false;
                            if (height > 0) {
                                int i = this.minViewabilityPercent;
                                if (i == -1) {
                                    return true;
                                }
                                z = false;
                                if (height2 > 0) {
                                    z = false;
                                    if ((height * 100) / height2 >= i) {
                                        z = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return z;
        }

        public void listenToActivity(View view, boolean z) {
            Activity activityForView = ViewUtils.getActivityForView(view);
            if (activityForView == null) {
                return;
            }
            if (z && !this.listeningToActivity) {
                ActivityListenerManager.registerListener(activityForView.hashCode(), this.activityListener);
                this.lifecycleState = ActivityListenerManager.getLifecycleState(activityForView.hashCode());
            } else if (!z && this.listeningToActivity) {
                ActivityListenerManager.unregisterListener(activityForView.hashCode(), this.activityListener);
            }
            this.listeningToActivity = z;
        }

        public void removeObserver(View view) {
            if (!this.observingViewTree) {
                if (!MMLog.isDebugEnabled()) {
                    return;
                }
                MMLog.m4070d(ViewUtils.TAG, "Trying to remove view tree observer when not set");
                return;
            }
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                if (MMLog.isDebugEnabled()) {
                    String str = ViewUtils.TAG;
                    MMLog.m4070d(str, "Removing ViewTreeObserver.\n\tViewability watcher: " + this + "\n\tViewTreeObserver: " + viewTreeObserver + "\n\tView: " + view);
                }
                viewTreeObserver.removeOnPreDrawListener(this);
            }
            this.observingViewTree = false;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (this.watching) {
                checkViewable();
            }
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (this.watching) {
                checkViewable();
                return true;
            }
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            if (MMLog.isDebugEnabled()) {
                String str = ViewUtils.TAG;
                MMLog.m4070d(str, "onViewAttachedToWindow called.\n\tViewability watcher: " + this + "\n\tView: " + view);
            }
            if (this.watching) {
                addObserver(view);
                listenToActivity(view, true);
                checkViewable();
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (MMLog.isDebugEnabled()) {
                String str = ViewUtils.TAG;
                MMLog.m4070d(str, "onViewDetachedFromWindow called.\n\tViewability watcher: " + this + "\n\tView: " + view);
            }
            if (this.watching) {
                removeObserver(view);
                listenToActivity(view, false);
                checkViewable();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            View view = this.viewRef.get();
            boolean isViewViewable = isViewViewable(view);
            if (this.viewable != isViewViewable) {
                this.viewable = isViewViewable;
                if (!this.watching || this.listener == null) {
                    return;
                }
                if (MMLog.isDebugEnabled()) {
                    String str = ViewUtils.TAG;
                    MMLog.m4070d(str, "Notifying listener of viewability change.\n\tViewability watcher: " + this + "\n\tView: " + view + "\n\tViewable: " + this.viewable);
                }
                this.listener.onViewableChanged(this.viewable);
            }
        }

        public void setMinViewabilityPercent(int i) {
            if (MMLog.isDebugEnabled()) {
                String str = ViewUtils.TAG;
                MMLog.m4070d(str, "Setting the viewability percentage.\n\tViewability watcher: " + this + "\n\tPercentage: " + i);
            }
            this.minViewabilityPercent = i;
        }

        public void startWatching() {
            if (MMLog.isDebugEnabled()) {
                String str = ViewUtils.TAG;
                MMLog.m4070d(str, "Starting watcher.\n\tViewability watcher: " + this + "\n\tView: " + this.viewRef.get());
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.utils.ViewUtils.ViewabilityWatcher.2
                @Override // java.lang.Runnable
                public void run() {
                    View view = ViewabilityWatcher.this.viewRef.get();
                    if (view == null || ViewabilityWatcher.this.watching) {
                        return;
                    }
                    view.addOnAttachStateChangeListener(ViewabilityWatcher.this);
                    view.addOnLayoutChangeListener(ViewabilityWatcher.this);
                    ViewabilityWatcher.this.watching = true;
                    if (view.getWindowToken() != null) {
                        ViewabilityWatcher.this.addObserver(view);
                        ViewabilityWatcher.this.listenToActivity(view, true);
                    }
                    ViewabilityWatcher.this.checkViewable();
                }
            });
        }

        public void stopWatching() {
            if (MMLog.isDebugEnabled()) {
                String str = ViewUtils.TAG;
                MMLog.m4070d(str, "Stopping watcher.\n\tViewability watcher: " + this + "\n\tView: " + this.viewRef.get());
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.utils.ViewUtils.ViewabilityWatcher.3
                @Override // java.lang.Runnable
                public void run() {
                    View view = ViewabilityWatcher.this.viewRef.get();
                    if (view == null || !ViewabilityWatcher.this.watching) {
                        return;
                    }
                    ViewabilityWatcher.this.removeObserver(view);
                    view.removeOnAttachStateChangeListener(ViewabilityWatcher.this);
                    view.removeOnLayoutChangeListener(ViewabilityWatcher.this);
                    ViewabilityWatcher.this.watching = false;
                    ViewabilityWatcher.this.listenToActivity(view, false);
                }
            });
        }
    }

    public static void attachView(ViewGroup viewGroup, View view) {
        attachView(viewGroup, view, null);
    }

    public static void attachView(ViewGroup viewGroup, View view, ViewGroup.LayoutParams layoutParams) {
        Context context;
        if (view.getParent() != null) {
            removeFromParent(view);
        }
        Context context2 = view.getContext();
        if ((context2 instanceof MutableContextWrapper) && context2 != (context = viewGroup.getContext())) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, "Changing view context to match parent context");
            }
            ((MutableContextWrapper) context2).setBaseContext(context);
        }
        if (layoutParams != null) {
            viewGroup.addView(view, layoutParams);
        } else {
            viewGroup.addView(view);
        }
    }

    public static int convertDipsToPixels(int i) {
        int ceil = (int) Math.ceil(TypedValue.applyDimension(1, i, EnvironmentUtils.getApplicationContext().getResources().getDisplayMetrics()));
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, String.format("Converted dips: %d, to pixels: %d", Integer.valueOf(i), Integer.valueOf(ceil)));
        }
        return ceil;
    }

    public static int convertPixelsToDips(int i) {
        return (int) (i / EnvironmentUtils.getDisplayDensity());
    }

    public static void convertPixelsToDips(Rect rect) {
        if (rect == null) {
            MMLog.m4068e(TAG, "Unable to convert for null dimensions");
            return;
        }
        float displayDensity = EnvironmentUtils.getDisplayDensity();
        int i = rect.right;
        int i2 = rect.left;
        int i3 = (int) ((i - i2) / displayDensity);
        int i4 = rect.bottom;
        int i5 = rect.top;
        int i6 = (int) ((i4 - i5) / displayDensity);
        int i7 = (int) (i2 / displayDensity);
        rect.left = i7;
        int i8 = (int) (i5 / displayDensity);
        rect.top = i8;
        rect.right = i7 + i3;
        rect.bottom = i8 + i6;
        if (!MMLog.isDebugEnabled()) {
            return;
        }
        String str = TAG;
        MMLog.m4070d(str, "Converted dimensions from pixels to dips: " + rect.flattenToString());
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.app.Activity getActivityForView(android.view.View r3) {
        /*
            r0 = r3
            if (r0 == 0) goto L2a
            r0 = r3
            android.content.Context r0 = r0.getContext()
            r4 = r0
        L9:
            r0 = r4
            boolean r0 = r0 instanceof android.content.MutableContextWrapper
            if (r0 == 0) goto L1b
            r0 = r4
            android.content.MutableContextWrapper r0 = (android.content.MutableContextWrapper) r0
            android.content.Context r0 = r0.getBaseContext()
            r4 = r0
            goto L9
        L1b:
            r0 = r4
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L2a
            r0 = r4
            android.app.Activity r0 = (android.app.Activity) r0
            r4 = r0
            goto L2c
        L2a:
            r0 = 0
            r4 = r0
        L2c:
            boolean r0 = com.millennialmedia.MMLog.isDebugEnabled()
            if (r0 == 0) goto L67
            java.lang.String r0 = com.millennialmedia.internal.utils.ViewUtils.TAG
            r5 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Found activity <"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = "> for view <"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r3
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = ">"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.toString()
            com.millennialmedia.MMLog.m4070d(r0, r1)
        L67:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.utils.ViewUtils.getActivityForView(android.view.View):android.app.Activity");
    }

    public static int getActivityHashForView(View view) {
        int i;
        Activity activityForView = getActivityForView(view);
        if (activityForView == null) {
            MMLog.m4068e(TAG, "Unable to get activity hash");
            i = -1;
        } else {
            i = activityForView.hashCode();
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, String.format(Locale.getDefault(), "Found activity hash code <%d> for view <%s>", Integer.valueOf(i), view.toString()));
        }
        return i;
    }

    public static Rect getContentDimensions(View view, Rect rect) {
        String str;
        String str2;
        if (view == null) {
            str = TAG;
            str2 = "Unable to calculate content dimensions for null view";
        } else {
            ViewGroup decorView = getDecorView(view);
            if (decorView != null) {
                Rect rect2 = rect;
                if (rect == null) {
                    rect2 = new Rect();
                }
                decorView.getWindowVisibleDisplayFrame(rect2);
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, String.format("Content dimensions for View <%s>: %s", view, rect2.flattenToString()));
                }
                return rect2;
            }
            str = TAG;
            str2 = "Unable to calculate content for null root view";
        }
        MMLog.m4068e(str, str2);
        return null;
    }

    public static ViewGroup getDecorView(View view) {
        Activity activityForView = getActivityForView(view);
        ViewGroup viewGroup = null;
        ViewGroup decorView = activityForView != null ? activityForView.getWindow().getDecorView() : view != null ? view.getRootView() : null;
        if (decorView instanceof ViewGroup) {
            viewGroup = decorView;
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, String.format("Found decor view <%s> for view <%s>", viewGroup, view));
        }
        return viewGroup;
    }

    public static ViewGroup getParentContainer(View view) {
        ViewParent parent = view.getParent();
        if (!(parent instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) parent;
    }

    public static Rect getViewDimensionsOnScreen(View view, Rect rect) {
        if (view == null) {
            MMLog.m4068e(TAG, "Unable to calculate view dimensions for null view");
            return null;
        }
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        rect2.left = i;
        rect2.top = iArr[1];
        rect2.right = i + view.getWidth();
        rect2.bottom = rect2.top + view.getHeight();
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, String.format("On screen dimensions for View <%s>: %s", view, rect2.flattenToString()));
        }
        return rect2;
    }

    public static Rect getViewDimensionsRelativeToContent(View view, Rect rect) {
        Rect viewDimensionsOnScreen = getViewDimensionsOnScreen(view, rect);
        if (viewDimensionsOnScreen != null) {
            ViewGroup decorView = getDecorView(view);
            if (decorView == null) {
                MMLog.m4068e(TAG, "Unable to calculate dimensions for null root view");
                return null;
            }
            Rect rect2 = new Rect();
            decorView.getWindowVisibleDisplayFrame(rect2);
            viewDimensionsOnScreen.top -= rect2.top;
            viewDimensionsOnScreen.bottom -= rect2.top;
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, String.format("Dimensions relative to content for View <%s>: %s", view, viewDimensionsOnScreen != null ? viewDimensionsOnScreen.flattenToString() : "null"));
        }
        return viewDimensionsOnScreen;
    }

    public static Point getViewPositionOnScreen(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new Point(iArr[0], iArr[1]);
    }

    public static boolean isChild(ViewGroup viewGroup, View view) {
        ViewParent parent = view.getParent();
        boolean z = false;
        if (parent instanceof ViewGroup) {
            z = false;
            if (((ViewGroup) parent) == viewGroup) {
                z = true;
            }
        }
        return z;
    }

    public static void removeFromParent(View view) {
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(view);
        } else if (!MMLog.isDebugEnabled()) {
        } else {
            MMLog.m4070d(TAG, "Unable to remove view from parent, no valid parent view found");
        }
    }
}
