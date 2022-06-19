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
/* renamed from: androidx.core.app.c */
/* loaded from: classes-dex2jar.jar:androidx/core/app/c.class */
final class C0736c {

    /* renamed from: a */
    protected static final Class<?> f3268a;

    /* renamed from: d */
    protected static final Method f3271d;

    /* renamed from: e */
    protected static final Method f3272e;

    /* renamed from: f */
    protected static final Method f3273f;

    /* renamed from: g */
    private static final Handler f3274g = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    protected static final Field f3269b = m44600b();

    /* renamed from: c */
    protected static final Field f3270c = m44598c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/c$a.class */
    public static final class C0740a implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a */
        Object f3281a;

        /* renamed from: b */
        private Activity f3282b;

        /* renamed from: c */
        private final int f3283c;

        /* renamed from: d */
        private boolean f3284d = false;

        /* renamed from: e */
        private boolean f3285e = false;

        /* renamed from: f */
        private boolean f3286f = false;

        C0740a(Activity activity) {
            this.f3282b = activity;
            this.f3283c = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            if (this.f3282b == activity) {
                this.f3282b = null;
                this.f3285e = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            if (!this.f3285e || this.f3286f || this.f3284d || !C0736c.m44601a(this.f3281a, this.f3283c, activity)) {
                return;
            }
            this.f3286f = true;
            this.f3281a = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            if (this.f3282b == activity) {
                this.f3284d = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }
    }

    static {
        Class<?> m44596d = m44596d();
        f3268a = m44596d;
        f3271d = m44602a(m44596d);
        f3272e = m44599b(m44596d);
        f3273f = m44597c(m44596d);
    }

    private C0736c() {
    }

    /* renamed from: a */
    private static Method m44602a(Class<?> cls) {
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
    private static boolean m44604a() {
        return Build.VERSION.SDK_INT == 26 || Build.VERSION.SDK_INT == 27;
    }

    /* renamed from: a */
    public static boolean m44603a(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (m44604a() && f3273f == null) {
            return false;
        } else {
            if (f3272e == null && f3271d == null) {
                return false;
            }
            try {
                final Object obj2 = f3270c.get(activity);
                if (obj2 == null || (obj = f3269b.get(activity)) == null) {
                    return false;
                }
                final Application application = activity.getApplication();
                final C0740a c0740a = new C0740a(activity);
                application.registerActivityLifecycleCallbacks(c0740a);
                Handler handler = f3274g;
                handler.post(new Runnable() { // from class: androidx.core.app.c.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        c0740a.f3281a = obj2;
                    }
                });
                if (m44604a()) {
                    f3273f.invoke(obj, obj2, null, null, 0, Boolean.FALSE, null, null, Boolean.FALSE, Boolean.FALSE);
                } else {
                    activity.recreate();
                }
                handler.post(new Runnable() { // from class: androidx.core.app.c.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        application.unregisterActivityLifecycleCallbacks(c0740a);
                    }
                });
                return true;
            } catch (Throwable th) {
                return false;
            }
        }
    }

    /* renamed from: a */
    protected static boolean m44601a(Object obj, int i, Activity activity) {
        try {
            final Object obj2 = f3270c.get(activity);
            if (obj2 == obj && activity.hashCode() == i) {
                final Object obj3 = f3269b.get(activity);
                f3274g.postAtFrontOfQueue(new Runnable() { // from class: androidx.core.app.c.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            if (C0736c.f3271d != null) {
                                C0736c.f3271d.invoke(obj3, obj2, Boolean.FALSE, "AppCompat recreation");
                            } else {
                                C0736c.f3272e.invoke(obj3, obj2, Boolean.FALSE);
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
            }
            return false;
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
            return false;
        }
    }

    /* renamed from: b */
    private static Field m44600b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    private static Method m44599b(Class<?> cls) {
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
    private static Field m44598c() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: c */
    private static Method m44597c(Class<?> cls) {
        if (!m44604a() || cls == null) {
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
    private static Class<?> m44596d() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable th) {
            return null;
        }
    }
}
