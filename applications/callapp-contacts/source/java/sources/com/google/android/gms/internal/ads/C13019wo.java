package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.C11943d;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.C13019wo;
import java.lang.reflect.Method;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.internal.ads.wo */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wo.class */
public class C13019wo {

    /* renamed from: d */
    private final AtomicReference<ExecutorService> f49984d = new AtomicReference<>(null);

    /* renamed from: e */
    private final Object f49985e = new Object();

    /* renamed from: f */
    private String f49986f = null;

    /* renamed from: g */
    private String f49987g = null;

    /* renamed from: h */
    private final AtomicBoolean f49988h = new AtomicBoolean(false);

    /* renamed from: i */
    private final AtomicInteger f49989i = new AtomicInteger(-1);

    /* renamed from: j */
    private final AtomicReference<Object> f49990j = new AtomicReference<>(null);

    /* renamed from: a */
    final AtomicReference<Object> f49981a = new AtomicReference<>(null);

    /* renamed from: k */
    private final ConcurrentMap<String, Method> f49991k = new ConcurrentHashMap(9);

    /* renamed from: b */
    final AtomicReference<afl> f49982b = new AtomicReference<>(null);

    /* renamed from: l */
    private final BlockingQueue<FutureTask<?>> f49992l = new ArrayBlockingQueue(20);

    /* renamed from: c */
    final Object f49983c = new Object();

    /* renamed from: m */
    private boolean f49993m = false;

    /* renamed from: com.google.android.gms.internal.ads.wo$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wo$a.class */
    public interface AbstractC13020a {
        /* renamed from: a */
        void mo14021a(afl aflVar) throws RemoteException;
    }

    /* renamed from: com.google.android.gms.internal.ads.wo$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wo$b.class */
    public interface AbstractC13021b<T> {
        /* renamed from: a */
        T mo14019a(afl aflVar) throws RemoteException;
    }

    /* renamed from: a */
    private static Bundle m14036a(String str, String str2) {
        Bundle bundle = new Bundle();
        try {
            bundle.putLong("_aeid", Long.parseLong(str));
        } catch (NullPointerException | NumberFormatException e) {
            String valueOf = String.valueOf(str);
            zzd.zzc(valueOf.length() != 0 ? "Invalid event ID: ".concat(valueOf) : new String("Invalid event ID: "), e);
        }
        if ("_ac".equals(str2)) {
            bundle.putInt("_r", 1);
        }
        return bundle;
    }

    /* renamed from: b */
    private final ExecutorService m14034b() {
        if (this.f49984d.get() == null) {
            this.f49984d.compareAndSet(null, new ThreadPoolExecutor(((Integer) ekb.m14831e().m18571a(C12187aq.f42636Z)).intValue(), ((Integer) ekb.m14831e().m18571a(C12187aq.f42636Z)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), m14031c()));
        }
        return this.f49984d.get();
    }

