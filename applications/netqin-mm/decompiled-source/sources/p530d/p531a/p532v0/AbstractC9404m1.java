package p530d.p531a.p532v0;

import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9252j;
import p530d.p531a.AbstractC9270l;
import p530d.p531a.C9210a;
import p530d.p531a.C9260k0;
import p530d.p531a.C9297q;
import p530d.p531a.C9306s;
import p530d.p531a.p532v0.AbstractC9521w1;
import p530d.p531a.p532v0.C9387k0;
import p530d.p531a.p532v0.C9446n1;
/* renamed from: d.a.v0.m1 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/m1.class */
public abstract class AbstractC9404m1<ReqT> implements AbstractC9448o {

    /* renamed from: w */
    public static final C9260k0.AbstractC9266f<String> f36095w = C9260k0.AbstractC9266f.m3047a("grpc-previous-rpc-attempts", C9260k0.f35813c);

    /* renamed from: x */
    public static final C9260k0.AbstractC9266f<String> f36096x = C9260k0.AbstractC9266f.m3047a("grpc-retry-pushback-ms", C9260k0.f35813c);

    /* renamed from: y */
    public static final Status f36097y = Status.f37989g.m609b("Stream thrown away because RetriableStream committed");

    /* renamed from: z */
    public static Random f36098z = new Random();

    /* renamed from: a */
    public final MethodDescriptor<ReqT, ?> f36099a;

    /* renamed from: b */
    public final Executor f36100b;

    /* renamed from: c */
    public final ScheduledExecutorService f36101c;

    /* renamed from: d */
    public final C9260k0 f36102d;

    /* renamed from: e */
    public final C9446n1.AbstractC9447a f36103e;

    /* renamed from: f */
    public final C9387k0.AbstractC9388a f36104f;

    /* renamed from: g */
    public C9446n1 f36105g;

    /* renamed from: h */
    public C9387k0 f36106h;

    /* renamed from: i */
    public boolean f36107i;

    /* renamed from: k */
    public final C9421q f36109k;

    /* renamed from: l */
    public final long f36110l;

    /* renamed from: m */
    public final long f36111m;

    /* renamed from: n */
    public final C9432x f36112n;

    /* renamed from: r */
    public long f36116r;

    /* renamed from: s */
    public ClientStreamListener f36117s;

    /* renamed from: t */
    public C9422r f36118t;

    /* renamed from: u */
    public C9422r f36119u;

    /* renamed from: v */
    public long f36120v;

    /* renamed from: j */
    public final Object f36108j = new Object();

    /* renamed from: o */
    public final C9449o0 f36113o = new C9449o0();

    /* renamed from: p */
    public volatile C9426u f36114p = new C9426u(new ArrayList(8), Collections.emptyList(), null, null, false, false, false, 0);

    /* renamed from: q */
    public final AtomicBoolean f36115q = new AtomicBoolean();

    /* renamed from: d.a.v0.m1$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$a.class */
    public class C9405a extends AbstractC9252j.AbstractC9253a {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9252j f36121a;

        public C9405a(AbstractC9404m1 m1Var, AbstractC9252j jVar) {
            this.f36121a = jVar;
        }

        @Override // p530d.p531a.AbstractC9252j.AbstractC9253a
        /* renamed from: a */
        public AbstractC9252j mo2782a(AbstractC9252j.C9254b bVar, C9260k0 k0Var) {
            return this.f36121a;
        }
    }

    /* renamed from: d.a.v0.m1$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$b.class */
    public class C9406b implements AbstractC9419o {

        /* renamed from: a */
        public final /* synthetic */ String f36122a;

        public C9406b(AbstractC9404m1 m1Var, String str) {
            this.f36122a = str;
        }

        @Override // p530d.p531a.p532v0.AbstractC9404m1.AbstractC9419o
        /* renamed from: a */
        public void mo2781a(C9431w wVar) {
            wVar.f36166a.mo2467a(this.f36122a);
        }
    }

    /* renamed from: d.a.v0.m1$c */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$c.class */
    public class RunnableC9407c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Collection f36123a;

        /* renamed from: b */
        public final /* synthetic */ C9431w f36124b;

        /* renamed from: c */
        public final /* synthetic */ Future f36125c;

        /* renamed from: d */
        public final /* synthetic */ Future f36126d;

