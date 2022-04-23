package com.hannesdorfmann.mosby3;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.util.ArrayMap;
import android.util.Log;
import com.hannesdorfmann.mosby3.mvp.MvpPresenter;
import com.hannesdorfmann.mosby3.mvp.MvpView;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/PresenterManager.class */
public final class PresenterManager {
    public static boolean DEBUG = false;
    public static final String DEBUG_TAG = "PresenterManager";
    static final String KEY_ACTIVITY_ID = "com.hannesdorfmann.mosby3.MosbyPresenterManagerActivityId";
    private static final Map<Activity, String> activityIdMap = new ArrayMap();
    private static final Map<String, ActivityScopedCache> activityScopedCacheMap = new ArrayMap();
    static final Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = new Application.ActivityLifecycleCallbacks() { // from class: com.hannesdorfmann.mosby3.PresenterManager.1
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            String string;
            if (bundle != null && (string = bundle.getString(PresenterManager.KEY_ACTIVITY_ID)) != null) {
                PresenterManager.activityIdMap.put(activity, string);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            String str;
            if (!activity.isChangingConfigurations() && (str = (String) PresenterManager.activityIdMap.get(activity)) != null) {
                ActivityScopedCache activityScopedCache = (ActivityScopedCache) PresenterManager.activityScopedCacheMap.get(str);
                if (activityScopedCache != null) {
                    activityScopedCache.clear();
                    PresenterManager.activityScopedCacheMap.remove(str);
                }
                if (PresenterManager.activityScopedCacheMap.isEmpty()) {
                    activity.getApplication().unregisterActivityLifecycleCallbacks(PresenterManager.activityLifecycleCallbacks);
                    if (PresenterManager.DEBUG) {
                        Log.d(PresenterManager.DEBUG_TAG, "Unregistering ActivityLifecycleCallbacks");
                    }
                }
            }
            PresenterManager.activityIdMap.remove(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            String str = (String) PresenterManager.activityIdMap.get(activity);
            if (str != null) {
                bundle.putString(PresenterManager.KEY_ACTIVITY_ID, str);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    };

    private PresenterManager() {
        throw new RuntimeException("Not instantiatable!");
    }

    @NonNull
    public static Activity getActivity(@NonNull Context context) {
        if (context == null) {
            throw new NullPointerException("context == null");
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        for (Context context2 = context; context2 instanceof ContextWrapper; context2 = ((ContextWrapper) context2).getBaseContext()) {
            if (context2 instanceof Activity) {
                return (Activity) context2;
            }
        }
        throw new IllegalStateException("Could not find the surrounding Activity");
    }

    @MainThread
    @Nullable
    static ActivityScopedCache getActivityScope(@NonNull Activity activity) {
        if (activity == null) {
            throw new NullPointerException("Activity is null");
        }
        String str = activityIdMap.get(activity);
        if (str == null) {
            return null;
        }
        return activityScopedCacheMap.get(str);
    }

    @NonNull
    @MainThread
    static ActivityScopedCache getOrCreateActivityScopedCache(@NonNull Activity activity) {
        if (activity == null) {
            throw new NullPointerException("Activity is null");
        }
        String str = activityIdMap.get(activity);
        String str2 = str;
        if (str == null) {
            String uuid = UUID.randomUUID().toString();
            activityIdMap.put(activity, uuid);
            str2 = uuid;
            if (activityIdMap.size() == 1) {
                activity.getApplication().registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
                str2 = uuid;
                if (DEBUG) {
                    Log.d(DEBUG_TAG, "Registering ActivityLifecycleCallbacks");
                    str2 = uuid;
                }
            }
        }
        ActivityScopedCache activityScopedCache = activityScopedCacheMap.get(str2);
        ActivityScopedCache activityScopedCache2 = activityScopedCache;
        if (activityScopedCache == null) {
            activityScopedCache2 = new ActivityScopedCache();
            activityScopedCacheMap.put(str2, activityScopedCache2);
        }
        return activityScopedCache2;
    }

    @Nullable
    public static <P> P getPresenter(@NonNull Activity activity, @NonNull String str) {
        if (activity == null) {
            throw new NullPointerException("Activity is null");
        } else if (str == null) {
            throw new NullPointerException("View id is null");
        } else {
            ActivityScopedCache activityScope = getActivityScope(activity);
            return activityScope == null ? null : (P) activityScope.getPresenter(str);
        }
    }

    @Nullable
    public static <VS> VS getViewState(@NonNull Activity activity, @NonNull String str) {
        if (activity == null) {
            throw new NullPointerException("Activity is null");
        } else if (str == null) {
            throw new NullPointerException("View id is null");
        } else {
            ActivityScopedCache activityScope = getActivityScope(activity);
            return activityScope == null ? null : (VS) activityScope.getViewState(str);
        }
    }

    public static void putPresenter(@NonNull Activity activity, @NonNull String str, @NonNull MvpPresenter<? extends MvpView> mvpPresenter) {
        if (activity == null) {
            throw new NullPointerException("Activity is null");
        }
        getOrCreateActivityScopedCache(activity).putPresenter(str, mvpPresenter);
    }

    public static void putViewState(@NonNull Activity activity, @NonNull String str, @NonNull Object obj) {
        if (activity == null) {
            throw new NullPointerException("Activity is null");
        }
        getOrCreateActivityScopedCache(activity).putViewState(str, obj);
    }

    public static void remove(@NonNull Activity activity, @NonNull String str) {
        if (activity == null) {
            throw new NullPointerException("Activity is null");
        }
        ActivityScopedCache activityScope = getActivityScope(activity);
        if (activityScope != null) {
            activityScope.remove(str);
        }
    }

    static void reset() {
        activityIdMap.clear();
        for (ActivityScopedCache activityScopedCache : activityScopedCacheMap.values()) {
            activityScopedCache.clear();
        }
        activityScopedCacheMap.clear();
    }
}
