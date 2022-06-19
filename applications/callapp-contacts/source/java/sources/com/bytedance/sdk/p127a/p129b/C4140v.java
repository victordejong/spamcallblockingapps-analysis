package com.bytedance.sdk.p127a.p129b;

import com.bytedance.sdk.p127a.p129b.AbstractC4127p;
import com.bytedance.sdk.p127a.p129b.C4098aa;
import com.bytedance.sdk.p127a.p129b.C4132r;
import com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.p131a.AbstractC4004e;
import com.bytedance.sdk.p127a.p129b.p130a.p132b.C4008c;
import com.bytedance.sdk.p127a.p129b.p130a.p132b.C4009d;
import com.bytedance.sdk.p127a.p129b.p130a.p132b.C4013g;
import com.bytedance.sdk.p127a.p129b.p130a.p139i.AbstractC4094c;
import com.bytedance.sdk.p127a.p129b.p130a.p139i.C4096e;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
/* renamed from: com.bytedance.sdk.a.b.v */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/v.class */
public class C4140v implements Cloneable {

    /* renamed from: a */
    static final List<EnumC4143w> f15144a = C4015c.m36897a(EnumC4143w.HTTP_2, EnumC4143w.HTTP_1_1);

    /* renamed from: b */
    static final List<C4119k> f15145b = C4015c.m36897a(C4119k.f15072a, C4119k.f15074c);

    /* renamed from: A */
    final int f15146A;

    /* renamed from: B */
    final int f15147B;

    /* renamed from: C */
    final int f15148C;

    /* renamed from: c */
    final C4124n f15149c;

    /* renamed from: d */
    final Proxy f15150d;

    /* renamed from: e */
    final List<EnumC4143w> f15151e;

    /* renamed from: f */
    final List<C4119k> f15152f;

    /* renamed from: g */
    final List<AbstractC4137t> f15153g;

    /* renamed from: h */
    final List<AbstractC4137t> f15154h;

    /* renamed from: i */
    final AbstractC4127p.AbstractC4130a f15155i;

    /* renamed from: j */
    final ProxySelector f15156j;

    /* renamed from: k */
    final AbstractC4122m f15157k;

    /* renamed from: l */
    final C4106c f15158l;

    /* renamed from: m */
    final AbstractC4004e f15159m;

    /* renamed from: n */
    final SocketFactory f15160n;

    /* renamed from: o */
    final SSLSocketFactory f15161o;

    /* renamed from: p */
    final AbstractC4094c f15162p;

    /* renamed from: q */
    final HostnameVerifier f15163q;

    /* renamed from: r */
    final C4111g f15164r;

    /* renamed from: s */
    final AbstractC4104b f15165s;

    /* renamed from: t */
    final AbstractC4104b f15166t;

    /* renamed from: u */
    final C4117j f15167u;

    /* renamed from: v */
    final AbstractC4125o f15168v;

    /* renamed from: w */
    final boolean f15169w;

    /* renamed from: x */
    final boolean f15170x;

    /* renamed from: y */
    final boolean f15171y;

    /* renamed from: z */
    final int f15172z;

    /* renamed from: com.bytedance.sdk.a.b.v$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/v$a.class */
    public static final class C4142a {

        /* renamed from: A */
        int f15173A;

        /* renamed from: a */
        C4124n f15174a;

        /* renamed from: b */
        Proxy f15175b;

        /* renamed from: c */
        List<EnumC4143w> f15176c;

        /* renamed from: d */
        List<C4119k> f15177d;

        /* renamed from: e */
        final List<AbstractC4137t> f15178e;

        /* renamed from: f */
        final List<AbstractC4137t> f15179f;

        /* renamed from: g */
        AbstractC4127p.AbstractC4130a f15180g;

        /* renamed from: h */
        ProxySelector f15181h;

        /* renamed from: i */
        AbstractC4122m f15182i;

        /* renamed from: j */
        C4106c f15183j;

        /* renamed from: k */
        AbstractC4004e f15184k;

