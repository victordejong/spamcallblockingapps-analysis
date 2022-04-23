package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.d;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.wo;
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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wo.class */
public class wo {

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReference<ExecutorService> f28485d = new AtomicReference<>(null);
    private final Object e = new Object();
    private String f = null;
    private String g = null;
    private final AtomicBoolean h = new AtomicBoolean(false);
    private final AtomicInteger i = new AtomicInteger(-1);
    private final AtomicReference<Object> j = new AtomicReference<>(null);

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<Object> f28482a = new AtomicReference<>(null);
    private final ConcurrentMap<String, Method> k = new ConcurrentHashMap(9);

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<afl> f28483b = new AtomicReference<>(null);
    private final BlockingQueue<FutureTask<?>> l = new ArrayBlockingQueue(20);

    /* renamed from: c  reason: collision with root package name */
    final Object f28484c = new Object();
    private boolean m = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wo$a.class */
    public interface a {
        void a(afl aflVar) throws RemoteException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wo$b.class */
    public interface b<T> {
        T a(afl aflVar) throws RemoteException;
    }

    private static Bundle a(String str, String str2) {
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

    private final ExecutorService b() {
        if (this.f28485d.get() == null) {
            this.f28485d.compareAndSet(null, new ThreadPoolExecutor(((Integer) ekb.e().a(aq.Z)).intValue(), ((Integer) ekb.e().a(aq.Z)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), c()));
        }
        return this.f28485d.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(Context context) {
        if (!((Boolean) ekb.e().a(aq.aa)).booleanValue()) {
            return false;
        }
        if (DynamiteModule.a(context, ModuleDescriptor.MODULE_ID) < ((Integer) ekb.e().a(aq.ab)).intValue()) {
            return false;
        }
        if (!((Boolean) ekb.e().a(aq.ac)).booleanValue()) {
            return true;
        }
        try {
            context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            return false;
        } catch (ClassNotFoundException e) {
            return true;
        }
    }

    private final ThreadFactory c() {
        return new xb(this);
    }

    private final Method d(Context context, String str) {
        Method method = this.k.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, String.class);
            this.k.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            a(str, false);
            return null;
        }
    }

    private final Method e(Context context, String str) {
        Method method = this.k.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.k.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            a(str, false);
            return null;
        }
    }

