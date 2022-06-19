package p1727n3.p1807k.p1808a;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* renamed from: n3.k.a.d */
/* loaded from: classes-dex2jar.jar:n3/k/a/d.class */
public final class C26419d {

    /* renamed from: a */
    public static final Class<?> f74034a;

    /* renamed from: b */
    public static final Field f74035b;

    /* renamed from: c */
    public static final Field f74036c;

    /* renamed from: d */
    public static final Method f74037d;

    /* renamed from: e */
    public static final Method f74038e;

    /* renamed from: f */
    public static final Method f74039f;

    /* renamed from: g */
    public static final Handler f74040g = new Handler(Looper.getMainLooper());

    /* renamed from: n3.k.a.d$a */
    /* loaded from: classes-dex2jar.jar:n3/k/a/d$a.class */
    public class RunnableC26420a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C26422c f74041a;

        /* renamed from: b */
        public final /* synthetic */ Object f74042b;

        public RunnableC26420a(C26422c c26422c, Object obj) {
            this.f74041a = c26422c;
            this.f74042b = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f74041a.f74045a = this.f74042b;
        }
    }

    /* renamed from: n3.k.a.d$b */
    /* loaded from: classes-dex2jar.jar:n3/k/a/d$b.class */
    public class RunnableC26421b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Application f74043a;

        /* renamed from: b */
        public final /* synthetic */ C26422c f74044b;

        public RunnableC26421b(Application application, C26422c c26422c) {
            this.f74043a = application;
            this.f74044b = c26422c;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f74043a.unregisterActivityLifecycleCallbacks(this.f74044b);
        }
    }

    /* renamed from: n3.k.a.d$c */
    /* loaded from: classes-dex2jar.jar:n3/k/a/d$c.class */
    public static final class C26422c implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a */
        public Object f74045a;

        /* renamed from: b */
        public Activity f74046b;

        /* renamed from: c */
        public final int f74047c;

        /* renamed from: d */
        public boolean f74048d = false;

        /* renamed from: e */
        public boolean f74049e = false;

        /* renamed from: f */
        public boolean f74050f = false;

        public C26422c(Activity activity) {
            this.f74046b = activity;
            this.f74047c = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f74046b == activity) {
                this.f74046b = null;
                this.f74049e = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            boolean z;
            if (!this.f74049e || this.f74050f || this.f74048d) {
                return;
            }
            Object obj = this.f74045a;
            int i = this.f74047c;
            try {
                Object obj2 = C26419d.f74036c.get(activity);
                z = false;
                if (obj2 == obj) {
                    if (activity.hashCode() != i) {
                        z = false;
                    } else {
                        C26419d.f74040g.postAtFrontOfQueue(new RunnableC26423e(C26419d.f74035b.get(activity), obj2));
                        z = true;
                    }
                }
            } catch (Throwable th) {
                z = false;
            }
            if (!z) {
                return;
            }
            this.f74050f = true;
            this.f74045a = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f74046b == activity) {
                this.f74048d = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1808a.C26419d.m50153clinit():void");
    }

    /* renamed from: a */
    public static boolean m1888a() {
        int i = Build.VERSION.SDK_INT;
        return i == 26 || i == 27;
    }

    /* renamed from: b */
    public static boolean m1887b(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (m1888a() && f74039f == null) {
            return false;
        } else {
            if (f74038e == null && f74037d == null) {
                return false;
            }
            try {
                Object obj2 = f74036c.get(activity);
                if (obj2 == null || (obj = f74035b.get(activity)) == null) {
                    return false;
                }
                Application application = activity.getApplication();
                C26422c c26422c = new C26422c(activity);
                application.registerActivityLifecycleCallbacks(c26422c);
                Handler handler = f74040g;
                handler.post(new RunnableC26420a(c26422c, obj2));
                if (m1888a()) {
                    Method method = f74039f;
                    Boolean bool = Boolean.FALSE;
                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                } else {
                    activity.recreate();
                }
                handler.post(new RunnableC26421b(application, c26422c));
                return true;
            } catch (Throwable th) {
                return false;
            }
        }
    }
}
