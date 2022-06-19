package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.common.C6094e;
import com.google.android.gms.common.util.C6226d;
import com.google.android.gms.dynamic.BinderC6255b;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lg0.class */
public final class lg0 {

    /* renamed from: a */
    private final AtomicReference<ExecutorService> f26098a = new AtomicReference<>(null);

    /* renamed from: b */
    private final Object f26099b = new Object();

    /* renamed from: c */
    private String f26100c = null;

    /* renamed from: d */
    private String f26101d = null;

    /* renamed from: e */
    final AtomicBoolean f26102e = new AtomicBoolean(false);

    /* renamed from: f */
    private final AtomicInteger f26103f = new AtomicInteger(-1);

    /* renamed from: g */
    private final AtomicReference<Object> f26104g = new AtomicReference<>(null);

    /* renamed from: h */
    private final AtomicReference<Object> f26105h = new AtomicReference<>(null);

    /* renamed from: i */
    private final ConcurrentMap<String, Method> f26106i = new ConcurrentHashMap(9);

    /* renamed from: j */
    private final AtomicReference<op0> f26107j = new AtomicReference<>(null);

    /* renamed from: k */
    private final BlockingQueue<FutureTask<?>> f26108k = new ArrayBlockingQueue(20);

    /* renamed from: l */
    private final Object f26109l = new Object();

