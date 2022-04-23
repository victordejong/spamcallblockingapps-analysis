package io.grpc.internal;

import io.grpc.ChannelLogger;
import io.grpc.ConnectivityState;
import io.grpc.Status;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9229f0;
import p530d.p531a.AbstractC9243g0;
import p530d.p531a.AbstractC9271l0;
import p530d.p531a.C9210a;
import p530d.p531a.C9246h0;
import p530d.p531a.C9314u;
import p530d.p531a.p532v0.C9491r1;
/* loaded from: classes2-dex2jar.jar:io/grpc/internal/AutoConfiguredLoadBalancerFactory.class */
public final class AutoConfiguredLoadBalancerFactory {

    /* renamed from: a */
    public final C9246h0 f38005a;

    /* renamed from: b */
    public final String f38006b;

    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException.class */
    public static final class PolicyException extends Exception {
        public static final long serialVersionUID = 1;

        public PolicyException(String str) {
            super(str);
        }
    }

    /* renamed from: io.grpc.internal.AutoConfiguredLoadBalancerFactory$b */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/AutoConfiguredLoadBalancerFactory$b.class */
    public final class C10308b {

        /* renamed from: a */
        public final AbstractC9229f0.AbstractC9234d f38007a;

        /* renamed from: b */
        public AbstractC9229f0 f38008b;

        /* renamed from: c */
        public AbstractC9243g0 f38009c;

        public C10308b(AbstractC9229f0.AbstractC9234d dVar) {
            this.f38007a = dVar;
            AbstractC9243g0 a = AutoConfiguredLoadBalancerFactory.this.f38005a.m3090a(AutoConfiguredLoadBalancerFactory.this.f38006b);
            this.f38009c = a;
            if (a != null) {
                this.f38008b = a.mo2139a(dVar);
                return;
            }
            throw new IllegalStateException("Could not find policy '" + AutoConfiguredLoadBalancerFactory.this.f38006b + "'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files.");
        }

        /* renamed from: a */
        public AbstractC9229f0 m588a() {
            return this.f38008b;
        }

        /* renamed from: a */
        public Status m587a(AbstractC9229f0.C9237g gVar) {
            List<C9314u> a = gVar.m3101a();
            C9210a b = gVar.m3100b();
            if (b.m3155a(AbstractC9229f0.f35782a) == null) {
                C10312f fVar = (C10312f) gVar.m3099c();
                C10312f fVar2 = fVar;
                if (fVar == null) {
                    try {
                        fVar2 = new C10312f(AutoConfiguredLoadBalancerFactory.this.m591a(AutoConfiguredLoadBalancerFactory.this.f38006b, "using default policy"), null, null);
                    } catch (PolicyException e) {
                        this.f38007a.mo369a(ConnectivityState.TRANSIENT_FAILURE, new C10310d(Status.f37995m.m609b(e.getMessage())));
                        this.f38008b.mo582b();
                        this.f38009c = null;
                        this.f38008b = new C10311e();
                        return Status.f37988f;
                    }
                }
                if (this.f38009c == null || !fVar2.f38012a.mo2140a().equals(this.f38009c.mo2140a())) {
                    this.f38007a.mo369a(ConnectivityState.CONNECTING, new C10309c());
                    this.f38008b.mo582b();
                    AbstractC9243g0 g0Var = fVar2.f38012a;
                    this.f38009c = g0Var;
                    AbstractC9229f0 f0Var = this.f38008b;
                    this.f38008b = g0Var.mo2139a(this.f38007a);
                    this.f38007a.mo371a().mo687a(ChannelLogger.ChannelLogLevel.INFO, "Load balancer changed from {0} to {1}", f0Var.getClass().getSimpleName(), this.f38008b.getClass().getSimpleName());
                }
                Object obj = fVar2.f38014c;
                C9210a aVar = b;
                if (obj != null) {
                    this.f38007a.mo371a().mo687a(ChannelLogger.ChannelLogLevel.DEBUG, "Load-balancing config: {0}", fVar2.f38014c);
                    C9210a.C9212b a2 = b.m3156a();
                    a2.m3149a(AbstractC9229f0.f35782a, fVar2.f38013b);
                    aVar = a2.m3152a();
                }
                AbstractC9229f0 a3 = m588a();
                if (!gVar.m3101a().isEmpty() || a3.m3118a()) {
                    AbstractC9229f0.C9237g.C9238a d = AbstractC9229f0.C9237g.m3098d();
                    d.m3094a(gVar.m3101a());
                    d.m3096a(aVar);
                    d.m3095a(obj);
                    a3.mo584a(d.m3097a());
                    return Status.f37988f;
                }
                Status status = Status.f37996n;
                return status.m609b("NameResolver returned no usable address. addrs=" + a + ", attrs=" + aVar);
            }
            throw new IllegalArgumentException("Unexpected ATTR_LOAD_BALANCING_CONFIG from upstream: " + b.m3155a(AbstractC9229f0.f35782a));
        }

        /* renamed from: a */
        public void m586a(Status status) {
            m588a().mo583a(status);
        }

        /* renamed from: b */
        public void m585b() {
            this.f38008b.mo582b();
            this.f38008b = null;
        }
    }

