package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/c.class */
public final class c implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: c  reason: collision with root package name */
    private static final c f22716c = new c();

    /* renamed from: a  reason: collision with root package name */
    final AtomicBoolean f22717a = new AtomicBoolean();

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f22718b = new AtomicBoolean();

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<a> f22719d = new ArrayList<>();
    private boolean e = false;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/c$a.class */
    public interface a {
        void a(boolean z);
    }

    private c() {
    }

    public static c a() {
        return f22716c;
    }

    public static void a(Application application) {
        c cVar = f22716c;
        synchronized (cVar) {
            if (!cVar.e) {
                application.registerActivityLifecycleCallbacks(cVar);
                application.registerComponentCallbacks(cVar);
                cVar.e = true;
            }
        }
    }

    private final void a(boolean z) {
        synchronized (f22716c) {
            Iterator<a> it2 = this.f22719d.iterator();
            while (it2.hasNext()) {
                it2.next().a(z);
            }
        }
    }

    public final void a(a aVar) {
        synchronized (f22716c) {
            this.f22719d.add(aVar);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.f22717a.compareAndSet(true, false);
        this.f22718b.set(true);
        if (compareAndSet) {
            a(false);
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
        boolean compareAndSet = this.f22717a.compareAndSet(true, false);
        this.f22718b.set(true);
        if (compareAndSet) {
            a(false);
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
        if (i == 20 && this.f22717a.compareAndSet(false, true)) {
            this.f22718b.set(true);
            a(true);
        }
    }
}
