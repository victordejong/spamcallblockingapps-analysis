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
final class C0461b {

    /* renamed from: g */
    private static final Handler f1766g = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    protected static final Class<?> f1760a = m20808d();

    /* renamed from: b */
    protected static final Field f1761b = m20812b();

    /* renamed from: c */
    protected static final Field f1762c = m20810c();

    /* renamed from: d */
    protected static final Method f1763d = m20814a(f1760a);

    /* renamed from: e */
    protected static final Method f1764e = m20811b(f1760a);

    /* renamed from: f */
    protected static final Method f1765f = m20809c(f1760a);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.app.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/b$a.class */
    public static final class C0465a implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a */
        Object f1773a;

        /* renamed from: b */
        private Activity f1774b;

        /* renamed from: c */
        private boolean f1775c = false;

        /* renamed from: d */
        private boolean f1776d = false;

        /* renamed from: e */
        private boolean f1777e = false;

        C0465a(Activity activity) {
            this.f1774b = activity;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f1774b == activity) {
                this.f1774b = null;
                this.f1776d = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!this.f1776d || this.f1777e || this.f1775c || !C0461b.m20813a(this.f1773a, activity)) {
                return;
            }
            this.f1777e = true;
            this.f1773a = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f1774b == activity) {
                this.f1775c = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* renamed from: a */
    private static Method m20814a(Class<?> cls) {
        Method method;
        if (cls == null) {
            method = null;
        } else {
            try {
                method = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE, String.class);
                method.setAccessible(true);
            } catch (Throwable th) {
                method = null;
            }
        }
        return method;
    }

    /* renamed from: a */
    private static boolean m20816a() {
        return Build.VERSION.SDK_INT == 26 || Build.VERSION.SDK_INT == 27;
    }

    /* renamed from: a */
    public static boolean m20815a(Activity activity) {
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else if (m20816a() && f1765f == null) {
            z = false;
        } else if (f1764e == null && f1763d == null) {
            z = false;
        } else {
            try {
                final Object obj = f1762c.get(activity);
                if (obj == null) {
                    z = false;
                } else {
                    Object obj2 = f1761b.get(activity);
                    if (obj2 == null) {
                        z = false;
                    } else {
                        final Application application = activity.getApplication();
                        final C0465a c0465a = new C0465a(activity);
                        application.registerActivityLifecycleCallbacks(c0465a);
                        f1766g.post(new Runnable() { // from class: androidx.core.app.b.1
                            @Override // java.lang.Runnable
                            public void run() {
                                c0465a.f1773a = obj;
                            }
                        });
                        if (m20816a()) {
                            f1765f.invoke(obj2, obj, null, null, 0, false, null, null, false, false);
                        } else {
                            activity.recreate();
                        }
                        f1766g.post(new Runnable() { // from class: androidx.core.app.b.2
                            @Override // java.lang.Runnable
                            public void run() {
                                application.unregisterActivityLifecycleCallbacks(c0465a);
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: a */
    protected static boolean m20813a(Object obj, Activity activity) {
        boolean z = false;
        try {
            final Object obj2 = f1762c.get(activity);
            if (obj2 == obj) {
                final Object obj3 = f1761b.get(activity);
                f1766g.postAtFrontOfQueue(new Runnable() { // from class: androidx.core.app.b.3
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (C0461b.f1763d != null) {
                                C0461b.f1763d.invoke(obj3, obj2, false, "AppCompat recreation");
                            } else {
                                C0461b.f1764e.invoke(obj3, obj2, false);
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
                z = true;
            }
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
        }
        return z;
    }

    /* renamed from: b */
    private static Field m20812b() {
        Field field;
        try {
            field = Activity.class.getDeclaredField("mMainThread");
            field.setAccessible(true);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: b */
    private static Method m20811b(Class<?> cls) {
        Method method;
        if (cls == null) {
            method = null;
        } else {
            try {
                method = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE);
                method.setAccessible(true);
            } catch (Throwable th) {
                method = null;
            }
        }
        return method;
    }

    /* renamed from: c */
    private static Field m20810c() {
        Field field;
        try {
            field = Activity.class.getDeclaredField("mToken");
            field.setAccessible(true);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: c */
    private static Method m20809c(Class<?> cls) {
        Method method;
        if (!m20816a() || cls == null) {
            method = null;
        } else {
            try {
                method = cls.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, Boolean.TYPE, Configuration.class, Configuration.class, Boolean.TYPE, Boolean.TYPE);
                method.setAccessible(true);
            } catch (Throwable th) {
                method = null;
            }
        }
        return method;
    }

    /* renamed from: d */
    private static Class<?> m20808d() {
        Class<?> cls;
        try {
            cls = Class.forName("android.app.ActivityThread");
        } catch (Throwable th) {
            cls = null;
        }
        return cls;
    }
}
