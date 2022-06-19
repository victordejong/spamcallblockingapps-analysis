package io.fabric.sdk.android;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import io.fabric.sdk.android.C1444a;
import io.fabric.sdk.android.services.concurrency.AbstractC1535d;
import io.fabric.sdk.android.services.concurrency.C1544k;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import io.fabric.sdk.android.services.p068b.C1494p;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: io.fabric.sdk.android.c */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/c.class */
public class C1449c {

    /* renamed from: a */
    static volatile C1449c f4000a;

    /* renamed from: b */
    static final AbstractC1462k f4001b = new C1448b();

    /* renamed from: c */
    final AbstractC1462k f4002c;

    /* renamed from: d */
    final boolean f4003d;

    /* renamed from: e */
    private final Context f4004e;

    /* renamed from: f */
    private final Map<Class<? extends AbstractC1459h>, AbstractC1459h> f4005f;

    /* renamed from: g */
    private final ExecutorService f4006g;

    /* renamed from: h */
    private final Handler f4007h;

    /* renamed from: i */
    private final AbstractC1455f<C1449c> f4008i;

    /* renamed from: j */
    private final AbstractC1455f<?> f4009j;

    /* renamed from: k */
    private final C1494p f4010k;

    /* renamed from: l */
    private C1444a f4011l;

    /* renamed from: m */
    private WeakReference<Activity> f4012m;

    /* renamed from: n */
    private AtomicBoolean f4013n = new AtomicBoolean(false);

    /* renamed from: io.fabric.sdk.android.c$a */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/c$a.class */
    public static class C1452a {

        /* renamed from: a */
        private final Context f4018a;

        /* renamed from: b */
        private AbstractC1459h[] f4019b;

        /* renamed from: c */
        private C1544k f4020c;

        /* renamed from: d */
        private Handler f4021d;

        /* renamed from: e */
        private AbstractC1462k f4022e;

        /* renamed from: f */
        private boolean f4023f;

        /* renamed from: g */
        private String f4024g;

        /* renamed from: h */
        private String f4025h;

        /* renamed from: i */
        private AbstractC1455f<C1449c> f4026i;

        public C1452a(Context context) {
            if (context != null) {
                this.f4018a = context;
                return;
            }
            throw new IllegalArgumentException("Context must not be null.");
        }

        /* renamed from: a */
        public C1452a m3568a(AbstractC1459h... abstractC1459hArr) {
            if (this.f4019b == null) {
                this.f4019b = abstractC1459hArr;
                return this;
            }
            throw new IllegalStateException("Kits already set.");
        }

        /* renamed from: a */
        public C1449c m3569a() {
            if (this.f4020c == null) {
                this.f4020c = C1544k.m3342a();
            }
            if (this.f4021d == null) {
                this.f4021d = new Handler(Looper.getMainLooper());
            }
            if (this.f4022e == null) {
                if (this.f4023f) {
                    this.f4022e = new C1448b(3);
                } else {
                    this.f4022e = new C1448b();
                }
            }
            if (this.f4025h == null) {
                this.f4025h = this.f4018a.getPackageName();
            }
            if (this.f4026i == null) {
                this.f4026i = AbstractC1455f.f4030d;
            }
            AbstractC1459h[] abstractC1459hArr = this.f4019b;
            HashMap hashMap = abstractC1459hArr == null ? new HashMap() : C1449c.m3580b(Arrays.asList(abstractC1459hArr));
            Context applicationContext = this.f4018a.getApplicationContext();
            return new C1449c(applicationContext, hashMap, this.f4020c, this.f4021d, this.f4022e, this.f4023f, this.f4026i, new C1494p(applicationContext, this.f4025h, this.f4024g, hashMap.values()), C1449c.m3575d(this.f4018a));
        }
    }

    C1449c(Context context, Map<Class<? extends AbstractC1459h>, AbstractC1459h> map, C1544k c1544k, Handler handler, AbstractC1462k abstractC1462k, boolean z, AbstractC1455f abstractC1455f, C1494p c1494p, Activity activity) {
        this.f4004e = context;
        this.f4005f = map;
        this.f4006g = c1544k;
        this.f4007h = handler;
        this.f4002c = abstractC1462k;
        this.f4003d = z;
        this.f4008i = abstractC1455f;
        this.f4009j = m3592a(map.size());
        this.f4010k = c1494p;
        m3591a(activity);
    }

    /* renamed from: a */
    static C1449c m3593a() {
        if (f4000a != null) {
            return f4000a;
        }
        throw new IllegalStateException("Must Initialize Fabric before using singleton()");
    }

