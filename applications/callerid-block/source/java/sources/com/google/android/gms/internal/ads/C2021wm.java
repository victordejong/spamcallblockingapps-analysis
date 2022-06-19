package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.y0;
import com.google.android.gms.common.C1555c;
import com.google.android.gms.common.util.C1609e;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.lang.reflect.Method;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.wm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wm.class */
public final class C2021wm {

    /* renamed from: a */
    private final AtomicReference<ExecutorService> f9018a = new AtomicReference<>(null);

    /* renamed from: b */
    private final Object f9019b = new Object();
    @GuardedBy("gmpAppIdLock")

    /* renamed from: c */
    private String f9020c = null;
    @GuardedBy("gmpAppIdLock")

    /* renamed from: d */
    private String f9021d = null;

    /* renamed from: e */
    final AtomicBoolean f9022e = new AtomicBoolean(false);

    /* renamed from: f */
    private final AtomicInteger f9023f = new AtomicInteger(-1);

    /* renamed from: g */
    private final AtomicReference<Object> f9024g = new AtomicReference<>(null);

    /* renamed from: h */
    private final AtomicReference<Object> f9025h = new AtomicReference<>(null);

    /* renamed from: i */
    private final ConcurrentMap<String, Method> f9026i = new ConcurrentHashMap(9);

    /* renamed from: j */
    private final AtomicReference<AbstractC1656av> f9027j = new AtomicReference<>(null);
    @GuardedBy("proxyReference")

    /* renamed from: k */
    private final BlockingQueue<FutureTask<?>> f9028k = new ArrayBlockingQueue(20);

    /* renamed from: l */
    private final Object f9029l = new Object();

