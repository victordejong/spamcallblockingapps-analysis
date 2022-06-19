package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
/* renamed from: androidx.core.app.b */
/* loaded from: classes-dex2jar.jar:androidx/core/app/b.class */
final class C0432b {

    /* renamed from: g */
    private static final Handler f1586g = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    protected static final Class<?> f1580a = m6662d();

    /* renamed from: b */
    protected static final Field f1581b = m6666b();

    /* renamed from: c */
    protected static final Field f1582c = m6664c();

    /* renamed from: d */
    protected static final Method f1583d = m6668a(f1580a);

    /* renamed from: e */
    protected static final Method f1584e = m6665b(f1580a);

    /* renamed from: f */
    protected static final Method f1585f = m6663c(f1580a);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.app.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/b$a.class */
    public static final class C0436a implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a */
        Object f1593a;

        /* renamed from: b */
        private Activity f1594b;

        /* renamed from: c */
        private boolean f1595c = false;

        /* renamed from: d */
        private boolean f1596d = false;

        /* renamed from: e */
        private boolean f1597e = false;

        C0436a(Activity activity) {
            this.f1594b = activity;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f1594b == activity) {
                this.f1594b = null;
                this.f1596d = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!this.f1596d || this.f1597e || this.f1595c || !C0432b.m6667a(this.f1593a, activity)) {
                return;
            }
            this.f1597e = true;
            this.f1593a = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f1594b == activity) {
                this.f1595c = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* renamed from: a */
    private static Method m6668a(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE, String.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    private static boolean m6670a() {
        return Build.VERSION.SDK_INT == 26 || Build.VERSION.SDK_INT == 27;
    }

    /* renamed from: a */
    public static boolean m6669a(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (m6670a() && f1585f == null) {
            return false;
        } else {
            if (f1584e == null && f1583d == null) {
                return false;
            }
            try {
                final Object obj2 = f1582c.get(activity);
                if (obj2 == null || (obj = f1581b.get(activity)) == null) {
                    return false;
                }
                final Application application = activity.getApplication();
                final C0436a c0436a = new C0436a(activity);
                application.registerActivityLifecycleCallbacks(c0436a);
                f1586g.post(new Runnable() { // from class: androidx.core.app.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        c0436a.f1593a = obj2;
                    }
                });
                if (m6670a()) {
                    f1585f.invoke(obj, obj2, null, null, 0, false, null, null, false, false);
                } else {
                    activity.recreate();
                }
                f1586g.post(new Runnable() { // from class: androidx.core.app.b.2
                    @Override // java.lang.Runnable
                    public void run() {
                        application.unregisterActivityLifecycleCallbacks(c0436a);
                    }
                });
                return true;
            } catch (Throwable th) {
                return false;
            }
        }
    }

    /* renamed from: a */
    protected static boolean m6667a(Object obj, Activity activity) {
        try {
            final Object obj2 = f1582c.get(activity);
            if (obj2 != obj) {
                return false;
            }
            final Object obj3 = f1581b.get(activity);
            f1586g.postAtFrontOfQueue(new Runnable() { // from class: androidx.core.app.b.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (C0432b.f1583d != null) {
                            C0432b.f1583d.invoke(obj3, obj2, false, "AppCompat recreation");
                        } else {
                            C0432b.f1584e.invoke(obj3, obj2, false);
                        }
                    } catch (RuntimeException e) {
                        if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                            throw e;
                        }
                    } catch (Throwable th) {
                        Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
                    }
                }
            });
            return true;
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
            return false;
        }
    }

    /* renamed from: b */
    private static Field m6666b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    private static Method m6665b(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: c */
    private static Field m6664c() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: c */
    private static Method m6663c(Class<?> cls) {
        if (!m6670a() || cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, Boolean.TYPE, Configuration.class, Configuration.class, Boolean.TYPE, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    private static Class<?> m6662d() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable th) {
            return null;
        }
    }
}
