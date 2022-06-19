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
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.util.AbstractC6227e;
import com.google.android.gms.common.util.C6230h;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.internal.AbstractC7881u5;
import com.google.android.gms.measurement.internal.C7664b7;
import com.google.android.gms.measurement.internal.C7781l4;
import com.google.android.gms.measurement.p274a.C7642a;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
/* renamed from: com.google.android.gms.internal.measurement.j0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/j0.class */
public final class C7415j0 {

    /* renamed from: a */
    private static volatile C7415j0 f34547a;

    /* renamed from: b */
    private final String f34548b;

    /* renamed from: c */
    protected final AbstractC6227e f34549c;

    /* renamed from: d */
    protected final ExecutorService f34550d;

    /* renamed from: e */
    private final C7642a f34551e;

    /* renamed from: f */
    private final List<Pair<AbstractC7881u5, BinderC7289a0>> f34552f;

    /* renamed from: g */
    private int f34553g;

    /* renamed from: h */
    private boolean f34554h;

    /* renamed from: i */
    private final String f34555i;

    /* renamed from: j */
    private volatile AbstractC7399hc f34556j;

    protected C7415j0(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str == null || !m7261s(str2, str3)) {
            this.f34548b = "FA";
        } else {
            this.f34548b = str;
        }
        this.f34549c = C6230h.m16804d();
        boolean z = true;
        this.f34550d = C7298a9.m7681a().mo7386a(new ThreadFactoryC7538s(this), 1);
        this.f34551e = new C7642a(this);
        this.f34552f = new ArrayList();
        try {
            if (C7664b7.m6578a(context, "google_app_id", C7781l4.m6250a(context)) != null && !m7265o()) {
                this.f34555i = null;
                this.f34554h = true;
                Log.w(this.f34548b, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
                return;
            }
        } catch (IllegalStateException e) {
        }
        if (!m7261s(str2, str3)) {
            this.f34555i = "fa";
            if (str2 == null || str3 == null) {
                if ((str2 == null) ^ (str3 != null ? false : z)) {
                    Log.w(this.f34548b, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            } else {
                Log.v(this.f34548b, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy");
            }
        } else {
            this.f34555i = str2;
        }
        m7264p(new C7386h(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.f34548b, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new C7401i0(this));
        }
    }

    /* renamed from: o */
    protected static final boolean m7265o() {
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: p */
    public final void m7264p(AbstractRunnableC7629z abstractRunnableC7629z) {
        this.f34550d.execute(abstractRunnableC7629z);
    }

    /* renamed from: q */
    public final void m7263q(Exception exc, boolean z, boolean z2) {
        this.f34554h |= z;
        if (z) {
            Log.w(this.f34548b, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z2) {
            m7277c(5, "Error with data collection. Data lost.", exc, null, null);
        }
        Log.w(this.f34548b, "Error with data collection. Data lost.", exc);
    }

    /* renamed from: r */
    private final void m7262r(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l) {
        m7264p(new C7603x(this, l, str, str2, bundle, z, z2));
    }

    /* renamed from: s */
    public static final boolean m7261s(String str, String str2) {
        return (str2 == null || str == null || m7265o()) ? false : true;
    }

    /* renamed from: t */
    public static C7415j0 m7260t(Context context, String str, String str2, String str3, Bundle bundle) {
        C6155o.m17018j(context);
        if (f34547a == null) {
            synchronized (C7415j0.class) {
                try {
                    if (f34547a == null) {
                        f34547a = new C7415j0(context, str, str2, str3, bundle);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f34547a;
    }

    /* renamed from: A */
    public final void m7290A(Bundle bundle) {
        m7264p(new C7316c(this, bundle));
    }

    /* renamed from: B */
    public final void m7289B(String str, String str2, Bundle bundle) {
        m7264p(new C7330d(this, str, str2, bundle));
    }

    /* renamed from: C */
    public final List<Bundle> m7288C(String str, String str2) {
        BinderC7328cb binderC7328cb = new BinderC7328cb();
        m7264p(new C7344e(this, str, str2, binderC7328cb));
        List<Bundle> list = (List) BinderC7328cb.m7621m2(binderC7328cb.m7622J0(5000L), List.class);
        List<Bundle> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    /* renamed from: D */
    public final void m7287D(Activity activity, String str, String str2) {
        m7264p(new C7358f(this, activity, str, str2));
    }

    /* renamed from: E */
    public final void m7286E(Bundle bundle) {
        m7264p(new C7372g(this, bundle));
    }

    /* renamed from: F */
    public final void m7285F(String str) {
        m7264p(new C7400i(this, str));
    }

    /* renamed from: G */
    public final void m7284G(String str) {
        m7264p(new C7414j(this, str));
    }

    /* renamed from: H */
    public final String m7283H() {
        BinderC7328cb binderC7328cb = new BinderC7328cb();
        m7264p(new C7428k(this, binderC7328cb));
        return binderC7328cb.m7623D0(500L);
    }

    /* renamed from: I */
    public final String m7282I() {
        BinderC7328cb binderC7328cb = new BinderC7328cb();
        m7264p(new C7442l(this, binderC7328cb));
        return binderC7328cb.m7623D0(50L);
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: J */
    public final long m7281J() {
        char c;
        BinderC7328cb binderC7328cb = new BinderC7328cb();
        m7264p(new C7456m(this, binderC7328cb));
        Long l = (Long) BinderC7328cb.m7621m2(binderC7328cb.m7622J0(500L), Long.class);
        if (l == null) {
            long nextLong = new Random(System.nanoTime() ^ this.f34549c.mo16807a()).nextLong();
            int i = this.f34553g + 1;
            this.f34553g = i;
            c = nextLong + i;
        } else {
            c = l.longValue();
        }
        return c;
    }

    /* renamed from: K */
    public final String m7280K() {
        BinderC7328cb binderC7328cb = new BinderC7328cb();
        m7264p(new C7470n(this, binderC7328cb));
        return binderC7328cb.m7623D0(500L);
    }

    /* renamed from: a */
    public final String m7279a() {
        BinderC7328cb binderC7328cb = new BinderC7328cb();
        m7264p(new C7484o(this, binderC7328cb));
        return binderC7328cb.m7623D0(500L);
    }

    /* renamed from: b */
    public final Map<String, Object> m7278b(String str, String str2, boolean z) {
        BinderC7328cb binderC7328cb = new BinderC7328cb();
        m7264p(new C7498p(this, str, str2, z, binderC7328cb));
        Bundle m7622J0 = binderC7328cb.m7622J0(5000L);
        if (m7622J0 == null || m7622J0.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(m7622J0.size());
        for (String str3 : m7622J0.keySet()) {
            Object obj = m7622J0.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                hashMap.put(str3, obj);
            }
        }
        return hashMap;
    }

    /* renamed from: c */
    public final void m7277c(int i, String str, Object obj, Object obj2, Object obj3) {
        m7264p(new C7512q(this, false, 5, str, obj, null, null));
    }

    /* renamed from: d */
    public final Bundle m7276d(Bundle bundle, boolean z) {
        BinderC7328cb binderC7328cb = new BinderC7328cb();
        m7264p(new C7525r(this, bundle, binderC7328cb));
        if (z) {
            return binderC7328cb.m7622J0(5000L);
        }
        return null;
    }

    /* renamed from: e */
    public final int m7275e(String str) {
        BinderC7328cb binderC7328cb = new BinderC7328cb();
        m7264p(new C7551t(this, str, binderC7328cb));
        Integer num = (Integer) BinderC7328cb.m7621m2(binderC7328cb.m7622J0(OkHttpUtils.DEFAULT_MILLISECONDS), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    /* renamed from: f */
    public final String m7274f() {
        return this.f34555i;
    }

    /* renamed from: g */
    public final void m7273g(boolean z) {
        m7264p(new C7577v(this, z));
    }

    /* renamed from: u */
    public final C7642a m7259u() {
        return this.f34551e;
    }

    /* renamed from: v */
    public final AbstractC7399hc m7258v(Context context, boolean z) {
        try {
            return AbstractBinderC7385gc.asInterface(DynamiteModule.m16739e(context, DynamiteModule.f19763f, ModuleDescriptor.MODULE_ID).m16740d("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e) {
            m7263q(e, true, false);
            return null;
        }
    }

    /* renamed from: w */
    public final void m7257w(AbstractC7881u5 abstractC7881u5) {
        C6155o.m17018j(abstractC7881u5);
        synchronized (this.f34552f) {
            for (int i = 0; i < this.f34552f.size(); i++) {
                if (abstractC7881u5.equals(this.f34552f.get(i).first)) {
                    Log.w(this.f34548b, "OnEventListener already registered.");
                    return;
                }
            }
            BinderC7289a0 binderC7289a0 = new BinderC7289a0(abstractC7881u5);
            this.f34552f.add(new Pair<>(abstractC7881u5, binderC7289a0));
            if (this.f34556j != null) {
                try {
                    this.f34556j.registerOnMeasurementEventListener(binderC7289a0);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException e) {
                    Log.w(this.f34548b, "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            m7264p(new C7590w(this, binderC7289a0));
        }
    }

    /* renamed from: x */
    public final void m7256x(String str, Bundle bundle) {
        m7262r(null, str, bundle, false, true, null);
    }

    /* renamed from: y */
    public final void m7255y(String str, String str2, Bundle bundle) {
        m7262r(str, str2, bundle, true, true, null);
    }

    /* renamed from: z */
    public final void m7254z(String str, String str2, Object obj, boolean z) {
        m7264p(new C7616y(this, str, str2, obj, z));
    }
}