        /* renamed from: l */
        SocketFactory f15185l;

        /* renamed from: m */
        SSLSocketFactory f15186m;

        /* renamed from: n */
        AbstractC4094c f15187n;

        /* renamed from: o */
        HostnameVerifier f15188o;

        /* renamed from: p */
        C4111g f15189p;

        /* renamed from: q */
        AbstractC4104b f15190q;

        /* renamed from: r */
        AbstractC4104b f15191r;

        /* renamed from: s */
        C4117j f15192s;

        /* renamed from: t */
        AbstractC4125o f15193t;

        /* renamed from: u */
        boolean f15194u;

        /* renamed from: v */
        boolean f15195v;

        /* renamed from: w */
        boolean f15196w;

        /* renamed from: x */
        int f15197x;

        /* renamed from: y */
        int f15198y;

        /* renamed from: z */
        int f15199z;

        public C4142a() {
            this.f15178e = new ArrayList();
            this.f15179f = new ArrayList();
            this.f15174a = new C4124n();
            this.f15176c = C4140v.f15144a;
            this.f15177d = C4140v.f15145b;
            this.f15180g = AbstractC4127p.m36484a(AbstractC4127p.f15106a);
            this.f15181h = ProxySelector.getDefault();
            this.f15182i = AbstractC4122m.f15097a;
            this.f15185l = SocketFactory.getDefault();
            this.f15188o = C4096e.f14875a;
            this.f15189p = C4111g.f14940a;
            this.f15190q = AbstractC4104b.f14914a;
            this.f15191r = AbstractC4104b.f14914a;
            this.f15192s = new C4117j();
            this.f15193t = AbstractC4125o.f15105a;
            this.f15194u = true;
            this.f15195v = true;
            this.f15196w = true;
            this.f15197x = 10000;
            this.f15198y = 10000;
            this.f15199z = 10000;
            this.f15173A = 0;
        }

        C4142a(C4140v c4140v) {
            ArrayList arrayList = new ArrayList();
            this.f15178e = arrayList;
            ArrayList arrayList2 = new ArrayList();
            this.f15179f = arrayList2;
            this.f15174a = c4140v.f15149c;
            this.f15175b = c4140v.f15150d;
            this.f15176c = c4140v.f15151e;
            this.f15177d = c4140v.f15152f;
            arrayList.addAll(c4140v.f15153g);
            arrayList2.addAll(c4140v.f15154h);
            this.f15180g = c4140v.f15155i;
            this.f15181h = c4140v.f15156j;
            this.f15182i = c4140v.f15157k;
            this.f15184k = c4140v.f15159m;
            this.f15183j = c4140v.f15158l;
            this.f15185l = c4140v.f15160n;
            this.f15186m = c4140v.f15161o;
            this.f15187n = c4140v.f15162p;
            this.f15188o = c4140v.f15163q;
            this.f15189p = c4140v.f15164r;
            this.f15190q = c4140v.f15165s;
            this.f15191r = c4140v.f15166t;
            this.f15192s = c4140v.f15167u;
            this.f15193t = c4140v.f15168v;
            this.f15194u = c4140v.f15169w;
            this.f15195v = c4140v.f15170x;
            this.f15196w = c4140v.f15171y;
            this.f15197x = c4140v.f15172z;
            this.f15198y = c4140v.f15146A;
            this.f15199z = c4140v.f15147B;
            this.f15173A = c4140v.f15148C;
        }

        /* renamed from: a */
        public final C4142a m36358a(long j, TimeUnit timeUnit) {
            this.f15197x = C4015c.m36906a("timeout", j, timeUnit);
            return this;
        }

        /* renamed from: a */
        public final C4142a m36357a(boolean z) {
            this.f15194u = z;
            return this;
        }

        /* renamed from: a */
        public final C4140v m36359a() {
            return new C4140v(this);
        }

        /* renamed from: b */
        public final C4142a m36356b(long j, TimeUnit timeUnit) {
            this.f15198y = C4015c.m36906a("timeout", j, timeUnit);
            return this;
        }

