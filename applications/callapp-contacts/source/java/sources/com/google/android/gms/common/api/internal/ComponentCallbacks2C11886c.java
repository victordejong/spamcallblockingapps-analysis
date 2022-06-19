package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.common.api.internal.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/c.class */
public final class ComponentCallbacks2C11886c implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: c */
    private static final ComponentCallbacks2C11886c f39324c = new ComponentCallbacks2C11886c();

    /* renamed from: a */
    final AtomicBoolean f39325a = new AtomicBoolean();

    /* renamed from: b */
    final AtomicBoolean f39326b = new AtomicBoolean();

    /* renamed from: d */
    private final ArrayList<AbstractC11887a> f39327d = new ArrayList<>();

    /* renamed from: e */
    private boolean f39328e = false;

    /* renamed from: com.google.android.gms.common.api.internal.c$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/c$a.class */
    public interface AbstractC11887a {
        /* renamed from: a */
        void mo8565a(boolean z);
    }

    private ComponentCallbacks2C11886c() {
    }

    /* renamed from: a */
    public static ComponentCallbacks2C11886c m19367a() {
        return f39324c;
    }

    /* renamed from: a */
    public static void m19366a(Application application) {
        ComponentCallbacks2C11886c componentCallbacks2C11886c = f39324c;
        synchronized (componentCallbacks2C11886c) {
            if (!componentCallbacks2C11886c.f39328e) {
                application.registerActivityLifecycleCallbacks(componentCallbacks2C11886c);
                application.registerComponentCallbacks(componentCallbacks2C11886c);
                componentCallbacks2C11886c.f39328e = true;
            }
        }
    }

    /* renamed from: a */
    private final void m19364a(boolean z) {
        synchronized (f39324c) {
            Iterator<AbstractC11887a> it2 = this.f39327d.iterator();
            while (it2.hasNext()) {
                it2.next().mo8565a(z);
            }
        }
    }

    /* renamed from: a */
    public final void m19365a(AbstractC11887a abstractC11887a) {
        synchronized (f39324c) {
            this.f39327d.add(abstractC11887a);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.f39325a.compareAndSet(true, false);
        this.f39326b.set(true);
        if (compareAndSet) {
            m19364a(false);
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
        boolean compareAndSet = this.f39325a.compareAndSet(true, false);
        this.f39326b.set(true);
        if (compareAndSet) {
            m19364a(false);
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
        if (i != 20 || !this.f39325a.compareAndSet(false, true)) {
            return;
        }
        this.f39326b.set(true);
        m19364a(true);
    }
}
