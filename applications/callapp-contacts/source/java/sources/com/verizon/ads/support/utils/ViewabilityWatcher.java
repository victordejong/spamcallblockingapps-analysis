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

    /* renamed from: j */
    private static final Logger f61724j = Logger.getInstance(ViewabilityWatcher.class);

    /* renamed from: d */
    volatile ActivityStateManager.ActivityState f61728d;
    public float exposedPercentage;

    /* renamed from: g */
    volatile WeakReference<View> f61731g;

    /* renamed from: h */
    volatile ViewabilityListener f61732h;

    /* renamed from: i */
    volatile ActivityStateManager.ActivityObserver f61733i;
    public Rect mbr;

    /* renamed from: a */
    int f61725a = -1;

    /* renamed from: b */
    Rect f61726b = new Rect();

    /* renamed from: c */
    volatile boolean f61727c = false;

    /* renamed from: e */
    volatile boolean f61729e = false;

    /* renamed from: f */
    volatile boolean f61730f = false;
    public volatile boolean viewable = false;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener.class */
    public interface ViewabilityListener {
        void onViewableChanged(boolean z);
    }

    public ViewabilityWatcher(View view, ViewabilityListener viewabilityListener) {
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f61724j;
            logger.m5567d("Creating viewability watcher <" + this + "> for view <" + view + ">");
        }
        this.f61731g = new WeakReference<>(view);
        this.f61732h = viewabilityListener;
        this.f61733i = new ActivityStateManager.ActivityObserver() { // from class: com.verizon.ads.support.utils.ViewabilityWatcher.1
            @Override // com.verizon.ads.ActivityStateManager.ActivityObserver
            public void onPaused(Activity activity) {
                ViewabilityWatcher.this.f61728d = ActivityStateManager.ActivityState.PAUSED;
                ThreadUtils.postOnUiThread(ViewabilityWatcher.this);
            }

            @Override // com.verizon.ads.ActivityStateManager.ActivityObserver
            public void onResumed(Activity activity) {
                ViewabilityWatcher.this.f61728d = ActivityStateManager.ActivityState.RESUMED;
                ThreadUtils.postOnUiThread(ViewabilityWatcher.this);
            }
        };
    }

    /* renamed from: a */
    public void m5318a(View view) {
        if (this.f61730f) {
            if (!Logger.isLogLevelEnabled(3)) {
                return;
            }
            f61724j.m5567d("Trying to set view tree observer when already set");
            return;
        }
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f61724j;
            logger.m5567d("Adding ViewTreeObserver.\n\tViewability watcher: " + this + "\n\tViewTreeObserver: " + viewTreeObserver + "\n\tView: " + view);
        }
        viewTreeObserver.addOnPreDrawListener(this);
        this.f61730f = true;
    }

    /* renamed from: a */
    public void m5317a(View view, boolean z) {
        Activity activityForView = ViewUtils.getActivityForView(view);
        if (activityForView == null) {
            return;
        }
        if (z && !this.f61729e) {
            VASAds.getActivityStateManager().registerActivityObserver(activityForView, this.f61733i);
            this.f61728d = VASAds.getActivityStateManager().getState(activityForView);
        } else if (!z && this.f61729e) {
            VASAds.getActivityStateManager().unregisterActivityObserver(activityForView, this.f61733i);
        }
        this.f61729e = z;
    }

    /* renamed from: b */
    public void m5314b(View view) {
        if (!this.f61730f) {
            if (!Logger.isLogLevelEnabled(3)) {
                return;
            }
            f61724j.m5567d("Trying to remove view tree observer when not set");
            return;
        }
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            if (Logger.isLogLevelEnabled(3)) {
                Logger logger = f61724j;
                logger.m5567d("Removing ViewTreeObserver.\n\tViewability watcher: " + this + "\n\tViewTreeObserver: " + viewTreeObserver + "\n\tView: " + view);
            }
            viewTreeObserver.removeOnPreDrawListener(this);
        }
        this.f61730f = false;
    }

    public int getMinViewabilityPercent() {
        return this.f61725a;
    }

    public View getView() {
        return this.f61731g.get();
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (this.f61727c) {
            ThreadUtils.postOnUiThread(this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        if (this.f61727c) {
            ThreadUtils.postOnUiThread(this);
            return true;
        }
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f61724j;
            logger.m5567d("onViewAttachedToWindow called.\n\tViewability watcher: " + this + "\n\tView: " + view);
        }
        if (this.f61727c) {
            m5318a(view);
            m5317a(view, true);
            ThreadUtils.postOnUiThread(this);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f61724j;
            logger.m5567d("onViewDetachedFromWindow called.\n\tViewability watcher: " + this + "\n\tView: " + view);
        }
        if (this.f61727c) {
            m5314b(view);
            m5317a(view, false);
            ThreadUtils.postOnUiThread(this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b9, code lost:
        if (((r0 * 100) / r0) >= r0) goto L8;
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
            Logger logger = f61724j;
            logger.m5567d("Setting the viewability percentage.\n\tViewability watcher: " + this + "\n\tPercentage: " + i);
        }
        this.f61725a = i;
    }

    public void startWatching() {
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f61724j;
            logger.m5567d("Starting watcher.\n\tViewability watcher: " + this + "\n\tView: " + this.f61731g.get());
        }
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.support.utils.ViewabilityWatcher.2
            @Override // java.lang.Runnable
            public void run() {
                View view = ViewabilityWatcher.this.f61731g.get();
                if (view == null || ViewabilityWatcher.this.f61727c) {
                    return;
                }
                view.addOnAttachStateChangeListener(ViewabilityWatcher.this);
                view.addOnLayoutChangeListener(ViewabilityWatcher.this);
                ViewabilityWatcher.this.f61727c = true;
                if (view.getWindowToken() != null) {
                    ViewabilityWatcher.this.m5318a(view);
                    ViewabilityWatcher.this.m5317a(view, true);
                }
                ThreadUtils.postOnUiThread(ViewabilityWatcher.this);
            }
        });
    }

    public void stopWatching() {
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f61724j;
            logger.m5567d("Stopping watcher.\n\tViewability watcher: " + this + "\n\tView: " + this.f61731g.get());
        }
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.support.utils.ViewabilityWatcher.3
            @Override // java.lang.Runnable
            public void run() {
                View view = ViewabilityWatcher.this.f61731g.get();
                if (view == null || !ViewabilityWatcher.this.f61727c) {
                    return;
                }
                ViewabilityWatcher.this.m5314b(view);
                view.removeOnAttachStateChangeListener(ViewabilityWatcher.this);
                view.removeOnLayoutChangeListener(ViewabilityWatcher.this);
                ViewabilityWatcher.this.f61727c = false;
                ViewabilityWatcher.this.m5317a(view, false);
            }
        });
    }
}