    /* renamed from: b */
    public static boolean m14033b(Context context) {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42664aa)).booleanValue()) {
            return false;
        }
        if (DynamiteModule.m18973a(context, ModuleDescriptor.MODULE_ID) < ((Integer) ekb.m14831e().m18571a(C12187aq.f42665ab)).intValue()) {
            return false;
        }
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42666ac)).booleanValue()) {
            return true;
        }
        try {
            context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            return false;
        } catch (ClassNotFoundException e) {
            return true;
        }
    }

    /* renamed from: c */
    private final ThreadFactory m14031c() {
        return new ThreadFactoryC13035xb(this);
    }

    /* renamed from: d */
    private final Method m14027d(Context context, String str) {
        Method method = this.f49991k.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, String.class);
            this.f49991k.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            m14035a(str, false);
            return null;
        }
    }

    /* renamed from: e */
    private final Method m14025e(Context context, String str) {
        Method method = this.f49991k.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.f49991k.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            m14035a(str, false);
            return null;
        }
    }

    /* renamed from: h */
    private final Method m14022h(Context context) {
        Method method = this.f49991k.get("logEventInternal");
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
            this.f49991k.put("logEventInternal", declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            m14035a("logEventInternal", true);
            return null;
        }
    }

    /* renamed from: a */
    public final Object m14039a(String str, Context context) {
        if (!m14040a(context, "com.google.android.gms.measurement.AppMeasurement", this.f49990j, true)) {
            return null;
        }
        try {
            return m14025e(context, str).invoke(this.f49990j.get(), new Object[0]);
        } catch (Exception e) {
            m14035a(str, true);
            return null;
        }
    }

    /* renamed from: a */
    public final <T> T m14037a(String str, T t, AbstractC13021b<T> abstractC13021b) {
        synchronized (this.f49982b) {
            if (this.f49982b.get() != null) {
                try {
                    return abstractC13021b.mo14019a(this.f49982b.get());
                } catch (Exception e) {
                    m14035a(str, false);
                }
            }
            return t;
        }
    }

    /* renamed from: a */
    public final void m14043a(Context context, String str) {
        m14041a(context, "_ac", str, (Bundle) null);
    }

    /* renamed from: a */
    public final void m14042a(Context context, String str, String str2) {
        if (!m14040a(context, "com.google.android.gms.measurement.AppMeasurement", this.f49990j, true)) {
            return;
        }
        try {
            m14027d(context, str2).invoke(this.f49990j.get(), str);
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 37 + String.valueOf(str).length());
            sb.append("Invoke Firebase method ");
            sb.append(str2);
            sb.append(", Ad Unit Id: ");
            sb.append(str);
            zzd.zzed(sb.toString());
        } catch (Exception e) {
            m14035a(str2, false);
        }
    }

    /* renamed from: a */
    public final void m14041a(Context context, String str, String str2, Bundle bundle) {
        if (!m14044a(context)) {
            return;
        }
        Bundle m14036a = m14036a(str2, str);
        if (bundle != null) {
            m14036a.putAll(bundle);
        }
        if (m14033b(context)) {
            m14038a("logEventInternal", new AbstractC13020a(str, m14036a) { // from class: com.google.android.gms.internal.ads.ws

                /* renamed from: a */
                private final String f49999a;

                /* renamed from: b */
                private final Bundle f50000b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f49999a = str;
                    this.f50000b = m14036a;
                }

                @Override // com.google.android.gms.internal.ads.C13019wo.AbstractC13020a
                /* renamed from: a */
                public final void mo14021a(afl aflVar) {
                    aflVar.mo14505a("am", this.f49999a, this.f50000b);
                }
            });
        } else if (!m14040a(context, "com.google.android.gms.measurement.AppMeasurement", this.f49990j, true)) {
        } else {
            try {
                m14022h(context).invoke(this.f49990j.get(), "am", str, m14036a);
            } catch (Exception e) {
                m14035a("logEventInternal", true);
            }
        }
    }

    /* renamed from: a */
    public final void m14038a(String str, AbstractC13020a abstractC13020a) {
        synchronized (this.f49982b) {
            FutureTask<?> futureTask = new FutureTask<>(new Runnable(this, abstractC13020a, str) { // from class: com.google.android.gms.internal.ads.wr

                /* renamed from: a */
                private final C13019wo f49996a;

                /* renamed from: b */
                private final C13019wo.AbstractC13020a f49997b;

                /* renamed from: c */
                private final String f49998c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f49996a = this;
                    this.f49997b = abstractC13020a;
                    this.f49998c = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C13019wo c13019wo = this.f49996a;
                    C13019wo.AbstractC13020a abstractC13020a2 = this.f49997b;
                    String str2 = this.f49998c;
                    if (c13019wo.f49982b.get() != null) {
                        try {
                            abstractC13020a2.mo14021a(c13019wo.f49982b.get());
                        } catch (Exception e) {
                            c13019wo.m14035a(str2, false);
                        }
                    }
                }
            }, null);
            if (this.f49982b.get() != null) {
                futureTask.run();
            } else {
                this.f49992l.offer(futureTask);
            }
        }
    }

    /* renamed from: a */
    public final void m14035a(String str, boolean z) {
        if (!this.f49988h.get()) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 30);
            sb.append("Invoke Firebase method ");
            sb.append(str);
            sb.append(" error.");
            zzd.zzez(sb.toString());
            if (!z) {
                return;
            }
            zzd.zzez("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
            this.f49988h.set(true);
        }
    }

    /* renamed from: a */
    public final boolean m14045a() {
        synchronized (this.f49983c) {
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m14044a(Context context) {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42630T)).booleanValue() || this.f49988h.get()) {
            return false;
        }
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42667ad)).booleanValue()) {
            return true;
        }
        if (this.f49989i.get() == -1) {
            ekb.m14835a();
            if (!C13077yq.m13931c(context, C11943d.GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                ekb.m14835a();
                if (C13077yq.m13932c(context)) {
                    zzd.zzez("Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service.");
                    this.f49989i.set(0);
                }
            }
            this.f49989i.set(1);
        }
        return this.f49989i.get() == 1;
    }

    /* renamed from: a */
    public final boolean m14040a(Context context, String str, AtomicReference<Object> atomicReference, boolean z) {
        if (atomicReference.get() == null) {
            try {
                atomicReference.compareAndSet(null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
                return true;
            } catch (Exception e) {
                m14035a("getInstance", z);
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public final void m14032b(Context context, String str) {
        m14041a(context, "_ai", str, (Bundle) null);
    }

    /* renamed from: c */
    public final String m14030c(Context context) {
        if (!m14044a(context)) {
            return "";
        }
        if (m14033b(context)) {
            return (String) m14037a("getCurrentScreenNameOrScreenClass", "", C13028wv.f50003a);
        }
        if (!m14040a(context, "com.google.android.gms.measurement.AppMeasurement", this.f49990j, true)) {
            return "";
        }
        try {
            String str = (String) m14025e(context, "getCurrentScreenName").invoke(this.f49990j.get(), new Object[0]);
            String str2 = str;
            if (str == null) {
                str2 = (String) m14025e(context, "getCurrentScreenClass").invoke(this.f49990j.get(), new Object[0]);
            }
            return str2 != null ? str2 : "";
        } catch (Exception e) {
            m14035a("getCurrentScreenName", false);
            return "";
        }
    }

    /* renamed from: c */
    public final Method m14029c(Context context, String str) {
        Method method = this.f49991k.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod(str, Activity.class, String.class, String.class);
            this.f49991k.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            m14035a(str, false);
            return null;
        }
    }

    /* renamed from: d */
    public final String m14028d(Context context) {
        if (!m14044a(context)) {
            return null;
        }
        synchronized (this.f49985e) {
            String str = this.f49986f;
            if (str != null) {
                return str;
            }
            if (m14033b(context)) {
                this.f49986f = (String) m14037a("getGmpAppId", this.f49986f, C13030wx.f50005a);
            } else {
                this.f49986f = (String) m14039a("getGmpAppId", context);
            }
            return this.f49986f;
        }
    }

    /* renamed from: e */
    public final String m14026e(Context context) {
        if (!m14044a(context)) {
            return null;
        }
        long longValue = ((Long) ekb.m14831e().m18571a(C12187aq.f42635Y)).longValue();
        if (m14033b(context)) {
            try {
                return longValue < 0 ? (String) m14037a("getAppInstanceId", (String) null, C13034xa.f50010a) : (String) m14034b().submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.wz

                    /* renamed from: a */
                    private final C13019wo f50008a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f50008a = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return (String) this.f50008a.m14037a("getAppInstanceId", (String) null, C13027wu.f50002a);
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e) {
                return "TIME_OUT";
            } catch (Exception e2) {
                return null;
            }
        } else if (longValue < 0) {
            return (String) m14039a("getAppInstanceId", context);
        } else {
            try {
                return (String) m14034b().submit(new Callable(this, context) { // from class: com.google.android.gms.internal.ads.xc

                    /* renamed from: a */
                    private final C13019wo f50012a;

                    /* renamed from: b */
                    private final Context f50013b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f50012a = this;
                        this.f50013b = context;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return (String) this.f50012a.m14039a("getAppInstanceId", this.f50013b);
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e3) {
                return "TIME_OUT";
            } catch (Exception e4) {
                return null;
            }
        }
    }

    /* renamed from: f */
    public final String m14024f(Context context) {
        if (!m14044a(context)) {
            return null;
        }
        if (m14033b(context)) {
            Long l = (Long) m14037a("getAdEventId", (String) null, C13023wq.f49995a);
            if (l == null) {
                return null;
            }
            return Long.toString(l.longValue());
        }
        Object m14039a = m14039a("generateEventId", context);
        if (m14039a == null) {
            return null;
        }
        return m14039a.toString();
    }

    /* renamed from: g */
    public final String m14023g(Context context) {
        if (!m14044a(context)) {
            return null;
        }
        synchronized (this.f49985e) {
            String str = this.f49987g;
            if (str != null) {
                return str;
            }
            if (m14033b(context)) {
                this.f49987g = (String) m14037a("getAppIdOrigin", this.f49987g, C13022wp.f49994a);
            } else {
                this.f49987g = "fa";
            }
            return this.f49987g;
        }
    }
}
