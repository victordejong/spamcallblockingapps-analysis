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
/* loaded from: classes-dex2jar.jar:androidx/core/app/c.class */
final class c {

    /* renamed from: a  reason: collision with root package name */
    protected static final Class<?> f1706a;

    /* renamed from: d  reason: collision with root package name */
    protected static final Method f1709d;
    protected static final Method e;
    protected static final Method f;
    private static final Handler g = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    protected static final Field f1707b = b();

    /* renamed from: c  reason: collision with root package name */
    protected static final Field f1708c = c();

    /* loaded from: classes-dex2jar.jar:androidx/core/app/c$a.class */
    static final class a implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a  reason: collision with root package name */
        Object f1716a;

        /* renamed from: b  reason: collision with root package name */
        private Activity f1717b;

        /* renamed from: c  reason: collision with root package name */
        private final int f1718c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f1719d = false;
        private boolean e = false;
        private boolean f = false;

        a(Activity activity) {
            this.f1717b = activity;
            this.f1718c = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            if (this.f1717b == activity) {
                this.f1717b = null;
                this.e = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            if (this.e && !this.f && !this.f1719d && c.a(this.f1716a, this.f1718c, activity)) {
                this.f = true;
                this.f1716a = null;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            if (this.f1717b == activity) {
                this.f1719d = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }
    }

    static {
        Class<?> d2 = d();
        f1706a = d2;
        f1709d = a(d2);
        e = b(d2);
        f = c(d2);
    }

    private c() {
    }

    private static Method a(Class<?> cls) {
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

    private static boolean a() {
        return Build.VERSION.SDK_INT == 26 || Build.VERSION.SDK_INT == 27;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (a() && f == null) {
            return false;
        } else {
            if (e == null && f1709d == null) {
                return false;
            }
            try {
                final Object obj2 = f1708c.get(activity);
                if (obj2 == null || (obj = f1707b.get(activity)) == null) {
                    return false;
                }
                final Application application = activity.getApplication();
                final a aVar = new a(activity);
                application.registerActivityLifecycleCallbacks(aVar);
                Handler handler = g;
                handler.post(new Runnable() { // from class: androidx.core.app.c.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        a.this.f1716a = obj2;
                    }
                });
                if (a()) {
                    f.invoke(obj, obj2, null, null, 0, Boolean.FALSE, null, null, Boolean.FALSE, Boolean.FALSE);
                } else {
                    activity.recreate();
                }
                handler.post(new Runnable() { // from class: androidx.core.app.c.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        application.unregisterActivityLifecycleCallbacks(aVar);
                    }
                });
                return true;
            } catch (Throwable th) {
                return false;
            }
        }
    }

    protected static boolean a(Object obj, int i, Activity activity) {
        try {
            final Object obj2 = f1708c.get(activity);
            if (obj2 == obj && activity.hashCode() == i) {
                final Object obj3 = f1707b.get(activity);
                g.postAtFrontOfQueue(new Runnable() { // from class: androidx.core.app.c.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            if (c.f1709d != null) {
                                c.f1709d.invoke(obj3, obj2, Boolean.FALSE, "AppCompat recreation");
                            } else {
                                c.e.invoke(obj3, obj2, Boolean.FALSE);
                            }
                        } catch (RuntimeException e2) {
                            if (e2.getClass() == RuntimeException.class && e2.getMessage() != null && e2.getMessage().startsWith("Unable to stop")) {
                                throw e2;
                            }
                        } catch (Throwable th) {
                            Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
                        }
                    }
                });
                return true;
            }
            return false;
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
            return false;
        }
    }

    private static Field b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    private static Method b(Class<?> cls) {
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

    private static Field c() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    private static Method c(Class<?> cls) {
        if (!a() || cls == null) {
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

    private static Class<?> d() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable th) {
            return null;
        }
    }
}
