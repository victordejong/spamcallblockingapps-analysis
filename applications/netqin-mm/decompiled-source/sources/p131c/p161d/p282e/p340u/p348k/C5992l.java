package p131c.p161d.p282e.p340u.p348k;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.perf.internal.SessionManager;
import com.google.firebase.perf.p494v1.ApplicationProcessState;
import com.google.firebase.perf.p494v1.NetworkRequestMetric;
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
import p131c.p161d.p170b.p173b.AbstractC2497f;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p334r.AbstractC5887a;
import p131c.p161d.p282e.p335s.AbstractC5898g;
import p131c.p161d.p282e.p340u.C5924a;
import p131c.p161d.p282e.p340u.C5926c;
import p131c.p161d.p282e.p340u.p341d.C5927a;
import p131c.p161d.p282e.p340u.p344g.AbstractC5965j;
import p131c.p161d.p282e.p340u.p344g.C5955a;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p350m.AbstractC6038t;
import p131c.p161d.p282e.p340u.p350m.C5999a;
import p131c.p161d.p282e.p340u.p350m.C6008e;
import p131c.p161d.p282e.p340u.p350m.C6021k;
import p131c.p161d.p282e.p340u.p350m.C6035s;
import p131c.p161d.p282e.p340u.p350m.C6044w;
/* renamed from: c.d.e.u.k.l */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/k/l.class */
public class C5992l implements C5955a.AbstractC5956a {

    /* renamed from: q */
    public static final C5969a f19454q = C5969a.m22496a();

    /* renamed from: r */
    public static final C5992l f19455r = new C5992l();

    /* renamed from: a */
    public C5128c f19456a;

    /* renamed from: b */
    public C5926c f19457b;

    /* renamed from: c */
    public AbstractC5898g f19458c;

    /* renamed from: d */
    public AbstractC5887a<AbstractC2497f> f19459d;

    /* renamed from: e */
    public C5980a f19460e;

    /* renamed from: f */
    public C5982c f19461f;

    /* renamed from: i */
    public Context f19464i;

    /* renamed from: j */
    public C5927a f19465j;

    /* renamed from: k */
    public C5984e f19466k;

    /* renamed from: l */
    public C5955a f19467l;

    /* renamed from: o */
    public final Map<String, Integer> f19470o;

    /* renamed from: m */
    public final AtomicBoolean f19468m = new AtomicBoolean(false);

    /* renamed from: n */
    public boolean f19469n = false;

    /* renamed from: p */
    public final ConcurrentLinkedQueue<C5983d> f19471p = new ConcurrentLinkedQueue<>();

    /* renamed from: g */
    public ExecutorService f19462g = new ThreadPoolExecutor(0, 1, 10, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: h */
    public final C6008e.C6010b f19463h = C6008e.m22328G();

    public C5992l() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f19470o = concurrentHashMap;
        concurrentHashMap.put("KEY_AVAILABLE_TRACES_FOR_CACHING", 50);
        this.f19470o.put("KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING", 50);
        this.f19470o.put("KEY_AVAILABLE_GAUGES_FOR_CACHING", 50);
    }

