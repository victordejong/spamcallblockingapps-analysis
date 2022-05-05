package p081h.p203i.p204a.p224e.p259j.p276q;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.RemoteException;
import com.flurry.sdk.C3496r;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6865f;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p249s.AbstractC7074f;
import p081h.p203i.p204a.p224e.p235d.p249s.C7077i;
import p081h.p203i.p204a.p224e.p285m.p286a.C8941a;
/* renamed from: h.i.a.e.j.q.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/h.class */
public class C8613h {

    /* renamed from: j */
    public static volatile C8613h f19715j;

    /* renamed from: a */
    public final String f19716a;

    /* renamed from: b */
    public final AbstractC7074f f19717b;

    /* renamed from: c */
    public final ExecutorService f19718c;

    /* renamed from: d */
    public final C8941a f19719d;

    /* renamed from: e */
    public Map<Object, Object> f19720e;

    /* renamed from: f */
    public int f19721f;

    /* renamed from: g */
    public boolean f19722g;

    /* renamed from: h */
    public String f19723h;

    /* renamed from: i */
    public AbstractC8554b f19724i;

    /* renamed from: h.i.a.e.j.q.h$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/h$a.class */
    public final class BinderC8614a extends AbstractBinderC8595f {

        /* renamed from: a */
        public final AtomicReference<Bundle> f19725a = new AtomicReference<>();

        /* renamed from: b */
        public boolean f19726b;

        public BinderC8614a() {
        }

        /* renamed from: a */
        public final <T> T m17581a(Bundle bundle, Class<T> cls) {
            Object obj;
            if (bundle == null || (obj = bundle.get(C3496r.f6031a)) == null) {
                return null;
            }
            try {
                return cls.cast(obj);
            } catch (ClassCastException e) {
                String canonicalName = cls.getCanonicalName();
                String canonicalName2 = obj.getClass().getCanonicalName();
                C8613h.this.m17620a(5, "Unexpected object type. Expected, Received", canonicalName, canonicalName2, e);
                String unused = C8613h.this.f19716a;
                String.format("Unexpected object type. Expected, Received".concat(": %s, %s"), canonicalName, canonicalName2);
                throw e;
            }
        }

        /* renamed from: a */
        public final String m17582a(long j) {
            return (String) m17581a(m17576f(j), String.class);
        }

        /* renamed from: b */
        public final <T extends Parcelable> List<T> m17580b(long j) {
            return (List) m17581a(m17576f(5000L), List.class);
        }

        /* renamed from: c */
        public final Long m17579c(long j) {
            return (Long) m17581a(m17576f(500L), Long.class);
        }

        /* renamed from: d */
        public final Integer m17578d(long j) {
            return (Integer) m17581a(m17576f(10000L), Integer.class);
        }

        /* renamed from: e */
        public final Bundle m17577e(long j) {
            return m17576f(j);
        }

        /* renamed from: f */
        public final Bundle m17576f(long j) {
            Bundle bundle;
            synchronized (this.f19725a) {
                if (!this.f19726b) {
                    try {
                        this.f19725a.wait(j);
                    } catch (InterruptedException e) {
                        return null;
                    }
                }
                bundle = this.f19725a.get();
            }
            return bundle;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8586e
        /* renamed from: h */
        public final void mo17575h(Bundle bundle) {
            synchronized (this.f19725a) {
                this.f19725a.set(bundle);
                this.f19726b = true;
                this.f19725a.notify();
            }
        }
    }

    /* renamed from: h.i.a.e.j.q.h$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/h$b.class */
    public abstract class AbstractRunnableC8615b implements Runnable {

        /* renamed from: a */
        public final long f19728a;

        /* renamed from: b */
        public final long f19729b;

        /* renamed from: c */
        public final boolean f19730c;

        public AbstractRunnableC8615b(C8613h hVar) {
            this(true);
        }

        public AbstractRunnableC8615b(boolean z) {
            this.f19728a = C8613h.this.f19717b.currentTimeMillis();
            this.f19729b = C8613h.this.f19717b.elapsedRealtime();
            this.f19730c = z;
        }

