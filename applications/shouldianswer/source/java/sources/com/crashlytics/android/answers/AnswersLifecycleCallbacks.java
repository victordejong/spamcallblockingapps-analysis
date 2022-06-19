package com.crashlytics.android.answers;

import android.app.Activity;
import android.os.Bundle;
import com.crashlytics.android.answers.SessionEvent;
import io.fabric.sdk.android.C1444a;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/AnswersLifecycleCallbacks.class */
public class AnswersLifecycleCallbacks extends C1444a.AbstractC1447b {
    private final SessionAnalyticsManager analyticsManager;
    private final BackgroundManager backgroundManager;

    public AnswersLifecycleCallbacks(SessionAnalyticsManager sessionAnalyticsManager, BackgroundManager backgroundManager) {
        this.analyticsManager = sessionAnalyticsManager;
        this.backgroundManager = backgroundManager;
    }

    @Override // io.fabric.sdk.android.C1444a.AbstractC1447b
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // io.fabric.sdk.android.C1444a.AbstractC1447b
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // io.fabric.sdk.android.C1444a.AbstractC1447b
    public void onActivityPaused(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.PAUSE);
        this.backgroundManager.onActivityPaused();
    }

    @Override // io.fabric.sdk.android.C1444a.AbstractC1447b
    public void onActivityResumed(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.RESUME);
        this.backgroundManager.onActivityResumed();
    }

    @Override // io.fabric.sdk.android.C1444a.AbstractC1447b
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // io.fabric.sdk.android.C1444a.AbstractC1447b
    public void onActivityStarted(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.START);
    }

    @Override // io.fabric.sdk.android.C1444a.AbstractC1447b
    public void onActivityStopped(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.STOP);
    }
}