    /* renamed from: A */
    static final boolean m13557A(Context context) {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25662c0)).booleanValue()) {
            if (DynamiteModule.m16743a(context, ModuleDescriptor.MODULE_ID) < ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25671d0)).intValue()) {
                return false;
            }
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25679e0)).booleanValue()) {
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
    private final void m13556B(Context context, String str, String str2, Bundle bundle) {
        Method method;
        if (m13546g(context)) {
            Bundle bundle2 = new Bundle();
            try {
                bundle2.putLong("_aeid", Long.parseLong(str2));
            } catch (NullPointerException | NumberFormatException e) {
                String valueOf = String.valueOf(str2);
                ei0.m15466d(valueOf.length() != 0 ? "Invalid event ID: ".concat(valueOf) : new String("Invalid event ID: "), e);
            }
            if ("_ac".equals(str)) {
                bundle2.putInt("_r", 1);
            }
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            if (m13557A(context)) {
                m13549d("logEventInternal", new jg0(str, bundle2) { // from class: com.google.android.gms.internal.ads.wf0

                    /* renamed from: a */
                    private final String f31558a;

                    /* renamed from: b */
                    private final Bundle f31559b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f31558a = str;
                        this.f31559b = bundle2;
                    }

                    @Override // com.google.android.gms.internal.ads.jg0
                    /* renamed from: a */
                    public final void mo8405a(op0 op0Var) {
                        op0Var.mo12557g1("am", this.f31558a, this.f31559b);
                    }
                });
            } else if (!m13550c(context, "com.google.android.gms.measurement.AppMeasurement", this.f26104g, true)) {
            } else {
                Method method2 = this.f26106i.get("logEventInternal");
                if (method2 != null) {
                    method = method2;
                } else {
                    try {
                        method = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
                        this.f26106i.put("logEventInternal", method);
                    } catch (Exception e2) {
                        m13552a("logEventInternal", true);
                        method = null;
                    }
                }
                try {
                    method.invoke(this.f26104g.get(), "am", str, bundle2);
                } catch (Exception e3) {
                    m13552a("logEventInternal", true);
                }
            }
        }
    }

    /* renamed from: C */
    private final Method m13555C(Context context, String str) {
        Method method = this.f26106i.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.f26106i.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            m13552a(str, false);
            return null;
        }
    }

    /* renamed from: D */
    private final void m13554D(Context context, String str, String str2) {
        Method method;
        if (m13550c(context, "com.google.android.gms.measurement.AppMeasurement", this.f26104g, true)) {
            Method method2 = this.f26106i.get(str2);
            if (method2 != null) {
                method = method2;
            } else {
                try {
                    method = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str2, String.class);
                    this.f26106i.put(str2, method);
                } catch (Exception e) {
                    m13552a(str2, false);
                    method = null;
                }
            }
            try {
                method.invoke(this.f26104g.get(), str);
                StringBuilder sb = new StringBuilder(str2.length() + 37 + String.valueOf(str).length());
                sb.append("Invoke Firebase method ");
                sb.append(str2);
                sb.append(", Ad Unit Id: ");
                sb.append(str);
                C5722o1.m17990k(sb.toString());
            } catch (Exception e2) {
                m13552a(str2, false);
            }
        }
    }

    /* renamed from: E */
    private final Object m13553E(String str, Context context) {
        if (!m13550c(context, "com.google.android.gms.measurement.AppMeasurement", this.f26104g, true)) {
            return null;
        }
        try {
            return m13555C(context, str).invoke(this.f26104g.get(), new Object[0]);
        } catch (Exception e) {
            m13552a(str, true);
            return null;
        }
    }

    /* renamed from: a */
    private final void m13552a(String str, boolean z) {
        if (!this.f26102e.get()) {
            StringBuilder sb = new StringBuilder(str.length() + 30);
            sb.append("Invoke Firebase method ");
            sb.append(str);
            sb.append(" error.");
            ei0.m15464f(sb.toString());
            if (!z) {
                return;
            }
            ei0.m15464f("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
            this.f26102e.set(true);
        }
    }

    /* renamed from: b */
    private final ExecutorService m13551b() {
        ThreadPoolExecutor threadPoolExecutor;
        if (this.f26098a.get() == null) {
            if (C6226d.m16818a()) {
                threadPoolExecutor = yt2.m8686a().mo9461b(((Integer) C7192yr.m8714c().m14263c(C6679kw.f25653b0)).intValue(), new hg0(this), 2);
            } else {
                AbstractC6381cw<Integer> abstractC6381cw = C6679kw.f25653b0;
                threadPoolExecutor = new ThreadPoolExecutor(((Integer) C7192yr.m8714c().m14263c(abstractC6381cw)).intValue(), ((Integer) C7192yr.m8714c().m14263c(abstractC6381cw)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new hg0(this));
            }
            this.f26098a.compareAndSet(null, threadPoolExecutor);
        }
        return this.f26098a.get();
    }

    /* renamed from: c */
    private final boolean m13550c(Context context, String str, AtomicReference<Object> atomicReference, boolean z) {
        if (atomicReference.get() == null) {
            try {
                atomicReference.compareAndSet(null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
                return true;
            } catch (Exception e) {
                m13552a("getInstance", z);
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    private final void m13549d(String str, jg0 jg0Var) {
        synchronized (this.f26107j) {
            FutureTask<?> futureTask = new FutureTask<>(new Runnable(this, jg0Var, str) { // from class: com.google.android.gms.internal.ads.xf0

                /* renamed from: d */
                private final lg0 f32031d;

                /* renamed from: e */
                private final jg0 f32032e;

                /* renamed from: f */
                private final String f32033f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32031d = this;
                    this.f32032e = jg0Var;
                    this.f32033f = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f32031d.m13529x(this.f32032e, this.f32033f);
                }
            }, null);
            if (this.f26107j.get() != null) {
                futureTask.run();
            } else {
                this.f26108k.offer(futureTask);
            }
        }
    }

    /* renamed from: e */
    private final <T> T m13548e(String str, T t, ig0<T> ig0Var) {
        synchronized (this.f26107j) {
            if (this.f26107j.get() != null) {
                try {
                    return ig0Var.mo8837a(this.f26107j.get());
                } catch (Exception e) {
                    m13552a(str, false);
                }
            }
            return t;
        }
    }

    /* renamed from: f */
    public final boolean m13547f() {
        synchronized (this.f26109l) {
        }
        return false;
    }

    /* renamed from: g */
    public final boolean m13546g(Context context) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25603V)).booleanValue() || this.f26102e.get()) {
            return false;
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25687f0)).booleanValue()) {
            return true;
        }
        if (this.f26103f.get() == -1) {
            C7118wr.m9485a();
            if (!xh0.m9166l(context, C6094e.f19409a)) {
                C7118wr.m9485a();
                if (xh0.m9165m(context)) {
                    ei0.m15464f("Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service.");
                    this.f26103f.set(0);
                }
            }
            this.f26103f.set(1);
        }
        return this.f26103f.get() == 1;
    }

    /* renamed from: h */
    public final void m13545h(Context context, zzbim zzbimVar) {
        mg0.m13199d(context).mo11485b().m12937c(zzbimVar);
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25703h0)).booleanValue() || !m13546g(context) || !m13557A(context)) {
            return;
        }
        synchronized (this.f26109l) {
        }
    }

    /* renamed from: i */
    public final void m13544i(Context context, zzbdg zzbdgVar) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25703h0)).booleanValue() || !m13546g(context) || !m13557A(context)) {
            return;
        }
        synchronized (this.f26109l) {
        }
    }

    /* renamed from: j */
    public final void m13543j(Bundle bundle) {
        m13549d("setConsent", new jg0(bundle) { // from class: com.google.android.gms.internal.ads.tf0

            /* renamed from: a */
            private final Bundle f29958a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29958a = bundle;
            }

            @Override // com.google.android.gms.internal.ads.jg0
            /* renamed from: a */
            public final void mo8405a(op0 op0Var) {
                op0Var.mo12553j0(this.f29958a);
            }
        });
    }

    /* renamed from: k */
    public final void m13542k(Context context, String str) {
        if (!m13546g(context)) {
            return;
        }
        if (m13557A(context)) {
            m13549d("beginAdUnitExposure", new jg0(str) { // from class: com.google.android.gms.internal.ads.zf0

                /* renamed from: a */
                private final String f32917a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32917a = str;
                }

                @Override // com.google.android.gms.internal.ads.jg0
                /* renamed from: a */
                public final void mo8405a(op0 op0Var) {
                    op0Var.mo12550t0(this.f32917a);
                }
            });
        } else {
            m13554D(context, str, "beginAdUnitExposure");
        }
    }

    /* renamed from: l */
    public final void m13541l(Context context, String str) {
        if (!m13546g(context)) {
            return;
        }
        if (m13557A(context)) {
            m13549d("endAdUnitExposure", new jg0(str) { // from class: com.google.android.gms.internal.ads.ag0

                /* renamed from: a */
                private final String f19947a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f19947a = str;
                }

                @Override // com.google.android.gms.internal.ads.jg0
                /* renamed from: a */
                public final void mo8405a(op0 op0Var) {
                    op0Var.mo12567B0(this.f19947a);
                }
            });
        } else {
            m13554D(context, str, "endAdUnitExposure");
        }
    }

    /* renamed from: m */
    public final String m13540m(Context context) {
        if (!m13546g(context)) {
            return "";
        }
        if (m13557A(context)) {
            return (String) m13548e("getCurrentScreenNameOrScreenClass", "", bg0.f20441a);
        }
        if (!m13550c(context, "com.google.android.gms.measurement.AppMeasurement", this.f26104g, true)) {
            return "";
        }
        try {
            String str = (String) m13555C(context, "getCurrentScreenName").invoke(this.f26104g.get(), new Object[0]);
            String str2 = str;
            if (str == null) {
                str2 = (String) m13555C(context, "getCurrentScreenClass").invoke(this.f26104g.get(), new Object[0]);
            }
            return str2 != null ? str2 : "";
        } catch (Exception e) {
            m13552a("getCurrentScreenName", false);
            return "";
        }
    }

    @Deprecated
    /* renamed from: n */
    public final void m13539n(Context context, String str) {
        if (m13546g(context) && (context instanceof Activity)) {
            if (m13557A(context)) {
                m13549d("setScreenName", new jg0(context, str) { // from class: com.google.android.gms.internal.ads.cg0

                    /* renamed from: a */
                    private final Context f21232a;

                    /* renamed from: b */
                    private final String f21233b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f21232a = context;
                        this.f21233b = str;
                    }

                    @Override // com.google.android.gms.internal.ads.jg0
                    /* renamed from: a */
                    public final void mo8405a(op0 op0Var) {
                        Context context2 = this.f21232a;
                        op0Var.mo12565D2(BinderC6255b.m16744m2(context2), this.f21233b, context2.getPackageName());
                    }
                });
            } else if (!m13550c(context, "com.google.firebase.analytics.FirebaseAnalytics", this.f26105h, false)) {
            } else {
                Method method = this.f26106i.get("setCurrentScreen");
                if (method == null) {
                    try {
                        method = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("setCurrentScreen", Activity.class, String.class, String.class);
                        this.f26106i.put("setCurrentScreen", method);
                    } catch (Exception e) {
                        m13552a("setCurrentScreen", false);
                        method = null;
                    }
                }
                try {
                    method.invoke(this.f26105h.get(), (Activity) context, str, context.getPackageName());
                } catch (Exception e2) {
                    m13552a("setCurrentScreen", false);
                }
            }
        }
    }

    /* renamed from: o */
    public final String m13538o(Context context) {
        if (!m13546g(context)) {
            return null;
        }
        synchronized (this.f26099b) {
            String str = this.f26100c;
            if (str != null) {
                return str;
            }
            if (m13557A(context)) {
                this.f26100c = (String) m13548e("getGmpAppId", this.f26100c, dg0.f21614a);
            } else {
                this.f26100c = (String) m13553E("getGmpAppId", context);
            }
            return this.f26100c;
        }
    }

    /* renamed from: p */
    public final String m13537p(Context context) {
        if (!m13546g(context)) {
            return null;
        }
        long longValue = ((Long) C7192yr.m8714c().m14263c(C6679kw.f25644a0)).longValue();
        if (m13557A(context)) {
            try {
                return longValue < 0 ? (String) m13548e("getAppInstanceId", null, eg0.f22162a) : (String) m13551b().submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.fg0

                    /* renamed from: a */
                    private final lg0 f22882a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f22882a = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f22882a.m13527z();
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e) {
                return "TIME_OUT";
            } catch (Exception e2) {
                return null;
            }
        } else if (longValue < 0) {
            return (String) m13553E("getAppInstanceId", context);
        } else {
            try {
                return (String) m13551b().submit(new Callable(this, context) { // from class: com.google.android.gms.internal.ads.gg0

                    /* renamed from: a */
                    private final lg0 f23342a;

                    /* renamed from: b */
                    private final Context f23343b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f23342a = this;
                        this.f23343b = context;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f23342a.m13528y(this.f23343b);
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
    public final String m13536q(Context context) {
        if (!m13546g(context)) {
            return null;
        }
        if (m13557A(context)) {
            Long l = (Long) m13548e("getAdEventId", null, uf0.f30592a);
            if (l == null) {
                return null;
            }
            return Long.toString(l.longValue());
        }
        Object m13553E = m13553E("generateEventId", context);
        if (m13553E == null) {
            return null;
        }
        return m13553E.toString();
    }

    /* renamed from: r */
    public final String m13535r(Context context) {
        if (!m13546g(context)) {
            return null;
        }
        synchronized (this.f26099b) {
            String str = this.f26101d;
            if (str != null) {
                return str;
            }
            if (m13557A(context)) {
                this.f26101d = (String) m13548e("getAppIdOrigin", this.f26101d, vf0.f31167a);
            } else {
                this.f26101d = "fa";
            }
            return this.f26101d;
        }
    }

    /* renamed from: s */
    public final void m13534s(Context context, String str) {
        m13556B(context, "_ac", str, null);
    }

    /* renamed from: t */
    public final void m13533t(Context context, String str) {
        m13556B(context, "_ai", str, null);
    }

    /* renamed from: u */
    public final void m13532u(Context context, String str) {
        m13556B(context, "_aq", str, null);
    }

    /* renamed from: v */
    public final void m13531v(Context context, String str) {
        m13556B(context, "_aa", str, null);
    }

    /* renamed from: w */
    public final void m13530w(Context context, String str, String str2, String str3, int i) {
        if (!m13546g(context)) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str2);
        bundle.putString("reward_type", str3);
        bundle.putInt("reward_value", i);
        m13556B(context, "_ar", str, bundle);
        StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 75);
        sb.append("Log a Firebase reward video event, reward type: ");
        sb.append(str3);
        sb.append(", reward value: ");
        sb.append(i);
        C5722o1.m17990k(sb.toString());
    }

    /* renamed from: x */
    public final /* synthetic */ void m13529x(jg0 jg0Var, String str) {
        if (this.f26107j.get() != null) {
            try {
                jg0Var.mo8405a(this.f26107j.get());
            } catch (Exception e) {
                m13552a(str, false);
            }
        }
    }

    /* renamed from: y */
    public final /* synthetic */ String m13528y(Context context) {
        return (String) m13553E("getAppInstanceId", context);
    }

    /* renamed from: z */
    public final /* synthetic */ String m13527z() {
        return (String) m13548e("getAppInstanceId", null, yf0.f32486a);
    }
}
