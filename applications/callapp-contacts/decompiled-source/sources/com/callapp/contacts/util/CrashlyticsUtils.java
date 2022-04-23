package com.callapp.contacts.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/CrashlyticsUtils.class */
public class CrashlyticsUtils {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f15874a = false;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f15875b = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler.class */
    public static class CallAppUncaughtExceptionHandler implements Thread.UncaughtExceptionHandler {

        /* renamed from: a  reason: collision with root package name */
        private final Thread.UncaughtExceptionHandler f15876a;

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<Activity> f15877b = new WeakReference<>(null);

        /* renamed from: c  reason: collision with root package name */
        private HashMap<Class, WeakReference<Activity>> f15878c = new HashMap<>();

        public CallAppUncaughtExceptionHandler(Application application, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f15876a = uncaughtExceptionHandler;
            application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.callapp.contacts.util.CrashlyticsUtils.CallAppUncaughtExceptionHandler.1
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                    if (Prefs.n.get().booleanValue()) {
                        try {
                            Field declaredField = ((ActivityManager) activity.getSystemService("activity")).getClass().getDeclaredField("mContext");
                            int modifiers = declaredField.getModifiers();
                            if ((modifiers | 8) == modifiers) {
                                declaredField.setAccessible(true);
                                if (declaredField.get(null) == activity) {
                                    declaredField.set(null, null);
                                }
                            }
                        } catch (IllegalAccessException | NoSuchFieldException e) {
                        }
                    }
                    CallAppUncaughtExceptionHandler.this.f15878c.remove(activity.getClass());
                    if (CollectionUtils.a(CallAppUncaughtExceptionHandler.this.f15878c)) {
                        Activities.c();
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                    CallAppUncaughtExceptionHandler.this.f15877b = new WeakReference(activity);
                    CallAppUncaughtExceptionHandler.this.f15878c.put(activity.getClass(), new WeakReference(activity));
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                }
            });
        }

        public Activity getLastActivity() {
            return this.f15877b.get();
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            try {
                this.f15876a.uncaughtException(thread, th);
            } catch (Throwable th2) {
            }
            Log.e(CrashlyticsUtils.class.getSimpleName(), "CRASH", th);
            Activity lastActivity = getLastActivity();
            if (lastActivity != null) {
                lastActivity.finish();
                this.f15877b.clear();
            }
            Process.killProcess(Process.myPid());
            System.exit(10);
        }
    }

    public static void a(Application application) {
        if (!f15875b) {
            f15875b = true;
            Thread.setDefaultUncaughtExceptionHandler(new CallAppUncaughtExceptionHandler(application, Thread.getDefaultUncaughtExceptionHandler()));
        }
    }

    public static void a(Throwable th) {
        try {
            FirebaseCrashlytics.getInstance().recordException(th);
        } catch (RuntimeException e) {
        }
    }

    public static void b(Application application) {
        if (!f15874a) {
            f15874a = true;
            a(application);
            if (Prefs.ed.get().booleanValue() && StringUtils.b((CharSequence) Prefs.aR.get())) {
                FirebaseCrashlytics.getInstance().setUserId(Prefs.aR.get());
            }
            FirebaseCrashlytics.getInstance().setCustomKey("CUSTOMROM", Activities.getReadableModVersion());
        }
    }
}