    /* renamed from: io.grpc.internal.AutoConfiguredLoadBalancerFactory$c */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/AutoConfiguredLoadBalancerFactory$c.class */
    public static final class C10309c extends AbstractC9229f0.AbstractC9240i {
        public C10309c() {
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9240i
        /* renamed from: a */
        public AbstractC9229f0.C9235e mo385a(AbstractC9229f0.AbstractC9236f fVar) {
            return AbstractC9229f0.C9235e.m3102e();
        }

        public String toString() {
            return C4924j.m24821a((Class<?>) C10309c.class).toString();
        }
    }

    /* renamed from: io.grpc.internal.AutoConfiguredLoadBalancerFactory$d */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/AutoConfiguredLoadBalancerFactory$d.class */
    public static final class C10310d extends AbstractC9229f0.AbstractC9240i {

        /* renamed from: a */
        public final Status f38011a;

        public C10310d(Status status) {
            this.f38011a = status;
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9240i
        /* renamed from: a */
        public AbstractC9229f0.C9235e mo385a(AbstractC9229f0.AbstractC9236f fVar) {
            return AbstractC9229f0.C9235e.m3105b(this.f38011a);
        }
    }

    /* renamed from: io.grpc.internal.AutoConfiguredLoadBalancerFactory$e */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/AutoConfiguredLoadBalancerFactory$e.class */
    public static final class C10311e extends AbstractC9229f0 {
        public C10311e() {
        }

        @Override // p530d.p531a.AbstractC9229f0
        /* renamed from: a */
        public void mo584a(AbstractC9229f0.C9237g gVar) {
        }

        @Override // p530d.p531a.AbstractC9229f0
        /* renamed from: a */
        public void mo583a(Status status) {
        }

        @Override // p530d.p531a.AbstractC9229f0
        /* renamed from: b */
        public void mo582b() {
        }
    }

    /* renamed from: io.grpc.internal.AutoConfiguredLoadBalancerFactory$f */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/AutoConfiguredLoadBalancerFactory$f.class */
    public static final class C10312f {

        /* renamed from: a */
        public final AbstractC9243g0 f38012a;

        /* renamed from: b */
        public final Map<String, ?> f38013b;

        /* renamed from: c */
        public final Object f38014c;

        public C10312f(AbstractC9243g0 g0Var, Map<String, ?> map, Object obj) {
            C4933n.m24794a(g0Var, "provider");
            this.f38012a = g0Var;
            this.f38013b = map;
            this.f38014c = obj;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C10312f.class != obj.getClass()) {
                return false;
            }
            C10312f fVar = (C10312f) obj;
            if (!C4928k.m24808a(this.f38012a, fVar.f38012a) || !C4928k.m24808a(this.f38013b, fVar.f38013b) || !C4928k.m24808a(this.f38014c, fVar.f38014c)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return C4928k.m24807a(this.f38012a, this.f38013b, this.f38014c);
        }

        public String toString() {
            C4924j.C4926b a = C4924j.m24820a(this);
            a.m24813a("provider", this.f38012a);
            a.m24813a("rawConfig", this.f38013b);
            a.m24813a("config", this.f38014c);
            return a.toString();
        }
    }

    public AutoConfiguredLoadBalancerFactory(C9246h0 h0Var, String str) {
        C4933n.m24794a(h0Var, "registry");
        this.f38005a = h0Var;
        C4933n.m24794a(str, "defaultPolicy");
        this.f38006b = str;
    }

    public AutoConfiguredLoadBalancerFactory(String str) {
        this(C9246h0.m3089b(), str);
    }

    /* renamed from: a */
    public final AbstractC9243g0 m591a(String str, String str2) throws PolicyException {
        AbstractC9243g0 a = this.f38005a.m3090a(str);
        if (a != null) {
            return a;
        }
        throw new PolicyException("Trying to load '" + str + "' because " + str2 + ", but it's unavailable");
    }

    /* renamed from: a */
    public AbstractC9271l0.C9275c m590a(Map<String, ?> map, ChannelLogger channelLogger) {
        List<C9491r1.C9492a> b;
        if (map != null) {
            try {
                b = C9491r1.m2617b(C9491r1.m2613e(map));
            } catch (RuntimeException e) {
                return AbstractC9271l0.C9275c.m3017a(Status.f37990h.m609b("can't parse load balancer configuration").m612a(e));
            }
        } else {
            b = null;
        }
        if (b == null || b.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (C9491r1.C9492a aVar : b) {
            String a = aVar.m2596a();
            AbstractC9243g0 a2 = this.f38005a.m3090a(a);
            if (a2 == null) {
                arrayList.add(a);
            } else {
                if (!arrayList.isEmpty()) {
                    channelLogger.mo687a(ChannelLogger.ChannelLogLevel.DEBUG, "{0} specified by Service Config are not available", arrayList);
                }
                AbstractC9271l0.C9275c a3 = a2.mo2138a(aVar.m2595b());
                return a3.m3015b() != null ? a3 : AbstractC9271l0.C9275c.m3016a(new C10312f(a2, aVar.m2595b(), a3.m3018a()));
            }
        }
        Status status = Status.f37990h;
        return AbstractC9271l0.C9275c.m3017a(status.m609b("None of " + arrayList + " specified by Service Config are available."));
    }

    /* renamed from: a */
    public C10308b m594a(AbstractC9229f0.AbstractC9234d dVar) {
        return new C10308b(dVar);
    }
}
