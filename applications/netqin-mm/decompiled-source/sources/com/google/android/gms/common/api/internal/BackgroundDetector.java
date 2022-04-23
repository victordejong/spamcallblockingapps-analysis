package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BackgroundDetector.class */
public final class BackgroundDetector implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: e */
    public static final BackgroundDetector f23087e = new BackgroundDetector();

    /* renamed from: a */
    public final AtomicBoolean f23088a = new AtomicBoolean();

    /* renamed from: b */
    public final AtomicBoolean f23089b = new AtomicBoolean();

    /* renamed from: c */
    public final ArrayList<BackgroundStateChangeListener> f23090c = new ArrayList<>();

    /* renamed from: d */
    public boolean f23091d = false;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener.class */
    public interface BackgroundStateChangeListener {
        @KeepForSdk
        /* renamed from: a */
        void mo17731a(boolean z);
    }

    @KeepForSdk
    /* renamed from: a */
    public static void m17736a(Application application) {
        synchronized (f23087e) {
            if (!f23087e.f23091d) {
                application.registerActivityLifecycleCallbacks(f23087e);
                application.registerComponentCallbacks(f23087e);
                f23087e.f23091d = true;
            }
        }
    }

    @KeepForSdk
    /* renamed from: b */
    public static BackgroundDetector m17733b() {
        return f23087e;
    }

    @KeepForSdk
    /* renamed from: a */
    public final void m17735a(BackgroundStateChangeListener backgroundStateChangeListener) {
        synchronized (f23087e) {
            this.f23090c.add(backgroundStateChangeListener);
        }
    }

    @KeepForSdk
    /* renamed from: a */
    public final boolean m17737a() {
        return this.f23088a.get();
    }

    @KeepForSdk
    /* renamed from: a */
    public final boolean m17734a(boolean z) {
        if (!this.f23089b.get()) {
            if (!PlatformVersion.m17065c()) {
                return z;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.f23089b.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f23088a.set(true);
            }
        }
        return m17737a();
    }

    /* renamed from: b */
    public final void m17732b(boolean z) {
        synchronized (f23087e) {
            try {
                ArrayList<BackgroundStateChangeListener> arrayList = this.f23090c;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    BackgroundStateChangeListener backgroundStateChangeListener = arrayList.get(i);
                    i++;
                    backgroundStateChangeListener.mo17731a(z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.f23088a.compareAndSet(true, false);
        this.f23089b.set(true);
        if (compareAndSet) {
            m17732b(false);
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
        boolean compareAndSet = this.f23088a.compareAndSet(true, false);
        this.f23089b.set(true);
        if (compareAndSet) {
            m17732b(false);
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
        if (i == 20 && this.f23088a.compareAndSet(false, true)) {
            this.f23089b.set(true);
            m17732b(true);
        }
    }
}
