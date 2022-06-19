package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.lang.reflect.Method;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
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
/* renamed from: com.google.android.gms.internal.ads.ta */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ta.class */
public final class C3509ta {

    /* renamed from: a */
    private final AtomicReference<ThreadPoolExecutor> f17358a = new AtomicReference<>(null);

    /* renamed from: b */
    private final Object f17359b = new Object();
    @GuardedBy("gmpAppIdLock")

    /* renamed from: c */
    private String f17360c = null;
    @GuardedBy("gmpAppIdLock")

    /* renamed from: d */
    private String f17361d = null;

    /* renamed from: e */
    private final AtomicBoolean f17362e = new AtomicBoolean(false);

    /* renamed from: f */
    private final AtomicInteger f17363f = new AtomicInteger(-1);

    /* renamed from: g */
    private final AtomicReference<Object> f17364g = new AtomicReference<>(null);

    /* renamed from: h */
    private final AtomicReference<Object> f17365h = new AtomicReference<>(null);

    /* renamed from: i */
    private final ConcurrentMap<String, Method> f17366i = new ConcurrentHashMap(9);

    /* renamed from: j */
    private final AtomicReference<afb> f17367j = new AtomicReference<>(null);
    @GuardedBy("proxyReference")

    /* renamed from: k */
    private final BlockingQueue<FutureTask<?>> f17368k = new ArrayBlockingQueue(20);

    /* renamed from: l */
    private final Object f17369l = new Object();

    /* renamed from: a */
    private static Bundle m7153a(String str, String str2) {
        Bundle bundle = new Bundle();
        try {
            bundle.putLong("_aeid", Long.parseLong(str));
        } catch (NullPointerException | NumberFormatException e) {
            String valueOf = String.valueOf(str);
            C3556uu.m6748c(valueOf.length() != 0 ? "Invalid event ID: ".concat(valueOf) : new String("Invalid event ID: "), e);
        }
        if ("_ac".equals(str2)) {
            bundle.putInt("_r", 1);
        }
        return bundle;
    }

    /* renamed from: a */
    private final Object m7156a(String str, Context context) {
        Object obj;
        if (!m7159a(context, "com.google.android.gms.measurement.AppMeasurement", this.f17364g, true)) {
            obj = null;
        } else {
            try {
                obj = m7136i(context, str).invoke(this.f17364g.get(), new Object[0]);
            } catch (Exception e) {
                m7157a(e, str, true);
                obj = null;
            }
        }
        return obj;
    }

    /* renamed from: a */
    private final <T> T m7154a(String str, T t, AbstractC3523to<T> abstractC3523to) {
        T mo7133a;
        synchronized (this.f17367j) {
            if (this.f17367j.get() != null) {
                try {
                    mo7133a = abstractC3523to.mo7133a(this.f17367j.get());
                } catch (Exception e) {
                    m7157a(e, str, false);
                }
            }
            mo7133a = t;
        }
        return mo7133a;
    }

    /* renamed from: a */
    private final void m7162a(Context context, String str, String str2) {
        if (!m7159a(context, "com.google.android.gms.measurement.AppMeasurement", this.f17364g, true)) {
            return;
        }
        try {
            m7138h(context, str2).invoke(this.f17364g.get(), str);
            C3556uu.m7052a(new StringBuilder(String.valueOf(str2).length() + 37 + String.valueOf(str).length()).append("Invoke Firebase method ").append(str2).append(", Ad Unit Id: ").append(str).toString());
        } catch (Exception e) {
            m7157a(e, str2, false);
        }
    }

