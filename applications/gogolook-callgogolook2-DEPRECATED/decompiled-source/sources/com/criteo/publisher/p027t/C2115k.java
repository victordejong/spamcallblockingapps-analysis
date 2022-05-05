package com.criteo.publisher.p027t;

import androidx.annotation.NonNull;
import com.criteo.publisher.AbstractC1966c;
import com.criteo.publisher.AbstractRunnableC2020m;
import com.criteo.publisher.model.AbstractC2040n;
import com.criteo.publisher.model.C2037k;
import com.criteo.publisher.model.C2038l;
import com.criteo.publisher.model.C2041o;
import com.criteo.publisher.model.C2042p;
import com.criteo.publisher.model.C2052w;
import com.criteo.publisher.p024q.AbstractC2090a;
import com.criteo.publisher.p024q.C2093d;
import com.criteo.publisher.p027t.AbstractC2127m;
import com.criteo.publisher.p027t.AbstractC2135r;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.concurrent.Executor;
/* renamed from: com.criteo.publisher.t.k */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/k.class */
public class C2115k implements AbstractC2090a {
    @NonNull

    /* renamed from: a */
    public final AbstractC2135r f2395a;
    @NonNull

    /* renamed from: b */
    public final C2146x f2396b;
    @NonNull

    /* renamed from: c */
    public final AbstractC1966c f2397c;
    @NonNull

    /* renamed from: d */
    public final C2093d f2398d;
    @NonNull

    /* renamed from: e */
    public final C2042p f2399e;
    @NonNull

    /* renamed from: f */
    public final Executor f2400f;

    /* renamed from: com.criteo.publisher.t.k$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/k$a.class */
    public class C2116a extends AbstractRunnableC2020m {
        public C2116a() {
        }

        @Override // com.criteo.publisher.AbstractRunnableC2020m
        /* renamed from: a */
        public void mo35563a() {
            C2115k.this.f2396b.m35615a(C2115k.this.f2395a);
        }
    }

    /* renamed from: com.criteo.publisher.t.k$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/k$b.class */
    public class C2117b extends AbstractRunnableC2020m {

        /* renamed from: c */
        public final /* synthetic */ C2038l f2402c;

        /* renamed from: com.criteo.publisher.t.k$b$a */
        /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/k$b$a.class */
        public class C2118a implements AbstractC2135r.AbstractC2136a {

            /* renamed from: a */
            public final /* synthetic */ String f2404a;

            /* renamed from: b */
            public final /* synthetic */ long f2405b;

            public C2118a(C2117b bVar, String str, long j) {
                this.f2404a = str;
                this.f2405b = j;
            }

            @Override // com.criteo.publisher.p027t.AbstractC2135r.AbstractC2136a
            /* renamed from: a */
            public void mo35638a(@NonNull AbstractC2127m.AbstractC2128a aVar) {
                aVar.mo35660b(this.f2404a);
                aVar.mo35661b(Long.valueOf(this.f2405b));
            }
        }

        public C2117b(C2038l lVar) {
            this.f2402c = lVar;
        }

        @Override // com.criteo.publisher.AbstractRunnableC2020m
        /* renamed from: a */
        public void mo35563a() {
            long a = C2115k.this.f2397c.mo35877a();
            C2115k.this.m35690a(this.f2402c, new C2118a(this, C2115k.this.f2398d.m35707a(), a));
        }
    }

    /* renamed from: com.criteo.publisher.t.k$c */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/k$c.class */
    public class C2119c extends AbstractRunnableC2020m {

        /* renamed from: c */
        public final /* synthetic */ C2038l f2406c;

        /* renamed from: d */
        public final /* synthetic */ C2041o f2407d;

        /* renamed from: com.criteo.publisher.t.k$c$a */
        /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/k$c$a.class */
        public class C2120a implements AbstractC2135r.AbstractC2136a {

