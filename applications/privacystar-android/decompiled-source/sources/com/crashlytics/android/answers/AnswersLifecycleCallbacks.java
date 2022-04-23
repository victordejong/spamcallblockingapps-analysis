package com.crashlytics.android.answers;

import android.app.Activity;
import android.os.Bundle;
import com.crashlytics.android.answers.SessionEvent;
import io.fabric.sdk.android.ActivityLifecycleManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/AnswersLifecycleCallbacks.class */
public class AnswersLifecycleCallbacks extends ActivityLifecycleManager.Callbacks {
    private final SessionAnalyticsManager analyticsManager;
    private final BackgroundManager backgroundManager;

    public AnswersLifecycleCallbacks(SessionAnalyticsManager sessionAnalyticsManager, BackgroundManager backgroundManager) {
        this.analyticsManager = sessionAnalyticsManager;
        this.backgroundManager = backgroundManager;
    }

    @Override // io.fabric.sdk.android.ActivityLifecycleManager.Callbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // io.fabric.sdk.android.ActivityLifecycleManager.Callbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // io.fabric.sdk.android.ActivityLifecycleManager.Callbacks
    public void onActivityPaused(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.PAUSE);
        this.backgroundManager.onActivityPaused();
    }

    @Override // io.fabric.sdk.android.ActivityLifecycleManager.Callbacks
    public void onActivityResumed(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.RESUME);
        this.backgroundManager.onActivityResumed();
    }

    @Override // io.fabric.sdk.android.ActivityLifecycleManager.Callbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // io.fabric.sdk.android.ActivityLifecycleManager.Callbacks
    public void onActivityStarted(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.START);
    }

    @Override // io.fabric.sdk.android.ActivityLifecycleManager.Callbacks
    public void onActivityStopped(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.STOP);
    }
}