        public RunnableC9407c(Collection collection, C9431w wVar, Future future, Future future2) {
            this.f36123a = collection;
            this.f36124b = wVar;
            this.f36125c = future;
            this.f36126d = future2;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (C9431w wVar : this.f36123a) {
                if (wVar != this.f36124b) {
                    wVar.f36166a.mo2531a(AbstractC9404m1.f36097y);
                }
            }
            Future future = this.f36125c;
            if (future != null) {
                future.cancel(false);
            }
            Future future2 = this.f36126d;
            if (future2 != null) {
                future2.cancel(false);
            }
            AbstractC9404m1.this.mo381d();
        }
    }

    /* renamed from: d.a.v0.m1$d */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$d.class */
    public class C9408d implements AbstractC9419o {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9270l f36128a;

        public C9408d(AbstractC9404m1 m1Var, AbstractC9270l lVar) {
            this.f36128a = lVar;
        }

        @Override // p530d.p531a.p532v0.AbstractC9404m1.AbstractC9419o
        /* renamed from: a */
        public void mo2781a(C9431w wVar) {
            wVar.f36166a.mo2537a(this.f36128a);
        }
    }

    /* renamed from: d.a.v0.m1$e */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$e.class */
    public class C9409e implements AbstractC9419o {

        /* renamed from: a */
        public final /* synthetic */ C9297q f36129a;

        public C9409e(AbstractC9404m1 m1Var, C9297q qVar) {
            this.f36129a = qVar;
        }

        @Override // p530d.p531a.p532v0.AbstractC9404m1.AbstractC9419o
        /* renamed from: a */
        public void mo2781a(C9431w wVar) {
            wVar.f36166a.mo2536a(this.f36129a);
        }
    }

    /* renamed from: d.a.v0.m1$f */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$f.class */
    public class C9410f implements AbstractC9419o {

        /* renamed from: a */
        public final /* synthetic */ C9306s f36130a;

        public C9410f(AbstractC9404m1 m1Var, C9306s sVar) {
            this.f36130a = sVar;
        }

        @Override // p530d.p531a.p532v0.AbstractC9404m1.AbstractC9419o
        /* renamed from: a */
        public void mo2781a(C9431w wVar) {
            wVar.f36166a.mo2535a(this.f36130a);
        }
    }

    /* renamed from: d.a.v0.m1$g */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$g.class */
    public class C9411g implements AbstractC9419o {
        public C9411g(AbstractC9404m1 m1Var) {
        }

        @Override // p530d.p531a.p532v0.AbstractC9404m1.AbstractC9419o
        /* renamed from: a */
        public void mo2781a(C9431w wVar) {
            wVar.f36166a.flush();
        }
    }

    /* renamed from: d.a.v0.m1$h */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$h.class */
    public class C9412h implements AbstractC9419o {

        /* renamed from: a */
        public final /* synthetic */ boolean f36131a;

        public C9412h(AbstractC9404m1 m1Var, boolean z) {
            this.f36131a = z;
        }

        @Override // p530d.p531a.p532v0.AbstractC9404m1.AbstractC9419o
        /* renamed from: a */
        public void mo2781a(C9431w wVar) {
            wVar.f36166a.mo2527a(this.f36131a);
        }
    }

    /* renamed from: d.a.v0.m1$i */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$i.class */
    public class C9413i implements AbstractC9419o {
        public C9413i(AbstractC9404m1 m1Var) {
        }

        @Override // p530d.p531a.p532v0.AbstractC9404m1.AbstractC9419o
        /* renamed from: a */
        public void mo2781a(C9431w wVar) {
            wVar.f36166a.mo2539a();
        }
    }

    /* renamed from: d.a.v0.m1$j */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$j.class */
    public class C9414j implements AbstractC9419o {

        /* renamed from: a */
        public final /* synthetic */ int f36132a;

        public C9414j(AbstractC9404m1 m1Var, int i) {
            this.f36132a = i;
        }

        @Override // p530d.p531a.p532v0.AbstractC9404m1.AbstractC9419o
        /* renamed from: a */
        public void mo2781a(C9431w wVar) {
            wVar.f36166a.mo2526b(this.f36132a);
        }
    }

    /* renamed from: d.a.v0.m1$k */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$k.class */
    public class C9415k implements AbstractC9419o {

        /* renamed from: a */
        public final /* synthetic */ int f36133a;

        public C9415k(AbstractC9404m1 m1Var, int i) {
            this.f36133a = i;
        }

        @Override // p530d.p531a.p532v0.AbstractC9404m1.AbstractC9419o
        /* renamed from: a */
        public void mo2781a(C9431w wVar) {
            wVar.f36166a.mo2523c(this.f36133a);
        }
    }

    /* renamed from: d.a.v0.m1$l */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$l.class */
    public class C9416l implements AbstractC9419o {

        /* renamed from: a */
        public final /* synthetic */ int f36134a;

        public C9416l(AbstractC9404m1 m1Var, int i) {
            this.f36134a = i;
        }

        @Override // p530d.p531a.p532v0.AbstractC9404m1.AbstractC9419o
        /* renamed from: a */
        public void mo2781a(C9431w wVar) {
            wVar.f36166a.mo2538a(this.f36134a);
        }
    }

    /* renamed from: d.a.v0.m1$m */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$m.class */
    public class C9417m implements AbstractC9419o {

        /* renamed from: a */
        public final /* synthetic */ Object f36135a;

        public C9417m(Object obj) {
            this.f36135a = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p530d.p531a.p532v0.AbstractC9404m1.AbstractC9419o
        /* renamed from: a */
        public void mo2781a(C9431w wVar) {
            wVar.f36166a.mo2529a(AbstractC9404m1.this.f36099a.m632a((MethodDescriptor) this.f36135a));
        }
    }

    /* renamed from: d.a.v0.m1$n */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$n.class */
    public class C9418n implements AbstractC9419o {
        public C9418n() {
        }

        @Override // p530d.p531a.p532v0.AbstractC9404m1.AbstractC9419o
        /* renamed from: a */
        public void mo2781a(C9431w wVar) {
            wVar.f36166a.mo2530a(new C9427v(wVar));
        }
    }

    /* renamed from: d.a.v0.m1$o */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$o.class */
    public interface AbstractC9419o {
        /* renamed from: a */
        void mo2781a(C9431w wVar);
    }

    /* renamed from: d.a.v0.m1$p */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$p.class */
    public class C9420p extends AbstractC9252j {

        /* renamed from: a */
        public final C9431w f36138a;

        /* renamed from: b */
        public long f36139b;

        public C9420p(C9431w wVar) {
            this.f36138a = wVar;
        }

        @Override // p530d.p531a.AbstractC9308s0
        /* renamed from: d */
        public void mo2780d(long j) {
            if (AbstractC9404m1.this.f36114p.f36157f == null) {
                Runnable runnable = null;
                synchronized (AbstractC9404m1.this.f36108j) {
                    if (AbstractC9404m1.this.f36114p.f36157f == null && !this.f36138a.f36167b) {
                        long j2 = this.f36139b + j;
                        this.f36139b = j2;
                        if (j2 > AbstractC9404m1.this.f36116r) {
                            if (this.f36139b > AbstractC9404m1.this.f36110l) {
                                this.f36138a.f36168c = true;
                            } else {
                                long a = AbstractC9404m1.this.f36109k.m2779a(this.f36139b - AbstractC9404m1.this.f36116r);
                                AbstractC9404m1.this.f36116r = this.f36139b;
                                if (a > AbstractC9404m1.this.f36111m) {
                                    this.f36138a.f36168c = true;
                                }
                            }
                            if (this.f36138a.f36168c) {
                                runnable = AbstractC9404m1.this.m2822a(this.f36138a);
                            }
                            if (runnable != null) {
                                runnable.run();
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: d.a.v0.m1$q */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$q.class */
    public static final class C9421q {

        /* renamed from: a */
        public final AtomicLong f36141a = new AtomicLong();

        /* renamed from: a */
        public long m2779a(long j) {
            return this.f36141a.addAndGet(j);
        }
    }

    /* renamed from: d.a.v0.m1$r */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$r.class */
    public static final class C9422r {

        /* renamed from: a */
        public final Object f36142a;

        /* renamed from: b */
        public Future<?> f36143b;

        /* renamed from: c */
        public boolean f36144c;

        public C9422r(Object obj) {
            this.f36142a = obj;
        }

        /* renamed from: a */
        public void m2777a(Future<?> future) {
            synchronized (this.f36142a) {
                if (!this.f36144c) {
                    this.f36143b = future;
                }
            }
        }

        /* renamed from: a */
        public boolean m2778a() {
            return this.f36144c;
        }

        /* renamed from: b */
        public Future<?> m2776b() {
            this.f36144c = true;
            return this.f36143b;
        }
    }

    /* renamed from: d.a.v0.m1$s */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$s.class */
    public final class RunnableC9423s implements Runnable {

        /* renamed from: a */
        public final C9422r f36145a;

        /* renamed from: d.a.v0.m1$s$a */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$s$a.class */
        public class RunnableC9424a implements Runnable {
            public RunnableC9424a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C9422r rVar;
                boolean z;
                AbstractC9404m1 m1Var = AbstractC9404m1.this;
                C9431w d = m1Var.m2801d(m1Var.f36114p.f36156e);
                synchronized (AbstractC9404m1.this.f36108j) {
                    rVar = null;
                    z = false;
                    if (RunnableC9423s.this.f36145a.m2778a()) {
                        z = true;
                    } else {
                        AbstractC9404m1.this.f36114p = AbstractC9404m1.this.f36114p.m2774a(d);
                        if (!AbstractC9404m1.this.m2823a(AbstractC9404m1.this.f36114p) || (AbstractC9404m1.this.f36112n != null && !AbstractC9404m1.this.f36112n.m2766a())) {
                            AbstractC9404m1.this.f36114p = AbstractC9404m1.this.f36114p.m2772b();
                            AbstractC9404m1.this.f36119u = null;
                        } else {
                            AbstractC9404m1 m1Var2 = AbstractC9404m1.this;
                            rVar = new C9422r(AbstractC9404m1.this.f36108j);
                            m1Var2.f36119u = rVar;
                        }
                    }
                }
                if (z) {
                    d.f36166a.mo2531a(Status.f37989g.m609b("Unneeded hedging"));
                    return;
                }
                if (rVar != null) {
                    rVar.m2777a(AbstractC9404m1.this.f36101c.schedule(new RunnableC9423s(rVar), AbstractC9404m1.this.f36106h.f36055b, TimeUnit.NANOSECONDS));
                }
                AbstractC9404m1.this.m2804c(d);
            }
        }

        public RunnableC9423s(C9422r rVar) {
            this.f36145a = rVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC9404m1.this.f36100b.execute(new RunnableC9424a());
        }
    }

    /* renamed from: d.a.v0.m1$t */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$t.class */
    public static final class C9425t {

        /* renamed from: a */
        public final boolean f36148a;

        /* renamed from: b */
        public final boolean f36149b;

        /* renamed from: c */
        public final long f36150c;

        /* renamed from: d */
        public final Integer f36151d;

        public C9425t(boolean z, boolean z2, long j, Integer num) {
            this.f36148a = z;
            this.f36149b = z2;
            this.f36150c = j;
            this.f36151d = num;
        }
    }

    /* renamed from: d.a.v0.m1$u */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$u.class */
    public static final class C9426u {

        /* renamed from: a */
        public final boolean f36152a;

        /* renamed from: b */
        public final List<AbstractC9419o> f36153b;

        /* renamed from: c */
        public final Collection<C9431w> f36154c;

        /* renamed from: d */
        public final Collection<C9431w> f36155d;

        /* renamed from: e */
        public final int f36156e;

        /* renamed from: f */
        public final C9431w f36157f;

        /* renamed from: g */
        public final boolean f36158g;

        /* renamed from: h */
        public final boolean f36159h;

        public C9426u(List<AbstractC9419o> list, Collection<C9431w> collection, Collection<C9431w> collection2, C9431w wVar, boolean z, boolean z2, boolean z3, int i) {
            this.f36153b = list;
            C4933n.m24794a(collection, "drainedSubstreams");
            this.f36154c = collection;
            this.f36157f = wVar;
            this.f36155d = collection2;
            this.f36158g = z;
            this.f36152a = z2;
            this.f36159h = z3;
            this.f36156e = i;
            boolean z4 = false;
            C4933n.m24775b(!z2 || list == null, "passThrough should imply buffer is null");
            C4933n.m24775b(!z2 || wVar != null, "passThrough should imply winningSubstream != null");
            C4933n.m24775b(!z2 || (collection.size() == 1 && collection.contains(wVar)) || (collection.size() == 0 && wVar.f36167b), "passThrough should imply winningSubstream is drained");
            C4933n.m24775b((!z || wVar != null) ? true : z4, "cancelled should imply committed");
        }

        /* renamed from: a */
        public C9426u m2775a() {
            return new C9426u(this.f36153b, this.f36154c, this.f36155d, this.f36157f, true, this.f36152a, this.f36159h, this.f36156e);
        }

        /* renamed from: a */
        public C9426u m2774a(C9431w wVar) {
            Collection collection;
            C4933n.m24775b(!this.f36159h, "hedging frozen");
            C4933n.m24775b(this.f36157f == null, "already committed");
            if (this.f36155d == null) {
                collection = Collections.singleton(wVar);
            } else {
                ArrayList arrayList = new ArrayList(this.f36155d);
                arrayList.add(wVar);
                collection = Collections.unmodifiableCollection(arrayList);
            }
            return new C9426u(this.f36153b, this.f36154c, collection, this.f36157f, this.f36158g, this.f36152a, this.f36159h, this.f36156e + 1);
        }

        /* renamed from: a */
        public C9426u m2773a(C9431w wVar, C9431w wVar2) {
            ArrayList arrayList = new ArrayList(this.f36155d);
            arrayList.remove(wVar);
            arrayList.add(wVar2);
            return new C9426u(this.f36153b, this.f36154c, Collections.unmodifiableCollection(arrayList), this.f36157f, this.f36158g, this.f36152a, this.f36159h, this.f36156e);
        }

        /* renamed from: b */
        public C9426u m2772b() {
            return this.f36159h ? this : new C9426u(this.f36153b, this.f36154c, this.f36155d, this.f36157f, this.f36158g, this.f36152a, true, this.f36156e);
        }

        /* renamed from: b */
        public C9426u m2771b(C9431w wVar) {
            Collection collection;
            boolean z;
            C4933n.m24775b(this.f36157f == null, "Already committed");
            List<AbstractC9419o> list = this.f36153b;
            if (this.f36154c.contains(wVar)) {
                collection = Collections.singleton(wVar);
                list = null;
                z = true;
            } else {
                collection = Collections.emptyList();
                z = false;
            }
            return new C9426u(list, collection, this.f36155d, wVar, this.f36158g, z, this.f36159h, this.f36156e);
        }

        /* renamed from: c */
        public C9426u m2770c(C9431w wVar) {
            ArrayList arrayList = new ArrayList(this.f36155d);
            arrayList.remove(wVar);
            return new C9426u(this.f36153b, this.f36154c, Collections.unmodifiableCollection(arrayList), this.f36157f, this.f36158g, this.f36152a, this.f36159h, this.f36156e);
        }

        /* renamed from: d */
        public C9426u m2769d(C9431w wVar) {
            wVar.f36167b = true;
            if (!this.f36154c.contains(wVar)) {
                return this;
            }
            ArrayList arrayList = new ArrayList(this.f36154c);
            arrayList.remove(wVar);
            return new C9426u(this.f36153b, Collections.unmodifiableCollection(arrayList), this.f36155d, this.f36157f, this.f36158g, this.f36152a, this.f36159h, this.f36156e);
        }

        /* renamed from: e */
        public C9426u m2768e(C9431w wVar) {
            Collection collection;
            boolean z = true;
            C4933n.m24775b(!this.f36152a, "Already passThrough");
            if (wVar.f36167b) {
                collection = this.f36154c;
            } else if (this.f36154c.isEmpty()) {
                collection = Collections.singletonList(wVar);
            } else {
                ArrayList arrayList = new ArrayList(this.f36154c);
                arrayList.add(wVar);
                collection = Collections.unmodifiableCollection(arrayList);
            }
            boolean z2 = this.f36157f != null;
            List<AbstractC9419o> list = this.f36153b;
            if (z2) {
                if (this.f36157f != wVar) {
                    z = false;
                }
                C4933n.m24775b(z, "Another RPC attempt has already committed");
                list = null;
            }
            return new C9426u(list, collection, this.f36155d, this.f36157f, this.f36158g, z2, this.f36159h, this.f36156e);
        }
    }

    /* renamed from: d.a.v0.m1$v */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$v.class */
    public final class C9427v implements ClientStreamListener {

        /* renamed from: a */
        public final C9431w f36160a;

        /* renamed from: d.a.v0.m1$v$a */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$v$a.class */
        public class RunnableC9428a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C9431w f36162a;

            public RunnableC9428a(C9431w wVar) {
                this.f36162a = wVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC9404m1.this.m2804c(this.f36162a);
            }
        }

        /* renamed from: d.a.v0.m1$v$b */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$v$b.class */
        public class RunnableC9429b implements Runnable {

            /* renamed from: d.a.v0.m1$v$b$a */
            /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$v$b$a.class */
            public class RunnableC9430a implements Runnable {
                public RunnableC9430a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    C9427v vVar = C9427v.this;
                    AbstractC9404m1.this.m2804c(AbstractC9404m1.this.m2801d(vVar.f36160a.f36169d + 1));
                }
            }

            public RunnableC9429b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC9404m1.this.f36100b.execute(new RunnableC9430a());
            }
        }

        public C9427v(C9431w wVar) {
            this.f36160a = wVar;
        }

        @Override // p530d.p531a.p532v0.AbstractC9521w1
        /* renamed from: a */
        public void mo2522a() {
            if (AbstractC9404m1.this.f36114p.f36154c.contains(this.f36160a)) {
                AbstractC9404m1.this.f36117s.mo2522a();
            }
        }

        @Override // io.grpc.internal.ClientStreamListener
        /* renamed from: a */
        public void mo575a(C9260k0 k0Var) {
            AbstractC9404m1.this.m2811b(this.f36160a);
            if (AbstractC9404m1.this.f36114p.f36157f == this.f36160a) {
                AbstractC9404m1.this.f36117s.mo575a(k0Var);
                if (AbstractC9404m1.this.f36112n != null) {
                    AbstractC9404m1.this.f36112n.m2764c();
                }
            }
        }

        @Override // p530d.p531a.p532v0.AbstractC9521w1
        /* renamed from: a */
        public void mo2521a(AbstractC9521w1.AbstractC9522a aVar) {
            C9426u uVar = AbstractC9404m1.this.f36114p;
            C4933n.m24775b(uVar.f36157f != null, "Headers should be received prior to messages.");
            if (uVar.f36157f == this.f36160a) {
                AbstractC9404m1.this.f36117s.mo2521a(aVar);
            }
        }

        @Override // io.grpc.internal.ClientStreamListener
        /* renamed from: a */
        public void mo574a(Status status, C9260k0 k0Var) {
            mo573a(status, ClientStreamListener.RpcProgress.PROCESSED, k0Var);
        }

        @Override // io.grpc.internal.ClientStreamListener
        /* renamed from: a */
        public void mo573a(Status status, ClientStreamListener.RpcProgress rpcProgress, C9260k0 k0Var) {
            boolean z;
            C9422r rVar;
            boolean z2;
            synchronized (AbstractC9404m1.this.f36108j) {
                AbstractC9404m1.this.f36114p = AbstractC9404m1.this.f36114p.m2769d(this.f36160a);
                AbstractC9404m1.this.f36113o.m2719a(status.m604d());
            }
            C9431w wVar = this.f36160a;
            if (wVar.f36168c) {
                AbstractC9404m1.this.m2811b(wVar);
                if (AbstractC9404m1.this.f36114p.f36157f == this.f36160a) {
                    AbstractC9404m1.this.f36117s.mo574a(status, k0Var);
                    return;
                }
                return;
            }
            if (AbstractC9404m1.this.f36114p.f36157f == null) {
                if (rpcProgress != ClientStreamListener.RpcProgress.REFUSED || !AbstractC9404m1.this.f36115q.compareAndSet(false, true)) {
                    if (rpcProgress == ClientStreamListener.RpcProgress.DROPPED) {
                        z = false;
                        if (AbstractC9404m1.this.f36107i) {
                            AbstractC9404m1.this.m2805c();
                            z = false;
                        }
                    } else {
                        AbstractC9404m1.this.f36115q.set(true);
                        if (AbstractC9404m1.this.f36105g == null) {
                            AbstractC9404m1 m1Var = AbstractC9404m1.this;
                            m1Var.f36105g = m1Var.f36103e.get();
                            AbstractC9404m1 m1Var2 = AbstractC9404m1.this;
                            m1Var2.f36120v = m1Var2.f36105g.f36226b;
                        }
                        C9425t b = m2767b(status, k0Var);
                        if (b.f36148a) {
                            synchronized (AbstractC9404m1.this.f36108j) {
                                AbstractC9404m1 m1Var3 = AbstractC9404m1.this;
                                rVar = new C9422r(AbstractC9404m1.this.f36108j);
                                m1Var3.f36118t = rVar;
                            }
                            rVar.m2777a(AbstractC9404m1.this.f36101c.schedule(new RunnableC9429b(), b.f36150c, TimeUnit.NANOSECONDS));
                            return;
                        }
                        z = b.f36149b;
                        AbstractC9404m1.this.m2813a(b.f36151d);
                    }
                    if (AbstractC9404m1.this.f36107i) {
                        synchronized (AbstractC9404m1.this.f36108j) {
                            AbstractC9404m1.this.f36114p = AbstractC9404m1.this.f36114p.m2770c(this.f36160a);
                            if (!z && (AbstractC9404m1.this.m2823a(AbstractC9404m1.this.f36114p) || !AbstractC9404m1.this.f36114p.f36155d.isEmpty())) {
                                return;
                            }
                        }
                    }
                } else {
                    C9431w d = AbstractC9404m1.this.m2801d(this.f36160a.f36169d);
                    if (AbstractC9404m1.this.f36107i) {
                        synchronized (AbstractC9404m1.this.f36108j) {
                            AbstractC9404m1.this.f36114p = AbstractC9404m1.this.f36114p.m2773a(this.f36160a, d);
                            z2 = false;
                            if (!AbstractC9404m1.this.m2823a(AbstractC9404m1.this.f36114p)) {
                                z2 = false;
                                if (AbstractC9404m1.this.f36114p.f36155d.size() == 1) {
                                    z2 = true;
                                }
                            }
                        }
                        if (z2) {
                            AbstractC9404m1.this.m2811b(d);
                        }
                    } else {
                        if (AbstractC9404m1.this.f36105g == null) {
                            AbstractC9404m1 m1Var4 = AbstractC9404m1.this;
                            m1Var4.f36105g = m1Var4.f36103e.get();
                        }
                        if (AbstractC9404m1.this.f36105g.f36225a == 1) {
                            AbstractC9404m1.this.m2811b(d);
                        }
                    }
                    AbstractC9404m1.this.f36100b.execute(new RunnableC9428a(d));
                    return;
                }
            }
            AbstractC9404m1.this.m2811b(this.f36160a);
            if (AbstractC9404m1.this.f36114p.f36157f == this.f36160a) {
                AbstractC9404m1.this.f36117s.mo574a(status, k0Var);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:42:0x0152  */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final p530d.p531a.p532v0.AbstractC9404m1.C9425t m2767b(io.grpc.Status r9, p530d.p531a.C9260k0 r10) {
            /*
                Method dump skipped, instructions count: 354
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p530d.p531a.p532v0.AbstractC9404m1.C9427v.m2767b(io.grpc.Status, d.a.k0):d.a.v0.m1$t");
        }
    }

    /* renamed from: d.a.v0.m1$w */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$w.class */
    public static final class C9431w {

        /* renamed from: a */
        public AbstractC9448o f36166a;

        /* renamed from: b */
        public boolean f36167b;

        /* renamed from: c */
        public boolean f36168c;

        /* renamed from: d */
        public final int f36169d;

        public C9431w(int i) {
            this.f36169d = i;
        }
    }

    /* renamed from: d.a.v0.m1$x */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m1$x.class */
    public static final class C9432x {

        /* renamed from: a */
        public final int f36170a;

        /* renamed from: b */
        public final int f36171b;

        /* renamed from: c */
        public final int f36172c;

        /* renamed from: d */
        public final AtomicInteger f36173d;

        public C9432x(float f, float f2) {
            AtomicInteger atomicInteger = new AtomicInteger();
            this.f36173d = atomicInteger;
            this.f36172c = (int) (f2 * 1000.0f);
            int i = (int) (f * 1000.0f);
            this.f36170a = i;
            this.f36171b = i / 2;
            atomicInteger.set(i);
        }

        /* renamed from: a */
        public boolean m2766a() {
            return this.f36173d.get() > this.f36171b;
        }

        /* renamed from: b */
        public boolean m2765b() {
            int i;
            boolean z;
            int i2;
            do {
                i = this.f36173d.get();
                z = false;
                if (i == 0) {
                    return false;
                }
                i2 = i - 1000;
            } while (!this.f36173d.compareAndSet(i, Math.max(i2, 0)));
            if (i2 > this.f36171b) {
                z = true;
            }
            return z;
        }

        /* renamed from: c */
        public void m2764c() {
            int i;
            int i2;
            do {
                i = this.f36173d.get();
                i2 = this.f36170a;
                if (i != i2) {
                } else {
                    return;
                }
            } while (!this.f36173d.compareAndSet(i, Math.min(this.f36172c + i, i2)));
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C9432x)) {
                return false;
            }
            C9432x xVar = (C9432x) obj;
            if (!(this.f36170a == xVar.f36170a && this.f36172c == xVar.f36172c)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return C4928k.m24807a(Integer.valueOf(this.f36170a), Integer.valueOf(this.f36172c));
        }
    }

    public AbstractC9404m1(MethodDescriptor<ReqT, ?> methodDescriptor, C9260k0 k0Var, C9421q qVar, long j, long j2, Executor executor, ScheduledExecutorService scheduledExecutorService, C9446n1.AbstractC9447a aVar, C9387k0.AbstractC9388a aVar2, C9432x xVar) {
        this.f36099a = methodDescriptor;
        this.f36109k = qVar;
        this.f36110l = j;
        this.f36111m = j2;
        this.f36100b = executor;
        this.f36101c = scheduledExecutorService;
        this.f36102d = k0Var;
        C4933n.m24794a(aVar, "retryPolicyProvider");
        this.f36103e = aVar;
        C4933n.m24794a(aVar2, "hedgingPolicyProvider");
        this.f36104f = aVar2;
        this.f36112n = xVar;
    }

    /* renamed from: a */
    public final C9260k0 m2825a(C9260k0 k0Var, int i) {
        C9260k0 k0Var2 = new C9260k0();
        k0Var2.m3066a(k0Var);
        if (i > 0) {
            k0Var2.m3067a((C9260k0.AbstractC9266f<C9260k0.AbstractC9266f<String>>) f36095w, (C9260k0.AbstractC9266f<String>) String.valueOf(i));
        }
        return k0Var2;
    }

    /* renamed from: a */
    public abstract AbstractC9448o mo382a(AbstractC9252j.AbstractC9253a aVar, C9260k0 k0Var);

    /* renamed from: a */
    public final Runnable m2822a(C9431w wVar) {
        Future<?> future;
        Future<?> future2;
        synchronized (this.f36108j) {
            if (this.f36114p.f36157f != null) {
                return null;
            }
            Collection<C9431w> collection = this.f36114p.f36154c;
            this.f36114p = this.f36114p.m2771b(wVar);
            this.f36109k.m2779a(-this.f36116r);
            if (this.f36118t != null) {
                future = this.f36118t.m2776b();
                this.f36118t = null;
            } else {
                future = null;
            }
            if (this.f36119u != null) {
                future2 = this.f36119u.m2776b();
                this.f36119u = null;
            } else {
                future2 = null;
            }
            return new RunnableC9407c(collection, wVar, future, future2);
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public final void mo2539a() {
        m2824a((AbstractC9419o) new C9413i(this));
    }

    @Override // p530d.p531a.p532v0.AbstractC9511v1
    /* renamed from: a */
    public final void mo2538a(int i) {
        C9426u uVar = this.f36114p;
        if (uVar.f36152a) {
            uVar.f36157f.f36166a.mo2538a(i);
        } else {
            m2824a((AbstractC9419o) new C9416l(this, i));
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9511v1
    /* renamed from: a */
    public final void mo2537a(AbstractC9270l lVar) {
        m2824a((AbstractC9419o) new C9408d(this, lVar));
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public final void mo2536a(C9297q qVar) {
        m2824a((AbstractC9419o) new C9409e(this, qVar));
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public final void mo2535a(C9306s sVar) {
        m2824a((AbstractC9419o) new C9410f(this, sVar));
    }

    /* renamed from: a */
    public final void m2824a(AbstractC9419o oVar) {
        Collection<C9431w> collection;
        synchronized (this.f36108j) {
            try {
                if (!this.f36114p.f36152a) {
                    this.f36114p.f36153b.add(oVar);
                }
                collection = this.f36114p.f36154c;
            } catch (Throwable th) {
                throw th;
            }
        }
        for (C9431w wVar : collection) {
            oVar.mo2781a(wVar);
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2534a(C9449o0 o0Var) {
        C9426u uVar;
        synchronized (this.f36108j) {
            try {
                o0Var.m2718a("closed", this.f36113o);
                uVar = this.f36114p;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (uVar.f36157f != null) {
            C9449o0 o0Var2 = new C9449o0();
            uVar.f36157f.f36166a.mo2534a(o0Var2);
            o0Var.m2718a("committed", o0Var2);
            return;
        }
        C9449o0 o0Var3 = new C9449o0();
        for (C9431w wVar : uVar.f36154c) {
            C9449o0 o0Var4 = new C9449o0();
            wVar.f36166a.mo2534a(o0Var4);
            o0Var3.m2719a(o0Var4);
        }
        o0Var.m2718a("open", o0Var3);
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public final void mo2531a(Status status) {
        C9431w wVar = new C9431w(0);
        wVar.f36166a = new C9324a1();
        Runnable a = m2822a(wVar);
        if (a != null) {
            this.f36117s.mo574a(status, new C9260k0());
            a.run();
            return;
        }
        this.f36114p.f36157f.f36166a.mo2531a(status);
        synchronized (this.f36108j) {
            this.f36114p = this.f36114p.m2775a();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00aa, code lost:
        if (r7.f36112n.m2766a() != false) goto L_0x00ad;
     */
    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo2530a(io.grpc.internal.ClientStreamListener r8) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p530d.p531a.p532v0.AbstractC9404m1.mo2530a(io.grpc.internal.ClientStreamListener):void");
    }

    @Override // p530d.p531a.p532v0.AbstractC9511v1
    /* renamed from: a */
    public final void mo2529a(InputStream inputStream) {
        throw new IllegalStateException("RetriableStream.writeMessage() should not be called directly");
    }

    /* renamed from: a */
    public final void m2813a(Integer num) {
        if (num != null) {
            if (num.intValue() < 0) {
                m2805c();
                return;
            }
            synchronized (this.f36108j) {
                if (this.f36119u != null) {
                    Future<?> b = this.f36119u.m2776b();
                    C9422r rVar = new C9422r(this.f36108j);
                    this.f36119u = rVar;
                    if (b != null) {
                        b.cancel(false);
                    }
                    rVar.m2777a(this.f36101c.schedule(new RunnableC9423s(rVar), num.intValue(), TimeUnit.MILLISECONDS));
                }
            }
        }
    }

    /* renamed from: a */
    public final void m2812a(ReqT reqt) {
        C9426u uVar = this.f36114p;
        if (uVar.f36152a) {
            uVar.f36157f.f36166a.mo2529a(this.f36099a.m632a((MethodDescriptor<ReqT, ?>) reqt));
        } else {
            m2824a((AbstractC9419o) new C9417m(reqt));
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public final void mo2467a(String str) {
        m2824a((AbstractC9419o) new C9406b(this, str));
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public final void mo2527a(boolean z) {
        m2824a((AbstractC9419o) new C9412h(this, z));
    }

    /* renamed from: a */
    public final boolean m2823a(C9426u uVar) {
        return uVar.f36157f == null && uVar.f36156e < this.f36106h.f36054a && !uVar.f36159h;
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: b */
    public final C9210a mo2466b() {
        return this.f36114p.f36157f != null ? this.f36114p.f36157f.f36166a.mo2466b() : C9210a.f35760b;
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: b */
    public final void mo2526b(int i) {
        m2824a((AbstractC9419o) new C9414j(this, i));
    }

    /* renamed from: b */
    public final void m2811b(C9431w wVar) {
        Runnable a = m2822a(wVar);
        if (a != null) {
            a.run();
        }
    }

    /* renamed from: c */
    public final void m2805c() {
        Future<?> future;
        synchronized (this.f36108j) {
            future = null;
            if (this.f36119u != null) {
                future = this.f36119u.m2776b();
                this.f36119u = null;
            }
            this.f36114p = this.f36114p.m2772b();
        }
        if (future != null) {
            future.cancel(false);
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: c */
    public final void mo2523c(int i) {
        m2824a((AbstractC9419o) new C9415k(this, i));
    }

    /* renamed from: c */
    public final void m2804c(C9431w wVar) {
        boolean z = false;
        ArrayList<AbstractC9419o> arrayList = null;
        int i = 0;
        while (true) {
            synchronized (this.f36108j) {
                try {
                    C9426u uVar = this.f36114p;
                    if (uVar.f36157f != null && uVar.f36157f != wVar) {
                        wVar.f36166a.mo2531a(f36097y);
                        return;
                    } else if (i == uVar.f36153b.size()) {
                        this.f36114p = uVar.m2768e(wVar);
                        return;
                    } else if (!wVar.f36167b) {
                        int min = Math.min(i + 128, uVar.f36153b.size());
                        if (arrayList == null) {
                            arrayList = new ArrayList(uVar.f36153b.subList(i, min));
                        } else {
                            arrayList.clear();
                            arrayList.addAll(uVar.f36153b.subList(i, min));
                        }
                        for (AbstractC9419o oVar : arrayList) {
                            C9426u uVar2 = this.f36114p;
                            C9431w wVar2 = uVar2.f36157f;
                            if (wVar2 == null || wVar2 == wVar) {
                                if (uVar2.f36158g) {
                                    if (uVar2.f36157f == wVar) {
                                        z = true;
                                    }
                                    C4933n.m24775b(z, "substream should be CANCELLED_BECAUSE_COMMITTED already");
                                    return;
                                }
                                oVar.mo2781a(wVar);
                            }
                        }
                        i = min;
                    } else {
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: d */
    public final C9431w m2801d(int i) {
        C9431w wVar = new C9431w(i);
        wVar.f36166a = mo382a(new C9405a(this, new C9420p(wVar)), m2825a(this.f36102d, i));
        return wVar;
    }

    /* renamed from: d */
    public abstract void mo381d();

    /* renamed from: e */
    public abstract Status mo380e();

    @Override // p530d.p531a.p532v0.AbstractC9511v1
    public final void flush() {
        C9426u uVar = this.f36114p;
        if (uVar.f36152a) {
            uVar.f36157f.f36166a.flush();
        } else {
            m2824a((AbstractC9419o) new C9411g(this));
        }
    }
}
