package com.verizon.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/ActivityStateManager.class */
public final class ActivityStateManager implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35236a = Logger.getInstance(ActivityStateManager.class);

    /* renamed from: b  reason: collision with root package name */
    private SparseArray<ActivityState> f35237b = new SparseArray<>();

    /* renamed from: c  reason: collision with root package name */
    private SparseArray<Set<ActivityObserver>> f35238c = new SparseArray<>();

    /* renamed from: d  reason: collision with root package name */
    private Set<ActivityObserver> f35239d = new HashSet();

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/ActivityStateManager$ActivityObserver.class */
    public static abstract class ActivityObserver {

        /* renamed from: a  reason: collision with root package name */
        protected static final Logger f35243a = Logger.getInstance(ActivityObserver.class);

        protected static void a(Activity activity) {
            if (Logger.isLogLevelEnabled(3)) {
                f35243a.d(String.format("Activity <%d> created.", Integer.valueOf(activity.hashCode())));
            }
        }

        protected static void b(Activity activity) {
            if (Logger.isLogLevelEnabled(3)) {
                f35243a.d(String.format("Activity <%d> destroyed.", Integer.valueOf(activity.hashCode())));
            }
        }

        protected static void c(Activity activity) {
            if (Logger.isLogLevelEnabled(3)) {
                f35243a.d(String.format("Activity <%d> instance state saved.", Integer.valueOf(activity.hashCode())));
            }
        }

        protected static void d(Activity activity) {
            if (Logger.isLogLevelEnabled(3)) {
                f35243a.d(String.format("Activity <%d> started.", Integer.valueOf(activity.hashCode())));
            }
        }

        protected static void e(Activity activity) {
            if (Logger.isLogLevelEnabled(3)) {
                f35243a.d(String.format("Activity <%d> stopped.", Integer.valueOf(activity.hashCode())));
            }
        }

        protected void onPaused(Activity activity) {
            if (Logger.isLogLevelEnabled(3)) {
                f35243a.d(String.format("Activity <%d> paused.", Integer.valueOf(activity.hashCode())));
            }
        }

        protected void onResumed(Activity activity) {
            if (Logger.isLogLevelEnabled(3)) {
                f35243a.d(String.format("Activity <%d> resumed.", Integer.valueOf(activity.hashCode())));
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/ActivityStateManager$ActivityState.class */
    public enum ActivityState {
        CREATED,
        DESTROYED,
        PAUSED,
        RESUMED,
        STARTED,
        STOPPED,
        UNKNOWN
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActivityStateManager(Application application) {
        if (application == null) {
            f35236a.e("application cannot be null.");
        } else {
            application.registerActivityLifecycleCallbacks(this);
        }
    }

    public final ActivityState getState(Activity activity) {
        synchronized (this) {
            if (activity == null) {
                f35236a.w("activity should not be null.");
                return ActivityState.UNKNOWN;
            }
            ActivityState activityState = this.f35237b.get(activity.hashCode());
            if (activityState != null) {
                return activityState;
            }
            return ActivityState.UNKNOWN;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        synchronized (this) {
            this.f35237b.put(activity.hashCode(), ActivityState.CREATED);
            Iterator<ActivityObserver> it2 = this.f35239d.iterator();
            while (it2.hasNext()) {
                it2.next();
                ActivityObserver.a(activity);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this) {
            this.f35237b.remove(activity.hashCode());
            Iterator<ActivityObserver> it2 = this.f35239d.iterator();
            while (it2.hasNext()) {
                it2.next();
                ActivityObserver.b(activity);
            }
            Set<ActivityObserver> set = this.f35238c.get(activity.hashCode());
            if (set != null) {
                Iterator<ActivityObserver> it3 = set.iterator();
                while (it3.hasNext()) {
                    it3.next();
                    ActivityObserver.b(activity);
                }
            }
            this.f35238c.remove(activity.hashCode());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        synchronized (this) {
            this.f35237b.put(activity.hashCode(), ActivityState.PAUSED);
            for (ActivityObserver activityObserver : this.f35239d) {
                activityObserver.onPaused(activity);
            }
            Set<ActivityObserver> set = this.f35238c.get(activity.hashCode());
            if (set != null) {
                for (ActivityObserver activityObserver2 : set) {
                    activityObserver2.onPaused(activity);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        synchronized (this) {
            this.f35237b.put(activity.hashCode(), ActivityState.RESUMED);
            for (ActivityObserver activityObserver : this.f35239d) {
                activityObserver.onResumed(activity);
            }
            Set<ActivityObserver> set = this.f35238c.get(activity.hashCode());
            if (set != null) {
                for (ActivityObserver activityObserver2 : set) {
                    activityObserver2.onResumed(activity);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        synchronized (this) {
            Iterator<ActivityObserver> it2 = this.f35239d.iterator();
            while (it2.hasNext()) {
                it2.next();
                ActivityObserver.c(activity);
            }
            Set<ActivityObserver> set = this.f35238c.get(activity.hashCode());
            if (set != null) {
                Iterator<ActivityObserver> it3 = set.iterator();
                while (it3.hasNext()) {
                    it3.next();
                    ActivityObserver.c(activity);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        synchronized (this) {
            this.f35237b.put(activity.hashCode(), ActivityState.STARTED);
            Iterator<ActivityObserver> it2 = this.f35239d.iterator();
            while (it2.hasNext()) {
                it2.next();
                ActivityObserver.d(activity);
            }
            Set<ActivityObserver> set = this.f35238c.get(activity.hashCode());
            if (set != null) {
                Iterator<ActivityObserver> it3 = set.iterator();
                while (it3.hasNext()) {
                    it3.next();
                    ActivityObserver.d(activity);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        synchronized (this) {
            this.f35237b.put(activity.hashCode(), ActivityState.STOPPED);
            Iterator<ActivityObserver> it2 = this.f35239d.iterator();
            while (it2.hasNext()) {
                it2.next();
                ActivityObserver.e(activity);
            }
            Set<ActivityObserver> set = this.f35238c.get(activity.hashCode());
            if (set != null) {
                Iterator<ActivityObserver> it3 = set.iterator();
                while (it3.hasNext()) {
                    it3.next();
                    ActivityObserver.e(activity);
                }
            }
        }
    }

    public final void registerActivityObserver(Activity activity, ActivityObserver activityObserver) {
        synchronized (this) {
            if (activity == null) {
                this.f35239d.add(activityObserver);
                return;
            }
            Set<ActivityObserver> set = this.f35238c.get(activity.hashCode());
            Set<ActivityObserver> set2 = set;
            if (set == null) {
                set2 = new HashSet<>();
                this.f35238c.put(activity.hashCode(), set2);
            }
            set2.add(activityObserver);
        }
    }

    public final void setState(final Activity activity, final ActivityState activityState) {
        synchronized (this) {
            if (activity == null) {
                f35236a.e("activity must not be null.");
            } else if (activityState == null) {
                f35236a.e("activityState must not be null.");
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.verizon.ads.ActivityStateManager.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (ActivityStateManager.this) {
                            ActivityStateManager.this.f35237b.put(activity.hashCode(), activityState);
                        }
                    }
                });
            }
        }
    }

    public final void unregisterActivityObserver(Activity activity, ActivityObserver activityObserver) {
        synchronized (this) {
            if (activity == null) {
                this.f35239d.remove(activityObserver);
                return;
            }
            Set<ActivityObserver> set = this.f35238c.get(activity.hashCode());
            if (set != null && !set.isEmpty()) {
                set.remove(activityObserver);
                return;
            }
            this.f35238c.remove(activity.hashCode());
        }
    }
}