        /* renamed from: b */
        public final C4142a m36355b(boolean z) {
            this.f15195v = z;
            return this;
        }

        /* renamed from: c */
        public final C4142a m36354c(long j, TimeUnit timeUnit) {
            this.f15199z = C4015c.m36906a("timeout", j, timeUnit);
            return this;
        }
    }

    static {
        AbstractC3995a.f14478a = new AbstractC3995a() { // from class: com.bytedance.sdk.a.b.v.1
            @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a
            /* renamed from: a */
            public final int mo36368a(C4098aa.C4099a c4099a) {
                return c4099a.f14891c;
            }

            @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a
            /* renamed from: a */
            public final C4008c mo36364a(C4117j c4117j, C3994a c3994a, C4013g c4013g, C4102ac c4102ac) {
                return c4117j.m36533a(c3994a, c4013g, c4102ac);
            }

            @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a
            /* renamed from: a */
            public final C4009d mo36367a(C4117j c4117j) {
                return c4117j.f15065a;
            }

            @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a
            /* renamed from: a */
            public final Socket mo36365a(C4117j c4117j, C3994a c3994a, C4013g c4013g) {
                return c4117j.m36534a(c3994a, c4013g);
            }

            @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a
            /* renamed from: a */
            public final void mo36363a(C4119k c4119k, SSLSocket sSLSocket, boolean z) {
                c4119k.m36529a(sSLSocket, z);
            }

            @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a
            /* renamed from: a */
            public final void mo36362a(C4132r.C4133a c4133a, String str) {
                c4133a.m36462a(str);
            }

            @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a
            /* renamed from: a */
            public final void mo36361a(C4132r.C4133a c4133a, String str, String str2) {
                c4133a.m36459b(str, str2);
            }

            @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a
            /* renamed from: a */
            public final boolean mo36369a(C3994a c3994a, C3994a c3994a2) {
                return c3994a.m37008a(c3994a2);
            }

            @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a
            /* renamed from: a */
            public final boolean mo36366a(C4117j c4117j, C4008c c4008c) {
                return c4117j.m36532b(c4008c);
            }

            @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a
            /* renamed from: b */
            public final void mo36360b(C4117j c4117j, C4008c c4008c) {
                c4117j.m36536a(c4008c);
            }
        };
    }

    public C4140v() {
        this(new C4142a());
    }

    C4140v(C4142a c4142a) {
        boolean z;
        this.f15149c = c4142a.f15174a;
        this.f15150d = c4142a.f15175b;
        this.f15151e = c4142a.f15176c;
        List<C4119k> list = c4142a.f15177d;
        this.f15152f = list;
        this.f15153g = C4015c.m36899a(c4142a.f15178e);
        this.f15154h = C4015c.m36899a(c4142a.f15179f);
        this.f15155i = c4142a.f15180g;
        this.f15156j = c4142a.f15181h;
        this.f15157k = c4142a.f15182i;
        this.f15158l = c4142a.f15183j;
        this.f15159m = c4142a.f15184k;
        this.f15160n = c4142a.f15185l;
        Iterator<C4119k> it2 = list.iterator();
        loop0: while (true) {
            boolean z2 = false;
            while (true) {
                z = z2;
                if (!it2.hasNext()) {
                    break loop0;
                }
                z2 = (z || it2.next().m36531a()) ? true : z2;
            }
        }
        if (c4142a.f15186m != null || !z) {
            this.f15161o = c4142a.f15186m;
            this.f15162p = c4142a.f15187n;
        } else {
            X509TrustManager m36370z = m36370z();
            this.f15161o = m36395a(m36370z);
            this.f15162p = AbstractC4094c.m36630a(m36370z);
        }
        this.f15163q = c4142a.f15188o;
        this.f15164r = c4142a.f15189p.m36550a(this.f15162p);
        this.f15165s = c4142a.f15190q;
        this.f15166t = c4142a.f15191r;
        this.f15167u = c4142a.f15192s;
        this.f15168v = c4142a.f15193t;
        this.f15169w = c4142a.f15194u;
        this.f15170x = c4142a.f15195v;
        this.f15171y = c4142a.f15196w;
        this.f15172z = c4142a.f15197x;
        this.f15146A = c4142a.f15198y;
        this.f15147B = c4142a.f15199z;
        this.f15148C = c4142a.f15173A;
        if (this.f15153g.contains(null)) {
            throw new IllegalStateException("Null interceptor: " + this.f15153g);
        } else if (!this.f15154h.contains(null)) {
        } else {
            throw new IllegalStateException("Null network interceptor: " + this.f15154h);
        }
    }

