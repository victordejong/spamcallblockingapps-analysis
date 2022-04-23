package p131c.p161d.p282e.p340u.p343f;

import com.android.volley.toolbox.HttpClientStack;
import com.facebook.ads.AdError;
import com.google.firebase.perf.internal.GaugeManager;
import com.google.firebase.perf.internal.PerfSession;
import com.google.firebase.perf.internal.SessionManager;
import com.google.firebase.perf.p494v1.NetworkRequestMetric;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p282e.p340u.p344g.AbstractC5957b;
import p131c.p161d.p282e.p340u.p344g.AbstractC5968m;
import p131c.p161d.p282e.p340u.p344g.C5955a;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p347j.C5979h;
import p131c.p161d.p282e.p340u.p348k.C5992l;
import p131c.p161d.p282e.p340u.p349l.C5998f;
import p131c.p161d.p282e.p340u.p350m.C6039u;
/* renamed from: c.d.e.u.f.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/f/a.class */
public final class C5954a extends AbstractC5957b implements AbstractC5968m {

    /* renamed from: i */
    public static final C5969a f19333i = C5969a.m22496a();

    /* renamed from: a */
    public final List<PerfSession> f19334a;

    /* renamed from: b */
    public final GaugeManager f19335b;

    /* renamed from: c */
    public final C5992l f19336c;

    /* renamed from: d */
    public final NetworkRequestMetric.C7876b f19337d;

    /* renamed from: e */
    public String f19338e;

    /* renamed from: f */
    public boolean f19339f;

    /* renamed from: g */
    public boolean f19340g;

    /* renamed from: h */
    public final WeakReference<AbstractC5968m> f19341h;

    public C5954a(C5992l lVar) {
        this(lVar, C5955a.m22535d(), GaugeManager.getInstance());
    }

    public C5954a(C5992l lVar, C5955a aVar, GaugeManager gaugeManager) {
        super(aVar);
        this.f19337d = NetworkRequestMetric.m7195T();
        this.f19341h = new WeakReference<>(this);
        this.f19336c = lVar;
        this.f19335b = gaugeManager;
        this.f19334a = Collections.synchronizedList(new ArrayList());
        registerForAppState();
    }

    /* renamed from: a */
    public static C5954a m22565a(C5992l lVar) {
        return new C5954a(lVar);
    }

    /* renamed from: e */
    public static boolean m22552e(String str) {
        if (str.length() > 128) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt <= 31 || charAt > 127) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public C5954a m22567a(int i) {
        this.f19337d.m7162a(i);
        return this;
    }

    /* renamed from: a */
    public C5954a m22566a(long j) {
        this.f19337d.m7156b(j);
        return this;
    }

