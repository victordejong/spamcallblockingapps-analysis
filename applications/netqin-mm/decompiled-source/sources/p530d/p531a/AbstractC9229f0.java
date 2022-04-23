package p530d.p531a;

import io.grpc.ChannelLogger;
import io.grpc.ConnectivityState;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9252j;
import p530d.p531a.C9210a;
/* renamed from: d.a.f0 */
/* loaded from: classes2-dex2jar.jar:d/a/f0.class */
public abstract class AbstractC9229f0 {
    @Deprecated

    /* renamed from: a */
    public static final C9210a.C9213c<Map<String, ?>> f35782a = C9210a.C9213c.m3148a("io.grpc.LoadBalancer.loadBalancingConfig");

    /* renamed from: d.a.f0$b */
    /* loaded from: classes2-dex2jar.jar:d/a/f0$b.class */
    public static final class C9231b {

        /* renamed from: a */
        public final List<C9314u> f35783a;

        /* renamed from: b */
        public final C9210a f35784b;

        /* renamed from: c */
        public final Object[][] f35785c;

        /* renamed from: d.a.f0$b$a */
        /* loaded from: classes2-dex2jar.jar:d/a/f0$b$a.class */
        public static final class C9232a {

            /* renamed from: a */
            public List<C9314u> f35786a;

            /* renamed from: b */
            public C9210a f35787b = C9210a.f35760b;

            /* renamed from: c */
            public Object[][] f35788c = new Object[0][2];

            /* renamed from: a */
            public C9232a m3113a(C9210a aVar) {
                C4933n.m24794a(aVar, "attrs");
                this.f35787b = aVar;
                return this;
            }

            /* renamed from: a */
            public C9232a m3112a(C9314u uVar) {
                this.f35786a = Collections.singletonList(uVar);
                return this;
            }

            /* renamed from: a */
            public C9232a m3111a(List<C9314u> list) {
                C4933n.m24790a(!list.isEmpty(), "addrs is empty");
                this.f35786a = Collections.unmodifiableList(new ArrayList(list));
                return this;
            }

            /* renamed from: a */
            public C9231b m3114a() {
                return new C9231b(this.f35786a, this.f35787b, this.f35788c);
            }
        }

        public C9231b(List<C9314u> list, C9210a aVar, Object[][] objArr) {
            C4933n.m24794a(list, "addresses are not set");
            this.f35783a = list;
            C4933n.m24794a(aVar, "attrs");
            this.f35784b = aVar;
            C4933n.m24794a(objArr, "customOptions");
            this.f35785c = objArr;
        }

        /* renamed from: c */
        public static C9232a m3115c() {
            return new C9232a();
        }

        /* renamed from: a */
        public List<C9314u> m3117a() {
            return this.f35783a;
        }

        /* renamed from: b */
        public C9210a m3116b() {
            return this.f35784b;
        }

        public String toString() {
            C4924j.C4926b a = C4924j.m24820a(this);
            a.m24813a("addrs", this.f35783a);
            a.m24813a("attrs", this.f35784b);
            a.m24813a("customOptions", Arrays.deepToString(this.f35785c));
            return a.toString();
        }
    }

    /* renamed from: d.a.f0$c */
    /* loaded from: classes2-dex2jar.jar:d/a/f0$c.class */
    public static abstract class AbstractC9233c {
        /* renamed from: a */
        public abstract AbstractC9229f0 mo2139a(AbstractC9234d dVar);
    }

    /* renamed from: d.a.f0$d */
    /* loaded from: classes2-dex2jar.jar:d/a/f0$d.class */
    public static abstract class AbstractC9234d {
        /* renamed from: a */
        public AbstractC9239h mo370a(C9231b bVar) {
            throw new UnsupportedOperationException();
        }

        /* renamed from: a */
        public ChannelLogger mo371a() {
            throw new UnsupportedOperationException();
        }

        /* renamed from: a */
        public abstract void mo369a(ConnectivityState connectivityState, AbstractC9240i iVar);