            /* renamed from: a */
            public final /* synthetic */ boolean f2409a;

            /* renamed from: b */
            public final /* synthetic */ long f2410b;

            /* renamed from: c */
            public final /* synthetic */ boolean f2411c;

            public C2120a(C2119c cVar, boolean z, long j, boolean z2) {
                this.f2409a = z;
                this.f2410b = j;
                this.f2411c = z2;
            }

            @Override // com.criteo.publisher.p027t.AbstractC2135r.AbstractC2136a
            /* renamed from: a */
            public void mo35638a(@NonNull AbstractC2127m.AbstractC2128a aVar) {
                if (this.f2409a) {
                    aVar.mo35664a(Long.valueOf(this.f2410b));
                    aVar.mo35657c(true);
                } else if (this.f2411c) {
                    aVar.mo35657c(true);
                } else {
                    aVar.mo35664a(Long.valueOf(this.f2410b));
                    aVar.mo35662a(true);
                }
            }
        }

        public C2119c(C2038l lVar, C2041o oVar) {
            this.f2406c = lVar;
            this.f2407d = oVar;
        }

        @Override // com.criteo.publisher.AbstractRunnableC2020m
        /* renamed from: a */
        public void mo35563a() {
            long a = C2115k.this.f2397c.mo35877a();
            for (AbstractC2040n nVar : this.f2406c.m35860a()) {
                String a2 = nVar.mo35854a();
                C2052w a3 = this.f2407d.m35845a(a2);
                boolean z = a3 == null;
                boolean z2 = a3 != null && !a3.m35788k();
                C2115k.this.f2395a.mo35640a(a2, new C2120a(this, z, a, z2));
                if (z || z2) {
                    C2115k.this.f2396b.m35614a(C2115k.this.f2395a, a2);
                }
            }
        }
    }

    /* renamed from: com.criteo.publisher.t.k$d */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/k$d.class */
    public class C2121d extends AbstractRunnableC2020m {

        /* renamed from: c */
        public final /* synthetic */ Exception f2412c;

        /* renamed from: d */
        public final /* synthetic */ C2038l f2413d;

        public C2121d(Exception exc, C2038l lVar) {
            this.f2412c = exc;
            this.f2413d = lVar;
        }

        @Override // com.criteo.publisher.AbstractRunnableC2020m
        /* renamed from: a */
        public void mo35563a() {
            Exception exc = this.f2412c;
            if ((exc instanceof SocketTimeoutException) || (exc instanceof InterruptedIOException)) {
                C2115k.this.m35681c(this.f2413d);
            } else {
                C2115k.this.m35684b(this.f2413d);
            }
            for (AbstractC2040n nVar : this.f2413d.m35860a()) {
                C2115k.this.f2396b.m35614a(C2115k.this.f2395a, nVar.mo35854a());
            }
        }
    }

    /* renamed from: com.criteo.publisher.t.k$e */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/k$e.class */
    public class C2122e implements AbstractC2135r.AbstractC2136a {
        public C2122e(C2115k kVar) {
        }

        @Override // com.criteo.publisher.p027t.AbstractC2135r.AbstractC2136a
        /* renamed from: a */
        public void mo35638a(@NonNull AbstractC2127m.AbstractC2128a aVar) {
            aVar.mo35657c(true);
        }
    }

    /* renamed from: com.criteo.publisher.t.k$f */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/k$f.class */
    public class C2123f implements AbstractC2135r.AbstractC2136a {
        public C2123f(C2115k kVar) {
        }

        @Override // com.criteo.publisher.p027t.AbstractC2135r.AbstractC2136a
        /* renamed from: a */
        public void mo35638a(@NonNull AbstractC2127m.AbstractC2128a aVar) {
            aVar.mo35659b(true);
            aVar.mo35657c(true);
        }
    }

    /* renamed from: com.criteo.publisher.t.k$g */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/k$g.class */
    public class C2124g extends AbstractRunnableC2020m {

