package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.C2670w;
import com.google.android.gms.common.p132c.C2586c;
import com.google.android.gms.common.util.AbstractC2708e;
import com.google.android.gms.common.util.C2711h;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.internal.AbstractC4328gi;
import com.google.android.gms.measurement.p141a.C4154a;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.measurement.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/d.class */
public class C3866d {

    /* renamed from: b */
    private static volatile C3866d f17950b;

    /* renamed from: h */
    private static Boolean f17951h = null;

    /* renamed from: i */
    private static Boolean f17952i = null;

    /* renamed from: j */
    private static boolean f17953j = false;

    /* renamed from: k */
    private static Boolean f17954k = null;

    /* renamed from: l */
    private static String f17955l = "use_dynamite_api";

    /* renamed from: m */
    private static String f17956m = "allow_remote_dynamite";

    /* renamed from: n */
    private static boolean f17957n = true;

    /* renamed from: o */
    private static boolean f17958o = false;

    /* renamed from: a */
    protected final AbstractC2708e f17959a;

    /* renamed from: c */
    private final String f17960c;

    /* renamed from: d */
    private final ExecutorService f17961d;

    /* renamed from: e */
    private final C4154a f17962e;

    /* renamed from: f */
    private List<Pair<AbstractC4328gi, Object>> f17963f;

    /* renamed from: g */
    private int f17964g;

    /* renamed from: p */
    private boolean f17965p;

    /* renamed from: q */
    private String f17966q;

    /* renamed from: r */
    private AbstractC4131mi f17967r;

    /* renamed from: com.google.android.gms.internal.measurement.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/d$a.class */
    public abstract class AbstractRunnableC3867a implements Runnable {

        /* renamed from: a */
        final long f17968a;

        /* renamed from: b */
        final long f17969b;

        /* renamed from: c */
        private final boolean f17970c;

        public AbstractRunnableC3867a(C3866d c3866d) {
            this(true);
        }

        public AbstractRunnableC3867a(boolean z) {
            C3866d.this = r5;
            this.f17968a = r5.f17959a.mo13862a();
            this.f17969b = r5.f17959a.mo13861b();
            this.f17970c = z;
        }

        /* renamed from: a */
        protected void mo4947a() {
        }

        /* renamed from: b */
        abstract void mo4940b();

