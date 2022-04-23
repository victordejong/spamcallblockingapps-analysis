package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.google.firebase.a;
import java.util.concurrent.atomic.AtomicBoolean;
@TargetApi(AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/l.class */
public final class l implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: a  reason: collision with root package name */
    private static final l f4212a = new l();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f4213b = new AtomicBoolean();
    private boolean c;

    private l() {
    }

    public static void a(Application application) {
        application.registerActivityLifecycleCallbacks(f4212a);
        application.registerComponentCallbacks(f4212a);
        f4212a.c = true;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        if (this.f4213b.compareAndSet(true, false)) {
            a.a();
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
        if (this.f4213b.compareAndSet(true, false)) {
            a.a();
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
        if (i == 20 && this.f4213b.compareAndSet(false, true)) {
            a.a();
        }
    }
}
