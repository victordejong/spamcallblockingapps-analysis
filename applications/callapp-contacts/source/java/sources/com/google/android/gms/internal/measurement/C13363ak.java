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
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.util.AbstractC12102f;
import com.google.android.gms.common.util.C12105i;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.internal.AbstractC14008fu;
import com.google.android.gms.measurement.internal.C13971ek;
import com.google.android.gms.measurement.internal.C14043hb;
import com.google.android.gms.measurement.p363a.C13849a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
/* renamed from: com.google.android.gms.internal.measurement.ak */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ak.class */
public final class C13363ak {

    /* renamed from: e */
    private static volatile C13363ak f50596e;

    /* renamed from: a */
    protected final AbstractC12102f f50597a;

    /* renamed from: b */
    protected final ExecutorService f50598b;

    /* renamed from: c */
    public final C13849a f50599c;

    /* renamed from: d */
    public final String f50600d;

    /* renamed from: f */
    private final String f50601f;

    /* renamed from: g */
    private final List<Pair<AbstractC14008fu, BinderC13354ab>> f50602g;

    /* renamed from: h */
    private int f50603h;

    /* renamed from: i */
    private boolean f50604i;

    /* renamed from: j */
    private volatile AbstractC13702mz f50605j;

    protected C13363ak(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str == null || !m13287c(str2, str3)) {
            this.f50601f = "FA";
        } else {
            this.f50601f = str;
        }
        this.f50597a = C12105i.m19036d();
        this.f50598b = C13614js.m12484a().mo12557a(new ThreadFactoryC13717t(this));
        this.f50599c = new C13849a(this);
        this.f50602g = new ArrayList();
        boolean z = true;
        try {
            if (C14043hb.m11833a(context, C13971ek.m12018a(context)) != null && !m13283f()) {
                this.f50600d = null;
                this.f50604i = true;
                Log.w(this.f50601f, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
                return;
            }
        } catch (IllegalStateException e) {
        }
        if (!m13287c(str2, str3)) {
            this.f50600d = "fa";
            if (str2 == null || str3 == null) {
                if ((str3 != null ? false : z) ^ (str2 == null)) {
                    Log.w(this.f50601f, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            }
        } else {
            this.f50600d = str2;
        }
        m13311a(new C13568i(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.f50601f, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new C13362aj(this));
        }
    }

    /* renamed from: a */
    public static C13363ak m13314a(Context context, String str, String str2, String str3, Bundle bundle) {
        C12045o.m19162a(context);
        if (f50596e == null) {
            synchronized (C13363ak.class) {
                try {
                    if (f50596e == null) {
                        f50596e = new C13363ak(context, str, str2, str3, bundle);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f50596e;
    }

    /* renamed from: a */
    public final void m13305a(Exception exc, boolean z, boolean z2) {
        this.f50604i |= z;
        if (z) {
            Log.w(this.f50601f, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z2) {
            m13302a("Error with data collection. Data lost.", exc);
        }
        Log.w(this.f50601f, "Error with data collection. Data lost.", exc);
    }

    /* renamed from: a */
    private void m13302a(String str, Object obj) {
        m13311a(new C13715r(this, false, 5, str, obj, null, null));
    }

    /* renamed from: a */
    private final void m13299a(String str, String str2, Bundle bundle, boolean z) {
        m13311a(new C13722y(this, null, str, str2, bundle, z, true));
    }

    /* renamed from: c */
    public static final boolean m13287c(String str, String str2) {
        return (str2 == null || str == null || m13283f()) ? false : true;
    }

    /* renamed from: f */
    private static boolean m13283f() {
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: a */
    public final Bundle m13312a(Bundle bundle, boolean z) {
        BinderC13670lu binderC13670lu = new BinderC13670lu();
        m13311a(new C13716s(this, bundle, binderC13670lu));
        if (z) {
            return binderC13670lu.m12333b(5000L);
        }
        return null;
    }

    /* renamed from: a */
    public final AbstractC13702mz m13315a(Context context) {
        try {
            return AbstractBinderC13701my.asInterface(DynamiteModule.m18974a(context, DynamiteModule.f39676f, ModuleDescriptor.MODULE_ID).m18969a("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e) {
            m13305a((Exception) e, true, false);
            return null;
        }
    }

    /* renamed from: a */
    public final String m13317a() {
        BinderC13670lu binderC13670lu = new BinderC13670lu();
        m13311a(new C13649l(this, binderC13670lu));
        return binderC13670lu.m12335a(500L);
    }

    /* renamed from: a */
    public final List<Bundle> m13301a(String str, String str2) {
        BinderC13670lu binderC13670lu = new BinderC13670lu();
        m13311a(new C13460e(this, str, str2, binderC13670lu));
        List<Bundle> list = (List) BinderC13670lu.m12334a(binderC13670lu.m12333b(5000L), List.class);
        List<Bundle> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    /* renamed from: a */
    public final Map<String, Object> m13297a(String str, String str2, boolean z) {
        BinderC13670lu binderC13670lu = new BinderC13670lu();
        m13311a(new C13714q(this, str, str2, z, binderC13670lu));
        Bundle m12333b = binderC13670lu.m12333b(5000L);
        if (m12333b == null || m12333b.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(m12333b.size());
        for (String str3 : m12333b.keySet()) {
            Object obj = m12333b.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                hashMap.put(str3, obj);
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public final void m13316a(Activity activity, String str, String str2) {
        m13311a(new C13514g(this, activity, str, str2));
    }

    /* renamed from: a */
    public final void m13313a(Bundle bundle) {
        m13311a(new C13406c(this, bundle));
    }

    /* renamed from: a */
    public final void m13311a(AbstractRunnableC13353aa abstractRunnableC13353aa) {
        this.f50598b.execute(abstractRunnableC13353aa);
    }

    /* renamed from: a */
    public final void m13306a(AbstractC14008fu abstractC14008fu) {
        C12045o.m19162a(abstractC14008fu);
        synchronized (this.f50602g) {
            for (int i = 0; i < this.f50602g.size(); i++) {
                if (abstractC14008fu.equals(this.f50602g.get(i).first)) {
                    Log.w(this.f50601f, "OnEventListener already registered.");
                    return;
                }
            }
            BinderC13354ab binderC13354ab = new BinderC13354ab(abstractC14008fu);
            this.f50602g.add(new Pair<>(abstractC14008fu, binderC13354ab));
            if (this.f50605j != null) {
                try {
                    this.f50605j.registerOnMeasurementEventListener(binderC13354ab);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException e) {
                    Log.w(this.f50601f, "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            m13311a(new C13721x(this, binderC13354ab));
        }
    }

    /* renamed from: a */
    public final void m13304a(String str) {
        m13311a(new C13487f(this, str));
    }

    /* renamed from: a */
    public final void m13303a(String str, Bundle bundle) {
        m13299a((String) null, str, bundle, false);
    }

    /* renamed from: a */
    public final void m13300a(String str, String str2, Bundle bundle) {
        m13299a(str, str2, bundle, true);
    }

    /* renamed from: a */
    public final void m13298a(String str, String str2, Object obj, boolean z) {
        m13311a(new C13723z(this, str, str2, obj, z));
    }

    /* renamed from: a */
    public final void m13296a(boolean z) {
        m13311a(new C13720w(this, z));
    }

    /* renamed from: b */
    public final String m13295b() {
        BinderC13670lu binderC13670lu = new BinderC13670lu();
        m13311a(new C13676m(this, binderC13670lu));
        return binderC13670lu.m12335a(50L);
    }

    /* renamed from: b */
    public final void m13293b(String str) {
        m13311a(new C13595j(this, str));
    }

    /* renamed from: b */
    public final void m13291b(String str, String str2, Bundle bundle) {
        m13311a(new C13433d(this, str, str2, bundle));
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: c */
    public final long m13290c() {
        char c;
        BinderC13670lu binderC13670lu = new BinderC13670lu();
        m13311a(new C13703n(this, binderC13670lu));
        Long l = (Long) BinderC13670lu.m12334a(binderC13670lu.m12333b(500L), Long.class);
        if (l == null) {
            long nextLong = new Random(System.nanoTime() ^ this.f50597a.mo19039a()).nextLong();
            int i = this.f50603h + 1;
            this.f50603h = i;
            c = nextLong + i;
        } else {
            c = l.longValue();
        }
        return c;
    }

    /* renamed from: c */
    public final void m13288c(String str) {
        m13311a(new C13622k(this, str));
    }

    /* renamed from: d */
    public final int m13285d(String str) {
        BinderC13670lu binderC13670lu = new BinderC13670lu();
        m13311a(new C13718u(this, str, binderC13670lu));
        Integer num = (Integer) BinderC13670lu.m12334a(binderC13670lu.m12333b(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    /* renamed from: d */
    public final String m13286d() {
        BinderC13670lu binderC13670lu = new BinderC13670lu();
        m13311a(new C13712o(this, binderC13670lu));
        return binderC13670lu.m12335a(500L);
    }

    /* renamed from: e */
    public final String m13284e() {
        BinderC13670lu binderC13670lu = new BinderC13670lu();
        m13311a(new C13713p(this, binderC13670lu));
        return binderC13670lu.m12335a(500L);
    }
}
