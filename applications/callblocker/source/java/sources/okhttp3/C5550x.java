package okhttp3;

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
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.AbstractC5415e;
import okhttp3.AbstractC5532p;
import okhttp3.C5404ac;
import okhttp3.C5539s;
import okhttp3.internal.AbstractC5424a;
import okhttp3.internal.C5449c;
import okhttp3.internal.connection.C5462c;
import okhttp3.internal.connection.C5463d;
import okhttp3.internal.connection.C5466f;
import okhttp3.internal.p192a.AbstractC5433e;
import okhttp3.internal.p196e.C5480f;
import okhttp3.internal.p197f.AbstractC5483c;
import okhttp3.internal.p197f.C5484d;
/* renamed from: okhttp3.x */
/* loaded from: classes-dex2jar.jar:okhttp3/x.class */
public class C5550x implements Cloneable, AbstractC5415e.AbstractC5416a {

    /* renamed from: a */
    static final List<EnumC5553y> f23176a = C5449c.m655a(EnumC5553y.HTTP_2, EnumC5553y.HTTP_1_1);

    /* renamed from: b */
    static final List<C5524k> f23177b = C5449c.m655a(C5524k.f23080a, C5524k.f23082c);

    /* renamed from: A */
    final int f23178A;

    /* renamed from: B */
    final int f23179B;

    /* renamed from: C */
    final int f23180C;

    /* renamed from: c */
    final C5529n f23181c;
    @Nullable

    /* renamed from: d */
    final Proxy f23182d;

    /* renamed from: e */
    final List<EnumC5553y> f23183e;

    /* renamed from: f */
    final List<C5524k> f23184f;

    /* renamed from: g */
    final List<AbstractC5544u> f23185g;

    /* renamed from: h */
    final List<AbstractC5544u> f23186h;

    /* renamed from: i */
    final AbstractC5532p.AbstractC5535a f23187i;

    /* renamed from: j */
    final ProxySelector f23188j;

    /* renamed from: k */
    final AbstractC5527m f23189k;
    @Nullable

    /* renamed from: l */
    final C5412c f23190l;
    @Nullable

    /* renamed from: m */
    final AbstractC5433e f23191m;

    /* renamed from: n */
    final SocketFactory f23192n;
    @Nullable

    /* renamed from: o */
    final SSLSocketFactory f23193o;
    @Nullable

    /* renamed from: p */
    final AbstractC5483c f23194p;

    /* renamed from: q */
    final HostnameVerifier f23195q;

    /* renamed from: r */
    final C5418g f23196r;

    /* renamed from: s */
    final AbstractC5410b f23197s;

    /* renamed from: t */
    final AbstractC5410b f23198t;

    /* renamed from: u */
    final C5522j f23199u;

    /* renamed from: v */
    final AbstractC5530o f23200v;

    /* renamed from: w */
    final boolean f23201w;

    /* renamed from: x */
    final boolean f23202x;

    /* renamed from: y */
    final boolean f23203y;

    /* renamed from: z */
    final int f23204z;

    /* renamed from: okhttp3.x$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/x$a.class */
    public static final class C5552a {
        @Nullable

        /* renamed from: b */
        Proxy f23207b;
        @Nullable

        /* renamed from: j */
        C5412c f23215j;
        @Nullable

        /* renamed from: k */
        AbstractC5433e f23216k;
        @Nullable

        /* renamed from: m */
        SSLSocketFactory f23218m;
        @Nullable

        /* renamed from: n */
        AbstractC5483c f23219n;

        /* renamed from: e */
        final List<AbstractC5544u> f23210e = new ArrayList();

        /* renamed from: f */
        final List<AbstractC5544u> f23211f = new ArrayList();

        /* renamed from: a */
        C5529n f23206a = new C5529n();

        /* renamed from: c */
        List<EnumC5553y> f23208c = C5550x.f23176a;

        /* renamed from: d */
        List<C5524k> f23209d = C5550x.f23177b;

        /* renamed from: g */
        AbstractC5532p.AbstractC5535a f23212g = AbstractC5532p.m301a(AbstractC5532p.f23114a);

        /* renamed from: h */
        ProxySelector f23213h = ProxySelector.getDefault();

        /* renamed from: i */
        AbstractC5527m f23214i = AbstractC5527m.f23105a;

        /* renamed from: l */
        SocketFactory f23217l = SocketFactory.getDefault();

        /* renamed from: o */
        HostnameVerifier f23220o = C5484d.f22880a;

        /* renamed from: p */
        C5418g f23221p = C5418g.f22555a;

        /* renamed from: q */
        AbstractC5410b f23222q = AbstractC5410b.f22529a;