        /* renamed from: a */
        public abstract void mo16955a() throws RemoteException;

        /* renamed from: b */
        public void mo17091b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C8613h.this.f19722g) {
                mo17091b();
                return;
            }
            try {
                mo16955a();
            } catch (Exception e) {
                C8613h.this.m17607a(e, false, this.f19730c);
                mo17091b();
            }
        }
    }

    /* renamed from: h.i.a.e.j.q.h$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/h$c.class */
    public final class C8616c implements Application.ActivityLifecycleCallbacks {
        public C8616c() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            C8613h.this.m17614a(new C8546a0(this, activity, bundle));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            C8613h.this.m17614a(new C8605g0(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            C8613h.this.m17614a(new C8578d0(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            C8613h.this.m17614a(new C8564c0(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            BinderC8614a aVar = new BinderC8614a();
            C8613h.this.m17614a(new C8596f0(this, activity, aVar));
            Bundle e = aVar.m17577e(50L);
            if (e != null) {
                bundle.putAll(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            C8613h.this.m17614a(new C8555b0(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            C8613h.this.m17614a(new C8587e0(this, activity));
        }
    }

    public C8613h(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str == null || !m17596b(str2, str3)) {
            this.f19716a = "FA";
        } else {
            this.f19716a = str;
        }
        this.f19717b = C7077i.m21148a();
        this.f19718c = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        Application application = (Application) context.getApplicationContext();
        if (application != null) {
            application.registerActivityLifecycleCallbacks(new C8616c());
        }
        this.f19719d = new C8941a(this);
        if (!(!m17599b(context) || m17583h())) {
            this.f19723h = null;
            this.f19722g = true;
            return;
        }
        if (!m17596b(str2, str3)) {
            this.f19723h = "fa";
            if (str2 == null || str3 == null) {
                if (str2 == null) {
                }
                if (str3 == null) {
                }
            } else {
                this.f19722g = true;
                return;
            }
        } else {
            this.f19723h = str2;
        }
        m17614a(new C8626i(this, context, str2, str3, bundle));
    }

    /* renamed from: a */
    public static C8613h m17617a(Context context, String str, String str2, String str3, Bundle bundle) {
        C7021t.m21290a(context);
        if (f19715j == null) {
            synchronized (C8613h.class) {
                try {
                    if (f19715j == null) {
                        f19715j = new C8613h(context, str, str2, str3, bundle);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f19715j;
    }

    /* renamed from: b */
    public static boolean m17599b(Context context) {
        try {
            C6865f.m21689a(context);
            return C6865f.m21690a() != null;
        } catch (IllegalStateException e) {
            return false;
        }
    }

    /* renamed from: b */
    public static boolean m17596b(String str, String str2) {
        return (str2 == null || str == null || m17583h()) ? false : true;
    }

    /* renamed from: c */
    public static int m17593c(Context context) {
        return DynamiteModule.m31889b(context, "com.google.android.gms.measurement.dynamite");
    }

    /* renamed from: d */
    public static int m17589d(Context context) {
        return DynamiteModule.m31895a(context, "com.google.android.gms.measurement.dynamite");
    }

    /* renamed from: h */
    public static boolean m17583h() {
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: a */
    public final long m17621a() {
        BinderC8614a aVar = new BinderC8614a();
        m17614a(new C8706q(this, aVar));
        Long c = aVar.m17579c(500L);
        if (c != null) {
            return c.longValue();
        }
        long nextLong = new Random(System.nanoTime() ^ this.f19717b.currentTimeMillis()).nextLong();
        int i = this.f19721f + 1;
        this.f19721f = i;
        return nextLong + i;
    }

    /* renamed from: a */
    public final Bundle m17615a(Bundle bundle, boolean z) {
        BinderC8614a aVar = new BinderC8614a();
        m17614a(new C8751v(this, bundle, aVar));
        if (z) {
            return aVar.m17577e(5000L);
        }
        return null;
    }

    /* renamed from: a */
    public final AbstractC8554b m17618a(Context context) {
        try {
            return AbstractBinderC8563c.m17766a(DynamiteModule.m31896a(context, DynamiteModule.f6680i, "com.google.android.gms.measurement.dynamite").m31891a("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.C3567a e) {
            m17607a((Exception) e, true, false);
            return null;
        }
    }

    /* renamed from: a */
    public final List<Bundle> m17605a(String str, String str2) {
        BinderC8614a aVar = new BinderC8614a();
        m17614a(new C8651k(this, str, str2, aVar));
        List<Bundle> b = aVar.m17580b(5000L);
        List<Bundle> list = b;
        if (b == null) {
            list = Collections.emptyList();
        }
        return list;
    }

    /* renamed from: a */
    public final Map<String, Object> m17601a(String str, String str2, boolean z) {
        BinderC8614a aVar = new BinderC8614a();
        m17614a(new C8733t(this, str, str2, z, aVar));
        Bundle e = aVar.m17577e(5000L);
        if (e == null || e.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(e.size());
        for (String str3 : e.keySet()) {
            Object obj = e.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                hashMap.put(str3, obj);
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public final void m17620a(int i, String str, Object obj, Object obj2, Object obj3) {
        m17614a(new C8742u(this, false, 5, str, obj, obj2, obj3));
    }

    /* renamed from: a */
    public final void m17619a(Activity activity, String str, String str2) {
        m17614a(new C8660l(this, activity, str, str2));
    }

    /* renamed from: a */
    public final void m17616a(Bundle bundle) {
        m17614a(new C8791z(this, bundle));
    }

    /* renamed from: a */
    public final void m17614a(AbstractRunnableC8615b bVar) {
        this.f19718c.execute(bVar);
    }

    /* renamed from: a */
    public final void m17607a(Exception exc, boolean z, boolean z2) {
        this.f19722g |= z;
        if (!z && z2) {
            m17620a(5, "Error with data collection. Data lost.", exc, (Object) null, (Object) null);
        }
    }

    /* renamed from: a */
    public final void m17606a(String str) {
        m17614a(new C8669m(this, str));
    }

    /* renamed from: a */
    public final void m17604a(String str, String str2, Bundle bundle) {
        m17614a(new C8642j(this, str, str2, bundle));
    }

    /* renamed from: a */
    public final void m17603a(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l) {
        m17614a(new C8769x(this, l, str, str2, bundle, true, z2));
    }

    /* renamed from: a */
    public final void m17602a(String str, String str2, Object obj, boolean z) {
        m17614a(new C8782y(this, str, str2, obj, true));
    }

    /* renamed from: b */
    public final String m17600b() {
        return this.f19723h;
    }

    /* renamed from: b */
    public final void m17597b(String str) {
        m17614a(new C8678n(this, str));
    }

    /* renamed from: b */
    public final void m17595b(String str, String str2, Bundle bundle) {
        m17603a(str, str2, bundle, true, true, null);
    }

    /* renamed from: c */
    public final int m17591c(String str) {
        BinderC8614a aVar = new BinderC8614a();
        m17614a(new C8760w(this, str, aVar));
        Integer d = aVar.m17578d(10000L);
        if (d == null) {
            return 25;
        }
        return d.intValue();
    }

    /* renamed from: c */
    public final String m17594c() {
        BinderC8614a aVar = new BinderC8614a();
        m17614a(new C8724s(this, aVar));
        return aVar.m17582a(500L);
    }

    /* renamed from: d */
    public final String m17590d() {
        BinderC8614a aVar = new BinderC8614a();
        m17614a(new C8715r(this, aVar));
        return aVar.m17582a(500L);
    }

    /* renamed from: e */
    public final String m17588e() {
        BinderC8614a aVar = new BinderC8614a();
        m17614a(new C8687o(this, aVar));
        return aVar.m17582a(500L);
    }

    /* renamed from: f */
    public final C8941a m17586f() {
        return this.f19719d;
    }

    /* renamed from: g */
    public final String m17584g() {
        BinderC8614a aVar = new BinderC8614a();
        m17614a(new C8697p(this, aVar));
        return aVar.m17582a(50L);
    }
}
