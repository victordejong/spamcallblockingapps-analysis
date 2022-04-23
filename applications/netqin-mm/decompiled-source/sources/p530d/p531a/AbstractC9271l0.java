package p530d.p531a;

import io.grpc.ChannelLogger;
import io.grpc.Status;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.C9210a;
/* renamed from: d.a.l0 */
/* loaded from: classes2-dex2jar.jar:d/a/l0.class */
public abstract class AbstractC9271l0 {

    /* renamed from: d.a.l0$a */
    /* loaded from: classes2-dex2jar.jar:d/a/l0$a.class */
    public class C9272a extends AbstractC9280f {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9281g f35827a;

        public C9272a(AbstractC9271l0 l0Var, AbstractC9281g gVar) {
            this.f35827a = gVar;
        }

        @Override // p530d.p531a.AbstractC9271l0.AbstractC9280f
        /* renamed from: a */
        public void mo365a(C9282h hVar) {
            this.f35827a.mo3008a(hVar.m3007a(), hVar.m3006b());
        }

        @Override // p530d.p531a.AbstractC9271l0.AbstractC9280f, p530d.p531a.AbstractC9271l0.AbstractC9281g
        /* renamed from: a */
        public void mo364a(Status status) {
            this.f35827a.mo364a(status);
        }
    }

    /* renamed from: d.a.l0$b */
    /* loaded from: classes2-dex2jar.jar:d/a/l0$b.class */
    public static final class C9273b {

        /* renamed from: a */
        public final int f35828a;

        /* renamed from: b */
        public final AbstractC9301q0 f35829b;

        /* renamed from: c */
        public final ExecutorC9310t0 f35830c;

        /* renamed from: d */
        public final AbstractC9284i f35831d;

        /* renamed from: e */
        public final ScheduledExecutorService f35832e;

        /* renamed from: f */
        public final ChannelLogger f35833f;

        /* renamed from: g */
        public final Executor f35834g;

        /* renamed from: d.a.l0$b$a */
        /* loaded from: classes2-dex2jar.jar:d/a/l0$b$a.class */
        public static final class C9274a {

            /* renamed from: a */
            public Integer f35835a;

            /* renamed from: b */
            public AbstractC9301q0 f35836b;

            /* renamed from: c */
            public ExecutorC9310t0 f35837c;

            /* renamed from: d */
            public AbstractC9284i f35838d;

            /* renamed from: e */
            public ScheduledExecutorService f35839e;

            /* renamed from: f */
            public ChannelLogger f35840f;

            /* renamed from: g */
            public Executor f35841g;

            /* renamed from: a */
            public C9274a m3025a(int i) {
                this.f35835a = Integer.valueOf(i);
                return this;
            }

            /* renamed from: a */
            public C9274a m3024a(AbstractC9284i iVar) {
                C4933n.m24795a(iVar);
                this.f35838d = iVar;
                return this;
            }

            /* renamed from: a */
            public C9274a m3023a(AbstractC9301q0 q0Var) {
                C4933n.m24795a(q0Var);
                this.f35836b = q0Var;
                return this;
            }

            /* renamed from: a */
            public C9274a m3022a(ExecutorC9310t0 t0Var) {
                C4933n.m24795a(t0Var);
                this.f35837c = t0Var;
                return this;
            }

            /* renamed from: a */
            public C9274a m3021a(ChannelLogger channelLogger) {
                C4933n.m24795a(channelLogger);
                this.f35840f = channelLogger;
                return this;
            }

            /* renamed from: a */
            public C9274a m3020a(Executor executor) {
                this.f35841g = executor;
                return this;
            }

            /* renamed from: a */
            public C9274a m3019a(ScheduledExecutorService scheduledExecutorService) {
                C4933n.m24795a(scheduledExecutorService);
                this.f35839e = scheduledExecutorService;
                return this;
            }

            /* renamed from: a */
            public C9273b m3026a() {
                return new C9273b(this.f35835a, this.f35836b, this.f35837c, this.f35838d, this.f35839e, this.f35840f, this.f35841g, null);
            }
        }

