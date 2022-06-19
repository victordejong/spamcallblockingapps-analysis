package p026c0;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* renamed from: c0.d */
/* loaded from: classes-dex2jar.jar:c0/d.class */
public final class C0780d {

    /* renamed from: a */
    public static final Class<?> f2898a;

    /* renamed from: b */
    public static final Field f2899b;

    /* renamed from: c */
    public static final Field f2900c;

    /* renamed from: d */
    public static final Method f2901d;

    /* renamed from: e */
    public static final Method f2902e;

    /* renamed from: f */
    public static final Method f2903f;

    /* renamed from: g */
    public static final Handler f2904g = new Handler(Looper.getMainLooper());

    /* renamed from: c0.d$a */
    /* loaded from: classes-dex2jar.jar:c0/d$a.class */
    public class RunnableC0781a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C0783c f2905a;

        /* renamed from: b */
        public final /* synthetic */ Object f2906b;

        public RunnableC0781a(C0783c c0783c, Object obj) {
            this.f2905a = c0783c;
            this.f2906b = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2905a.f2909a = this.f2906b;
        }
    }

    /* renamed from: c0.d$b */
    /* loaded from: classes-dex2jar.jar:c0/d$b.class */
    public class RunnableC0782b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Application f2907a;

        /* renamed from: b */
        public final /* synthetic */ C0783c f2908b;

        public RunnableC0782b(Application application, C0783c c0783c) {
            this.f2907a = application;
            this.f2908b = c0783c;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2907a.unregisterActivityLifecycleCallbacks(this.f2908b);
        }
    }

    /* renamed from: c0.d$c */
    /* loaded from: classes-dex2jar.jar:c0/d$c.class */
    public static final class C0783c implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a */
        public Object f2909a;

        /* renamed from: b */
        public Activity f2910b;

        /* renamed from: c */
        public final int f2911c;

        /* renamed from: d */
        public boolean f2912d = false;

        /* renamed from: e */
        public boolean f2913e = false;

        /* renamed from: f */
        public boolean f2914f = false;

        public C0783c(Activity activity) {
            this.f2910b = activity;
            this.f2911c = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f2910b == activity) {
                this.f2910b = null;
                this.f2913e = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            boolean z;
            if (!this.f2913e || this.f2914f || this.f2912d) {
                return;
            }
            Object obj = this.f2909a;
            int i = this.f2911c;
            try {
                Object obj2 = C0780d.f2900c.get(activity);
                z = false;
                if (obj2 == obj) {
                    if (activity.hashCode() != i) {
                        z = false;
                    } else {
                        C0780d.f2904g.postAtFrontOfQueue(new RunnableC0784e(C0780d.f2899b.get(activity), obj2));
                        z = true;
                    }
                }
            } catch (Throwable th) {
                z = false;
            }
            if (!z) {
                return;
            }
            this.f2914f = true;
            this.f2909a = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f2910b == activity) {
                this.f2912d = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x008b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p026c0.C0780d.m9098clinit():void");
    }

    /* renamed from: a */
    public static boolean m7381a() {
        int i = Build.VERSION.SDK_INT;
        return i == 26 || i == 27;
    }

    /* renamed from: b */
    public static boolean m7380b(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (m7381a() && f2903f == null) {
            return false;
        } else {
            if (f2902e == null && f2901d == null) {
                return false;
            }
            try {
                Object obj2 = f2900c.get(activity);
                if (obj2 == null || (obj = f2899b.get(activity)) == null) {
                    return false;
                }
                Application application = activity.getApplication();
                C0783c c0783c = new C0783c(activity);
                application.registerActivityLifecycleCallbacks(c0783c);
                Handler handler = f2904g;
                handler.post(new RunnableC0781a(c0783c, obj2));
                if (m7381a()) {
                    Method method = f2903f;
                    Boolean bool = Boolean.FALSE;
                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                } else {
                    activity.recreate();
                }
                handler.post(new RunnableC0782b(application, c0783c));
                return true;
            } catch (Throwable th) {
                return false;
            }
        }
    }
}
