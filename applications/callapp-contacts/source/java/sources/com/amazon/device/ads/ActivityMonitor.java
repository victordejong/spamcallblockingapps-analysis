package com.amazon.device.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/ActivityMonitor.class */
public class ActivityMonitor implements Application.ActivityLifecycleCallbacks {

    /* renamed from: c */
    private static ActivityMonitor f11664c;

    /* renamed from: a */
    WeakReference<Activity> f11665a;

    /* renamed from: b */
    DTBActivityListener f11666b;

    public ActivityMonitor(Context context) {
        if (context != null) {
            Application application = (Application) context.getApplicationContext();
            if (application != null) {
                m39079a(context);
                application.registerActivityLifecycleCallbacks(this);
            }
            f11664c = this;
        }
    }

    /* renamed from: a */
    public static ActivityMonitor m39080a() {
        return f11664c;
    }

    /* renamed from: a */
    private void m39079a(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                this.f11665a = new WeakReference<>((Activity) context);
                return;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.f11665a = new WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        DTBActivityListener dTBActivityListener = this.f11666b;
        if (dTBActivityListener != null) {
            dTBActivityListener.mo38997b();
            if (activity != this.f11665a.get()) {
                return;
            }
            this.f11665a = null;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.f11665a = new WeakReference<>(activity);
        DTBActivityListener dTBActivityListener = this.f11666b;
        if (dTBActivityListener != null) {
            dTBActivityListener.mo39000a();
        }
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
}