        public C9273b(Integer num, AbstractC9301q0 q0Var, ExecutorC9310t0 t0Var, AbstractC9284i iVar, ScheduledExecutorService scheduledExecutorService, ChannelLogger channelLogger, Executor executor) {
            C4933n.m24794a(num, "defaultPort not set");
            this.f35828a = num.intValue();
            C4933n.m24794a(q0Var, "proxyDetector not set");
            this.f35829b = q0Var;
            C4933n.m24794a(t0Var, "syncContext not set");
            this.f35830c = t0Var;
            C4933n.m24794a(iVar, "serviceConfigParser not set");
            this.f35831d = iVar;
            this.f35832e = scheduledExecutorService;
            this.f35833f = channelLogger;
            this.f35834g = executor;
        }

        public /* synthetic */ C9273b(Integer num, AbstractC9301q0 q0Var, ExecutorC9310t0 t0Var, AbstractC9284i iVar, ScheduledExecutorService scheduledExecutorService, ChannelLogger channelLogger, Executor executor, C9272a aVar) {
            this(num, q0Var, t0Var, iVar, scheduledExecutorService, channelLogger, executor);
        }

        /* renamed from: f */
        public static C9274a m3027f() {
            return new C9274a();
        }

        /* renamed from: a */
        public int m3032a() {
            return this.f35828a;
        }

        /* renamed from: b */
        public Executor m3031b() {
            return this.f35834g;
        }

        /* renamed from: c */
        public AbstractC9301q0 m3030c() {
            return this.f35829b;
        }

        /* renamed from: d */
        public AbstractC9284i m3029d() {
            return this.f35831d;
        }

        /* renamed from: e */
        public ExecutorC9310t0 m3028e() {
            return this.f35830c;
        }

        public String toString() {
            C4924j.C4926b a = C4924j.m24820a(this);
            a.m24815a("defaultPort", this.f35828a);
            a.m24813a("proxyDetector", this.f35829b);
            a.m24813a("syncContext", this.f35830c);
            a.m24813a("serviceConfigParser", this.f35831d);
            a.m24813a("scheduledExecutorService", this.f35832e);
            a.m24813a("channelLogger", this.f35833f);
            a.m24813a("executor", this.f35834g);
            return a.toString();
        }
    }

    /* renamed from: d.a.l0$c */
    /* loaded from: classes2-dex2jar.jar:d/a/l0$c.class */
    public static final class C9275c {

        /* renamed from: a */
        public final Status f35842a;

        /* renamed from: b */
        public final Object f35843b;

        public C9275c(Status status) {
            this.f35843b = null;
            C4933n.m24794a(status, "status");
            this.f35842a = status;
            C4933n.m24782a(!status.m602f(), "cannot use OK status: %s", status);
        }

        public C9275c(Object obj) {
            C4933n.m24794a(obj, "config");
            this.f35843b = obj;
            this.f35842a = null;
        }

        /* renamed from: a */
        public static C9275c m3017a(Status status) {
            return new C9275c(status);
        }

        /* renamed from: a */
        public static C9275c m3016a(Object obj) {
            return new C9275c(obj);
        }

        /* renamed from: a */
        public Object m3018a() {
            return this.f35843b;
        }

        /* renamed from: b */
        public Status m3015b() {
            return this.f35842a;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C9275c.class != obj.getClass()) {
                return false;
            }
            C9275c cVar = (C9275c) obj;
            if (!C4928k.m24808a(this.f35842a, cVar.f35842a) || !C4928k.m24808a(this.f35843b, cVar.f35843b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return C4928k.m24807a(this.f35842a, this.f35843b);
        }

        public String toString() {
            if (this.f35843b != null) {
                C4924j.C4926b a = C4924j.m24820a(this);
                a.m24813a("config", this.f35843b);
                return a.toString();
            }
            C4924j.C4926b a2 = C4924j.m24820a(this);
            a2.m24813a("error", this.f35842a);
            return a2.toString();
        }
    }

    /* renamed from: d.a.l0$d */
    /* loaded from: classes2-dex2jar.jar:d/a/l0$d.class */
    public static abstract class AbstractC9276d {
        @Deprecated

        /* renamed from: a */
        public static final C9210a.C9213c<Integer> f35844a = C9210a.C9213c.m3148a("params-default-port");
        @Deprecated

        /* renamed from: b */
        public static final C9210a.C9213c<AbstractC9301q0> f35845b = C9210a.C9213c.m3148a("params-proxy-detector");
        @Deprecated