    /* renamed from: A */
    static final boolean m5043A(Context context) {
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7364Z)).booleanValue()) {
            if (DynamiteModule.m8183a(context, ModuleDescriptor.MODULE_ID) < ((Integer) C1674c.m7906c().m6878b(C1842m3.f7371a0)).intValue()) {
                return false;
            }
            if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7378b0)).booleanValue()) {
                return true;
            }
            try {
                context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                return false;
            } catch (ClassNotFoundException e) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: B */
    private final void m5042B(Context context, String str, String str2, Bundle bundle) {
        Method method;
        if (m5032g(context)) {
            Bundle bundle2 = new Bundle();
            try {
                bundle2.putLong("_aeid", Long.parseLong(str2));
            } catch (NullPointerException | NumberFormatException e) {
                String valueOf = String.valueOf(str2);
                C1894po.m6182d(valueOf.length() != 0 ? "Invalid event ID: ".concat(valueOf) : new String("Invalid event ID: "), e);
            }
            if ("_ac".equals(str)) {
                bundle2.putInt("_r", 1);
            }
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            if (m5043A(context)) {
                m5035d("logEventInternal", new im(str, bundle2));
            } else if (!m5036c(context, "com.google.android.gms.measurement.AppMeasurement", this.f9024g, true)) {
            } else {
                Method method2 = this.f9026i.get("logEventInternal");
                if (method2 != null) {
                    method = method2;
                } else {
                    try {
                        method = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
                        this.f9026i.put("logEventInternal", method);
                    } catch (Exception e2) {
                        m5038a("logEventInternal", true);
                        method = null;
                    }
                }
                try {
                    method.invoke(this.f9024g.get(), "am", str, bundle2);
                } catch (Exception e3) {
                    m5038a("logEventInternal", true);
                }
            }
        }
    }

    /* renamed from: C */
    private final Method m5041C(Context context, String str) {
        Method method = this.f9026i.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.f9026i.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            m5038a(str, false);
            return null;
        }
    }

    /* renamed from: D */
    private final void m5040D(Context context, String str, String str2) {
        Method method;
        if (m5036c(context, "com.google.android.gms.measurement.AppMeasurement", this.f9024g, true)) {
            Method method2 = this.f9026i.get(str2);
            if (method2 != null) {
                method = method2;
            } else {
                try {
                    method = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str2, String.class);
                    this.f9026i.put(str2, method);
                } catch (Exception e) {
                    m5038a(str2, false);
                    method = null;
                }
            }
            try {
                method.invoke(this.f9024g.get(), str);
                StringBuilder sb = new StringBuilder(str2.length() + 37 + String.valueOf(str).length());
                sb.append("Invoke Firebase method ");
                sb.append(str2);
                sb.append(", Ad Unit Id: ");
                sb.append(str);
                y0.k(sb.toString());
            } catch (Exception e2) {
                m5038a(str2, false);
            }
        }
    }

    /* renamed from: E */
    private final Object m5039E(String str, Context context) {
        if (!m5036c(context, "com.google.android.gms.measurement.AppMeasurement", this.f9024g, true)) {
            return null;
        }
        try {
            return m5041C(context, str).invoke(this.f9024g.get(), new Object[0]);
        } catch (Exception e) {
            m5038a(str, true);
            return null;
        }
    }

    /* renamed from: a */
    private final void m5038a(String str, boolean z) {
        if (!this.f9022e.get()) {
            StringBuilder sb = new StringBuilder(str.length() + 30);
            sb.append("Invoke Firebase method ");
            sb.append(str);
            sb.append(" error.");
            C1894po.m6180f(sb.toString());
            if (!z) {
                return;
            }
            C1894po.m6180f("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
            this.f9022e.set(true);
        }
    }

    /* renamed from: b */
    private final ExecutorService m5037b() {
        ThreadPoolExecutor threadPoolExecutor;
        if (this.f9018a.get() == null) {
            if (C1609e.m8248a()) {
                threadPoolExecutor = sv1.m5567a().m6160b(((Integer) C1674c.m7906c().m6878b(C1842m3.f7358Y)).intValue(), new ThreadFactoryC1961tm(this), 2);
            } else {
                AbstractC1714e3<Integer> abstractC1714e3 = C1842m3.f7358Y;
                threadPoolExecutor = new ThreadPoolExecutor(((Integer) C1674c.m7906c().m6878b(abstractC1714e3)).intValue(), ((Integer) C1674c.m7906c().m6878b(abstractC1714e3)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new ThreadFactoryC1961tm(this));
            }
            this.f9018a.compareAndSet(null, threadPoolExecutor);
        }
        return this.f9018a.get();
    }

    /* renamed from: c */
    private final boolean m5036c(Context context, String str, AtomicReference<Object> atomicReference, boolean z) {
        if (atomicReference.get() == null) {
            try {
                atomicReference.compareAndSet(null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
                return true;
            } catch (Exception e) {
                m5038a("getInstance", z);
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    private final void m5035d(String str, AbstractC1998vm abstractC1998vm) {
        synchronized (this.f9027j) {
            FutureTask<?> futureTask = new FutureTask<>(new Runnable(this, abstractC1998vm, str) { // from class: com.google.android.gms.internal.ads.jm

                /* renamed from: b */
                private final C2021wm f6905b;

                /* renamed from: c */
                private final AbstractC1998vm f6906c;

                /* renamed from: d */
                private final String f6907d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6905b = this;
                    this.f6906c = abstractC1998vm;
                    this.f6907d = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f6905b.m5015x(this.f6906c, this.f6907d);
                }
            }, null);
            if (this.f9027j.get() != null) {
                futureTask.run();
            } else {
                this.f9028k.offer(futureTask);
            }
        }
    }

    /* renamed from: e */
    private final <T> T m5034e(String str, T t, AbstractC1977um<T> abstractC1977um) {
        synchronized (this.f9027j) {
            if (this.f9027j.get() != null) {
                try {
                    return abstractC1977um.m5370a(this.f9027j.get());
                } catch (Exception e) {
                    m5038a(str, false);
                }
            }
            return t;
        }
    }

    /* renamed from: f */
    public final boolean m5033f() {
        synchronized (this.f9029l) {
        }
        return false;
    }

    /* renamed from: g */
    public final boolean m5032g(Context context) {
        if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7322S)).booleanValue() || this.f9022e.get()) {
            return false;
        }
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7385c0)).booleanValue()) {
            return true;
        }
        if (this.f9023f.get() == -1) {
            m03.m6636a();
            if (!C1786io.m7130n(context, C1555c.f5812a)) {
                m03.m6636a();
                if (C1786io.m7129o(context)) {
                    C1894po.m6180f("Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service.");
                    this.f9023f.set(0);
                }
            }
            this.f9023f.set(1);
        }
        return this.f9023f.get() == 1;
    }

    /* renamed from: h */
    public final void m5031h(Context context, zzads zzadsVar) {
        AbstractC2037xm.m4896d(context).m4898b().m4747c(zzadsVar);
        if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7399e0)).booleanValue() || !m5032g(context) || !m5043A(context)) {
            return;
        }
        synchronized (this.f9029l) {
        }
    }

    /* renamed from: i */
    public final void m5030i(Context context, zzys zzysVar) {
        if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7399e0)).booleanValue() || !m5032g(context) || !m5043A(context)) {
            return;
        }
        synchronized (this.f9029l) {
        }
    }

    /* renamed from: j */
    public final void m5029j(Bundle bundle) {
        m5035d("setConsent", new fm(bundle));
    }

    /* renamed from: k */
    public final void m5028k(Context context, String str) {
        if (!m5032g(context)) {
            return;
        }
        if (m5043A(context)) {
            m5035d("beginAdUnitExposure", new lm(str));
        } else {
            m5040D(context, str, "beginAdUnitExposure");
        }
    }

    /* renamed from: l */
    public final void m5027l(Context context, String str) {
        if (!m5032g(context)) {
            return;
        }
        if (m5043A(context)) {
            m5035d("endAdUnitExposure", new mm(str));
        } else {
            m5040D(context, str, "endAdUnitExposure");
        }
    }

    /* renamed from: m */
    public final String m5026m(Context context) {
        if (!m5032g(context)) {
            return "";
        }
        if (m5043A(context)) {
            return (String) m5034e("getCurrentScreenNameOrScreenClass", "", nm.a);
        }
        if (!m5036c(context, "com.google.android.gms.measurement.AppMeasurement", this.f9024g, true)) {
            return "";
        }
        try {
            String str = (String) m5041C(context, "getCurrentScreenName").invoke(this.f9024g.get(), new Object[0]);
            String str2 = str;
            if (str == null) {
                str2 = (String) m5041C(context, "getCurrentScreenClass").invoke(this.f9024g.get(), new Object[0]);
            }
            return str2 != null ? str2 : "";
        } catch (Exception e) {
            m5038a("getCurrentScreenName", false);
            return "";
        }
    }

    @Deprecated
    /* renamed from: n */
    public final void m5025n(Context context, String str) {
        if (m5032g(context) && (context instanceof Activity)) {
            if (m5043A(context)) {
                m5035d("setScreenName", new om(context, str));
            } else if (!m5036c(context, "com.google.firebase.analytics.FirebaseAnalytics", this.f9025h, false)) {
            } else {
                Method method = this.f9026i.get("setCurrentScreen");
                if (method == null) {
                    try {
                        method = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("setCurrentScreen", Activity.class, String.class, String.class);
                        this.f9026i.put("setCurrentScreen", method);
                    } catch (Exception e) {
                        m5038a("setCurrentScreen", false);
                        method = null;
                    }
                }
                try {
                    method.invoke(this.f9025h.get(), (Activity) context, str, context.getPackageName());
                } catch (Exception e2) {
                    m5038a("setCurrentScreen", false);
                }
            }
        }
    }

    /* renamed from: o */
    public final String m5024o(Context context) {
        if (!m5032g(context)) {
            return null;
        }
        synchronized (this.f9019b) {
            try {
                String str = this.f9020c;
                if (str != null) {
                    return str;
                }
                this.f9020c = m5043A(context) ? (String) m5034e("getGmpAppId", this.f9020c, pm.a) : (String) m5039E("getGmpAppId", context);
                return this.f9020c;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: p */
    public final String m5023p(Context context) {
        if (!m5032g(context)) {
            return null;
        }
        long longValue = ((Long) C1674c.m7906c().m6878b(C1842m3.f7352X)).longValue();
        if (m5043A(context)) {
            try {
                return longValue < 0 ? (String) m5034e("getAppInstanceId", null, qm.a) : (String) m5037b().submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.rm

                    /* renamed from: a */
                    private final C2021wm f8364a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8364a = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f8364a.m5013z();
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e) {
                return "TIME_OUT";
            } catch (Exception e2) {
                return null;
            }
        } else if (longValue < 0) {
            return (String) m5039E("getAppInstanceId", context);
        } else {
            try {
                return (String) m5037b().submit(new Callable(this, context) { // from class: com.google.android.gms.internal.ads.sm

                    /* renamed from: a */
                    private final C2021wm f8513a;

                    /* renamed from: b */
                    private final Context f8514b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8513a = this;
                        this.f8514b = context;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f8513a.m5014y(this.f8514b);
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e3) {
                return "TIME_OUT";
            } catch (Exception e4) {
                return null;
            }
        }
    }

    /* renamed from: q */
    public final String m5022q(Context context) {
        if (!m5032g(context)) {
            return null;
        }
        if (m5043A(context)) {
            Long l = (Long) m5034e("getAdEventId", null, gm.a);
            if (l == null) {
                return null;
            }
            return Long.toString(l.longValue());
        }
        Object m5039E = m5039E("generateEventId", context);
        if (m5039E == null) {
            return null;
        }
        return m5039E.toString();
    }

    /* renamed from: r */
    public final String m5021r(Context context) {
        if (!m5032g(context)) {
            return null;
        }
        synchronized (this.f9019b) {
            try {
                String str = this.f9021d;
                if (str != null) {
                    return str;
                }
                this.f9021d = m5043A(context) ? (String) m5034e("getAppIdOrigin", this.f9021d, hm.a) : "fa";
                return this.f9021d;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: s */
    public final void m5020s(Context context, String str) {
        m5042B(context, "_ac", str, null);
    }

    /* renamed from: t */
    public final void m5019t(Context context, String str) {
        m5042B(context, "_ai", str, null);
    }

    /* renamed from: u */
    public final void m5018u(Context context, String str) {
        m5042B(context, "_aq", str, null);
    }

    /* renamed from: v */
    public final void m5017v(Context context, String str) {
        m5042B(context, "_aa", str, null);
    }

    /* renamed from: w */
    public final void m5016w(Context context, String str, String str2, String str3, int i) {
        if (!m5032g(context)) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str2);
        bundle.putString("reward_type", str3);
        bundle.putInt("reward_value", i);
        m5042B(context, "_ar", str, bundle);
        StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 75);
        sb.append("Log a Firebase reward video event, reward type: ");
        sb.append(str3);
        sb.append(", reward value: ");
        sb.append(i);
        y0.k(sb.toString());
    }

    /* renamed from: x */
    public final /* synthetic */ void m5015x(AbstractC1998vm abstractC1998vm, String str) {
        if (this.f9027j.get() != null) {
            try {
                abstractC1998vm.m5210a(this.f9027j.get());
            } catch (Exception e) {
                m5038a(str, false);
            }
        }
    }

    /* renamed from: y */
    public final /* synthetic */ String m5014y(Context context) {
        return (String) m5039E("getAppInstanceId", context);
    }

    /* renamed from: z */
    public final /* synthetic */ String m5013z() {
        return (String) m5034e("getAppInstanceId", null, km.a);
    }
}
