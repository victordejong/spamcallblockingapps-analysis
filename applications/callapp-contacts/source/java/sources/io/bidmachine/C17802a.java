package io.bidmachine;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import io.bidmachine.core.Utils;
/* renamed from: io.bidmachine.a */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/a.class */
public final class C17802a implements Application.ActivityLifecycleCallbacks {
    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Utils.onBackgroundThread(new Runnable() { // from class: io.bidmachine.a.2
            @Override // java.lang.Runnable
            public final void run() {
                SessionManager.get().pause();
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        C17842d.get().setTopActivity(activity);
        Utils.onBackgroundThread(new Runnable() { // from class: io.bidmachine.a.1
            @Override // java.lang.Runnable
            public final void run() {
                SessionManager.get().resume();
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        C17842d.get().setTopActivity(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
