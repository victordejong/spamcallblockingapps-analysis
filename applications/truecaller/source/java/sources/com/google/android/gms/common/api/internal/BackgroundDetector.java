package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/BackgroundDetector.class */
public final class BackgroundDetector implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: e */
    public static final BackgroundDetector f5737e = new BackgroundDetector();

    /* renamed from: a */
    public final AtomicBoolean f5738a = new AtomicBoolean();

    /* renamed from: b */
    public final AtomicBoolean f5739b = new AtomicBoolean();

    /* renamed from: c */
    public final ArrayList<BackgroundStateChangeListener> f5740c = new ArrayList<>();

    /* renamed from: d */
    public boolean f5741d = false;

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener.class */
    public interface BackgroundStateChangeListener {
        @KeepForSdk
        /* renamed from: a */
        void mo4280a(boolean z);
    }

    @KeepForSdk
    private BackgroundDetector() {
    }

    @KeepForSdk
    /* renamed from: a */
    public static void m39040a(Application application) {
        BackgroundDetector backgroundDetector = f5737e;
        synchronized (backgroundDetector) {
            if (!backgroundDetector.f5741d) {
                application.registerActivityLifecycleCallbacks(backgroundDetector);
                application.registerComponentCallbacks(backgroundDetector);
                backgroundDetector.f5741d = true;
            }
        }
    }

    /* renamed from: b */
    public final void m39039b(boolean z) {
        synchronized (f5737e) {
            Iterator<BackgroundStateChangeListener> it = this.f5740c.iterator();
            while (it.hasNext()) {
                it.next().mo4280a(z);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.f5738a.compareAndSet(true, false);
        this.f5739b.set(true);
        if (compareAndSet) {
            m39039b(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        boolean compareAndSet = this.f5738a.compareAndSet(true, false);
        this.f5739b.set(true);
        if (compareAndSet) {
            m39039b(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        if (i != 20 || !this.f5738a.compareAndSet(false, true)) {
            return;
        }
        this.f5739b.set(true);
        m39039b(true);
    }
}