    /* renamed from: a */
    private final void m7161a(Context context, String str, String str2, Bundle bundle) {
        if (!m7166a(context)) {
            return;
        }
        Bundle m7153a = m7153a(str2, str);
        if (bundle != null) {
            m7153a.putAll(bundle);
        }
        if (m7139h(context)) {
            m7155a("logEventInternal", new AbstractC3526tr(str, m7153a) { // from class: com.google.android.gms.internal.ads.tb

                /* renamed from: a */
                private final String f17370a;

                /* renamed from: b */
                private final Bundle f17371b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f17370a = str;
                    this.f17371b = m7153a;
                }

                @Override // com.google.android.gms.internal.ads.AbstractC3526tr
                /* renamed from: a */
                public final void mo7129a(afb afbVar) {
                    afbVar.mo7689a("am", this.f17370a, this.f17371b);
                }
            });
        } else if (!m7159a(context, "com.google.android.gms.measurement.AppMeasurement", this.f17364g, true)) {
        } else {
            try {
                m7137i(context).invoke(this.f17364g.get(), "am", str, m7153a);
            } catch (Exception e) {
                m7157a(e, "logEventInternal", true);
            }
        }
    }

    /* renamed from: a */
    private final void m7157a(Exception exc, String str, boolean z) {
        if (!this.f17362e.get()) {
            C3556uu.m6745e(new StringBuilder(String.valueOf(str).length() + 30).append("Invoke Firebase method ").append(str).append(" error.").toString());
            if (!z) {
                return;
            }
            C3556uu.m6745e("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
            this.f17362e.set(true);
        }
    }

    /* renamed from: a */
    private final void m7155a(String str, AbstractC3526tr abstractC3526tr) {
        synchronized (this.f17367j) {
            FutureTask<?> futureTask = new FutureTask<>(new Runnable(this, abstractC3526tr, str) { // from class: com.google.android.gms.internal.ads.te

                /* renamed from: a */
                private final C3509ta f17374a;

                /* renamed from: b */
                private final AbstractC3526tr f17375b;

                /* renamed from: c */
                private final String f17376c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f17374a = this;
                    this.f17375b = abstractC3526tr;
                    this.f17376c = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f17374a.m7158a(this.f17375b, this.f17376c);
                }
            }, null);
            if (this.f17367j.get() != null) {
                futureTask.run();
            } else {
                this.f17368k.offer(futureTask);
            }
        }
    }

    /* renamed from: a */
    private final boolean m7159a(Context context, String str, AtomicReference<Object> atomicReference, boolean z) {
        boolean z2;
        if (atomicReference.get() == null) {
            try {
                atomicReference.compareAndSet(null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
            } catch (Exception e) {
                m7157a(e, "getInstance", z);
                z2 = false;
            }
        }
        z2 = true;
        return z2;
    }

    /* renamed from: b */
    private final ThreadPoolExecutor m7152b() {
        if (this.f17358a.get() == null) {
            this.f17358a.compareAndSet(null, new ThreadPoolExecutor(((Integer) dyx.m8158e().m7876a(edi.f16337W)).intValue(), ((Integer) dyx.m8158e().m7876a(edi.f16337W)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new ThreadFactoryC3524tp(this)));
        }
        return this.f17358a.get();
    }

    /* renamed from: h */
    private final Method m7138h(Context context, String str) {
        Method method;
        Method method2 = this.f17366i.get(str);
        if (method2 != null) {
            method = method2;
        } else {
            try {
                method = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, String.class);
                this.f17366i.put(str, method);
            } catch (Exception e) {
                m7157a(e, str, false);
                method = null;
            }
        }
        return method;
    }

    /* renamed from: h */
    private static boolean m7139h(Context context) {
        boolean z;
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16338X)).booleanValue()) {
            z = false;
        } else {
            if (DynamiteModule.m13790a(context, ModuleDescriptor.MODULE_ID) < ((Integer) dyx.m8158e().m7876a(edi.f16339Y)).intValue()) {
                z = false;
            } else {
                if (((Boolean) dyx.m8158e().m7876a(edi.f16340Z)).booleanValue()) {
                    try {
                        context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                        z = false;
                    } catch (ClassNotFoundException e) {
                        z = true;
                    }
                } else {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: i */
    private final Method m7137i(Context context) {
        Method method;
        Method method2 = this.f17366i.get("logEventInternal");
        if (method2 != null) {
            method = method2;
        } else {
            try {
                method = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
                this.f17366i.put("logEventInternal", method);
            } catch (Exception e) {
                m7157a(e, "logEventInternal", true);
                method = null;
            }
        }
        return method;
    }

    /* renamed from: i */
    private final Method m7136i(Context context, String str) {
        Method method;
        Method method2 = this.f17366i.get(str);
        if (method2 != null) {
            method = method2;
        } else {
            try {
                method = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
                this.f17366i.put(str, method);
            } catch (Exception e) {
                m7157a(e, str, false);
                method = null;
            }
        }
        return method;
    }

    /* renamed from: j */
    private final Method m7135j(Context context, String str) {
        Method method;
        Method method2 = this.f17366i.get(str);
        if (method2 != null) {
            method = method2;
        } else {
            try {
                method = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod(str, Activity.class, String.class, String.class);
                this.f17366i.put(str, method);
            } catch (Exception e) {
                m7157a(e, str, false);
                method = null;
            }
        }
        return method;
    }

    /* renamed from: a */
    public final /* synthetic */ String m7167a() {
        return (String) m7154a("getAppInstanceId", (String) null, C3512td.f17373a);
    }

    /* renamed from: a */
    public final void m7165a(Context context, dya dyaVar) {
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16371ad)).booleanValue() || !m7166a(context) || !m7139h(context)) {
            return;
        }
        synchronized (this.f17369l) {
        }
    }

    /* renamed from: a */
    public final void m7164a(Context context, ech echVar) {
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16371ad)).booleanValue() || !m7166a(context) || !m7139h(context)) {
            return;
        }
        synchronized (this.f17369l) {
        }
    }

    /* renamed from: a */
    public final void m7163a(Context context, String str) {
        if (!m7166a(context)) {
            return;
        }
        if (m7139h(context)) {
            m7155a("beginAdUnitExposure", new AbstractC3526tr(str) { // from class: com.google.android.gms.internal.ads.sz

                /* renamed from: a */
                private final String f17357a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f17357a = str;
                }

                @Override // com.google.android.gms.internal.ads.AbstractC3526tr
                /* renamed from: a */
                public final void mo7129a(afb afbVar) {
                    afbVar.mo7684b(this.f17357a);
                }
            });
        } else {
            m7162a(context, str, "beginAdUnitExposure");
        }
    }

    /* renamed from: a */
    public final void m7160a(Context context, String str, String str2, String str3, int i) {
        if (!m7166a(context)) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str2);
        bundle.putString("reward_type", str3);
        bundle.putInt("reward_value", i);
        m7161a(context, "_ar", str, bundle);
        C3556uu.m7052a(new StringBuilder(String.valueOf(str3).length() + 75).append("Log a Firebase reward video event, reward type: ").append(str3).append(", reward value: ").append(i).toString());
    }

    /* renamed from: a */
    public final /* synthetic */ void m7158a(AbstractC3526tr abstractC3526tr, String str) {
        if (this.f17367j.get() != null) {
            try {
                abstractC3526tr.mo7129a(this.f17367j.get());
            } catch (Exception e) {
                m7157a(e, str, false);
            }
        }
    }

    /* renamed from: a */
    public final boolean m7166a(Context context) {
        boolean z;
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16331Q)).booleanValue() || this.f17362e.get()) {
            z = false;
        } else {
            if (((Boolean) dyx.m8158e().m7876a(edi.f16368aa)).booleanValue()) {
                z = true;
            } else {
                if (this.f17363f.get() == -1) {
                    dyx.m8162a();
                    if (!C3634xr.m6783c(context, 12451000)) {
                        dyx.m8162a();
                        if (C3634xr.m6784c(context)) {
                            C3556uu.m6745e("Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service.");
                            this.f17363f.set(0);
                        }
                    }
                    this.f17363f.set(1);
                }
                z = this.f17363f.get() == 1;
            }
        }
        return z;
    }

    /* renamed from: b */
    public final String m7151b(Context context) {
        String str;
        if (!m7166a(context)) {
            str = "";
        } else if (m7139h(context)) {
            str = (String) m7154a("getCurrentScreenNameOrScreenClass", "", C3514tf.f17377a);
        } else if (!m7159a(context, "com.google.android.gms.measurement.AppMeasurement", this.f17364g, true)) {
            str = "";
        } else {
            try {
                String str2 = (String) m7136i(context, "getCurrentScreenName").invoke(this.f17364g.get(), new Object[0]);
                String str3 = str2;
                if (str2 == null) {
                    str3 = (String) m7136i(context, "getCurrentScreenClass").invoke(this.f17364g.get(), new Object[0]);
                }
                str = str3;
                if (str3 == null) {
                    str = "";
                }
            } catch (Exception e) {
                m7157a(e, "getCurrentScreenName", false);
                str = "";
            }
        }
        return str;
    }

    /* renamed from: b */
    public final void m7150b(Context context, String str) {
        if (!m7166a(context)) {
            return;
        }
        if (m7139h(context)) {
            m7155a("endAdUnitExposure", new AbstractC3526tr(str) { // from class: com.google.android.gms.internal.ads.th

                /* renamed from: a */
                private final String f17378a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f17378a = str;
                }

                @Override // com.google.android.gms.internal.ads.AbstractC3526tr
                /* renamed from: a */
                public final void mo7129a(afb afbVar) {
                    afbVar.mo7680c(this.f17378a);
                }
            });
        } else {
            m7162a(context, str, "endAdUnitExposure");
        }
    }

    /* renamed from: c */
    public final String m7149c(Context context) {
        String str;
        if (!m7166a(context)) {
            str = null;
        } else {
            synchronized (this.f17359b) {
                if (this.f17360c != null) {
                    str = this.f17360c;
                } else {
                    if (m7139h(context)) {
                        this.f17360c = (String) m7154a("getGmpAppId", this.f17360c, C3517ti.f17379a);
                    } else {
                        this.f17360c = (String) m7156a("getGmpAppId", context);
                    }
                    str = this.f17360c;
                }
            }
        }
        return str;
    }

    /* renamed from: c */
    public final void m7148c(Context context, String str) {
        if (m7166a(context) && (context instanceof Activity)) {
            if (m7139h(context)) {
                m7155a("setScreenName", new AbstractC3526tr(context, str) { // from class: com.google.android.gms.internal.ads.tj

                    /* renamed from: a */
                    private final Context f17380a;

                    /* renamed from: b */
                    private final String f17381b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f17380a = context;
                        this.f17381b = str;
                    }

                    @Override // com.google.android.gms.internal.ads.AbstractC3526tr
                    /* renamed from: a */
                    public final void mo7129a(afb afbVar) {
                        Context context2 = this.f17380a;
                        afbVar.mo7692a(BinderC2734b.m13794a(context2), this.f17381b, context2.getPackageName());
                    }
                });
            } else if (!m7159a(context, "com.google.firebase.analytics.FirebaseAnalytics", this.f17365h, false)) {
            } else {
                try {
                    m7135j(context, "setCurrentScreen").invoke(this.f17365h.get(), (Activity) context, str, context.getPackageName());
                } catch (Exception e) {
                    m7157a(e, "setCurrentScreen", false);
                }
            }
        }
    }

    /* renamed from: d */
    public final String m7147d(Context context) {
        String str;
        if (!m7166a(context)) {
            str = null;
        } else {
            long longValue = ((Long) dyx.m8158e().m7876a(edi.f16336V)).longValue();
            if (m7139h(context)) {
                try {
                    str = longValue < 0 ? (String) m7154a("getAppInstanceId", (String) null, C3520tl.f17383a) : (String) m7152b().submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.tk

                        /* renamed from: a */
                        private final C3509ta f17382a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f17382a = this;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.f17382a.m7167a();
                        }
                    }).get(longValue, TimeUnit.MILLISECONDS);
                } catch (TimeoutException e) {
                    str = "TIME_OUT";
                } catch (Exception e2) {
                    str = null;
                }
            } else if (longValue < 0) {
                str = (String) m7156a("getAppInstanceId", context);
            } else {
                try {
                    str = (String) m7152b().submit(new Callable(this, context) { // from class: com.google.android.gms.internal.ads.tn

                        /* renamed from: a */
                        private final C3509ta f17385a;

                        /* renamed from: b */
                        private final Context f17386b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f17385a = this;
                            this.f17386b = context;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.f17385a.m7141g(this.f17386b);
                        }
                    }).get(longValue, TimeUnit.MILLISECONDS);
                } catch (TimeoutException e3) {
                    str = "TIME_OUT";
                } catch (Exception e4) {
                    str = null;
                }
            }
        }
        return str;
    }

    /* renamed from: d */
    public final void m7146d(Context context, String str) {
        m7161a(context, "_ac", str, (Bundle) null);
    }

    /* renamed from: e */
    public final String m7145e(Context context) {
        String obj;
        if (!m7166a(context)) {
            obj = null;
        } else if (m7139h(context)) {
            Long l = (Long) m7154a("getAdEventId", (String) null, C3521tm.f17384a);
            obj = l != null ? Long.toString(l.longValue()) : null;
        } else {
            Object m7156a = m7156a("generateEventId", context);
            obj = m7156a != null ? m7156a.toString() : null;
        }
        return obj;
    }

    /* renamed from: e */
    public final void m7144e(Context context, String str) {
        m7161a(context, "_ai", str, (Bundle) null);
    }

    /* renamed from: f */
    public final String m7143f(Context context) {
        String str;
        if (!m7166a(context)) {
            str = null;
        } else {
            synchronized (this.f17359b) {
                if (this.f17361d != null) {
                    str = this.f17361d;
                } else {
                    if (m7139h(context)) {
                        this.f17361d = (String) m7154a("getAppIdOrigin", this.f17361d, C3511tc.f17372a);
                    } else {
                        this.f17361d = "fa";
                    }
                    str = this.f17361d;
                }
            }
        }
        return str;
    }

    /* renamed from: f */
    public final void m7142f(Context context, String str) {
        m7161a(context, "_aq", str, (Bundle) null);
    }

    /* renamed from: g */
    public final /* synthetic */ String m7141g(Context context) {
        return (String) m7156a("getAppInstanceId", context);
    }

    /* renamed from: g */
    public final void m7140g(Context context, String str) {
        m7161a(context, "_aa", str, (Bundle) null);
    }
}