        /* renamed from: r */
        AbstractC5410b f23223r = AbstractC5410b.f22529a;

        /* renamed from: s */
        C5522j f23224s = new C5522j();

        /* renamed from: t */
        AbstractC5530o f23225t = AbstractC5530o.f23113a;

        /* renamed from: u */
        boolean f23226u = true;

        /* renamed from: v */
        boolean f23227v = true;

        /* renamed from: w */
        boolean f23228w = true;

        /* renamed from: x */
        int f23229x = 10000;

        /* renamed from: y */
        int f23230y = 10000;

        /* renamed from: z */
        int f23231z = 10000;

        /* renamed from: A */
        int f23205A = 0;

        /* renamed from: a */
        public C5552a m162a(long j, TimeUnit timeUnit) {
            this.f23229x = C5449c.m665a("timeout", j, timeUnit);
            return this;
        }

        /* renamed from: a */
        public C5552a m161a(@Nullable C5412c c5412c) {
            this.f23215j = c5412c;
            this.f23216k = null;
            return this;
        }

        /* renamed from: a */
        public C5550x m163a() {
            return new C5550x(this);
        }

        /* renamed from: b */
        public C5552a m160b(long j, TimeUnit timeUnit) {
            this.f23230y = C5449c.m665a("timeout", j, timeUnit);
            return this;
        }

        /* renamed from: c */
        public C5552a m159c(long j, TimeUnit timeUnit) {
            this.f23231z = C5449c.m665a("timeout", j, timeUnit);
            return this;
        }
    }

    static {
        AbstractC5424a.f22678a = new AbstractC5424a() { // from class: okhttp3.x.1
            @Override // okhttp3.internal.AbstractC5424a
            /* renamed from: a */
            public int mo172a(C5404ac.C5405a c5405a) {
                return c5405a.f22506c;
            }

            @Override // okhttp3.internal.AbstractC5424a
            /* renamed from: a */
            public Socket mo170a(C5522j c5522j, C5399a c5399a, C5466f c5466f) {
                return c5522j.m354a(c5399a, c5466f);
            }

            @Override // okhttp3.internal.AbstractC5424a
            /* renamed from: a */
            public C5462c mo169a(C5522j c5522j, C5399a c5399a, C5466f c5466f, C5408ae c5408ae) {
                return c5522j.m353a(c5399a, c5466f, c5408ae);
            }

            @Override // okhttp3.internal.AbstractC5424a
            /* renamed from: a */
            public C5463d mo171a(C5522j c5522j) {
                return c5522j.f23073a;
            }

            @Override // okhttp3.internal.AbstractC5424a
            /* renamed from: a */
            public void mo167a(C5524k c5524k, SSLSocket sSLSocket, boolean z) {
                c5524k.m347a(sSLSocket, z);
            }

            @Override // okhttp3.internal.AbstractC5424a
            /* renamed from: a */
            public void mo166a(C5539s.C5540a c5540a, String str) {
                c5540a.m275a(str);
            }

            @Override // okhttp3.internal.AbstractC5424a
            /* renamed from: a */
            public void mo165a(C5539s.C5540a c5540a, String str, String str2) {
                c5540a.m272b(str, str2);
            }

            @Override // okhttp3.internal.AbstractC5424a
            /* renamed from: a */
            public boolean mo173a(C5399a c5399a, C5399a c5399a2) {
                return c5399a.m838a(c5399a2);
            }

            @Override // okhttp3.internal.AbstractC5424a
            /* renamed from: a */
            public boolean mo168a(C5522j c5522j, C5462c c5462c) {
                return c5522j.m350b(c5462c);
            }

            @Override // okhttp3.internal.AbstractC5424a
            /* renamed from: b */
            public void mo164b(C5522j c5522j, C5462c c5462c) {
                c5522j.m352a(c5462c);
            }
        };
    }

    public C5550x() {
        this(new C5552a());
    }