        /* renamed from: b */
        public ExecutorC9310t0 mo368b() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: d.a.f0$e */
    /* loaded from: classes2-dex2jar.jar:d/a/f0$e.class */
    public static final class C9235e {

        /* renamed from: e */
        public static final C9235e f35789e = new C9235e(null, null, Status.f37988f, false);

        /* renamed from: a */
        public final AbstractC9239h f35790a;

        /* renamed from: b */
        public final AbstractC9252j.AbstractC9253a f35791b;

        /* renamed from: c */
        public final Status f35792c;

        /* renamed from: d */
        public final boolean f35793d;

        public C9235e(AbstractC9239h hVar, AbstractC9252j.AbstractC9253a aVar, Status status, boolean z) {
            this.f35790a = hVar;
            this.f35791b = aVar;
            C4933n.m24794a(status, "status");
            this.f35792c = status;
            this.f35793d = z;
        }

        /* renamed from: a */
        public static C9235e m3109a(AbstractC9239h hVar) {
            return m3108a(hVar, null);
        }

        /* renamed from: a */
        public static C9235e m3108a(AbstractC9239h hVar, AbstractC9252j.AbstractC9253a aVar) {
            C4933n.m24794a(hVar, "subchannel");
            return new C9235e(hVar, aVar, Status.f37988f, false);
        }

        /* renamed from: a */
        public static C9235e m3107a(Status status) {
            C4933n.m24790a(!status.m602f(), "drop status shouldn't be OK");
            return new C9235e(null, null, status, true);
        }

        /* renamed from: b */
        public static C9235e m3105b(Status status) {
            C4933n.m24790a(!status.m602f(), "error status shouldn't be OK");
            return new C9235e(null, null, status, false);
        }

        /* renamed from: e */
        public static C9235e m3102e() {
            return f35789e;
        }

        /* renamed from: a */
        public Status m3110a() {
            return this.f35792c;
        }

        /* renamed from: b */
        public AbstractC9252j.AbstractC9253a m3106b() {
            return this.f35791b;
        }

        /* renamed from: c */
        public AbstractC9239h m3104c() {
            return this.f35790a;
        }

