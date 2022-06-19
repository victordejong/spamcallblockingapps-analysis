package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.common.util.AbstractC1610f;
import com.google.android.gms.common.util.i;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.internal.AbstractC2347u5;
import com.google.android.gms.measurement.internal.C2229b7;
import com.google.android.gms.measurement.internal.C2290l4;
import com.google.android.gms.measurement.p082a.C2217a;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
/* renamed from: com.google.android.gms.internal.measurement.j0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/j0.class */
public final class C2133j0 {

    /* renamed from: j */
    private static volatile C2133j0 f9761j;

    /* renamed from: a */
    private final String f9762a;

    /* renamed from: b */
    protected final AbstractC1610f f9763b;

    /* renamed from: c */
    protected final ExecutorService f9764c;

    /* renamed from: d */
    private final C2217a f9765d;

    /* renamed from: e */
    private final List<Pair<AbstractC2347u5, a0>> f9766e;

    /* renamed from: f */
    private int f9767f;

    /* renamed from: g */
    private boolean f9768g;

    /* renamed from: h */
    private final String f9769h;

    /* renamed from: i */
    private volatile AbstractC2216zb f9770i;

    protected C2133j0(Context context, String str, String str2, String str3, Bundle bundle) {
        this.f9762a = (str == null || !m4287s(str2, str3)) ? "FA" : str;
        this.f9763b = i.e();
        boolean z = true;
        this.f9764c = C2177s8.m4182a().m4120a(new ThreadFactoryC2170s(this), 1);
        this.f9765d = new C2217a(this);
        this.f9766e = new ArrayList();
        try {
            if (C2229b7.m4017a(context, "google_app_id", C2290l4.m3878a(context)) != null && !m4291o()) {
                this.f9769h = null;
                this.f9768g = true;
                Log.w(this.f9762a, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
                return;
            }
        } catch (IllegalStateException e) {
        }
        if (!m4287s(str2, str3)) {
            this.f9769h = "fa";
            if (str2 == null || str3 == null) {
                if ((str2 == null) ^ (str3 != null ? false : z)) {
                    Log.w(this.f9762a, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            } else {
                Log.v(this.f9762a, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy");
            }
        } else {
            this.f9769h = str2;
        }
        m4290p(new h(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.f9762a, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new C2128i0(this));
        }
    }

    /* renamed from: o */
    protected static final boolean m4291o() {
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: p */
    public final void m4290p(AbstractRunnableC2208z abstractRunnableC2208z) {
        this.f9764c.execute(abstractRunnableC2208z);
    }

    /* renamed from: q */
    public final void m4289q(Exception exc, boolean z, boolean z2) {
        this.f9768g |= z;
        if (z) {
            Log.w(this.f9762a, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z2) {
            m4303c(5, "Error with data collection. Data lost.", exc, null, null);
        }
        Log.w(this.f9762a, "Error with data collection. Data lost.", exc);
    }

    /* renamed from: r */
    private final void m4288r(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l) {
        m4290p(new x(this, l, str, str2, bundle, z, z2));
    }

    /* renamed from: s */
    public static final boolean m4287s(String str, String str2) {
        return (str2 == null || str == null || m4291o()) ? false : true;
    }

    /* renamed from: t */
    public static C2133j0 m4286t(Context context, String str, String str2, String str3, Bundle bundle) {
        C1581h.m8347h(context);
        if (f9761j == null) {
            synchronized (C2133j0.class) {
                try {
                    if (f9761j == null) {
                        f9761j = new C2133j0(context, str, str2, str3, bundle);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9761j;
    }

    /* renamed from: A */
    public final void m4316A(Bundle bundle) {
        m4290p(new c(this, bundle));
    }

    /* renamed from: B */
    public final void m4315B(String str, String str2, Bundle bundle) {
        m4290p(new d(this, str, str2, bundle));
    }

    /* renamed from: C */
    public final List<Bundle> m4314C(String str, String str2) {
        ua uaVar = new ua();
        m4290p(new e(this, str, str2, uaVar));
        List<Bundle> list = (List) ua.g3(uaVar.M1(5000L), List.class);
        List<Bundle> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    /* renamed from: D */
    public final void m4313D(Activity activity, String str, String str2) {
        m4290p(new f(this, activity, str, str2));
    }

    /* renamed from: E */
    public final void m4312E(Bundle bundle) {
        m4290p(new g(this, bundle));
    }

    /* renamed from: F */
    public final void m4311F(String str) {
        m4290p(new i(this, str));
    }

    /* renamed from: G */
    public final void m4310G(String str) {
        m4290p(new j(this, str));
    }

    /* renamed from: H */
    public final String m4309H() {
        ua uaVar = new ua();
        m4290p(new k(this, uaVar));
        return uaVar.r1(500L);
    }

    /* renamed from: I */
    public final String m4308I() {
        ua uaVar = new ua();
        m4290p(new l(this, uaVar));
        return uaVar.r1(50L);
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: J */
    public final long m4307J() {
        char c;
        ua uaVar = new ua();
        m4290p(new m(this, uaVar));
        Long l = (Long) ua.g3(uaVar.M1(500L), Long.class);
        if (l == null) {
            long nextLong = new Random(System.nanoTime() ^ this.f9763b.m8247a()).nextLong();
            int i = this.f9767f + 1;
            this.f9767f = i;
            c = nextLong + i;
        } else {
            c = l.longValue();
        }
        return c;
    }

    /* renamed from: K */
    public final String m4306K() {
        ua uaVar = new ua();
        m4290p(new n(this, uaVar));
        return uaVar.r1(500L);
    }

    /* renamed from: a */
    public final String m4305a() {
        ua uaVar = new ua();
        m4290p(new o(this, uaVar));
        return uaVar.r1(500L);
    }

    /* renamed from: b */
    public final Map<String, Object> m4304b(String str, String str2, boolean z) {
        ua uaVar = new ua();
        m4290p(new p(this, str, str2, z, uaVar));
        Bundle M1 = uaVar.M1(5000L);
        if (M1 == null || M1.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(M1.size());
        for (String str3 : M1.keySet()) {
            Object obj = M1.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                hashMap.put(str3, obj);
            }
        }
        return hashMap;
    }

    /* renamed from: c */
    public final void m4303c(int i, String str, Object obj, Object obj2, Object obj3) {
        m4290p(new q(this, false, 5, str, obj, (Object) null, (Object) null));
    }

    /* renamed from: d */
    public final Bundle m4302d(Bundle bundle, boolean z) {
        ua uaVar = new ua();
        m4290p(new r(this, bundle, uaVar));
        if (z) {
            return uaVar.M1(5000L);
        }
        return null;
    }

    /* renamed from: e */
    public final int m4301e(String str) {
        ua uaVar = new ua();
        m4290p(new t(this, str, uaVar));
        Integer num = (Integer) ua.g3(uaVar.M1((long) OkHttpUtils.DEFAULT_MILLISECONDS), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    /* renamed from: f */
    public final String m4300f() {
        return this.f9769h;
    }

    /* renamed from: g */
    public final void m4299g(boolean z) {
        m4290p(new v(this, z));
    }

    /* renamed from: u */
    public final C2217a m4285u() {
        return this.f9765d;
    }

    /* renamed from: v */
    protected final AbstractC2216zb m4284v(Context context, boolean z) {
        try {
            return yb.asInterface(DynamiteModule.m8179e(context, DynamiteModule.f5914d, ModuleDescriptor.MODULE_ID).m8180d("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e) {
            m4289q(e, true, false);
            return null;
        }
    }

    /* renamed from: w */
    public final void m4283w(AbstractC2347u5 abstractC2347u5) {
        C1581h.m8347h(abstractC2347u5);
        synchronized (this.f9766e) {
            for (int i = 0; i < this.f9766e.size(); i++) {
                try {
                    if (abstractC2347u5.equals(this.f9766e.get(i).first)) {
                        Log.w(this.f9762a, "OnEventListener already registered.");
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            AbstractC2114fc a0Var = new a0(abstractC2347u5);
            this.f9766e.add(new Pair<>(abstractC2347u5, a0Var));
            if (this.f9770i != null) {
                try {
                    this.f9770i.registerOnMeasurementEventListener(a0Var);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException e) {
                    Log.w(this.f9762a, "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            m4290p(new w(this, a0Var));
        }
    }

    /* renamed from: x */
    public final void m4282x(String str, Bundle bundle) {
        m4288r(null, str, bundle, false, true, null);
    }

    /* renamed from: y */
    public final void m4281y(String str, String str2, Bundle bundle) {
        m4288r(str, str2, bundle, true, true, null);
    }

    /* renamed from: z */
    public final void m4280z(String str, String str2, Object obj, boolean z) {
        m4290p(new y(this, str, str2, obj, z));
    }
}
