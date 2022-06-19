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
final class C0555c {

    /* renamed from: a */
    protected static final Class<?> f2829a;

    /* renamed from: d */
    protected static final Method f2832d;

    /* renamed from: e */
    protected static final Method f2833e;

    /* renamed from: f */
    protected static final Method f2834f;

    /* renamed from: g */
    private static final Handler f2835g = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    protected static final Field f2830b = m33471b();

    /* renamed from: c */
    protected static final Field f2831c = m33467f();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/c$a.class */
    public class RunnableC0556a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ C0559d f2836d;

        /* renamed from: e */
        final /* synthetic */ Object f2837e;

        RunnableC0556a(C0559d c0559d, Object obj) {
            this.f2836d = c0559d;
            this.f2837e = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2836d.f2842d = this.f2837e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/c$b.class */
    public class RunnableC0557b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Application f2838d;

        /* renamed from: e */
        final /* synthetic */ C0559d f2839e;

        RunnableC0557b(Application application, C0559d c0559d) {
            this.f2838d = application;
            this.f2839e = c0559d;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2838d.unregisterActivityLifecycleCallbacks(this.f2839e);
        }
    }

    /* renamed from: androidx.core.app.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/c$c.class */
    public class RunnableC0558c implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Object f2840d;

        /* renamed from: e */
        final /* synthetic */ Object f2841e;

        RunnableC0558c(Object obj, Object obj2) {
            this.f2840d = obj;
            this.f2841e = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Method method = C0555c.f2832d;
                if (method != null) {
                    method.invoke(this.f2840d, this.f2841e, Boolean.FALSE, "AppCompat recreation");
                } else {
                    C0555c.f2833e.invoke(this.f2840d, this.f2841e, Boolean.FALSE);
                }
            } catch (RuntimeException e) {
                if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                    throw e;
                }
            } catch (Throwable th) {
                Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.app.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/c$d.class */
    public static final class C0559d implements Application.ActivityLifecycleCallbacks {

        /* renamed from: d */
        Object f2842d;

        /* renamed from: e */
        private Activity f2843e;

        /* renamed from: f */
        private final int f2844f;

        /* renamed from: g */
        private boolean f2845g = false;

        /* renamed from: h */
        private boolean f2846h = false;

        /* renamed from: i */
        private boolean f2847i = false;

        C0559d(Activity activity) {
            this.f2843e = activity;
            this.f2844f = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f2843e == activity) {
                this.f2843e = null;
                this.f2846h = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!this.f2846h || this.f2847i || this.f2845g || !C0555c.m33465h(this.f2842d, this.f2844f, activity)) {
                return;
            }
            this.f2847i = true;
            this.f2842d = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f2843e == activity) {
                this.f2845g = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    static {
        Class<?> m33472a = m33472a();
        f2829a = m33472a;
        f2832d = m33469d(m33472a);
        f2833e = m33470c(m33472a);
        f2834f = m33468e(m33472a);
    }

    /* renamed from: a */
    private static Class<?> m33472a() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    private static Field m33471b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: c */
    private static Method m33470c(Class<?> cls) {
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

    /* renamed from: d */
    private static Method m33469d(Class<?> cls) {
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

    /* renamed from: e */
    private static Method m33468e(Class<?> cls) {
        if (!m33466g() || cls == null) {
            return null;
        }
        try {
            Class<?> cls2 = Integer.TYPE;
            Class<?> cls3 = Boolean.TYPE;
            Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, cls2, cls3, Configuration.class, Configuration.class, cls3, cls3);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: f */
    private static Field m33467f() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: g */
    private static boolean m33466g() {
        int i = Build.VERSION.SDK_INT;
        return i == 26 || i == 27;
    }

    /* renamed from: h */
    protected static boolean m33465h(Object obj, int i, Activity activity) {
        try {
            Object obj2 = f2831c.get(activity);
            if (obj2 == obj && activity.hashCode() == i) {
                f2835g.postAtFrontOfQueue(new RunnableC0558c(f2830b.get(activity), obj2));
                return true;
            }
            return false;
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
            return false;
        }
    }

    /* renamed from: i */
    public static boolean m33464i(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (m33466g() && f2834f == null) {
            return false;
        } else {
            if (f2833e == null && f2832d == null) {
                return false;
            }
            try {
                Object obj2 = f2831c.get(activity);
                if (obj2 == null || (obj = f2830b.get(activity)) == null) {
                    return false;
                }
                Application application = activity.getApplication();
                C0559d c0559d = new C0559d(activity);
                application.registerActivityLifecycleCallbacks(c0559d);
                Handler handler = f2835g;
                handler.post(new RunnableC0556a(c0559d, obj2));
                if (m33466g()) {
                    Method method = f2834f;
                    Boolean bool = Boolean.FALSE;
                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                } else {
                    activity.recreate();
                }
                handler.post(new RunnableC0557b(application, c0559d));
                return true;
            } catch (Throwable th) {
                return false;
            }
        }
    }
}