    /* renamed from: a */
    private SSLSocketFactory m36395a(X509TrustManager x509TrustManager) {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContext.getSocketFactory();
        } catch (GeneralSecurityException e) {
            throw C4015c.m36905a("No System TLS", (Exception) e);
        }
    }

    /* renamed from: z */
    private X509TrustManager m36370z() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager)) {
                return (X509TrustManager) trustManagers[0];
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e) {
            throw C4015c.m36905a("No System TLS", (Exception) e);
        }
    }

    /* renamed from: a */
    public int m36397a() {
        return this.f15172z;
    }

    /* renamed from: a */
    public AbstractC4109e m36396a(C4146y c4146y) {
        return C4144x.m36351a(this, c4146y, false);
    }

    /* renamed from: b */
    public int m36394b() {
        return this.f15146A;
    }

    /* renamed from: c */
    public int m36393c() {
        return this.f15147B;
    }

    /* renamed from: d */
    public Proxy m36392d() {
        return this.f15150d;
    }

    /* renamed from: e */
    public ProxySelector m36391e() {
        return this.f15156j;
    }

    /* renamed from: f */
    public AbstractC4122m m36390f() {
        return this.f15157k;
    }

    /* renamed from: g */
    public AbstractC4004e m36389g() {
        C4106c c4106c = this.f15158l;
        return c4106c != null ? c4106c.f14915a : this.f15159m;
    }

    /* renamed from: h */
    public AbstractC4125o m36388h() {
        return this.f15168v;
    }

    /* renamed from: i */
    public SocketFactory m36387i() {
        return this.f15160n;
    }

    /* renamed from: j */
    public SSLSocketFactory m36386j() {
        return this.f15161o;
    }

    /* renamed from: k */
    public HostnameVerifier m36385k() {
        return this.f15163q;
    }

    /* renamed from: l */
    public C4111g m36384l() {
        return this.f15164r;
    }

    /* renamed from: m */
    public AbstractC4104b m36383m() {
        return this.f15166t;
    }

    /* renamed from: n */
    public AbstractC4104b m36382n() {
        return this.f15165s;
    }

    /* renamed from: o */
    public C4117j m36381o() {
        return this.f15167u;
    }

    /* renamed from: p */
    public boolean m36380p() {
        return this.f15169w;
    }

    /* renamed from: q */
    public boolean m36379q() {
        return this.f15170x;
    }

    /* renamed from: r */
    public boolean m36378r() {
        return this.f15171y;
    }

    /* renamed from: s */
    public C4124n m36377s() {
        return this.f15149c;
    }

    /* renamed from: t */
    public List<EnumC4143w> m36376t() {
        return this.f15151e;
    }

    /* renamed from: u */
    public List<C4119k> m36375u() {
        return this.f15152f;
    }

    /* renamed from: v */
    public List<AbstractC4137t> m36374v() {
        return this.f15153g;
    }

    /* renamed from: w */
    public List<AbstractC4137t> m36373w() {
        return this.f15154h;
    }

    /* renamed from: x */
    public AbstractC4127p.AbstractC4130a m36372x() {
        return this.f15155i;
    }

    /* renamed from: y */
    public C4142a m36371y() {
        return new C4142a(this);
    }
}
