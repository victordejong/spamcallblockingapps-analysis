package com.millennialmedia.internal;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/ActivityListenerManager.class */
public class ActivityListenerManager {
    private static final String TAG = "ActivityListenerManager";
    private static volatile Map<Integer, ActivityState> activities = new HashMap();

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/ActivityListenerManager$ActivityListener.class */
    public static class ActivityListener {
        public void onCreated(Activity activity) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(ActivityListenerManager.TAG, "Activity created");
            }
        }

        public void onDestroyed(Activity activity) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(ActivityListenerManager.TAG, "Activity destroyed");
            }
        }

        public void onPaused(Activity activity) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(ActivityListenerManager.TAG, "Activity paused");
            }
        }

        public void onResumed(Activity activity) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(ActivityListenerManager.TAG, "Activity resumed");
            }
        }

        public void onStarted(Activity activity) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(ActivityListenerManager.TAG, "Activity started");
            }
        }

        public void onStopped(Activity activity) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(ActivityListenerManager.TAG, "Activity stopped");
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/ActivityListenerManager$ActivityState.class */
    public static class ActivityState {
        private List<WeakReference<ActivityListener>> activityListenerRefs;
        private LifecycleState lifecycleState = LifecycleState.UNKNOWN;

        public LifecycleState getLifecycleState() {
            return this.lifecycleState;
        }

        public List<ActivityListener> getListeners() {
            ArrayList arrayList = new ArrayList();
            List<WeakReference<ActivityListener>> list = this.activityListenerRefs;
            if (list != null) {
                synchronized (list) {
                    Iterator<WeakReference<ActivityListener>> it = this.activityListenerRefs.iterator();
                    while (it.hasNext()) {
                        ActivityListener activityListener = it.next().get();
                        if (activityListener == null) {
                            it.remove();
                        } else {
                            arrayList.add(activityListener);
                        }
                    }
                }
            }
            return arrayList;
        }

        public void registerListener(ActivityListener activityListener) {
            if (this.activityListenerRefs == null) {
                this.activityListenerRefs = new ArrayList();
            }
            synchronized (this.activityListenerRefs) {
                this.activityListenerRefs.add(new WeakReference<>(activityListener));
            }
            if (MMLog.isDebugEnabled()) {
                String str = ActivityListenerManager.TAG;
                MMLog.m4070d(str, "Registered activity listener: " + activityListener);
            }
        }

        public void unregisterListener(ActivityListener activityListener) {
            List<WeakReference<ActivityListener>> list = this.activityListenerRefs;
            if (list != null) {
                synchronized (list) {
                    Iterator<WeakReference<ActivityListener>> it = this.activityListenerRefs.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        } else if (activityListener == it.next().get()) {
                            if (MMLog.isDebugEnabled()) {
                                String str = ActivityListenerManager.TAG;
                                MMLog.m4070d(str, "Unregistered activity listener: " + activityListener);
                            }
                            it.remove();
                        }
                    }
                }
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/ActivityListenerManager$LifecycleState.class */
    public enum LifecycleState {
        UNKNOWN,
        CREATED,
        STARTED,
        RESUMED,
        PAUSED,
        STOPPED,
        DESTROYED
    }

    public static ActivityState getActivityState(int i, boolean z) {
        ActivityState activityState = activities.get(Integer.valueOf(i));
        ActivityState activityState2 = activityState;
        if (activityState == null) {
            activityState2 = activityState;
            if (z) {
                activityState2 = new ActivityState();
                activities.put(Integer.valueOf(i), activityState2);
            }
        }
        return activityState2;
    }

    public static LifecycleState getLifecycleState(int i) {
        LifecycleState lifecycleState = LifecycleState.UNKNOWN;
        ActivityState activityState = getActivityState(i, false);
        if (activityState != null) {
            lifecycleState = activityState.getLifecycleState();
        }
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Lifecycle state <" + lifecycleState + "> for activity ID <" + i + ">");
        }
        return lifecycleState;
    }

    public static LifecycleState getLifecycleState(Activity activity) {
        if (activity != null) {
            return getLifecycleState(activity.hashCode());
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "Lifecycle state <UNKNOWN> for null activity");
        }
        return LifecycleState.UNKNOWN;
    }

    public static void init() {
        EnvironmentUtils.getApplication().registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.millennialmedia.internal.ActivityListenerManager.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                if (MMLog.isDebugEnabled()) {
                    String str = ActivityListenerManager.TAG;
                    MMLog.m4070d(str, "Activity onCreate called for activity ID: " + activity.hashCode());
                }
                ActivityState activityState = ActivityListenerManager.getActivityState(activity.hashCode(), true);
                activityState.lifecycleState = LifecycleState.CREATED;
                for (ActivityListener activityListener : activityState.getListeners()) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(ActivityListenerManager.TAG, String.format(Locale.getDefault(), "Calling onCreated of activity listener <%s> for activity ID <%d>", activityListener, Integer.valueOf(activity.hashCode())));
                    }
                    activityListener.onCreated(activity);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                if (MMLog.isDebugEnabled()) {
                    String str = ActivityListenerManager.TAG;
                    MMLog.m4070d(str, "Activity destroy called for activity ID: " + activity.hashCode());
                }
                ActivityState activityState = ActivityListenerManager.getActivityState(activity.hashCode(), false);
                if (activityState == null) {
                    if (!MMLog.isDebugEnabled()) {
                        return;
                    }
                    String str2 = ActivityListenerManager.TAG;
                    MMLog.m4070d(str2, "Unable to find activity state for activity ID: " + activity.hashCode());
                    return;
                }
                activityState.lifecycleState = LifecycleState.DESTROYED;
                for (ActivityListener activityListener : activityState.getListeners()) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(ActivityListenerManager.TAG, String.format(Locale.getDefault(), "Calling onDestroyed of activity listener <%s> for activity ID <%d>", activityListener, Integer.valueOf(activity.hashCode())));
                    }
                    activityListener.onDestroyed(activity);
                }
                ActivityListenerManager.activities.remove(Integer.valueOf(activity.hashCode()));
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                if (MMLog.isDebugEnabled()) {
                    String str = ActivityListenerManager.TAG;
                    MMLog.m4070d(str, "Activity onPause called for activity ID: " + activity.hashCode());
                }
                ActivityState activityState = ActivityListenerManager.getActivityState(activity.hashCode(), true);
                activityState.lifecycleState = LifecycleState.PAUSED;
                for (ActivityListener activityListener : activityState.getListeners()) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(ActivityListenerManager.TAG, String.format(Locale.getDefault(), "Calling onPaused of activity listener <%s> for activity ID <%d>", activityListener, Integer.valueOf(activity.hashCode())));
                    }
                    activityListener.onPaused(activity);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                if (MMLog.isDebugEnabled()) {
                    String str = ActivityListenerManager.TAG;
                    MMLog.m4070d(str, "Activity onResume called for activity ID: " + activity.hashCode());
                }
                ActivityState activityState = ActivityListenerManager.getActivityState(activity.hashCode(), true);
                activityState.lifecycleState = LifecycleState.RESUMED;
                for (ActivityListener activityListener : activityState.getListeners()) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(ActivityListenerManager.TAG, String.format(Locale.getDefault(), "Calling onResumed of activity listener <%s> for activity ID <%d>", activityListener, Integer.valueOf(activity.hashCode())));
                    }
                    activityListener.onResumed(activity);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                if (MMLog.isDebugEnabled()) {
                    String str = ActivityListenerManager.TAG;
                    MMLog.m4070d(str, "Activity onSaveInstanceState called for activity ID: " + activity.hashCode());
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                if (MMLog.isDebugEnabled()) {
                    String str = ActivityListenerManager.TAG;
                    MMLog.m4070d(str, "Activity onStart called for activity ID: " + activity.hashCode());
                }
                ActivityState activityState = ActivityListenerManager.getActivityState(activity.hashCode(), true);
                activityState.lifecycleState = LifecycleState.STARTED;
                for (ActivityListener activityListener : activityState.getListeners()) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(ActivityListenerManager.TAG, String.format(Locale.getDefault(), "Calling onStarted of activity listener <%s> for activity ID <%d>", activityListener, Integer.valueOf(activity.hashCode())));
                    }
                    activityListener.onStarted(activity);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                if (MMLog.isDebugEnabled()) {
                    String str = ActivityListenerManager.TAG;
                    MMLog.m4070d(str, "Activity onStop called for activity ID: " + activity.hashCode());
                }
                ActivityState activityState = ActivityListenerManager.getActivityState(activity.hashCode(), true);
                activityState.lifecycleState = LifecycleState.STOPPED;
                for (ActivityListener activityListener : activityState.getListeners()) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(ActivityListenerManager.TAG, String.format(Locale.getDefault(), "Calling onStopped of activity listener <%s> for activity ID <%d>", activityListener, Integer.valueOf(activity.hashCode())));
                    }
                    activityListener.onStopped(activity);
                }
            }
        });
    }

    public static void registerListener(int i, ActivityListener activityListener) {
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Attempting to register activity listener.\n\tactivity ID: " + i + "\n\tactivity listener: " + activityListener);
        }
        if (activityListener == null) {
            MMLog.m4068e(TAG, "Unable to register activity listener, provided instance is null");
        } else {
            getActivityState(i, true).registerListener(activityListener);
        }
    }

    public static void setInitialStateForUnknownActivity(int i, LifecycleState lifecycleState) {
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Attempting to set lifecycle state for unknown activity.\n\tactivity ID: " + i + "\n\tlifecycle state: " + lifecycleState);
        }
        ActivityState activityState = getActivityState(i, true);
        if (activityState.lifecycleState == LifecycleState.UNKNOWN) {
            activityState.lifecycleState = lifecycleState;
            return;
        }
        String str2 = TAG;
        MMLog.m4068e(str2, "Failed to set lifecycle state. Activity already exists with state <" + activityState.lifecycleState + ">");
    }

    public static void unregisterListener(int i, ActivityListener activityListener) {
        ActivityState activityState;
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Attempting to unregister activity listener.\n\tactivity ID: " + i + "\n\tactivity listener: " + activityListener);
        }
        if (activityListener == null || (activityState = getActivityState(i, false)) == null) {
            return;
        }
        activityState.unregisterListener(activityListener);
    }
}