        /* renamed from: d */
        public boolean m3103d() {
            return this.f35793d;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C9235e)) {
                return false;
            }
            C9235e eVar = (C9235e) obj;
            boolean z = false;
            if (C4928k.m24808a(this.f35790a, eVar.f35790a)) {
                z = false;
                if (C4928k.m24808a(this.f35792c, eVar.f35792c)) {
                    z = false;
                    if (C4928k.m24808a(this.f35791b, eVar.f35791b)) {
                        z = false;
                        if (this.f35793d == eVar.f35793d) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return C4928k.m24807a(this.f35790a, this.f35792c, this.f35791b, Boolean.valueOf(this.f35793d));
        }

        public String toString() {
            C4924j.C4926b a = C4924j.m24820a(this);
            a.m24813a("subchannel", this.f35790a);
            a.m24813a("streamTracerFactory", this.f35791b);
            a.m24813a("status", this.f35792c);
            a.m24812a("drop", this.f35793d);
            return a.toString();
        }
    }

    /* renamed from: d.a.f0$f */
    /* loaded from: classes2-dex2jar.jar:d/a/f0$f.class */
    public static abstract class AbstractC9236f {
        /* renamed from: a */
        public abstract C9222d mo2877a();

        /* renamed from: b */
        public abstract C9260k0 mo2876b();

        /* renamed from: c */
        public abstract MethodDescriptor<?, ?> mo2875c();
    }

    /* renamed from: d.a.f0$g */
    /* loaded from: classes2-dex2jar.jar:d/a/f0$g.class */
    public static final class C9237g {

        /* renamed from: a */
        public final List<C9314u> f35794a;

        /* renamed from: b */
        public final C9210a f35795b;

        /* renamed from: c */
        public final Object f35796c;

        /* renamed from: d.a.f0$g$a */
        /* loaded from: classes2-dex2jar.jar:d/a/f0$g$a.class */
        public static final class C9238a {

            /* renamed from: a */
            public List<C9314u> f35797a;

            /* renamed from: b */
            public C9210a f35798b = C9210a.f35760b;

            /* renamed from: c */
            public Object f35799c;

            /* renamed from: a */
            public C9238a m3096a(C9210a aVar) {
                this.f35798b = aVar;
                return this;
            }

            /* renamed from: a */
            public C9238a m3095a(Object obj) {
                this.f35799c = obj;
                return this;
            }

            /* renamed from: a */
            public C9238a m3094a(List<C9314u> list) {
                this.f35797a = list;
                return this;
            }

            /* renamed from: a */
            public C9237g m3097a() {
                return new C9237g(this.f35797a, this.f35798b, this.f35799c);
            }
        }

        public C9237g(List<C9314u> list, C9210a aVar, Object obj) {
            C4933n.m24794a(list, "addresses");
            this.f35794a = Collections.unmodifiableList(new ArrayList(list));
            C4933n.m24794a(aVar, "attributes");
            this.f35795b = aVar;
            this.f35796c = obj;
        }

        /* renamed from: d */
        public static C9238a m3098d() {
            return new C9238a();
        }

        /* renamed from: a */
        public List<C9314u> m3101a() {
            return this.f35794a;
        }

        /* renamed from: b */
        public C9210a m3100b() {
            return this.f35795b;
        }

        /* renamed from: c */
        public Object m3099c() {
            return this.f35796c;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C9237g)) {
                return false;
            }
            C9237g gVar = (C9237g) obj;
            boolean z = false;
            if (C4928k.m24808a(this.f35794a, gVar.f35794a)) {
                z = false;
                if (C4928k.m24808a(this.f35795b, gVar.f35795b)) {
                    z = false;
                    if (C4928k.m24808a(this.f35796c, gVar.f35796c)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return C4928k.m24807a(this.f35794a, this.f35795b, this.f35796c);
        }

        public String toString() {
            C4924j.C4926b a = C4924j.m24820a(this);
            a.m24813a("addresses", this.f35794a);
            a.m24813a("attributes", this.f35795b);
            a.m24813a("loadBalancingPolicyConfig", this.f35796c);
            return a.toString();
        }
    }

    /* renamed from: d.a.f0$h */
    /* loaded from: classes2-dex2jar.jar:d/a/f0$h.class */
    public static abstract class AbstractC9239h {
        /* renamed from: a */
        public final C9314u m3093a() {
            List<C9314u> b = mo354b();
            boolean z = true;
            if (b.size() != 1) {
                z = false;
            }
            C4933n.m24772b(z, "%s does not have exactly one group", b);
            return b.get(0);
        }

        /* renamed from: a */
        public void mo357a(AbstractC9241j jVar) {
            throw new UnsupportedOperationException("Not implemented");
        }

        /* renamed from: a */
        public void mo355a(List<C9314u> list) {
            throw new UnsupportedOperationException();
        }

        /* renamed from: b */
        public List<C9314u> mo354b() {
            throw new UnsupportedOperationException();
        }

        /* renamed from: c */
        public abstract C9210a mo352c();

        /* renamed from: d */
        public Object mo351d() {
            throw new UnsupportedOperationException();
        }

        /* renamed from: e */
        public abstract void mo350e();

        /* renamed from: f */
        public abstract void mo349f();
    }

    /* renamed from: d.a.f0$i */
    /* loaded from: classes2-dex2jar.jar:d/a/f0$i.class */
    public static abstract class AbstractC9240i {
        /* renamed from: a */
        public abstract C9235e mo385a(AbstractC9236f fVar);
    }

    /* renamed from: d.a.f0$j */
    /* loaded from: classes2-dex2jar.jar:d/a/f0$j.class */
    public interface AbstractC9241j {
        /* renamed from: a */
        void mo2143a(C9287n nVar);
    }

    /* renamed from: a */
    public abstract void mo584a(C9237g gVar);

    /* renamed from: a */
    public abstract void mo583a(Status status);

    /* renamed from: a */
    public boolean m3118a() {
        return false;
    }

    /* renamed from: b */
    public abstract void mo582b();
}