        @Override // java.lang.Runnable
        public void run() {
            if (C3866d.this.f17965p) {
                mo4947a();
                return;
            }
            try {
                mo4940b();
            } catch (Exception e) {
                C3866d.this.m5788a(e, false, this.f17970c);
                mo4947a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.measurement.d$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/d$b.class */
    public final class C3868b implements Application.ActivityLifecycleCallbacks {
        C3868b() {
            C3866d.this = r4;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            C3866d.this.m5795a(new C4151z(this, activity, bundle));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            C3866d.this.m5795a(new C3746ae(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            C3866d.this.m5795a(new C3745ad(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            C3866d.this.m5795a(new C3742aa(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            BinderC4129mg binderC4129mg = new BinderC4129mg();
            C3866d.this.m5795a(new C3747af(this, activity, binderC4129mg));
            Bundle m4951b = binderC4129mg.m4951b(50L);
            if (m4951b != null) {
                bundle.putAll(m4951b);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            C3866d.this.m5795a(new C3743ab(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            C3866d.this.m5795a(new C3744ac(this, activity));
        }
    }

    private C3866d(Context context, String str, String str2, String str3, Bundle bundle) {
        boolean z = true;
        if (str == null || !m5774b(str2, str3)) {
            this.f17960c = "FA";
        } else {
            this.f17960c = str;
        }
        this.f17959a = C2711h.m13859d();
        this.f17961d = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        this.f17962e = new C4154a(this);
        if (!(!m5763f(context) || m5758i())) {
            this.f17966q = null;
            this.f17965p = true;
            Log.w(this.f17960c, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
            return;
        }
        if (!m5774b(str2, str3)) {
            this.f17966q = "fa";
            if (str2 == null || str3 == null) {
                if ((str2 == null) ^ (str3 != null ? false : z)) {
                    Log.w(this.f17960c, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            } else {
                Log.v(this.f17960c, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy");
            }
        } else {
            this.f17966q = str2;
        }
        m5795a(new C3956g(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.f17960c, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new C3868b());
        }
    }

    /* renamed from: a */
    public static C3866d m5801a(Context context) {
        return m5799a(context, (String) null, (String) null, (String) null, (Bundle) null);
    }

    /* renamed from: a */
    public static C3866d m5799a(Context context, String str, String str2, String str3, Bundle bundle) {
        C2662s.m13981a(context);
        if (f17950b == null) {
            synchronized (C3866d.class) {
                try {
                    if (f17950b == null) {
                        f17950b = new C3866d(context, str, str2, str3, bundle);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f17950b;
    }

    /* renamed from: a */
    public final void m5795a(AbstractRunnableC3867a abstractRunnableC3867a) {
        this.f17961d.execute(abstractRunnableC3867a);
    }

    /* renamed from: a */
    public final void m5788a(Exception exc, boolean z, boolean z2) {
        this.f17965p |= z;
        if (z) {
            Log.w(this.f17960c, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z2) {
            m5803a(5, "Error with data collection. Data lost.", exc, (Object) null, (Object) null);
        }
        Log.w(this.f17960c, "Error with data collection. Data lost.", exc);
    }

    /* renamed from: a */
    private final void m5783a(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l) {
        m5795a(new C4149x(this, l, str, str2, bundle, z, z2));
    }

    /* renamed from: a */
    private final void m5781a(String str, String str2, Object obj, boolean z) {
        m5795a(new C4148w(this, str, str2, obj, z));
    }

    /* renamed from: a */
    private static boolean m5800a(Context context, String str) {
        boolean z;
        C2662s.m13979a(str);
        try {
            ApplicationInfo m14198a = C2586c.m14193a(context).m14198a(context.getPackageName(), 128);
            z = false;
            if (m14198a != null) {
                z = m14198a.metaData == null ? false : m14198a.metaData.getBoolean(str);
            }
        } catch (PackageManager.NameNotFoundException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m5777b(Context context) {
        m5757i(context);
        synchronized (C3866d.class) {
            try {
                if (!f17953j) {
                    try {
                        String str = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, "measurement.dynamite.enabled", "");
                        if ("true".equals(str)) {
                            f17954k = true;
                        } else if ("false".equals(str)) {
                            f17954k = false;
                        } else {
                            f17954k = null;
                        }
                        f17953j = true;
                    } catch (Exception e) {
                        Log.e("FA", "Unable to call SystemProperties.get()", e);
                        f17954k = null;
                        f17953j = true;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return (f17954k == null ? f17951h : f17954k).booleanValue();
    }

    /* renamed from: b */
    public static boolean m5774b(String str, String str2) {
        return (str2 == null || str == null || m5758i()) ? false : true;
    }

    /* renamed from: f */
    private static boolean m5763f(Context context) {
        boolean z = false;
        try {
            if (new C2670w(context).m13909a("google_app_id") != null) {
                z = true;
            }
        } catch (IllegalStateException e) {
        }
        return z;
    }

    /* renamed from: g */
    public static int m5761g(Context context) {
        return DynamiteModule.m13784b(context, ModuleDescriptor.MODULE_ID);
    }

    /* renamed from: h */
    public static int m5759h(Context context) {
        return DynamiteModule.m13790a(context, ModuleDescriptor.MODULE_ID);
    }

    /* renamed from: i */
    public static void m5757i(Context context) {
        synchronized (C3866d.class) {
            try {
                try {
                } catch (Exception e) {
                    Log.e("FA", "Exception reading flag from SharedPreferences.", e);
                    f17951h = Boolean.valueOf(f17957n);
                    f17952i = false;
                }
                if (f17951h != null && f17952i != null) {
                    return;
                }
                if (m5800a(context, "app_measurement_internal_disable_startup_flags")) {
                    f17951h = Boolean.valueOf(f17957n);
                    f17952i = false;
                    return;
                }
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
                f17951h = Boolean.valueOf(sharedPreferences.getBoolean(f17955l, f17957n));
                f17952i = Boolean.valueOf(sharedPreferences.getBoolean(f17956m, false));
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.remove(f17955l);
                edit.remove(f17956m);
                edit.apply();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: i */
    private static boolean m5758i() {
        boolean z;
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics");
            z = true;
        } catch (ClassNotFoundException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public final Bundle m5796a(Bundle bundle, boolean z) {
        BinderC4129mg binderC4129mg = new BinderC4129mg();
        m5795a(new C4143r(this, bundle, binderC4129mg));
        return z ? binderC4129mg.m4951b(5000L) : null;
    }

    /* renamed from: a */
    public final AbstractC4131mi m5798a(Context context, boolean z) {
        AbstractC4131mi abstractC4131mi;
        try {
            abstractC4131mi = AbstractBinderC4130mh.asInterface(DynamiteModule.m13791a(context, z ? DynamiteModule.f7554e : DynamiteModule.f7551b, ModuleDescriptor.MODULE_ID).m13786a("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e) {
            m5788a((Exception) e, true, false);
            abstractC4131mi = null;
        }
        return abstractC4131mi;
    }

    /* renamed from: a */
    public final C4154a m5804a() {
        return this.f17962e;
    }

    /* renamed from: a */
    public final List<Bundle> m5785a(String str, String str2) {
        BinderC4129mg binderC4129mg = new BinderC4129mg();
        m5795a(new C3983h(this, str, str2, binderC4129mg));
        List<Bundle> list = (List) BinderC4129mg.m4952a(binderC4129mg.m4951b(5000L), List.class);
        List<Bundle> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    /* renamed from: a */
    public final Map<String, Object> m5780a(String str, String str2, boolean z) {
        HashMap hashMap;
        BinderC4129mg binderC4129mg = new BinderC4129mg();
        m5795a(new C4141p(this, str, str2, z, binderC4129mg));
        Bundle m4951b = binderC4129mg.m4951b(5000L);
        if (m4951b == null || m4951b.size() == 0) {
            hashMap = Collections.emptyMap();
        } else {
            hashMap = new HashMap(m4951b.size());
            for (String str3 : m4951b.keySet()) {
                Object obj = m4951b.get(str3);
                if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                    hashMap.put(str3, obj);
                }
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public final void m5803a(int i, String str, Object obj, Object obj2, Object obj3) {
        m5795a(new C4144s(this, false, 5, str, obj, null, null));
    }

    /* renamed from: a */
    public final void m5802a(Activity activity, String str, String str2) {
        m5795a(new C4014i(this, activity, str, str2));
    }

    /* renamed from: a */
    public final void m5797a(Bundle bundle) {
        m5795a(new C4150y(this, bundle));
    }

    /* renamed from: a */
    public final void m5787a(String str) {
        m5795a(new C4041j(this, str));
    }

    /* renamed from: a */
    public final void m5786a(String str, Bundle bundle) {
        m5783a(null, str, bundle, false, true, null);
    }

    /* renamed from: a */
    public final void m5784a(String str, String str2, Bundle bundle) {
        m5783a(str, str2, bundle, true, true, null);
    }

    /* renamed from: a */
    public final void m5782a(String str, String str2, Object obj) {
        m5781a(str, str2, obj, true);
    }

    /* renamed from: a */
    public final void m5779a(boolean z) {
        m5795a(new C4147v(this, z));
    }

    /* renamed from: b */
    public final String m5778b() {
        BinderC4129mg binderC4129mg = new BinderC4129mg();
        m5795a(new C4122m(this, binderC4129mg));
        return binderC4129mg.m4953a(500L);
    }

    /* renamed from: b */
    public final void m5775b(String str) {
        m5795a(new C4068k(this, str));
    }

    /* renamed from: b */
    public final void m5773b(String str, String str2, Bundle bundle) {
        m5795a(new C3929f(this, str, str2, bundle));
    }

    /* renamed from: c */
    public final int m5769c(String str) {
        BinderC4129mg binderC4129mg = new BinderC4129mg();
        m5795a(new C4145t(this, str, binderC4129mg));
        Integer num = (Integer) BinderC4129mg.m4952a(binderC4129mg.m4951b(10000L), Integer.class);
        return num == null ? 25 : num.intValue();
    }

    /* renamed from: c */
    public final String m5772c() {
        BinderC4129mg binderC4129mg = new BinderC4129mg();
        m5795a(new C4095l(this, binderC4129mg));
        return binderC4129mg.m4953a(50L);
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: d */
    public final long m5768d() {
        char longValue;
        BinderC4129mg binderC4129mg = new BinderC4129mg();
        m5795a(new C4140o(this, binderC4129mg));
        Long l = (Long) BinderC4129mg.m4952a(binderC4129mg.m4951b(500L), Long.class);
        if (l == null) {
            long nextLong = new Random(System.nanoTime() ^ this.f17959a.mo13862a()).nextLong();
            int i = this.f17964g + 1;
            this.f17964g = i;
            longValue = nextLong + i;
        } else {
            longValue = l.longValue();
        }
        return longValue;
    }

    /* renamed from: e */
    public final String m5766e() {
        BinderC4129mg binderC4129mg = new BinderC4129mg();
        m5795a(new C4139n(this, binderC4129mg));
        return binderC4129mg.m4953a(500L);
    }

    /* renamed from: f */
    public final String m5764f() {
        BinderC4129mg binderC4129mg = new BinderC4129mg();
        m5795a(new C4142q(this, binderC4129mg));
        return binderC4129mg.m4953a(500L);
    }

    /* renamed from: g */
    public final String m5762g() {
        return this.f17966q;
    }
}
