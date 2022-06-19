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
final class C0241c {

    /* renamed from: a */
    protected static final Class<?> f1573a;

    /* renamed from: d */
    protected static final Method f1576d;

    /* renamed from: e */
    protected static final Method f1577e;

    /* renamed from: f */
    protected static final Method f1578f;

    /* renamed from: g */
    private static final Handler f1579g = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    protected static final Field f1574b = m13663b();

    /* renamed from: c */
    protected static final Field f1575c = m13659f();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/c$a.class */
    public class RunnableC0242a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ C0245d f1580b;

        /* renamed from: c */
        final /* synthetic */ Object f1581c;

        RunnableC0242a(C0245d c0245d, Object obj) {
            this.f1580b = c0245d;
            this.f1581c = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1580b.f1586b = this.f1581c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/c$b.class */
    public class RunnableC0243b implements Runnable {

        /* renamed from: b */
        final /* synthetic */ Application f1582b;

        /* renamed from: c */
        final /* synthetic */ C0245d f1583c;

        RunnableC0243b(Application application, C0245d c0245d) {
            this.f1582b = application;
            this.f1583c = c0245d;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1582b.unregisterActivityLifecycleCallbacks(this.f1583c);
        }
    }

    /* renamed from: androidx.core.app.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/c$c.class */
    public class RunnableC0244c implements Runnable {

        /* renamed from: b */
        final /* synthetic */ Object f1584b;

        /* renamed from: c */
        final /* synthetic */ Object f1585c;

        RunnableC0244c(Object obj, Object obj2) {
            this.f1584b = obj;
            this.f1585c = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Method method = C0241c.f1576d;
                if (method != null) {
                    method.invoke(this.f1584b, this.f1585c, Boolean.FALSE, "AppCompat recreation");
                } else {
                    C0241c.f1577e.invoke(this.f1584b, this.f1585c, Boolean.FALSE);
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
    public static final class C0245d implements Application.ActivityLifecycleCallbacks {

        /* renamed from: b */
        Object f1586b;

        /* renamed from: c */
        private Activity f1587c;

        /* renamed from: d */
        private final int f1588d;

        /* renamed from: e */
        private boolean f1589e = false;

        /* renamed from: f */
        private boolean f1590f = false;

        /* renamed from: g */
        private boolean f1591g = false;

        C0245d(Activity activity) {
            this.f1587c = activity;
            this.f1588d = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f1587c == activity) {
                this.f1587c = null;
                this.f1590f = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!this.f1590f || this.f1591g || this.f1589e || !C0241c.m13657h(this.f1586b, this.f1588d, activity)) {
                return;
            }
            this.f1591g = true;
            this.f1586b = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f1587c == activity) {
                this.f1589e = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    static {
        Class<?> m13664a = m13664a();
        f1573a = m13664a;
        f1576d = m13661d(m13664a);
        f1577e = m13662c(m13664a);
        f1578f = m13660e(m13664a);
    }

    /* renamed from: a */
    private static Class<?> m13664a() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    private static Field m13663b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: c */
    private static Method m13662c(Class<?> cls) {
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
    private static Method m13661d(Class<?> cls) {
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
    private static Method m13660e(Class<?> cls) {
        if (!m13658g() || cls == null) {
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
    private static Field m13659f() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: g */
    private static boolean m13658g() {
        int i = Build.VERSION.SDK_INT;
        return i == 26 || i == 27;
    }

    /* renamed from: h */
    protected static boolean m13657h(Object obj, int i, Activity activity) {
        try {
            Object obj2 = f1575c.get(activity);
            if (obj2 == obj && activity.hashCode() == i) {
                f1579g.postAtFrontOfQueue(new RunnableC0244c(f1574b.get(activity), obj2));
                return true;
            }
            return false;
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
            return false;
        }
    }

    /* renamed from: i */
    public static boolean m13656i(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (m13658g() && f1578f == null) {
            return false;
        } else {
            if (f1577e == null && f1576d == null) {
                return false;
            }
            try {
                Object obj2 = f1575c.get(activity);
                if (obj2 == null || (obj = f1574b.get(activity)) == null) {
                    return false;
                }
                Application application = activity.getApplication();
                C0245d c0245d = new C0245d(activity);
                application.registerActivityLifecycleCallbacks(c0245d);
                Handler handler = f1579g;
                handler.post(new RunnableC0242a(c0245d, obj2));
                if (m13658g()) {
                    Method method = f1578f;
                    Boolean bool = Boolean.FALSE;
                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                } else {
                    activity.recreate();
                }
                handler.post(new RunnableC0243b(application, c0245d));
                return true;
            } catch (Throwable th) {
                return false;
            }
        }
    }
}