    private final Method h(Context context) {
        Method method = this.k.get("logEventInternal");
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
            this.k.put("logEventInternal", declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            a("logEventInternal", true);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object a(String str, Context context) {
        if (!a(context, "com.google.android.gms.measurement.AppMeasurement", this.j, true)) {
            return null;
        }
        try {
            return e(context, str).invoke(this.j.get(), new Object[0]);
        } catch (Exception e) {
            a(str, true);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <T> T a(String str, T t, b<T> bVar) {
        synchronized (this.f28483b) {
            if (this.f28483b.get() != null) {
                try {
                    return bVar.a(this.f28483b.get());
                } catch (Exception e) {
                    a(str, false);
                }
            }
            return t;
        }
    }

    public final void a(Context context, String str) {
        a(context, "_ac", str, (Bundle) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Context context, String str, String str2) {
        if (a(context, "com.google.android.gms.measurement.AppMeasurement", this.j, true)) {
            try {
                d(context, str2).invoke(this.j.get(), str);
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 37 + String.valueOf(str).length());
                sb.append("Invoke Firebase method ");
                sb.append(str2);
                sb.append(", Ad Unit Id: ");
                sb.append(str);
                zzd.zzed(sb.toString());
            } catch (Exception e) {
                a(str2, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Context context, final String str, String str2, Bundle bundle) {
        if (a(context)) {
            final Bundle a2 = a(str2, str);
            if (bundle != null) {
                a2.putAll(bundle);
            }
            if (b(context)) {
                a("logEventInternal", new a(str, a2) { // from class: com.google.android.gms.internal.ads.ws

                    /* renamed from: a  reason: collision with root package name */
                    private final String f28491a;

                    /* renamed from: b  reason: collision with root package name */
                    private final Bundle f28492b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f28491a = str;
                        this.f28492b = a2;
                    }

                    @Override // com.google.android.gms.internal.ads.wo.a
                    public final void a(afl aflVar) {
                        aflVar.a("am", this.f28491a, this.f28492b);
                    }
                });
            } else if (a(context, "com.google.android.gms.measurement.AppMeasurement", this.j, true)) {
                try {
                    h(context).invoke(this.j.get(), "am", str, a2);
                } catch (Exception e) {
                    a("logEventInternal", true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final String str, final a aVar) {
        synchronized (this.f28483b) {
            FutureTask<?> futureTask = new FutureTask<>(new Runnable(this, aVar, str) { // from class: com.google.android.gms.internal.ads.wr

                /* renamed from: a  reason: collision with root package name */
                private final wo f28488a;

                /* renamed from: b  reason: collision with root package name */
                private final wo.a f28489b;

                /* renamed from: c  reason: collision with root package name */
                private final String f28490c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f28488a = this;
                    this.f28489b = aVar;
                    this.f28490c = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    wo woVar = this.f28488a;
                    wo.a aVar2 = this.f28489b;
                    String str2 = this.f28490c;
                    if (woVar.f28483b.get() != null) {
                        try {
                            aVar2.a(woVar.f28483b.get());
                        } catch (Exception e) {
                            woVar.a(str2, false);
                        }
                    }
                }
            }, null);
            if (this.f28483b.get() != null) {
                futureTask.run();
            } else {
                this.l.offer(futureTask);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, boolean z) {
        if (!this.h.get()) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 30);
            sb.append("Invoke Firebase method ");
            sb.append(str);
            sb.append(" error.");
            zzd.zzez(sb.toString());
            if (z) {
                zzd.zzez("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
                this.h.set(true);
            }
        }
    }

    public final boolean a() {
        synchronized (this.f28484c) {
        }
        return false;
    }

    public final boolean a(Context context) {
        if (!((Boolean) ekb.e().a(aq.T)).booleanValue() || this.h.get()) {
            return false;
        }
        if (((Boolean) ekb.e().a(aq.ad)).booleanValue()) {
            return true;
        }
        if (this.i.get() == -1) {
            ekb.a();
            if (!yq.c(context, d.GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                ekb.a();
                if (yq.c(context)) {
                    zzd.zzez("Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service.");
                    this.i.set(0);
                }
            }
            this.i.set(1);
        }
        return this.i.get() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Context context, String str, AtomicReference<Object> atomicReference, boolean z) {
        if (atomicReference.get() != null) {
            return true;
        }
        try {
            atomicReference.compareAndSet(null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
            return true;
        } catch (Exception e) {
            a("getInstance", z);
            return false;
        }
    }

    public final void b(Context context, String str) {
        a(context, "_ai", str, (Bundle) null);
    }

    public final String c(Context context) {
        if (!a(context)) {
            return "";
        }
        if (b(context)) {
            return (String) a("getCurrentScreenNameOrScreenClass", "", wv.f28495a);
        }
        if (!a(context, "com.google.android.gms.measurement.AppMeasurement", this.j, true)) {
            return "";
        }
        try {
            String str = (String) e(context, "getCurrentScreenName").invoke(this.j.get(), new Object[0]);
            String str2 = str;
            if (str == null) {
                str2 = (String) e(context, "getCurrentScreenClass").invoke(this.j.get(), new Object[0]);
            }
            return str2 != null ? str2 : "";
        } catch (Exception e) {
            a("getCurrentScreenName", false);
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Method c(Context context, String str) {
        Method method = this.k.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod(str, Activity.class, String.class, String.class);
            this.k.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            a(str, false);
            return null;
        }
    }

    public final String d(Context context) {
        if (!a(context)) {
            return null;
        }
        synchronized (this.e) {
            String str = this.f;
            if (str != null) {
                return str;
            }
            if (b(context)) {
                this.f = (String) a("getGmpAppId", this.f, wx.f28497a);
            } else {
                this.f = (String) a("getGmpAppId", context);
            }
            return this.f;
        }
    }

    public final String e(final Context context) {
        if (!a(context)) {
            return null;
        }
        long longValue = ((Long) ekb.e().a(aq.Y)).longValue();
        if (b(context)) {
            try {
                return longValue < 0 ? (String) a("getAppInstanceId", (String) null, xa.f28502a) : (String) b().submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.wz

                    /* renamed from: a  reason: collision with root package name */
                    private final wo f28500a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f28500a = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return (String) this.f28500a.a("getAppInstanceId", (String) null, wu.f28494a);
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e) {
                return "TIME_OUT";
            } catch (Exception e2) {
                return null;
            }
        } else if (longValue < 0) {
            return (String) a("getAppInstanceId", context);
        } else {
            try {
                return (String) b().submit(new Callable(this, context) { // from class: com.google.android.gms.internal.ads.xc

                    /* renamed from: a  reason: collision with root package name */
                    private final wo f28504a;

                    /* renamed from: b  reason: collision with root package name */
                    private final Context f28505b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f28504a = this;
                        this.f28505b = context;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return (String) this.f28504a.a("getAppInstanceId", this.f28505b);
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e3) {
                return "TIME_OUT";
            } catch (Exception e4) {
                return null;
            }
        }
    }

    public final String f(Context context) {
        if (!a(context)) {
            return null;
        }
        if (b(context)) {
            Long l = (Long) a("getAdEventId", (String) null, wq.f28487a);
            if (l != null) {
                return Long.toString(l.longValue());
            }
            return null;
        }
        Object a2 = a("generateEventId", context);
        if (a2 != null) {
            return a2.toString();
        }
        return null;
    }

    public final String g(Context context) {
        if (!a(context)) {
            return null;
        }
        synchronized (this.e) {
            String str = this.g;
            if (str != null) {
                return str;
            }
            if (b(context)) {
                this.g = (String) a("getAppIdOrigin", this.g, wp.f28486a);
            } else {
                this.g = "fa";
            }
            return this.g;
        }
    }
}
