package com.google.android.gms.common.api.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.util.C6237o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.common.api.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/c.class */
public final class ComponentCallbacks2C6015c implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: d */
    private static final ComponentCallbacks2C6015c f19225d = new ComponentCallbacks2C6015c();

    /* renamed from: e */
    private final AtomicBoolean f19226e = new AtomicBoolean();

    /* renamed from: f */
    private final AtomicBoolean f19227f = new AtomicBoolean();

    /* renamed from: g */
    private final ArrayList<AbstractC6016a> f19228g = new ArrayList<>();

    /* renamed from: h */
    private boolean f19229h = false;

    /* renamed from: com.google.android.gms.common.api.internal.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/c$a.class */
    public interface AbstractC6016a {
        /* renamed from: a */
        void mo2518a(boolean z);
    }

    private ComponentCallbacks2C6015c() {
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static ComponentCallbacks2C6015c m17432b() {
        return f19225d;
    }

    /* renamed from: c */
    public static void m17431c(@RecentlyNonNull Application application) {
        ComponentCallbacks2C6015c componentCallbacks2C6015c = f19225d;
        synchronized (componentCallbacks2C6015c) {
            if (!componentCallbacks2C6015c.f19229h) {
                application.registerActivityLifecycleCallbacks(componentCallbacks2C6015c);
                application.registerComponentCallbacks(componentCallbacks2C6015c);
                componentCallbacks2C6015c.f19229h = true;
            }
        }
    }

    /* renamed from: f */
    private final void m17428f(boolean z) {
        synchronized (f19225d) {
            Iterator<AbstractC6016a> it = this.f19228g.iterator();
            while (it.hasNext()) {
                it.next().mo2518a(z);
            }
        }
    }

    /* renamed from: a */
    public void m17433a(@RecentlyNonNull AbstractC6016a abstractC6016a) {
        synchronized (f19225d) {
            this.f19228g.add(abstractC6016a);
        }
    }

    /* renamed from: d */
    public boolean m17430d() {
        return this.f19226e.get();
    }

    @TargetApi(16)
    /* renamed from: e */
    public boolean m17429e(boolean z) {
        if (!this.f19227f.get()) {
            if (!C6237o.m16781c()) {
                return z;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.f19227f.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f19226e.set(true);
            }
        }
        return m17430d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(@RecentlyNonNull Activity activity, Bundle bundle) {
        boolean compareAndSet = this.f19226e.compareAndSet(true, false);
        this.f19227f.set(true);
        if (compareAndSet) {
            m17428f(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(@RecentlyNonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(@RecentlyNonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(@RecentlyNonNull Activity activity) {
        boolean compareAndSet = this.f19226e.compareAndSet(true, false);
        this.f19227f.set(true);
        if (compareAndSet) {
            m17428f(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(@RecentlyNonNull Activity activity, @RecentlyNonNull Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(@RecentlyNonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(@RecentlyNonNull Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(@RecentlyNonNull Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        if (i != 20 || !this.f19226e.compareAndSet(false, true)) {
            return;
        }
        this.f19227f.set(true);
        m17428f(true);
    }
}