        /* renamed from: c */
        public final /* synthetic */ C2052w f2415c;

        /* renamed from: com.criteo.publisher.t.k$g$a */
        /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/k$g$a.class */
        public class C2125a implements AbstractC2135r.AbstractC2136a {

            /* renamed from: a */
            public final /* synthetic */ boolean f2417a;

            /* renamed from: b */
            public final /* synthetic */ long f2418b;

            public C2125a(C2124g gVar, boolean z, long j) {
                this.f2417a = z;
                this.f2418b = j;
            }

            @Override // com.criteo.publisher.p027t.AbstractC2135r.AbstractC2136a
            /* renamed from: a */
            public void mo35638a(@NonNull AbstractC2127m.AbstractC2128a aVar) {
                if (this.f2417a) {
                    aVar.mo35658c(Long.valueOf(this.f2418b));
                }
                aVar.mo35657c(true);
            }
        }

        public C2124g(C2052w wVar) {
            this.f2415c = wVar;
        }

        @Override // com.criteo.publisher.AbstractRunnableC2020m
        /* renamed from: a */
        public void mo35563a() {
            String e = this.f2415c.m35794e();
            if (e != null) {
                boolean a = this.f2415c.m35798a(C2115k.this.f2397c);
                C2115k.this.f2395a.mo35640a(e, new C2125a(this, !a, C2115k.this.f2397c.mo35877a()));
                C2115k.this.f2396b.m35614a(C2115k.this.f2395a, e);
            }
        }
    }

    public C2115k(@NonNull AbstractC2135r rVar, @NonNull C2146x xVar, @NonNull AbstractC1966c cVar, @NonNull C2093d dVar, @NonNull C2042p pVar, @NonNull Executor executor) {
        this.f2395a = rVar;
        this.f2396b = xVar;
        this.f2397c = cVar;
        this.f2398d = dVar;
        this.f2399e = pVar;
        this.f2400f = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m35690a(@NonNull C2038l lVar, @NonNull AbstractC2135r.AbstractC2136a aVar) {
        for (AbstractC2040n nVar : lVar.m35860a()) {
            this.f2395a.mo35640a(nVar.mo35854a(), aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m35684b(C2038l lVar) {
        m35690a(lVar, new C2122e(this));
    }

    /* renamed from: b */
    private boolean m35685b() {
        return !this.f2399e.m35834e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m35681c(@NonNull C2038l lVar) {
        m35690a(lVar, new C2123f(this));
    }

    @Override // com.criteo.publisher.p024q.AbstractC2090a
    /* renamed from: a */
    public void mo35694a() {
        if (!m35685b()) {
            this.f2400f.execute(new C2116a());
        }
    }

    @Override // com.criteo.publisher.p024q.AbstractC2090a
    /* renamed from: a */
    public void mo35693a(@NonNull C2037k kVar, @NonNull C2052w wVar) {
        if (!m35685b()) {
            this.f2400f.execute(new C2124g(wVar));
        }
    }

    @Override // com.criteo.publisher.p024q.AbstractC2090a
    /* renamed from: a */
    public void mo35692a(@NonNull C2038l lVar) {
        if (!m35685b()) {
            this.f2400f.execute(new C2117b(lVar));
        }
    }

    @Override // com.criteo.publisher.p024q.AbstractC2090a
    /* renamed from: a */
    public void mo35691a(@NonNull C2038l lVar, @NonNull C2041o oVar) {
        if (!m35685b()) {
            this.f2400f.execute(new C2119c(lVar, oVar));
        }
    }

    @Override // com.criteo.publisher.p024q.AbstractC2090a
    /* renamed from: a */
    public void mo35689a(@NonNull C2038l lVar, @NonNull Exception exc) {
        if (!m35685b()) {
            this.f2400f.execute(new C2121d(exc, lVar));
        }
    }
}
