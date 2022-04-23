package com.verizon.ads.support.utils;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import com.verizon.ads.ActivityStateManager;
import com.verizon.ads.Logger;
import com.verizon.ads.VASAds;
import com.verizon.ads.utils.ThreadUtils;
import java.lang.ref.WeakReference;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/utils/ViewabilityWatcher.class */
public class ViewabilityWatcher implements View.OnAttachStateChangeListener, View.OnLayoutChangeListener, ViewTreeObserver.OnPreDrawListener, Runnable {
    public static final int AT_LEAST_ONE_PIXEL_VIEWABLE = -1;
    private static final Logger j = Logger.getInstance(ViewabilityWatcher.class);

    /* renamed from: d  reason: collision with root package name */
    volatile ActivityStateManager.ActivityState f35641d;
    public float exposedPercentage;
    volatile WeakReference<View> g;
    volatile ViewabilityListener h;
    volatile ActivityStateManager.ActivityObserver i;
    public Rect mbr;

    /* renamed from: a  reason: collision with root package name */
    int f35638a = -1;

    /* renamed from: b  reason: collision with root package name */
    Rect f35639b = new Rect();

    /* renamed from: c  reason: collision with root package name */
    volatile boolean f35640c = false;
    volatile boolean e = false;
    volatile boolean f = false;
    public volatile boolean viewable = false;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener.class */
    public interface ViewabilityListener {
        void onViewableChanged(boolean z);
    }

    public ViewabilityWatcher(View view, ViewabilityListener viewabilityListener) {
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = j;
            logger.d("Creating viewability watcher <" + this + "> for view <" + view + ">");
        }
        this.g = new WeakReference<>(view);
        this.h = viewabilityListener;
        this.i = new ActivityStateManager.ActivityObserver() { // from class: com.verizon.ads.support.utils.ViewabilityWatcher.1
            @Override // com.verizon.ads.ActivityStateManager.ActivityObserver
            public void onPaused(Activity activity) {
                ViewabilityWatcher.this.f35641d = ActivityStateManager.ActivityState.PAUSED;
                ThreadUtils.postOnUiThread(ViewabilityWatcher.this);
            }

            @Override // com.verizon.ads.ActivityStateManager.ActivityObserver
            public void onResumed(Activity activity) {
                ViewabilityWatcher.this.f35641d = ActivityStateManager.ActivityState.RESUMED;
                ThreadUtils.postOnUiThread(ViewabilityWatcher.this);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view) {
        if (!this.f) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                if (Logger.isLogLevelEnabled(3)) {
                    Logger logger = j;
                    logger.d("Adding ViewTreeObserver.\n\tViewability watcher: " + this + "\n\tViewTreeObserver: " + viewTreeObserver + "\n\tView: " + view);
                }
                viewTreeObserver.addOnPreDrawListener(this);
                this.f = true;
            }
        } else if (Logger.isLogLevelEnabled(3)) {
            j.d("Trying to set view tree observer when already set");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, boolean z) {
        Activity activityForView = ViewUtils.getActivityForView(view);
        if (activityForView != null) {
            if (z && !this.e) {
                VASAds.getActivityStateManager().registerActivityObserver(activityForView, this.i);
                this.f35641d = VASAds.getActivityStateManager().getState(activityForView);
            } else if (!z && this.e) {
                VASAds.getActivityStateManager().unregisterActivityObserver(activityForView, this.i);
            }
            this.e = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(View view) {
        if (this.f) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                if (Logger.isLogLevelEnabled(3)) {
                    Logger logger = j;
                    logger.d("Removing ViewTreeObserver.\n\tViewability watcher: " + this + "\n\tViewTreeObserver: " + viewTreeObserver + "\n\tView: " + view);
                }
                viewTreeObserver.removeOnPreDrawListener(this);
            }
            this.f = false;
        } else if (Logger.isLogLevelEnabled(3)) {
            j.d("Trying to remove view tree observer when not set");
        }
    }

    public int getMinViewabilityPercent() {
        return this.f35638a;
    }

    public View getView() {
        return this.g.get();
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (this.f35640c) {
            ThreadUtils.postOnUiThread(this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        if (!this.f35640c) {
            return true;
        }
        ThreadUtils.postOnUiThread(this);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = j;
            logger.d("onViewAttachedToWindow called.\n\tViewability watcher: " + this + "\n\tView: " + view);
        }
        if (this.f35640c) {
            a(view);
            a(view, true);
            ThreadUtils.postOnUiThread(this);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = j;
            logger.d("onViewDetachedFromWindow called.\n\tViewability watcher: " + this + "\n\tView: " + view);
        }
        if (this.f35640c) {
            b(view);
            a(view, false);
            ThreadUtils.postOnUiThread(this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b9, code lost:
        if (((r0 * 100) / r0) >= r0) goto L_0x0023;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.support.utils.ViewabilityWatcher.run():void");
    }

    public void setMinViewabilityPercent(int i) {
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = j;
            logger.d("Setting the viewability percentage.\n\tViewability watcher: " + this + "\n\tPercentage: " + i);
        }
        this.f35638a = i;
    }

    public void startWatching() {
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = j;
            logger.d("Starting watcher.\n\tViewability watcher: " + this + "\n\tView: " + this.g.get());
        }
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.support.utils.ViewabilityWatcher.2
            @Override // java.lang.Runnable
            public void run() {
                View view = ViewabilityWatcher.this.g.get();
                if (view != null && !ViewabilityWatcher.this.f35640c) {
                    view.addOnAttachStateChangeListener(ViewabilityWatcher.this);
                    view.addOnLayoutChangeListener(ViewabilityWatcher.this);
                    ViewabilityWatcher.this.f35640c = true;
                    if (view.getWindowToken() != null) {
                        ViewabilityWatcher.this.a(view);
                        ViewabilityWatcher.this.a(view, true);
                    }
                    ThreadUtils.postOnUiThread(ViewabilityWatcher.this);
                }
            }
        });
    }

    public void stopWatching() {
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = j;
            logger.d("Stopping watcher.\n\tViewability watcher: " + this + "\n\tView: " + this.g.get());
        }
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.support.utils.ViewabilityWatcher.3
            @Override // java.lang.Runnable
            public void run() {
                View view = ViewabilityWatcher.this.g.get();
                if (view != null && ViewabilityWatcher.this.f35640c) {
                    ViewabilityWatcher.this.b(view);
                    view.removeOnAttachStateChangeListener(ViewabilityWatcher.this);
                    view.removeOnLayoutChangeListener(ViewabilityWatcher.this);
                    ViewabilityWatcher.this.f35640c = false;
                    ViewabilityWatcher.this.a(view, false);
                }
            }
        });
    }
}
