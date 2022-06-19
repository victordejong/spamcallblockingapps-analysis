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

    /* renamed from: a */
    private static boolean f27716a = false;

    /* renamed from: b */
    private static boolean f27717b = false;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler.class */
    public static class CallAppUncaughtExceptionHandler implements Thread.UncaughtExceptionHandler {

        /* renamed from: a */
        private final Thread.UncaughtExceptionHandler f27718a;

        /* renamed from: b */
        private WeakReference<Activity> f27719b = new WeakReference<>(null);

        /* renamed from: c */
        private HashMap<Class, WeakReference<Activity>> f27720c = new HashMap<>();

        public CallAppUncaughtExceptionHandler(Application application, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f27718a = uncaughtExceptionHandler;
            application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.callapp.contacts.util.CrashlyticsUtils.CallAppUncaughtExceptionHandler.1
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                    if (Prefs.f26657n.get().booleanValue()) {
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
                    CallAppUncaughtExceptionHandler.this.f27720c.remove(activity.getClass());
                    if (CollectionUtils.m26071a(CallAppUncaughtExceptionHandler.this.f27720c)) {
                        Activities.m27651c();
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
                    CallAppUncaughtExceptionHandler.this.f27719b = new WeakReference(activity);
                    CallAppUncaughtExceptionHandler.this.f27720c.put(activity.getClass(), new WeakReference(activity));
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                }
            });
        }

        public Activity getLastActivity() {
            return this.f27719b.get();
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            try {
                this.f27718a.uncaughtException(thread, th);
            } catch (Throwable th2) {
            }
            Log.e(CrashlyticsUtils.class.getSimpleName(), "CRASH", th);
            Activity lastActivity = getLastActivity();
            if (lastActivity != null) {
                lastActivity.finish();
                this.f27719b.clear();
            }
            Process.killProcess(Process.myPid());
            System.exit(10);
        }
    }

    /* renamed from: a */
    public static void m27548a(Application application) {
        if (!f27717b) {
            f27717b = true;
            Thread.setDefaultUncaughtExceptionHandler(new CallAppUncaughtExceptionHandler(application, Thread.getDefaultUncaughtExceptionHandler()));
        }
    }

    /* renamed from: a */
    public static void m27547a(Throwable th) {
        try {
            FirebaseCrashlytics.getInstance().recordException(th);
        } catch (RuntimeException e) {
        }
    }

    /* renamed from: b */
    public static void m27546b(Application application) {
        if (!f27716a) {
            f27716a = true;
            m27548a(application);
            if (Prefs.f26465ed.get().booleanValue() && StringUtils.m26045b((CharSequence) Prefs.f26241aR.get())) {
                FirebaseCrashlytics.getInstance().setUserId(Prefs.f26241aR.get());
            }
            FirebaseCrashlytics.getInstance().setCustomKey("CUSTOMROM", Activities.getReadableModVersion());
        }
    }
}
