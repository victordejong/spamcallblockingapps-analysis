package com.google.firebase.perf.p084g;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.datatransport.AbstractC1293f;
import com.google.android.gms.tasks.C2401j;
import com.google.firebase.c;
import com.google.firebase.installations.g;
import com.google.firebase.k.b;
import com.google.firebase.perf.internal.SessionManager;
import com.google.firebase.perf.internal.a;
import com.google.firebase.perf.internal.j;
import com.google.firebase.perf.p085v1.AbstractC2489h;
import com.google.firebase.perf.p085v1.ApplicationProcessState;
import com.google.firebase.perf.p085v1.C2467a;
import com.google.firebase.perf.p085v1.C2473c;
import com.google.firebase.perf.p085v1.C2483f;
import com.google.firebase.perf.p085v1.C2486g;
import com.google.firebase.perf.p085v1.C2494j;
import com.google.firebase.perf.p085v1.NetworkRequestMetric;
import com.google.firebase.perf.util.Constants$CounterNames;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.firebase.perf.g.k */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/g/k.class */
public class C2431k implements a.a {

    /* renamed from: q */
    private static final com.google.firebase.perf.f.a f10639q = com.google.firebase.perf.f.a.e();

    /* renamed from: r */
    private static final C2431k f10640r = new C2431k();

    /* renamed from: b */
    private c f10641b;

    /* renamed from: c */
    private com.google.firebase.perf.c f10642c;

    /* renamed from: d */
    private g f10643d;

    /* renamed from: e */
    private b<AbstractC1293f> f10644e;

    /* renamed from: f */
    private C2421b f10645f;

    /* renamed from: i */
    private Context f10648i;

    /* renamed from: j */
    private com.google.firebase.perf.config.a f10649j;

    /* renamed from: k */
    private C2423d f10650k;

    /* renamed from: l */
    private a f10651l;

    /* renamed from: o */
    private final Map<String, Integer> f10654o;

    /* renamed from: m */
    private final AtomicBoolean f10652m = new AtomicBoolean(false);

    /* renamed from: n */
    private boolean f10653n = false;

    /* renamed from: p */
    private final ConcurrentLinkedQueue<C2422c> f10655p = new ConcurrentLinkedQueue<>();

    /* renamed from: g */
    private ExecutorService f10646g = new ThreadPoolExecutor(0, 1, 10, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: h */
    private final C2473c.C2475b f10647h = C2473c.m3455f0();

    private C2431k() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f10654o = concurrentHashMap;
        concurrentHashMap.put("KEY_AVAILABLE_TRACES_FOR_CACHING", 50);
        concurrentHashMap.put("KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING", 50);
        concurrentHashMap.put("KEY_AVAILABLE_GAUGES_FOR_CACHING", 50);
    }

