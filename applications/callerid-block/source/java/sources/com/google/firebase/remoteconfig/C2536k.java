package com.google.firebase.remoteconfig;

import android.content.Context;
import com.google.android.gms.common.util.AbstractC1610f;
import com.google.android.gms.common.util.i;
import com.google.android.gms.tasks.C2401j;
import com.google.firebase.abt.b;
import com.google.firebase.analytics.a.a;
import com.google.firebase.c;
import com.google.firebase.installations.g;
import com.google.firebase.remoteconfig.internal.C2514e;
import com.google.firebase.remoteconfig.internal.C2524k;
import com.google.firebase.remoteconfig.internal.C2527m;
import com.google.firebase.remoteconfig.internal.C2528n;
import com.google.firebase.remoteconfig.internal.C2534r;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import com.google.firebase.remoteconfig.internal.o;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: com.google.firebase.remoteconfig.k */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/k.class */
public class C2536k {

    /* renamed from: j */
    private static final AbstractC1610f f10857j = i.e();

    /* renamed from: k */
    private static final Random f10858k = new Random();

    /* renamed from: a */
    private final Map<String, C2503e> f10859a;

    /* renamed from: b */
    private final Context f10860b;

    /* renamed from: c */
    private final ExecutorService f10861c;

    /* renamed from: d */
    private final c f10862d;

    /* renamed from: e */
    private final g f10863e;

    /* renamed from: f */
    private final b f10864f;

    /* renamed from: g */
    private final a f10865g;

    /* renamed from: h */
    private final String f10866h;

    /* renamed from: i */
    private Map<String, String> f10867i;

    public C2536k(Context context, c cVar, g gVar, b bVar, a aVar) {
        this(context, Executors.newCachedThreadPool(), cVar, gVar, bVar, aVar, true);
    }

    protected C2536k(Context context, ExecutorService executorService, c cVar, g gVar, b bVar, a aVar, boolean z) {
        this.f10859a = new HashMap();
        this.f10867i = new HashMap();
        this.f10860b = context;
        this.f10861c = executorService;
        this.f10862d = cVar;
        this.f10863e = gVar;
        this.f10864f = bVar;
        this.f10865g = aVar;
        this.f10866h = cVar.j().c();
        if (z) {
            C2401j.m3762c(executorService, CallableC2509i.m3292a(this));
        }
    }

    /* renamed from: c */
    private C2514e m3174c(String str, String str2) {
        return C2514e.m3270f(Executors.newCachedThreadPool(), o.c(this.f10860b, String.format("%s_%s_%s_%s.json", "frc", this.f10866h, str, str2)));
    }

    /* renamed from: g */
    private C2527m m3170g(C2514e c2514e, C2514e c2514e2) {
        return new C2527m(this.f10861c, c2514e, c2514e2);
    }

    /* renamed from: h */
    static C2528n m3169h(Context context, String str, String str2) {
        return new C2528n(context.getSharedPreferences(String.format("%s_%s_%s_%s", "frc", str, str2, "settings"), 0));
    }

    /* renamed from: i */
    private static C2534r m3168i(c cVar, String str, a aVar) {
        if (!m3166k(cVar) || !str.equals("firebase") || aVar == null) {
            return null;
        }
        return new C2534r(aVar);
    }

    /* renamed from: j */
    private static boolean m3167j(c cVar, String str) {
        return str.equals("firebase") && m3166k(cVar);
    }

    /* renamed from: k */
    private static boolean m3166k(c cVar) {
        return cVar.i().equals("[DEFAULT]");
    }

    /* renamed from: a */
    C2503e m3176a(c cVar, String str, g gVar, b bVar, Executor executor, C2514e c2514e, C2514e c2514e2, C2514e c2514e3, C2524k c2524k, C2527m c2527m, C2528n c2528n) {
        C2503e c2503e;
        synchronized (this) {
            if (!this.f10859a.containsKey(str)) {
                Context context = this.f10860b;
                if (!m3167j(cVar, str)) {
                    bVar = null;
                }
                C2503e c2503e2 = new C2503e(context, cVar, gVar, bVar, executor, c2514e, c2514e2, c2514e3, c2524k, c2527m, c2528n);
                c2503e2.m3300l();
                this.f10859a.put(str, c2503e2);
            }
            c2503e = this.f10859a.get(str);
        }
        return c2503e;
    }

    /* renamed from: b */
    public C2503e m3175b(String str) {
        C2503e m3176a;
        synchronized (this) {
            C2514e m3174c = m3174c(str, "fetch");
            C2514e m3174c2 = m3174c(str, "activate");
            C2514e m3174c3 = m3174c(str, "defaults");
            C2528n m3169h = m3169h(this.f10860b, this.f10866h, str);
            C2527m m3170g = m3170g(m3174c2, m3174c3);
            C2534r m3168i = m3168i(this.f10862d, str, this.f10865g);
            if (m3168i != null) {
                m3168i.getClass();
                m3170g.m3215a(C2535j.m3177b(m3168i));
            }
            m3176a = m3176a(this.f10862d, str, this.f10863e, this.f10864f, this.f10861c, m3174c, m3174c2, m3174c3, m3172e(str, m3174c, m3169h), m3170g, m3169h);
        }
        return m3176a;
    }

    /* renamed from: d */
    public C2503e m3173d() {
        return m3175b("firebase");
    }

    /* renamed from: e */
    C2524k m3172e(String str, C2514e c2514e, C2528n c2528n) {
        C2524k c2524k;
        synchronized (this) {
            c2524k = new C2524k(this.f10863e, m3166k(this.f10862d) ? this.f10865g : null, this.f10861c, f10857j, f10858k, c2514e, m3171f(this.f10862d.j().b(), str, c2528n), c2528n, this.f10867i);
        }
        return c2524k;
    }

    /* renamed from: f */
    ConfigFetchHttpClient m3171f(String str, String str2, C2528n c2528n) {
        return new ConfigFetchHttpClient(this.f10860b, this.f10862d.j().c(), str, str2, c2528n.m3205b(), c2528n.m3205b());
    }
}