    /* renamed from: a */
    public static String m22400a(Context context) {
        String str;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            str = packageInfo.versionName == null ? "" : packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e) {
            str = "";
        }
        return str;
    }

    /* renamed from: a */
    public static String m22393a(C6021k kVar) {
        return String.format(Locale.ENGLISH, "gauges (hasMetadata: %b, cpuGaugeCount: %d, memoryGaugeCount: %d)", Boolean.valueOf(kVar.m22280A()), Integer.valueOf(kVar.m22264y()), Integer.valueOf(kVar.m22265x()));
    }

    /* renamed from: a */
    public static String m22388a(C6044w wVar) {
        long A = wVar.m22222A();
        Locale locale = Locale.ENGLISH;
        String E = wVar.m22219E();
        double d = A;
        Double.isNaN(d);
        return String.format(locale, "trace metric: %s (duration: %.4fms)", E, Double.valueOf(d / 1000.0d));
    }

    /* renamed from: a */
    public static String m22386a(NetworkRequestMetric networkRequestMetric) {
        long G = networkRequestMetric.m7199P() ? networkRequestMetric.m7208G() : 0L;
        String valueOf = networkRequestMetric.m7203L() ? String.valueOf(networkRequestMetric.m7165z()) : "UNKNOWN";
        Locale locale = Locale.ENGLISH;
        String I = networkRequestMetric.m7206I();
        double d = G;
        Double.isNaN(d);
        return String.format(locale, "network request trace: %s (responseCode: %s, responseTime: %.4fms)", I, valueOf, Double.valueOf(d / 1000.0d));
    }

    /* renamed from: a */
    public static /* synthetic */ void m22396a(C5992l lVar, C6021k kVar, ApplicationProcessState applicationProcessState) {
        C6035s.C6037b y = C6035s.m22245y();
        y.m22243a(kVar);
        lVar.m22382b(y, applicationProcessState);
    }

    /* renamed from: a */
    public static /* synthetic */ void m22395a(C5992l lVar, C6044w wVar, ApplicationProcessState applicationProcessState) {
        C6035s.C6037b y = C6035s.m22245y();
        y.m22242a(wVar);
        lVar.m22382b(y, applicationProcessState);
    }

    /* renamed from: a */
    public static /* synthetic */ void m22394a(C5992l lVar, NetworkRequestMetric networkRequestMetric, ApplicationProcessState applicationProcessState) {
        C6035s.C6037b y = C6035s.m22245y();
        y.m22241a(networkRequestMetric);
        lVar.m22382b(y, applicationProcessState);
    }

    /* renamed from: b */
    public static String m22380b(AbstractC6038t tVar) {
        return tVar.mo22239j() ? m22388a(tVar.mo22238k()) : tVar.mo22237m() ? m22386a(tVar.mo22236n()) : tVar.mo22240e() ? m22393a(tVar.mo22235p()) : "log";
    }

    /* renamed from: g */
    public static C5992l m22374g() {
        return f19455r;
    }

    /* renamed from: a */
    public final C6035s m22391a(C6035s.C6037b bVar, ApplicationProcessState applicationProcessState) {
        m22376e();
        C6008e.C6010b bVar2 = this.f19463h;
        bVar2.m22312a(applicationProcessState);
        C6008e.C6010b bVar3 = bVar2;
        if (bVar.mo22239j()) {
            bVar3 = bVar2.clone();
            bVar3.m22310a(m22384b());
        }
        bVar.m22244a(bVar3);
        return bVar.mo6937a();
    }

    /* renamed from: a */
    public final void m22401a() {
        this.f19467l.m22541a(new WeakReference<>(f19455r));
        C6008e.C6010b bVar = this.f19463h;
        bVar.m22309b(this.f19456a.m24464d().m24445b());
        C5999a.C6001b z = C5999a.m22345z();
        z.m22344a(this.f19464i.getPackageName());
        z.m22343b(C5924a.f19277b);
        z.m22342c(m22400a(this.f19464i));
        bVar.m22313a(z);
        this.f19468m.set(true);
        while (!this.f19471p.isEmpty()) {
            C5983d poll = this.f19471p.poll();
            if (poll != null) {
                this.f19462g.execute(RunnableC5987g.m22406a(this, poll));
            }
        }
    }

    /* renamed from: a */
    public void m22399a(C5128c cVar, AbstractC5898g gVar, AbstractC5887a<AbstractC2497f> aVar) {
        this.f19456a = cVar;
        this.f19458c = gVar;
        this.f19459d = aVar;
        this.f19462g.execute(RunnableC5986f.m22407a(this));
    }

    /* renamed from: a */
    public void m22392a(C6021k kVar, ApplicationProcessState applicationProcessState) {
        this.f19462g.execute(RunnableC5991k.m22402a(this, kVar, applicationProcessState));
    }

    /* renamed from: a */
    public final void m22390a(C6035s sVar) {
        f19454q.m22492c("Logging %s", m22380b((AbstractC6038t) sVar));
        if (this.f19465j.m22676b(sVar.m22248v().m22317w())) {
            this.f19461f.m22422a(sVar);
        } else {
            this.f19460e.m22425a(sVar);
        }
    }

    /* renamed from: a */
    public void m22387a(C6044w wVar, ApplicationProcessState applicationProcessState) {
        this.f19462g.execute(RunnableC5989i.m22404a(this, wVar, applicationProcessState));
    }

    /* renamed from: a */
    public void m22385a(NetworkRequestMetric networkRequestMetric, ApplicationProcessState applicationProcessState) {
        this.f19462g.execute(RunnableC5990j.m22403a(this, networkRequestMetric, applicationProcessState));
    }

    /* renamed from: a */
    public final boolean m22389a(AbstractC6038t tVar) {
        int intValue = this.f19470o.get("KEY_AVAILABLE_TRACES_FOR_CACHING").intValue();
        int intValue2 = this.f19470o.get("KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING").intValue();
        int intValue3 = this.f19470o.get("KEY_AVAILABLE_GAUGES_FOR_CACHING").intValue();
        if (tVar.mo22239j() && intValue > 0) {
            this.f19470o.put("KEY_AVAILABLE_TRACES_FOR_CACHING", Integer.valueOf(intValue - 1));
            return true;
        } else if (tVar.mo22237m() && intValue2 > 0) {
            this.f19470o.put("KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING", Integer.valueOf(intValue2 - 1));
            return true;
        } else if (!tVar.mo22240e() || intValue3 <= 0) {
            f19454q.m22495a("%s is not allowed to cache. Cache exhausted the limit (availableTracesForCaching: %d, availableNetworkRequestsForCaching: %d, availableGaugesForCaching: %d).", m22380b(tVar), Integer.valueOf(intValue), Integer.valueOf(intValue2), Integer.valueOf(intValue3));
            return false;
        } else {
            this.f19470o.put("KEY_AVAILABLE_GAUGES_FOR_CACHING", Integer.valueOf(intValue3 - 1));
            return true;
        }
    }

    /* renamed from: b */
    public final Map<String, String> m22384b() {
        m22375f();
        C5926c cVar = this.f19457b;
        return cVar != null ? cVar.m22691a() : Collections.emptyMap();
    }

    /* renamed from: b */
    public final void m22382b(C6035s.C6037b bVar, ApplicationProcessState applicationProcessState) {
        if (m22379c()) {
            C6035s a = m22391a(bVar, applicationProcessState);
            if (m22378c(a)) {
                m22390a(a);
                SessionManager.getInstance().updatePerfSessionIfExpired();
            }
        } else if (m22389a(bVar)) {
            f19454q.m22495a("Transport is not initialized yet, %s will be queued for to be dispatched later", m22380b(bVar));
            this.f19471p.add(new C5983d(bVar, applicationProcessState));
        }
    }

    /* renamed from: b */
    public final void m22381b(C6035s sVar) {
        if (sVar.mo22239j()) {
            this.f19467l.m22543a(Constants$CounterNames.TRACE_EVENT_RATE_LIMITED.toString(), 1L);
        } else if (sVar.mo22237m()) {
            this.f19467l.m22543a(Constants$CounterNames.NETWORK_TRACE_EVENT_RATE_LIMITED.toString(), 1L);
        }
    }

    /* renamed from: c */
    public boolean m22379c() {
        return this.f19468m.get();
    }

    /* renamed from: c */
    public final boolean m22378c(C6035s sVar) {
        if (!this.f19465j.m22645u()) {
            f19454q.m22492c("Performance collection is not enabled, dropping %s", m22380b((AbstractC6038t) sVar));
            return false;
        } else if (!sVar.m22248v().m22314z()) {
            f19454q.m22491d("App Instance ID is null or empty, dropping %s", m22380b((AbstractC6038t) sVar));
            return false;
        } else if (!AbstractC5965j.m22500b(sVar, this.f19464i)) {
            f19454q.m22491d("Unable to process the PerfMetric (%s) due to missing or invalid values. See earlier log statements for additional information on the specific missing/invalid values.", m22380b((AbstractC6038t) sVar));
            return false;
        } else if (this.f19466k.m22420a(sVar)) {
            return true;
        } else {
            m22381b(sVar);
            if (sVar.mo22239j()) {
                f19454q.m22492c("Rate Limited - %s", m22388a(sVar.mo22238k()));
                return false;
            } else if (!sVar.mo22237m()) {
                return false;
            } else {
                f19454q.m22492c("Rate Limited - %s", m22386a(sVar.mo22236n()));
                return false;
            }
        }
    }

    /* renamed from: d */
    public final void m22377d() {
        this.f19464i = this.f19456a.m24468b();
        this.f19465j = C5927a.m22644v();
        this.f19466k = new C5984e(this.f19464i, 100.0d, 500L);
        this.f19467l = C5955a.m22535d();
        this.f19460e = new C5980a(this.f19464i, this.f19465j.m22688a());
        this.f19461f = new C5982c(this.f19459d, this.f19465j.m22688a());
        m22401a();
    }

    /* renamed from: e */
    public final void m22376e() {
        if (!this.f19465j.m22645u()) {
            return;
        }
        if (!this.f19463h.m22308w() || this.f19469n) {
            String str = null;
            try {
                str = (String) Tasks.m8594a(this.f19458c.getId(), 60000L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                f19454q.m22493b("Task to retrieve Installation Id is interrupted: %s", e.getMessage());
            } catch (ExecutionException e2) {
                f19454q.m22493b("Unable to retrieve Installation Id: %s", e2.getMessage());
            } catch (TimeoutException e3) {
                f19454q.m22493b("Task to retrieve Installation Id is timed out: %s", e3.getMessage());
            }
            if (!TextUtils.isEmpty(str)) {
                this.f19463h.m22311a(str);
            } else {
                f19454q.m22491d("Firebase Installation Id is empty, contact Firebase Support for debugging.", new Object[0]);
            }
        }
    }

    /* renamed from: f */
    public final void m22375f() {
        if (this.f19457b == null && m22379c()) {
            this.f19457b = C5926c.m22689b();
        }
    }

    @Override // p131c.p161d.p282e.p340u.p344g.C5955a.AbstractC5956a
    public void onUpdateAppState(ApplicationProcessState applicationProcessState) {
        this.f19469n = applicationProcessState == ApplicationProcessState.FOREGROUND;
        if (m22379c()) {
            this.f19462g.execute(RunnableC5988h.m22405a(this));
        }
    }
}
