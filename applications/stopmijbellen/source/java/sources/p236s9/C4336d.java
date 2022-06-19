package p236s9;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import p086f.C2678t;
import p204p9.AbstractC4097e;
import p204p9.AbstractC4116o;
import p204p9.C4080a;
import p204p9.C4099e0;
import p204p9.C4123s;
import p214q9.C4171c;
/* renamed from: s9.d */
/* loaded from: classes2-dex2jar.jar:s9/d.class */
public final class C4336d {

    /* renamed from: a */
    public final C4080a f13499a;

    /* renamed from: b */
    public final C2678t f13500b;

    /* renamed from: c */
    public final AbstractC4116o f13501c;

    /* renamed from: d */
    public List<Proxy> f13502d;

    /* renamed from: e */
    public int f13503e;

    /* renamed from: f */
    public List<InetSocketAddress> f13504f = Collections.emptyList();

    /* renamed from: g */
    public final List<C4099e0> f13505g = new ArrayList();

    /* renamed from: s9.d$a */
    /* loaded from: classes2-dex2jar.jar:s9/d$a.class */
    public static final class C4337a {

        /* renamed from: a */
        public final List<C4099e0> f13506a;

        /* renamed from: b */
        public int f13507b = 0;

        public C4337a(List<C4099e0> list) {
            this.f13506a = list;
        }

        /* renamed from: a */
        public boolean m1081a() {
            return this.f13507b < this.f13506a.size();
        }
    }

    public C4336d(C4080a c4080a, C2678t c2678t, AbstractC4097e abstractC4097e, AbstractC4116o abstractC4116o) {
        this.f13502d = Collections.emptyList();
        this.f13499a = c4080a;
        this.f13500b = c2678t;
        this.f13501c = abstractC4116o;
        C4123s c4123s = c4080a.f12785a;
        Proxy proxy = c4080a.f12792h;
        if (proxy != null) {
            this.f13502d = Collections.singletonList(proxy);
        } else {
            List<Proxy> select = c4080a.f12791g.select(c4123s.m1376p());
            this.f13502d = (select == null || select.isEmpty()) ? C4171c.m1321o(Proxy.NO_PROXY) : C4171c.m1322n(select);
        }
        this.f13503e = 0;
    }

    /* renamed from: a */
    public void m1084a(C4099e0 c4099e0, IOException iOException) {
        C4080a c4080a;
        ProxySelector proxySelector;
        if (c4099e0.f12876b.type() != Proxy.Type.DIRECT && (proxySelector = (c4080a = this.f13499a).f12791g) != null) {
            proxySelector.connectFailed(c4080a.f12785a.m1376p(), c4099e0.f12876b.address(), iOException);
        }
        C2678t c2678t = this.f13500b;
        synchronized (c2678t) {
            ((Set) c2678t.f9203a).add(c4099e0);
        }
    }

    /* renamed from: b */
    public boolean m1083b() {
        return m1082c() || !this.f13505g.isEmpty();
    }

    /* renamed from: c */
    public final boolean m1082c() {
        return this.f13503e < this.f13502d.size();
    }
}