        /* renamed from: c */
        public static final C9210a.C9213c<ExecutorC9310t0> f35846c = C9210a.C9213c.m3148a("params-sync-context");
        @Deprecated

        /* renamed from: d */
        public static final C9210a.C9213c<AbstractC9284i> f35847d = C9210a.C9213c.m3148a("params-parser");

        /* renamed from: d.a.l0$d$a */
        /* loaded from: classes2-dex2jar.jar:d/a/l0$d$a.class */
        public class C9277a extends AbstractC9284i {

            /* renamed from: a */
            public final /* synthetic */ AbstractC9279e f35848a;

            public C9277a(AbstractC9276d dVar, AbstractC9279e eVar) {
                this.f35848a = eVar;
            }

            @Override // p530d.p531a.AbstractC9271l0.AbstractC9284i
            /* renamed from: a */
            public C9275c mo358a(Map<String, ?> map) {
                return this.f35848a.mo3011a(map);
            }
        }

        /* renamed from: d.a.l0$d$b */
        /* loaded from: classes2-dex2jar.jar:d/a/l0$d$b.class */
        public class C9278b extends AbstractC9279e {

            /* renamed from: a */
            public final /* synthetic */ C9273b f35849a;

            public C9278b(AbstractC9276d dVar, C9273b bVar) {
                this.f35849a = bVar;
            }

            @Override // p530d.p531a.AbstractC9271l0.AbstractC9279e
            /* renamed from: a */
            public int mo3012a() {
                return this.f35849a.m3032a();
            }

            @Override // p530d.p531a.AbstractC9271l0.AbstractC9279e
            /* renamed from: a */
            public C9275c mo3011a(Map<String, ?> map) {
                return this.f35849a.m3029d().mo358a(map);
            }

            @Override // p530d.p531a.AbstractC9271l0.AbstractC9279e
            /* renamed from: b */
            public AbstractC9301q0 mo3010b() {
                return this.f35849a.m3030c();
            }

            @Override // p530d.p531a.AbstractC9271l0.AbstractC9279e
            /* renamed from: c */
            public ExecutorC9310t0 mo3009c() {
                return this.f35849a.m3028e();
            }
        }

        @Deprecated
        /* renamed from: a */
        public AbstractC9271l0 m3014a(URI uri, C9210a aVar) {
            C9273b.C9274a f = C9273b.m3027f();
            f.m3025a(((Integer) aVar.m3155a(f35844a)).intValue());
            f.m3023a((AbstractC9301q0) aVar.m3155a(f35845b));
            f.m3022a((ExecutorC9310t0) aVar.m3155a(f35846c));
            f.m3024a((AbstractC9284i) aVar.m3155a(f35847d));
            return mo2869a(uri, f.m3026a());
        }

        /* renamed from: a */
        public AbstractC9271l0 mo2869a(URI uri, C9273b bVar) {
            return m3013a(uri, new C9278b(this, bVar));
        }

        @Deprecated
        /* renamed from: a */
        public AbstractC9271l0 m3013a(URI uri, AbstractC9279e eVar) {
            C9210a.C9212b b = C9210a.m3153b();
            b.m3149a(f35844a, Integer.valueOf(eVar.mo3012a()));
            b.m3149a(f35845b, eVar.mo3010b());
            b.m3149a(f35846c, eVar.mo3009c());
            b.m3149a(f35847d, new C9277a(this, eVar));
            return m3014a(uri, b.m3152a());
        }

        /* renamed from: a */
        public abstract String mo2870a();
    }

    @Deprecated
    /* renamed from: d.a.l0$e */
    /* loaded from: classes2-dex2jar.jar:d/a/l0$e.class */
    public static abstract class AbstractC9279e {
        /* renamed from: a */
        public abstract int mo3012a();

        /* renamed from: a */
        public abstract C9275c mo3011a(Map<String, ?> map);

        /* renamed from: b */
        public abstract AbstractC9301q0 mo3010b();

        /* renamed from: c */
        public abstract ExecutorC9310t0 mo3009c();
    }

    /* renamed from: d.a.l0$f */
    /* loaded from: classes2-dex2jar.jar:d/a/l0$f.class */
    public static abstract class AbstractC9280f implements AbstractC9281g {
        /* renamed from: a */
        public abstract void mo365a(C9282h hVar);

        @Override // p530d.p531a.AbstractC9271l0.AbstractC9281g
        /* renamed from: a */
        public abstract void mo364a(Status status);

