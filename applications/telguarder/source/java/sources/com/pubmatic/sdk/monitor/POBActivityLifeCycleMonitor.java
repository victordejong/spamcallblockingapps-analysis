package com.pubmatic.sdk.monitor;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor.class */
public class POBActivityLifeCycleMonitor implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private AbstractC1897a f600a;

    /* renamed from: b */
    private Application f601b;

    /* renamed from: c */
    private boolean f602c = false;
    public WeakReference<Activity> currentActivity;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.monitor.POBActivityLifeCycleMonitor$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor$a.class */
    public interface AbstractC1897a {
        /* renamed from: a */
        void mo968a(Activity activity);

        void onActivityPaused(Activity activity);

        void onActivityResumed(Activity activity);
    }

    public POBActivityLifeCycleMonitor(Application application) {
        this.f601b = application;
    }

    public Activity getCurrentActivity() {
        WeakReference<Activity> weakReference = this.currentActivity;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        AbstractC1897a abstractC1897a;
        if (!this.f602c && (abstractC1897a = this.f600a) != null) {
            abstractC1897a.mo968a(activity);
        }
        WeakReference<Activity> weakReference = this.currentActivity;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.currentActivity = null;
        this.f602c = false;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        AbstractC1897a abstractC1897a = this.f600a;
        if (abstractC1897a != null) {
            abstractC1897a.onActivityPaused(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.currentActivity = new WeakReference<>(activity);
        AbstractC1897a abstractC1897a = this.f600a;
        if (abstractC1897a != null) {
            abstractC1897a.onActivityResumed(activity);
        }
        this.f602c = true;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    public void reset() {
        this.f601b.unregisterActivityLifecycleCallbacks(this);
        this.currentActivity = null;
    }

    public void start(AbstractC1897a abstractC1897a) {
        this.f600a = abstractC1897a;
        this.f601b.registerActivityLifecycleCallbacks(this);
    }
}
