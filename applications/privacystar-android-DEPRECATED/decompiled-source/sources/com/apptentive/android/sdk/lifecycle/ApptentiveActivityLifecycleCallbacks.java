package com.apptentive.android.sdk.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Nullable;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveNotifications;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationCenter;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks.class */
public class ApptentiveActivityLifecycleCallbacks implements Application.ActivityLifecycleCallbacks {
    private static final long CHECK_DELAY_SHORT = 1000;
    private boolean callbacksRegistered;
    private Runnable checkFgBgRoutine;
    private WeakReference<Activity> currentTaskStackTopActivity;
    private Handler delayedChecker;
    private AtomicInteger foregroundActivities;
    private boolean isAppForeground;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$Holder.class */
    public static class Holder {
        private static final ApptentiveActivityLifecycleCallbacks INSTANCE = new ApptentiveActivityLifecycleCallbacks();

        private Holder() {
        }
    }

    private ApptentiveActivityLifecycleCallbacks() {
        this.foregroundActivities = new AtomicInteger(0);
        this.delayedChecker = new Handler();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void appEnteredBackground() {
        ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.lifecycle.ApptentiveActivityLifecycleCallbacks.7
            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
            protected void execute() {
                ApptentiveLog.m413d("App went to background.", new Object[0]);
                ApptentiveActivityLifecycleCallbacks.this.currentTaskStackTopActivity = null;
                ApptentiveNotificationCenter.defaultCenter().postNotification(ApptentiveNotifications.NOTIFICATION_APP_ENTERED_BACKGROUND);
            }
        });
    }

    private void appEnteredForeground() {
        ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.lifecycle.ApptentiveActivityLifecycleCallbacks.6
            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
            protected void execute() {
                ApptentiveLog.m413d("App went to foreground.", new Object[0]);
                ApptentiveNotificationCenter.defaultCenter().postNotification(ApptentiveNotifications.NOTIFICATION_APP_ENTERED_FOREGROUND);
            }
        });
    }

    @Nullable
    public static Activity getCurrentTopActivity() {
        WeakReference<Activity> weakReference = Holder.INSTANCE.currentTaskStackTopActivity;
        return weakReference != null ? weakReference.get() : null;
    }

    public static ApptentiveActivityLifecycleCallbacks getInstance() {
        return Holder.INSTANCE;
    }

    public static void register(Application application) {
        synchronized (ApptentiveActivityLifecycleCallbacks.class) {
            try {
                if (application == null) {
                    throw new IllegalArgumentException("Application is null");
                }
                Holder.INSTANCE.registerCallbacks(application);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void registerCallbacks(Application application) {
        if (!this.callbacksRegistered) {
            application.registerActivityLifecycleCallbacks(this);
            this.callbacksRegistered = true;
            return;
        }
        ApptentiveLog.m397w("Apptentive Activity callbacks already registered.", new Object[0]);
        if (this.isAppForeground) {
            ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.lifecycle.ApptentiveActivityLifecycleCallbacks.1
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    ApptentiveLog.m413d("Sending missing foreground notification.", new Object[0]);
                    ApptentiveNotificationCenter.defaultCenter().postNotification(ApptentiveNotifications.NOTIFICATION_APP_ENTERED_FOREGROUND);
                }
            });
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(final Activity activity) {
        ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.lifecycle.ApptentiveActivityLifecycleCallbacks.3
            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
            protected void execute() {
                ApptentiveActivityLifecycleCallbacks.this.currentTaskStackTopActivity = new WeakReference(activity);
                ApptentiveNotificationCenter.defaultCenter().postNotification(ApptentiveNotifications.NOTIFICATION_ACTIVITY_RESUMED, ApptentiveNotifications.NOTIFICATION_KEY_ACTIVITY, activity);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(final Activity activity) {
        boolean z = this.isAppForeground;
        this.isAppForeground = true;
        if (this.checkFgBgRoutine != null) {
            this.delayedChecker.removeCallbacks(this.checkFgBgRoutine);
            this.checkFgBgRoutine = null;
        }
        if (this.foregroundActivities.getAndIncrement() == 0 && (!z)) {
            appEnteredForeground();
        }
        ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.lifecycle.ApptentiveActivityLifecycleCallbacks.2
            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
            protected void execute() {
                ApptentiveActivityLifecycleCallbacks.this.currentTaskStackTopActivity = new WeakReference(activity);
                ApptentiveNotificationCenter.defaultCenter().postNotification(ApptentiveNotifications.NOTIFICATION_ACTIVITY_STARTED, ApptentiveNotifications.NOTIFICATION_KEY_ACTIVITY, activity);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(final Activity activity) {
        if (this.foregroundActivities.decrementAndGet() < 0) {
            ApptentiveLog.m409e("Incorrect number of foreground Activities encountered. Resetting to 0.", new Object[0]);
            this.foregroundActivities.set(0);
        }
        if (this.checkFgBgRoutine != null) {
            this.delayedChecker.removeCallbacks(this.checkFgBgRoutine);
        }
        Handler handler = this.delayedChecker;
        Runnable runnable = new Runnable() { // from class: com.apptentive.android.sdk.lifecycle.ApptentiveActivityLifecycleCallbacks.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (ApptentiveActivityLifecycleCallbacks.this.foregroundActivities.get() == 0 && ApptentiveActivityLifecycleCallbacks.this.isAppForeground) {
                        ApptentiveActivityLifecycleCallbacks.this.appEnteredBackground();
                        ApptentiveActivityLifecycleCallbacks.this.isAppForeground = false;
                    }
                } catch (Exception e) {
                    ApptentiveLog.m408e(e, "Exception in delayed checking", new Object[0]);
                }
            }
        };
        this.checkFgBgRoutine = runnable;
        handler.postDelayed(runnable, 1000L);
        ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.lifecycle.ApptentiveActivityLifecycleCallbacks.5
            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
            protected void execute() {
                ApptentiveNotificationCenter.defaultCenter().postNotification(ApptentiveNotifications.NOTIFICATION_ACTIVITY_STOPPED, ApptentiveNotifications.NOTIFICATION_KEY_ACTIVITY, activity);
            }
        });
    }
}