        @Override // p530d.p531a.AbstractC9271l0.AbstractC9281g
        @Deprecated
        /* renamed from: a */
        public final void mo3008a(List<C9314u> list, C9210a aVar) {
            C9282h.C9283a d = C9282h.m3004d();
            d.m3000a(list);
            d.m3002a(aVar);
            mo365a(d.m3003a());
        }
    }

    /* renamed from: d.a.l0$g */
    /* loaded from: classes2-dex2jar.jar:d/a/l0$g.class */
    public interface AbstractC9281g {
        /* renamed from: a */
        void mo364a(Status status);

        /* renamed from: a */
        void mo3008a(List<C9314u> list, C9210a aVar);
    }

    /* renamed from: d.a.l0$h */
    /* loaded from: classes2-dex2jar.jar:d/a/l0$h.class */
    public static final class C9282h {

        /* renamed from: a */
        public final List<C9314u> f35850a;

        /* renamed from: b */
        public final C9210a f35851b;

        /* renamed from: c */
        public final C9275c f35852c;

        /* renamed from: d.a.l0$h$a */
        /* loaded from: classes2-dex2jar.jar:d/a/l0$h$a.class */
        public static final class C9283a {

            /* renamed from: a */
            public List<C9314u> f35853a = Collections.emptyList();

            /* renamed from: b */
            public C9210a f35854b = C9210a.f35760b;

            /* renamed from: c */
            public C9275c f35855c;

            /* renamed from: a */
            public C9283a m3002a(C9210a aVar) {
                this.f35854b = aVar;
                return this;
            }

            /* renamed from: a */
            public C9283a m3001a(C9275c cVar) {
                this.f35855c = cVar;
                return this;
            }

            /* renamed from: a */
            public C9283a m3000a(List<C9314u> list) {
                this.f35853a = list;
                return this;
            }

            /* renamed from: a */
            public C9282h m3003a() {
                return new C9282h(this.f35853a, this.f35854b, this.f35855c);
            }
        }

        public C9282h(List<C9314u> list, C9210a aVar, C9275c cVar) {
            this.f35850a = Collections.unmodifiableList(new ArrayList(list));
            C4933n.m24794a(aVar, "attributes");
            this.f35851b = aVar;
            this.f35852c = cVar;
        }

        /* renamed from: d */
        public static C9283a m3004d() {
            return new C9283a();
        }

        /* renamed from: a */
        public List<C9314u> m3007a() {
            return this.f35850a;
        }

        /* renamed from: b */
        public C9210a m3006b() {
            return this.f35851b;
        }

        /* renamed from: c */
        public C9275c m3005c() {
            return this.f35852c;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C9282h)) {
                return false;
            }
            C9282h hVar = (C9282h) obj;
            boolean z = false;
            if (C4928k.m24808a(this.f35850a, hVar.f35850a)) {
                z = false;
                if (C4928k.m24808a(this.f35851b, hVar.f35851b)) {
                    z = false;
                    if (C4928k.m24808a(this.f35852c, hVar.f35852c)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return C4928k.m24807a(this.f35850a, this.f35851b, this.f35852c);
        }

        public String toString() {
            C4924j.C4926b a = C4924j.m24820a(this);
            a.m24813a("addresses", this.f35850a);
            a.m24813a("attributes", this.f35851b);
            a.m24813a("serviceConfig", this.f35852c);
            return a.toString();
        }
    }

    /* renamed from: d.a.l0$i */
    /* loaded from: classes2-dex2jar.jar:d/a/l0$i.class */
    public static abstract class AbstractC9284i {
        /* renamed from: a */
        public abstract C9275c mo358a(Map<String, ?> map);
    }

    /* renamed from: a */
    public abstract String mo572a();

    /* renamed from: a */
    public void mo571a(AbstractC9280f fVar) {
        mo2878a((AbstractC9281g) fVar);
    }

    /* renamed from: a */
    public void mo2878a(AbstractC9281g gVar) {
        if (gVar instanceof AbstractC9280f) {
            mo571a((AbstractC9280f) gVar);
        } else {
            mo571a((AbstractC9280f) new C9272a(this, gVar));
        }
    }

    /* renamed from: b */
    public void mo559b() {
    }

    /* renamed from: c */
    public abstract void mo556c();
}
