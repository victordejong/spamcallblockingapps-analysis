package com.google.android.gms.common.api.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import com.google.android.gms.common.util.C2716m;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.common.api.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/c.class */
public final class ComponentCallbacks2C2543c implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: a */
    private static final ComponentCallbacks2C2543c f7162a = new ComponentCallbacks2C2543c();

    /* renamed from: b */
    private final AtomicBoolean f7163b = new AtomicBoolean();

    /* renamed from: c */
    private final AtomicBoolean f7164c = new AtomicBoolean();
    @GuardedBy("sInstance")

    /* renamed from: d */
    private final ArrayList<AbstractC2544a> f7165d = new ArrayList<>();
    @GuardedBy("sInstance")

    /* renamed from: e */
    private boolean f7166e = false;

    /* renamed from: com.google.android.gms.common.api.internal.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/c$a.class */
    public interface AbstractC2544a {
        /* renamed from: a */
        void mo2135a(boolean z);
    }

    private ComponentCallbacks2C2543c() {
    }

    /* renamed from: a */
    public static ComponentCallbacks2C2543c m14331a() {
        return f7162a;
    }

    /* renamed from: a */
    public static void m14330a(Application application) {
        synchronized (f7162a) {
            if (!f7162a.f7166e) {
                application.registerActivityLifecycleCallbacks(f7162a);
                application.registerComponentCallbacks(f7162a);
                f7162a.f7166e = true;
            }
        }
    }

    /* renamed from: b */
    private final void m14326b(boolean z) {
        synchronized (f7162a) {
            ArrayList<AbstractC2544a> arrayList = this.f7165d;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                AbstractC2544a abstractC2544a = arrayList.get(i);
                i++;
                abstractC2544a.mo2135a(z);
            }
        }
    }

    /* renamed from: a */
    public final void m14329a(AbstractC2544a abstractC2544a) {
        synchronized (f7162a) {
            this.f7165d.add(abstractC2544a);
        }
    }

    @TargetApi(16)
    /* renamed from: a */
    public final boolean m14328a(boolean z) {
        if (!this.f7164c.get()) {
            if (C2716m.m13840c()) {
                ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                ActivityManager.getMyMemoryState(runningAppProcessInfo);
                if (!this.f7164c.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                    this.f7163b.set(true);
                }
            }
            return z;
        }
        z = m14327b();
        return z;
    }

    /* renamed from: b */
    public final boolean m14327b() {
        return this.f7163b.get();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.f7163b.compareAndSet(true, false);
        this.f7164c.set(true);
        if (compareAndSet) {
            m14326b(false);
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
        boolean compareAndSet = this.f7163b.compareAndSet(true, false);
        this.f7164c.set(true);
        if (compareAndSet) {
            m14326b(false);
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
        if (i != 20 || !this.f7163b.compareAndSet(false, true)) {
            return;
        }
        this.f7164c.set(true);
        m14326b(true);
    }
}