    /* renamed from: a */
    public C5954a m22564a(String str) {
        NetworkRequestMetric.HttpMethod httpMethod;
        if (str != null) {
            NetworkRequestMetric.HttpMethod httpMethod2 = NetworkRequestMetric.HttpMethod.HTTP_METHOD_UNKNOWN;
            String upperCase = str.toUpperCase();
            char c = 65535;
            switch (upperCase.hashCode()) {
                case -531492226:
                    if (upperCase.equals("OPTIONS")) {
                        c = 6;
                        break;
                    }
                    break;
                case 70454:
                    if (upperCase.equals("GET")) {
                        c = 0;
                        break;
                    }
                    break;
                case 79599:
                    if (upperCase.equals("PUT")) {
                        c = 1;
                        break;
                    }
                    break;
                case 2213344:
                    if (upperCase.equals("HEAD")) {
                        c = 4;
                        break;
                    }
                    break;
                case 2461856:
                    if (upperCase.equals("POST")) {
                        c = 2;
                        break;
                    }
                    break;
                case 75900968:
                    if (upperCase.equals(HttpClientStack.HttpPatch.METHOD_NAME)) {
                        c = 5;
                        break;
                    }
                    break;
                case 80083237:
                    if (upperCase.equals("TRACE")) {
                        c = 7;
                        break;
                    }
                    break;
                case 1669334218:
                    if (upperCase.equals("CONNECT")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 2012838315:
                    if (upperCase.equals("DELETE")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    httpMethod = NetworkRequestMetric.HttpMethod.GET;
                    break;
                case 1:
                    httpMethod = NetworkRequestMetric.HttpMethod.PUT;
                    break;
                case 2:
                    httpMethod = NetworkRequestMetric.HttpMethod.POST;
                    break;
                case 3:
                    httpMethod = NetworkRequestMetric.HttpMethod.DELETE;
                    break;
                case 4:
                    httpMethod = NetworkRequestMetric.HttpMethod.HEAD;
                    break;
                case 5:
                    httpMethod = NetworkRequestMetric.HttpMethod.PATCH;
                    break;
                case 6:
                    httpMethod = NetworkRequestMetric.HttpMethod.OPTIONS;
                    break;
                case 7:
                    httpMethod = NetworkRequestMetric.HttpMethod.TRACE;
                    break;
                case '\b':
                    httpMethod = NetworkRequestMetric.HttpMethod.CONNECT;
                    break;
                default:
                    httpMethod = NetworkRequestMetric.HttpMethod.HTTP_METHOD_UNKNOWN;
                    break;
            }
            this.f19337d.m7160a(httpMethod);
        }
        return this;
    }

    /* renamed from: a */
    public NetworkRequestMetric m22568a() {
        SessionManager.getInstance().unregisterForSessionUpdates(this.f19341h);
        unregisterForAppState();
        C6039u[] a = PerfSession.m7265a(m22563b());
        if (a != null) {
            this.f19337d.m7158a(Arrays.asList(a));
        }
        NetworkRequestMetric a2 = this.f19337d.mo6937a();
        if (!C5979h.m22429a(this.f19338e)) {
            f19333i.m22495a("Dropping network request from a 'User-Agent' that is not allowed", new Object[0]);
            return a2;
        } else if (!this.f19339f) {
            this.f19336c.m22385a(a2, getAppState());
            this.f19339f = true;
            return a2;
        } else {
            if (this.f19340g) {
                f19333i.m22492c("This metric has already been queued for transmission.  Please create a new HttpMetric for each request/response", new Object[0]);
            }
            return a2;
        }
    }

    @Override // p131c.p161d.p282e.p340u.p344g.AbstractC5968m
    /* renamed from: a */
    public void mo7243a(PerfSession perfSession) {
        if (perfSession == null) {
            f19333i.m22492c("Unable to add new SessionId to the Network Trace. Continuing without it.", new Object[0]);
        } else if (m22554e() && !m22551f()) {
            this.f19334a.add(perfSession);
        }
    }

    /* renamed from: b */
    public C5954a m22562b(long j) {
        PerfSession perfSession = SessionManager.getInstance().perfSession();
        SessionManager.getInstance().registerForSessionUpdates(this.f19341h);
        this.f19337d.m7161a(j);
        mo7243a(perfSession);
        if (perfSession.m7261d()) {
            this.f19335b.collectGaugeMetricOnce(perfSession.m7263b());
        }
        return this;
    }

    /* renamed from: b */
    public C5954a m22561b(String str) {
        if (str == null) {
            this.f19337d.m7150w();
            return this;
        }
        if (m22552e(str)) {
            this.f19337d.m7157a(str);
        } else {
            C5969a aVar = f19333i;
            aVar.m22492c("The content type of the response is not a valid content-type:" + str, new Object[0]);
        }
        return this;
    }

    /* renamed from: b */
    public List<PerfSession> m22563b() {
        List<PerfSession> unmodifiableList;
        synchronized (this.f19334a) {
            try {
                ArrayList arrayList = new ArrayList();
                for (PerfSession perfSession : this.f19334a) {
                    if (perfSession != null) {
                        arrayList.add(perfSession);
                    }
                }
                unmodifiableList = Collections.unmodifiableList(arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
        return unmodifiableList;
    }

    /* renamed from: c */
    public long m22560c() {
        return this.f19337d.m7149x();
    }

    /* renamed from: c */
    public C5954a m22559c(long j) {
        this.f19337d.m7154c(j);
        return this;
    }

    /* renamed from: c */
    public C5954a m22558c(String str) {
        if (str != null) {
            this.f19337d.m7155b(C5998f.m22357a(C5998f.m22358a(str), (int) AdError.SERVER_ERROR_CODE));
        }
        return this;
    }

    /* renamed from: d */
    public C5954a m22556d(long j) {
        this.f19337d.m7153d(j);
        return this;
    }

    /* renamed from: d */
    public C5954a m22555d(String str) {
        this.f19338e = str;
        return this;
    }

    /* renamed from: d */
    public boolean m22557d() {
        return this.f19337d.m7164A();
    }

    /* renamed from: e */
    public C5954a m22553e(long j) {
        this.f19337d.m7152e(j);
        if (SessionManager.getInstance().perfSession().m7261d()) {
            this.f19335b.collectGaugeMetricOnce(SessionManager.getInstance().perfSession().m7263b());
        }
        return this;
    }

    /* renamed from: e */
    public final boolean m22554e() {
        return this.f19337d.m7148z();
    }

    /* renamed from: f */
    public C5954a m22550f(long j) {
        this.f19337d.m7151f(j);
        return this;
    }

    /* renamed from: f */
    public final boolean m22551f() {
        return this.f19337d.m7163C();
    }

    /* renamed from: g */
    public C5954a m22549g() {
        this.f19337d.m7159a(NetworkRequestMetric.NetworkClientErrorReason.GENERIC_CLIENT_ERROR);
        return this;
    }
}