    /* renamed from: A */
    private void m3686A() {
        if (this.f10649j.I()) {
            if (this.f10647h.m3450I() && !this.f10653n) {
                return;
            }
            String str = null;
            try {
                str = (String) C2401j.m3763b(this.f10643d.F(), 60000L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                f10639q.d("Task to retrieve Installation Id is interrupted: %s", new Object[]{e.getMessage()});
            } catch (ExecutionException e2) {
                f10639q.d("Unable to retrieve Installation Id: %s", new Object[]{e2.getMessage()});
            } catch (TimeoutException e3) {
                f10639q.d("Task to retrieve Installation Id is timed out: %s", new Object[]{e3.getMessage()});
            }
            if (!TextUtils.isEmpty(str)) {
                this.f10647h.m3447M(str);
            } else {
                f10639q.i("Firebase Installation Id is empty, contact Firebase Support for debugging.");
            }
        }
    }

    /* renamed from: B */
    private void m3685B() {
        if (this.f10642c != null || !m3670o()) {
            return;
        }
        this.f10642c = com.google.firebase.perf.c.c();
    }

    /* renamed from: b */
    private void m3683b(C2486g c2486g) {
        f10639q.g("Logging %s", new Object[]{m3677h(c2486g)});
        this.f10645f.m3707b(c2486g);
    }

    /* renamed from: c */
    private void m3682c() {
        this.f10651l.j(new WeakReference(f10640r));
        C2473c.C2475b c2475b = this.f10647h;
        c2475b.m3445P(this.f10641b.j().c());
        C2467a.C2469b m3484Y = C2467a.m3484Y();
        m3484Y.m3480I(this.f10648i.getPackageName());
        m3484Y.m3479J(com.google.firebase.perf.a.b);
        m3484Y.m3478L(m3675j(this.f10648i));
        c2475b.m3448L(m3484Y);
        this.f10652m.set(true);
        while (!this.f10655p.isEmpty()) {
            C2422c poll = this.f10655p.poll();
            if (poll != null) {
                this.f10646g.execute(RunnableC2426f.m3691a(this, poll));
            }
        }
    }

    /* renamed from: d */
    private Map<String, String> m3681d() {
        m3685B();
        com.google.firebase.perf.c cVar = this.f10642c;
        return cVar != null ? cVar.b() : Collections.emptyMap();
    }

    /* renamed from: e */
    public static C2431k m3680e() {
        return f10640r;
    }

    /* renamed from: f */
    private static String m3679f(C2483f c2483f) {
        return String.format(Locale.ENGLISH, "gauges (hasMetadata: %b, cpuGaugeCount: %d, memoryGaugeCount: %d)", Boolean.valueOf(c2483f.m3404e0()), Integer.valueOf(c2483f.m3407b0()), Integer.valueOf(c2483f.m3408a0()));
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* renamed from: g */
    private static String m3678g(NetworkRequestMetric networkRequestMetric) {
        char m3522r0 = networkRequestMetric.m3562A0() ? networkRequestMetric.m3522r0() : (char) 0;
        String valueOf = networkRequestMetric.m3517w0() ? String.valueOf(networkRequestMetric.m3528l0()) : "UNKNOWN";
        Locale locale = Locale.ENGLISH;
        String m3520t0 = networkRequestMetric.m3520t0();
        double d = m3522r0;
        Double.isNaN(d);
        return String.format(locale, "network request trace: %s (responseCode: %s, responseTime: %.4fms)", m3520t0, valueOf, Double.valueOf(d / 1000.0d));
    }

    /* renamed from: h */
    private static String m3677h(AbstractC2489h abstractC2489h) {
        return abstractC2489h.mo3377h() ? m3676i(abstractC2489h.mo3376j()) : abstractC2489h.mo3375m() ? m3678g(abstractC2489h.mo3374n()) : abstractC2489h.mo3379b() ? m3679f(abstractC2489h.mo3378f()) : "log";
    }

    /* renamed from: i */
    private static String m3676i(C2494j c2494j) {
        long m3341l0 = c2494j.m3341l0();
        Locale locale = Locale.ENGLISH;
        String m3338o0 = c2494j.m3338o0();
        double d = m3341l0;
        Double.isNaN(d);
        return String.format(locale, "trace metric: %s (duration: %.4fms)", m3338o0, Double.valueOf(d / 1000.0d));
    }

    /* renamed from: j */
    private static String m3675j(Context context) {
        String str;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            if (str == null) {
                str = "";
            }
        } catch (PackageManager.NameNotFoundException e) {
            str = "";
        }
        return str;
    }

    /* renamed from: k */
    private void m3674k(C2486g c2486g) {
        a aVar;
        Constants$CounterNames constants$CounterNames;
        if (c2486g.mo3377h()) {
            aVar = this.f10651l;
            constants$CounterNames = Constants$CounterNames.TRACE_EVENT_RATE_LIMITED;
        } else if (!c2486g.mo3375m()) {
            return;
        } else {
            aVar = this.f10651l;
            constants$CounterNames = Constants$CounterNames.NETWORK_TRACE_EVENT_RATE_LIMITED;
        }
        aVar.e(constants$CounterNames.toString(), 1L);
    }

    /* renamed from: m */
    private boolean m3672m(AbstractC2489h abstractC2489h) {
        int intValue = this.f10654o.get("KEY_AVAILABLE_TRACES_FOR_CACHING").intValue();
        int intValue2 = this.f10654o.get("KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING").intValue();
        int intValue3 = this.f10654o.get("KEY_AVAILABLE_GAUGES_FOR_CACHING").intValue();
        if (abstractC2489h.mo3377h() && intValue > 0) {
            this.f10654o.put("KEY_AVAILABLE_TRACES_FOR_CACHING", Integer.valueOf(intValue - 1));
            return true;
        } else if (abstractC2489h.mo3375m() && intValue2 > 0) {
            this.f10654o.put("KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING", Integer.valueOf(intValue2 - 1));
            return true;
        } else if (!abstractC2489h.mo3379b() || intValue3 <= 0) {
            f10639q.b("%s is not allowed to cache. Cache exhausted the limit (availableTracesForCaching: %d, availableNetworkRequestsForCaching: %d, availableGaugesForCaching: %d).", new Object[]{m3677h(abstractC2489h), Integer.valueOf(intValue), Integer.valueOf(intValue2), Integer.valueOf(intValue3)});
            return false;
        } else {
            this.f10654o.put("KEY_AVAILABLE_GAUGES_FOR_CACHING", Integer.valueOf(intValue3 - 1));
            return true;
        }
    }

    /* renamed from: n */
    private boolean m3671n(C2486g c2486g) {
        if (!this.f10649j.I()) {
            f10639q.g("Performance collection is not enabled, dropping %s", new Object[]{m3677h(c2486g)});
            return false;
        } else if (!c2486g.m3390W().m3459b0()) {
            f10639q.j("App Instance ID is null or empty, dropping %s", new Object[]{m3677h(c2486g)});
            return false;
        } else if (!j.b(c2486g, this.f10648i)) {
            f10639q.j("Unable to process the PerfMetric (%s) due to missing or invalid values. See earlier log statements for additional information on the specific missing/invalid values.", new Object[]{m3677h(c2486g)});
            return false;
        } else if (this.f10650k.m3705b(c2486g)) {
            return true;
        } else {
            m3674k(c2486g);
            if (c2486g.mo3377h()) {
                f10639q.g("Rate Limited - %s", new Object[]{m3676i(c2486g.mo3376j())});
                return false;
            } else if (!c2486g.mo3375m()) {
                return false;
            } else {
                f10639q.g("Rate Limited - %s", new Object[]{m3678g(c2486g.mo3374n())});
                return false;
            }
        }
    }

    /* renamed from: q */
    public static /* synthetic */ void m3668q(C2431k c2431k, C2494j c2494j, ApplicationProcessState applicationProcessState) {
        C2486g.C2488b m3388Y = C2486g.m3388Y();
        m3388Y.m3380M(c2494j);
        c2431k.m3659z(m3388Y, applicationProcessState);
    }

    /* renamed from: r */
    public static /* synthetic */ void m3667r(C2431k c2431k, NetworkRequestMetric networkRequestMetric, ApplicationProcessState applicationProcessState) {
        C2486g.C2488b m3388Y = C2486g.m3388Y();
        m3388Y.m3381L(networkRequestMetric);
        c2431k.m3659z(m3388Y, applicationProcessState);
    }

    /* renamed from: s */
    public static /* synthetic */ void m3666s(C2431k c2431k, C2483f c2483f, ApplicationProcessState applicationProcessState) {
        C2486g.C2488b m3388Y = C2486g.m3388Y();
        m3388Y.m3382J(c2483f);
        c2431k.m3659z(m3388Y, applicationProcessState);
    }

    /* renamed from: x */
    private C2486g m3661x(C2486g.C2488b c2488b, ApplicationProcessState applicationProcessState) {
        m3686A();
        C2473c.C2475b c2475b = this.f10647h;
        c2475b.m3446N(applicationProcessState);
        C2473c.C2475b c2475b2 = c2475b;
        if (c2488b.mo3377h()) {
            c2475b2 = c2475b.clone();
            c2475b2.m3449J(m3681d());
        }
        c2488b.m3383I(c2475b2);
        return c2488b.mo2420a();
    }

    /* renamed from: y */
    public void m3660y() {
        this.f10648i = this.f10641b.g();
        this.f10649j = com.google.firebase.perf.config.a.f();
        this.f10650k = new C2423d(this.f10648i, 100.0d, 500L);
        this.f10651l = a.b();
        this.f10645f = new C2421b(this.f10644e, this.f10649j.a());
        m3682c();
    }

    /* renamed from: z */
    public void m3659z(C2486g.C2488b c2488b, ApplicationProcessState applicationProcessState) {
        if (!m3670o()) {
            if (!m3672m(c2488b)) {
                return;
            }
            f10639q.b("Transport is not initialized yet, %s will be queued for to be dispatched later", new Object[]{m3677h(c2488b)});
            this.f10655p.add(new C2422c(c2488b, applicationProcessState));
            return;
        }
        C2486g m3661x = m3661x(c2488b, applicationProcessState);
        if (!m3671n(m3661x)) {
            return;
        }
        m3683b(m3661x);
        SessionManager.getInstance().updatePerfSessionIfExpired();
    }

    /* renamed from: l */
    public void m3673l(c cVar, g gVar, b<AbstractC1293f> bVar) {
        this.f10641b = cVar;
        this.f10643d = gVar;
        this.f10644e = bVar;
        this.f10646g.execute(RunnableC2425e.m3692a(this));
    }

    /* renamed from: o */
    public boolean m3670o() {
        return this.f10652m.get();
    }

    public void onUpdateAppState(ApplicationProcessState applicationProcessState) {
        this.f10653n = applicationProcessState == ApplicationProcessState.FOREGROUND;
        if (m3670o()) {
            this.f10646g.execute(RunnableC2427g.m3690a(this));
        }
    }

    /* renamed from: u */
    public void m3664u(C2483f c2483f, ApplicationProcessState applicationProcessState) {
        this.f10646g.execute(RunnableC2430j.m3687a(this, c2483f, applicationProcessState));
    }

    /* renamed from: v */
    public void m3663v(NetworkRequestMetric networkRequestMetric, ApplicationProcessState applicationProcessState) {
        this.f10646g.execute(RunnableC2429i.m3688a(this, networkRequestMetric, applicationProcessState));
    }

    /* renamed from: w */
    public void m3662w(C2494j c2494j, ApplicationProcessState applicationProcessState) {
        this.f10646g.execute(RunnableC2428h.m3689a(this, c2494j, applicationProcessState));
    }
}