    /* renamed from: a */
    public static C1449c m3589a(Context context, AbstractC1459h... abstractC1459hArr) {
        if (f4000a == null) {
            synchronized (C1449c.class) {
                try {
                    if (f4000a == null) {
                        m3577c(new C1452a(context).m3568a(abstractC1459hArr).m3569a());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4000a;
    }

    /* renamed from: a */
    public static <T extends AbstractC1459h> T m3587a(Class<T> cls) {
        return (T) m3593a().f4005f.get(cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static void m3584a(Map<Class<? extends AbstractC1459h>, AbstractC1459h> map, Collection<? extends AbstractC1459h> collection) {
        for (AbstractC1459h abstractC1459h : collection) {
            map.put(abstractC1459h.getClass(), abstractC1459h);
            if (abstractC1459h instanceof AbstractC1460i) {
                m3584a(map, ((AbstractC1460i) abstractC1459h).getKits());
            }
        }
    }

    /* renamed from: b */
    public static Map<Class<? extends AbstractC1459h>, AbstractC1459h> m3580b(Collection<? extends AbstractC1459h> collection) {
        HashMap hashMap = new HashMap(collection.size());
        m3584a(hashMap, collection);
        return hashMap;
    }

    /* renamed from: c */
    private static void m3577c(C1449c c1449c) {
        f4000a = c1449c;
        c1449c.m3570i();
    }

    /* renamed from: d */
    public static Activity m3575d(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        return null;
    }

    /* renamed from: g */
    public static AbstractC1462k m3572g() {
        return f4000a == null ? f4001b : f4000a.f4002c;
    }

    /* renamed from: h */
    public static boolean m3571h() {
        if (f4000a == null) {
            return false;
        }
        return f4000a.f4003d;
    }

    /* renamed from: i */
    private void m3570i() {
        this.f4011l = new C1444a(this.f4004e);
        this.f4011l.m3600a(new C1444a.AbstractC1447b() { // from class: io.fabric.sdk.android.c.1
            @Override // io.fabric.sdk.android.C1444a.AbstractC1447b
            public void onActivityCreated(Activity activity, Bundle bundle) {
                C1449c.this.m3591a(activity);
            }

            @Override // io.fabric.sdk.android.C1444a.AbstractC1447b
            public void onActivityResumed(Activity activity) {
                C1449c.this.m3591a(activity);
            }

            @Override // io.fabric.sdk.android.C1444a.AbstractC1447b
            public void onActivityStarted(Activity activity) {
                C1449c.this.m3591a(activity);
            }
        });
        m3590a(this.f4004e);
    }

    /* renamed from: a */
    public C1449c m3591a(Activity activity) {
        this.f4012m = new WeakReference<>(activity);
        return this;
    }

    /* renamed from: a */
    AbstractC1455f<?> m3592a(final int i) {
        return new AbstractC1455f() { // from class: io.fabric.sdk.android.c.2

            /* renamed from: a */
            final CountDownLatch f4015a;

            {
                C1449c.this = this;
                this.f4015a = new CountDownLatch(i);
            }

            @Override // io.fabric.sdk.android.AbstractC1455f
            /* renamed from: a */
            public void mo3562a(Exception exc) {
                C1449c.this.f4008i.mo3562a(exc);
            }

            @Override // io.fabric.sdk.android.AbstractC1455f
            /* renamed from: a */
            public void mo3561a(Object obj) {
                this.f4015a.countDown();
                if (this.f4015a.getCount() == 0) {
                    C1449c.this.f4013n.set(true);
                    C1449c.this.f4008i.mo3561a((AbstractC1455f) C1449c.this);
                }
            }
        };
    }

    /* renamed from: a */
    void m3590a(Context context) {
        StringBuilder sb;
        Future<Map<String, C1461j>> m3582b = m3582b(context);
        Collection<AbstractC1459h> m3573f = m3573f();
        C1463l c1463l = new C1463l(m3582b, m3573f);
        ArrayList<AbstractC1459h> arrayList = new ArrayList(m3573f);
        Collections.sort(arrayList);
        c1463l.injectParameters(context, this, AbstractC1455f.f4030d, this.f4010k);
        for (AbstractC1459h abstractC1459h : arrayList) {
            abstractC1459h.injectParameters(context, this, this.f4009j, this.f4010k);
        }
        c1463l.initialize();
        if (m3572g().mo3553a("Fabric", 3)) {
            sb = new StringBuilder("Initializing ");
            sb.append(m3576d());
            sb.append(" [Version: ");
            sb.append(m3579c());
            sb.append("], with the following kits:\n");
        } else {
            sb = null;
        }
        for (AbstractC1459h abstractC1459h2 : arrayList) {
            abstractC1459h2.initializationTask.addDependency(c1463l.initializationTask);
            m3585a(this.f4005f, abstractC1459h2);
            abstractC1459h2.initialize();
            if (sb != null) {
                sb.append(abstractC1459h2.getIdentifier());
                sb.append(" [Version: ");
                sb.append(abstractC1459h2.getVersion());
                sb.append("]\n");
            }
        }
        if (sb != null) {
            m3572g().mo3552a("Fabric", sb.toString());
        }
    }

    /* renamed from: a */
    void m3585a(Map<Class<? extends AbstractC1459h>, AbstractC1459h> map, AbstractC1459h abstractC1459h) {
        Class<?>[] m3351a;
        AbstractC1535d abstractC1535d = abstractC1459h.dependsOnAnnotation;
        if (abstractC1535d != null) {
            for (Class<?> cls : abstractC1535d.m3351a()) {
                if (cls.isInterface()) {
                    for (AbstractC1459h abstractC1459h2 : map.values()) {
                        if (cls.isAssignableFrom(abstractC1459h2.getClass())) {
                            abstractC1459h.initializationTask.addDependency(abstractC1459h2.initializationTask);
                        }
                    }
                } else if (map.get(cls) == null) {
                    throw new UnmetDependencyException("Referenced Kit was null, does the kit exist?");
                } else {
                    abstractC1459h.initializationTask.addDependency(map.get(cls).initializationTask);
                }
            }
        }
    }

    /* renamed from: b */
    public Activity m3583b() {
        WeakReference<Activity> weakReference = this.f4012m;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: b */
    Future<Map<String, C1461j>> m3582b(Context context) {
        return m3574e().submit(new CallableC1454e(context.getPackageCodePath()));
    }

    /* renamed from: c */
    public String m3579c() {
        return "1.4.3.25";
    }

    /* renamed from: d */
    public String m3576d() {
        return "io.fabric.sdk.android:fabric";
    }

    /* renamed from: e */
    public ExecutorService m3574e() {
        return this.f4006g;
    }

    /* renamed from: f */
    public Collection<AbstractC1459h> m3573f() {
        return this.f4005f.values();
    }
}
