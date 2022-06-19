package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.common.api.internal.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/a.class */
public final class ComponentCallbacks2C1550a implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: f */
    private static final ComponentCallbacks2C1550a f5805f = new ComponentCallbacks2C1550a();

    /* renamed from: b */
    private final AtomicBoolean f5806b = new AtomicBoolean();

    /* renamed from: c */
    private final AtomicBoolean f5807c = new AtomicBoolean();
    @GuardedBy("sInstance")

    /* renamed from: d */
    private final ArrayList<AbstractC1551a> f5808d = new ArrayList<>();
    @GuardedBy("sInstance")

    /* renamed from: e */
    private boolean f5809e = false;

    /* renamed from: com.google.android.gms.common.api.internal.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/a$a.class */
    public interface AbstractC1551a {
        /* renamed from: a */
        void m8457a(boolean z);
    }

    private ComponentCallbacks2C1550a() {
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static ComponentCallbacks2C1550a m8460b() {
        return f5805f;
    }

    /* renamed from: c */
    public static void m8459c(@RecentlyNonNull Application application) {
        ComponentCallbacks2C1550a componentCallbacks2C1550a = f5805f;
        synchronized (componentCallbacks2C1550a) {
            if (!componentCallbacks2C1550a.f5809e) {
                application.registerActivityLifecycleCallbacks(componentCallbacks2C1550a);
                application.registerComponentCallbacks(componentCallbacks2C1550a);
                componentCallbacks2C1550a.f5809e = true;
            }
        }
    }

    /* renamed from: d */
    private final void m8458d(boolean z) {
        synchronized (f5805f) {
            try {
                Iterator<AbstractC1551a> it = this.f5808d.iterator();
                while (it.hasNext()) {
                    it.next().m8457a(z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public void m8461a(@RecentlyNonNull AbstractC1551a abstractC1551a) {
        synchronized (f5805f) {
            this.f5808d.add(abstractC1551a);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(@RecentlyNonNull Activity activity, Bundle bundle) {
        boolean compareAndSet = this.f5806b.compareAndSet(true, false);
        this.f5807c.set(true);
        if (compareAndSet) {
            m8458d(false);
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
        boolean compareAndSet = this.f5806b.compareAndSet(true, false);
        this.f5807c.set(true);
        if (compareAndSet) {
            m8458d(false);
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
        if (i != 20 || !this.f5806b.compareAndSet(false, true)) {
            return;
        }
        this.f5807c.set(true);
        m8458d(true);
    }
}