    C5550x(C5552a c5552a) {
        boolean z;
        this.f23181c = c5552a.f23206a;
        this.f23182d = c5552a.f23207b;
        this.f23183e = c5552a.f23208c;
        this.f23184f = c5552a.f23209d;
        this.f23185g = C5449c.m658a(c5552a.f23210e);
        this.f23186h = C5449c.m658a(c5552a.f23211f);
        this.f23187i = c5552a.f23212g;
        this.f23188j = c5552a.f23213h;
        this.f23189k = c5552a.f23214i;
        this.f23190l = c5552a.f23215j;
        this.f23191m = c5552a.f23216k;
        this.f23192n = c5552a.f23217l;
        Iterator<C5524k> it = this.f23184f.iterator();
        boolean z2 = false;
        while (true) {
            z = z2;
            if (!it.hasNext()) {
                break;
            }
            z2 = z || it.next().m349a();
        }
        if (c5552a.f23218m != null || !z) {
            this.f23193o = c5552a.f23218m;
            this.f23194p = c5552a.f23219n;
        } else {
            X509TrustManager m174z = m174z();
            this.f23193o = m200a(m174z);
            this.f23194p = AbstractC5483c.m537a(m174z);
        }
        this.f23195q = c5552a.f23220o;
        this.f23196r = c5552a.f23221p.m750a(this.f23194p);
        this.f23197s = c5552a.f23222q;
        this.f23198t = c5552a.f23223r;
        this.f23199u = c5552a.f23224s;
        this.f23200v = c5552a.f23225t;
        this.f23201w = c5552a.f23226u;
        this.f23202x = c5552a.f23227v;
        this.f23203y = c5552a.f23228w;
        this.f23204z = c5552a.f23229x;
        this.f23178A = c5552a.f23230y;
        this.f23179B = c5552a.f23231z;
        this.f23180C = c5552a.f23205A;
        if (this.f23185g.contains(null)) {
            throw new IllegalStateException("Null interceptor: " + this.f23185g);
        }
        if (!this.f23186h.contains(null)) {
            return;
        }
        throw new IllegalStateException("Null network interceptor: " + this.f23186h);
    }

    /* renamed from: a */
    private SSLSocketFactory m200a(X509TrustManager x509TrustManager) {
        try {
            SSLContext mo555K_ = C5480f.m541c().mo555K_();
            mo555K_.init(null, new TrustManager[]{x509TrustManager}, null);
            return mo555K_.getSocketFactory();
        } catch (GeneralSecurityException e) {
            throw C5449c.m664a("No System TLS", (Exception) e);
        }
    }

    /* renamed from: z */
    private X509TrustManager m174z() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager)) {
                return (X509TrustManager) trustManagers[0];
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e) {
            throw C5449c.m664a("No System TLS", (Exception) e);
        }
    }

    /* renamed from: a */
    public int m201a() {
        return this.f23204z;
    }

    @Override // okhttp3.AbstractC5415e.AbstractC5416a
    /* renamed from: a */
    public AbstractC5415e mo199a(C5400aa c5400aa) {
        return C5554z.m155a(this, c5400aa, false);
    }

    /* renamed from: b */
    public int m198b() {
        return this.f23178A;
    }

    /* renamed from: c */
    public int m197c() {
        return this.f23179B;
    }

    /* renamed from: d */
    public int m196d() {
        return this.f23180C;
    }

    /* renamed from: e */
    public Proxy m195e() {
        return this.f23182d;
    }

    /* renamed from: f */
    public ProxySelector m194f() {
        return this.f23188j;
    }

    /* renamed from: g */
    public AbstractC5527m m193g() {
        return this.f23189k;
    }

    /* renamed from: h */
    public AbstractC5433e m192h() {
        return this.f23190l != null ? this.f23190l.f22530a : this.f23191m;
    }

    /* renamed from: i */
    public AbstractC5530o m191i() {
        return this.f23200v;
    }

    /* renamed from: j */
    public SocketFactory m190j() {
        return this.f23192n;
    }

    /* renamed from: k */
    public SSLSocketFactory m189k() {
        return this.f23193o;
    }

    /* renamed from: l */
    public HostnameVerifier m188l() {
        return this.f23195q;
    }

    /* renamed from: m */
    public C5418g m187m() {
        return this.f23196r;
    }

    /* renamed from: n */
    public AbstractC5410b m186n() {
        return this.f23198t;
    }

    /* renamed from: o */
    public AbstractC5410b m185o() {
        return this.f23197s;
    }

    /* renamed from: p */
    public C5522j m184p() {
        return this.f23199u;
    }

    /* renamed from: q */
    public boolean m183q() {
        return this.f23201w;
    }

    /* renamed from: r */
    public boolean m182r() {
        return this.f23202x;
    }

    /* renamed from: s */
    public boolean m181s() {
        return this.f23203y;
    }

    /* renamed from: t */
    public C5529n m180t() {
        return this.f23181c;
    }

    /* renamed from: u */
    public List<EnumC5553y> m179u() {
        return this.f23183e;
    }

    /* renamed from: v */
    public List<C5524k> m178v() {
        return this.f23184f;
    }

    /* renamed from: w */
    public List<AbstractC5544u> m177w() {
        return this.f23185g;
    }

    /* renamed from: x */
    public List<AbstractC5544u> m176x() {
        return this.f23186h;
    }

    /* renamed from: y */
    public AbstractC5532p.AbstractC5535a m175y() {
        return this.f23187i;
    }
}
