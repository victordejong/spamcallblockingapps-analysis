package okhttp3;

import io.fabric.sdk.android.services.p068b.AbstractC1468a;
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
import okhttp3.AbstractC2082p;
import okhttp3.C1955ab;
import okhttp3.C2087r;
import okhttp3.internal.AbstractC1974a;
import okhttp3.internal.C1999c;
import okhttp3.internal.connection.C2012c;
import okhttp3.internal.connection.C2013d;
import okhttp3.internal.connection.C2016f;
import okhttp3.internal.p091a.AbstractC1983e;
import okhttp3.internal.p095e.C2030f;
import okhttp3.internal.p096f.AbstractC2033c;
import okhttp3.internal.p096f.C2034d;
/* renamed from: okhttp3.w */
/* loaded from: classes-dex2jar.jar:okhttp3/w.class */
public class C2098w implements Cloneable {

    /* renamed from: a */
    static final List<EnumC2101x> f5396a = C1999c.m2335a(EnumC2101x.HTTP_2, EnumC2101x.HTTP_1_1);

    /* renamed from: b */
    static final List<C2074k> f5397b = C1999c.m2335a(C2074k.f5306a, C2074k.f5308c);

    /* renamed from: A */
    final int f5398A;

    /* renamed from: B */
    final int f5399B;

    /* renamed from: C */
    final int f5400C;

    /* renamed from: c */
    final C2079n f5401c;
    @Nullable

    /* renamed from: d */
    final Proxy f5402d;

    /* renamed from: e */
    final List<EnumC2101x> f5403e;

    /* renamed from: f */
    final List<C2074k> f5404f;

    /* renamed from: g */
    final List<AbstractC2092t> f5405g;

    /* renamed from: h */
    final List<AbstractC2092t> f5406h;

    /* renamed from: i */
    final AbstractC2082p.AbstractC2085a f5407i;

    /* renamed from: j */
    final ProxySelector f5408j;

    /* renamed from: k */
    final AbstractC2077m f5409k;
    @Nullable

    /* renamed from: l */
    final C1963c f5410l;
    @Nullable

    /* renamed from: m */
    final AbstractC1983e f5411m;

    /* renamed from: n */
    final SocketFactory f5412n;
    @Nullable

    /* renamed from: o */
    final SSLSocketFactory f5413o;
    @Nullable

    /* renamed from: p */
    final AbstractC2033c f5414p;

    /* renamed from: q */
    final HostnameVerifier f5415q;

    /* renamed from: r */
    final C1968g f5416r;

    /* renamed from: s */
    final AbstractC1961b f5417s;

    /* renamed from: t */
    final AbstractC1961b f5418t;

    /* renamed from: u */
    final C2072j f5419u;

    /* renamed from: v */
    final AbstractC2080o f5420v;

    /* renamed from: w */
    final boolean f5421w;

    /* renamed from: x */
    final boolean f5422x;

    /* renamed from: y */
    final boolean f5423y;

    /* renamed from: z */
    final int f5424z;

    /* renamed from: okhttp3.w$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/w$a.class */
    public static final class C2100a {
        @Nullable

        /* renamed from: b */
        Proxy f5427b;
        @Nullable

        /* renamed from: j */
        C1963c f5435j;
        @Nullable

        /* renamed from: k */
        AbstractC1983e f5436k;
        @Nullable

        /* renamed from: m */
        SSLSocketFactory f5438m;
        @Nullable

        /* renamed from: n */
        AbstractC2033c f5439n;

        /* renamed from: e */
        final List<AbstractC2092t> f5430e = new ArrayList();

        /* renamed from: f */
        final List<AbstractC2092t> f5431f = new ArrayList();

        /* renamed from: a */
        C2079n f5426a = new C2079n();

        /* renamed from: c */
        List<EnumC2101x> f5428c = C2098w.f5396a;

        /* renamed from: d */
        List<C2074k> f5429d = C2098w.f5397b;

        /* renamed from: g */
        AbstractC2082p.AbstractC2085a f5432g = AbstractC2082p.m1983a(AbstractC2082p.f5340a);

        /* renamed from: h */
        ProxySelector f5433h = ProxySelector.getDefault();

        /* renamed from: i */
        AbstractC2077m f5434i = AbstractC2077m.f5331a;

        /* renamed from: l */
        SocketFactory f5437l = SocketFactory.getDefault();

        /* renamed from: o */
        HostnameVerifier f5440o = C2034d.f5106a;

        /* renamed from: p */
        C1968g f5441p = C1968g.f4781a;

        /* renamed from: q */
        AbstractC1961b f5442q = AbstractC1961b.f4755a;

        /* renamed from: r */
        AbstractC1961b f5443r = AbstractC1961b.f4755a;

        /* renamed from: s */
        C2072j f5444s = new C2072j();

        /* renamed from: t */
        AbstractC2080o f5445t = AbstractC2080o.f5339a;

        /* renamed from: u */
        boolean f5446u = true;

        /* renamed from: v */
        boolean f5447v = true;

        /* renamed from: w */
        boolean f5448w = true;

        /* renamed from: x */
        int f5449x = AbstractC1468a.DEFAULT_TIMEOUT;

        /* renamed from: y */
        int f5450y = AbstractC1468a.DEFAULT_TIMEOUT;

        /* renamed from: z */
        int f5451z = AbstractC1468a.DEFAULT_TIMEOUT;

        /* renamed from: A */
        int f5425A = 0;

        /* renamed from: a */
        public C2100a m1842a(long j, TimeUnit timeUnit) {
            this.f5449x = C1999c.m2345a("timeout", j, timeUnit);
            return this;
        }

        /* renamed from: a */
        public C2100a m1841a(boolean z) {
            this.f5448w = z;
            return this;
        }

        /* renamed from: a */
        public C2098w m1843a() {
            return new C2098w(this);
        }

        /* renamed from: b */
        public C2100a m1840b(long j, TimeUnit timeUnit) {
            this.f5450y = C1999c.m2345a("timeout", j, timeUnit);
            return this;
        }

        /* renamed from: c */
        public C2100a m1839c(long j, TimeUnit timeUnit) {
            this.f5451z = C1999c.m2345a("timeout", j, timeUnit);
            return this;
        }
    }

    static {
        AbstractC1974a.f4904a = new AbstractC1974a() { // from class: okhttp3.w.1
            @Override // okhttp3.internal.AbstractC1974a
            /* renamed from: a */
            public int mo1852a(C1955ab.C1956a c1956a) {
                return c1956a.f4732c;
            }

            @Override // okhttp3.internal.AbstractC1974a
            /* renamed from: a */
            public Socket mo1850a(C2072j c2072j, C1952a c1952a, C2016f c2016f) {
                return c2072j.m2036a(c1952a, c2016f);
            }

            @Override // okhttp3.internal.AbstractC1974a
            /* renamed from: a */
            public C2012c mo1849a(C2072j c2072j, C1952a c1952a, C2016f c2016f, C1959ad c1959ad) {
                return c2072j.m2035a(c1952a, c2016f, c1959ad);
            }

            @Override // okhttp3.internal.AbstractC1974a
            /* renamed from: a */
            public C2013d mo1851a(C2072j c2072j) {
                return c2072j.f5299a;
            }

            @Override // okhttp3.internal.AbstractC1974a
            /* renamed from: a */
            public void mo1847a(C2074k c2074k, SSLSocket sSLSocket, boolean z) {
                c2074k.m2029a(sSLSocket, z);
            }

            @Override // okhttp3.internal.AbstractC1974a
            /* renamed from: a */
            public void mo1846a(C2087r.C2088a c2088a, String str) {
                c2088a.m1961a(str);
            }

            @Override // okhttp3.internal.AbstractC1974a
            /* renamed from: a */
            public void mo1845a(C2087r.C2088a c2088a, String str, String str2) {
                c2088a.m1958b(str, str2);
            }

            @Override // okhttp3.internal.AbstractC1974a
            /* renamed from: a */
            public boolean mo1853a(C1952a c1952a, C1952a c1952a2) {
                return c1952a.m2508a(c1952a2);
            }

            @Override // okhttp3.internal.AbstractC1974a
            /* renamed from: a */
            public boolean mo1848a(C2072j c2072j, C2012c c2012c) {
                return c2072j.m2032b(c2012c);
            }

            @Override // okhttp3.internal.AbstractC1974a
            /* renamed from: b */
            public void mo1844b(C2072j c2072j, C2012c c2012c) {
                c2072j.m2034a(c2012c);
            }
        };
    }

    public C2098w() {
        this(new C2100a());
    }

    C2098w(C2100a c2100a) {
        boolean z;
        this.f5401c = c2100a.f5426a;
        this.f5402d = c2100a.f5427b;
        this.f5403e = c2100a.f5428c;
        this.f5404f = c2100a.f5429d;
        this.f5405g = C1999c.m2338a(c2100a.f5430e);
        this.f5406h = C1999c.m2338a(c2100a.f5431f);
        this.f5407i = c2100a.f5432g;
        this.f5408j = c2100a.f5433h;
        this.f5409k = c2100a.f5434i;
        this.f5410l = c2100a.f5435j;
        this.f5411m = c2100a.f5436k;
        this.f5412n = c2100a.f5437l;
        Iterator<C2074k> it = this.f5404f.iterator();
        loop0: while (true) {
            boolean z2 = false;
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break loop0;
                }
                z2 = (z || it.next().m2031a()) ? true : z2;
            }
        }
        if (c2100a.f5438m != null || !z) {
            this.f5413o = c2100a.f5438m;
            this.f5414p = c2100a.f5439n;
        } else {
            X509TrustManager m1854z = m1854z();
            this.f5413o = m1880a(m1854z);
            this.f5414p = AbstractC2033c.m2219a(m1854z);
        }
        this.f5415q = c2100a.f5440o;
        this.f5416r = c2100a.f5441p.m2432a(this.f5414p);
        this.f5417s = c2100a.f5442q;
        this.f5418t = c2100a.f5443r;
        this.f5419u = c2100a.f5444s;
        this.f5420v = c2100a.f5445t;
        this.f5421w = c2100a.f5446u;
        this.f5422x = c2100a.f5447v;
        this.f5423y = c2100a.f5448w;
        this.f5424z = c2100a.f5449x;
        this.f5398A = c2100a.f5450y;
        this.f5399B = c2100a.f5451z;
        this.f5400C = c2100a.f5425A;
        if (this.f5405g.contains(null)) {
            throw new IllegalStateException("Null interceptor: " + this.f5405g);
        } else if (!this.f5406h.contains(null)) {
        } else {
            throw new IllegalStateException("Null network interceptor: " + this.f5406h);
        }
    }

    /* renamed from: a */
    private SSLSocketFactory m1880a(X509TrustManager x509TrustManager) {
        try {
            SSLContext mo2222s_ = C2030f.m2224c().mo2222s_();
            mo2222s_.init(null, new TrustManager[]{x509TrustManager}, null);
            return mo2222s_.getSocketFactory();
        } catch (GeneralSecurityException e) {
            throw C1999c.m2344a("No System TLS", (Exception) e);
        }
    }

    /* renamed from: z */
    private X509TrustManager m1854z() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager)) {
                return (X509TrustManager) trustManagers[0];
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e) {
            throw C1999c.m2344a("No System TLS", (Exception) e);
        }
    }

    /* renamed from: a */
    public int m1881a() {
        return this.f5424z;
    }

    /* renamed from: a */
    public AbstractC1966e m1879a(C2104z c2104z) {
        return C2102y.m1835a(this, c2104z, false);
    }

    /* renamed from: b */
    public int m1878b() {
        return this.f5398A;
    }

    /* renamed from: c */
    public int m1877c() {
        return this.f5399B;
    }

    /* renamed from: d */
    public int m1876d() {
        return this.f5400C;
    }

    /* renamed from: e */
    public Proxy m1875e() {
        return this.f5402d;
    }

    /* renamed from: f */
    public ProxySelector m1874f() {
        return this.f5408j;
    }

    /* renamed from: g */
    public AbstractC2077m m1873g() {
        return this.f5409k;
    }

    /* renamed from: h */
    public AbstractC1983e m1872h() {
        C1963c c1963c = this.f5410l;
        return c1963c != null ? c1963c.f4756a : this.f5411m;
    }

    /* renamed from: i */
    public AbstractC2080o m1871i() {
        return this.f5420v;
    }

    /* renamed from: j */
    public SocketFactory m1870j() {
        return this.f5412n;
    }

    /* renamed from: k */
    public SSLSocketFactory m1869k() {
        return this.f5413o;
    }

    /* renamed from: l */
    public HostnameVerifier m1868l() {
        return this.f5415q;
    }

    /* renamed from: m */
    public C1968g m1867m() {
        return this.f5416r;
    }

    /* renamed from: n */
    public AbstractC1961b m1866n() {
        return this.f5418t;
    }

    /* renamed from: o */
    public AbstractC1961b m1865o() {
        return this.f5417s;
    }

    /* renamed from: p */
    public C2072j m1864p() {
        return this.f5419u;
    }

    /* renamed from: q */
    public boolean m1863q() {
        return this.f5421w;
    }

    /* renamed from: r */
    public boolean m1862r() {
        return this.f5422x;
    }

    /* renamed from: s */
    public boolean m1861s() {
        return this.f5423y;
    }

    /* renamed from: t */
    public C2079n m1860t() {
        return this.f5401c;
    }

    /* renamed from: u */
    public List<EnumC2101x> m1859u() {
        return this.f5403e;
    }

    /* renamed from: v */
    public List<C2074k> m1858v() {
        return this.f5404f;
    }

    /* renamed from: w */
    public List<AbstractC2092t> m1857w() {
        return this.f5405g;
    }

    /* renamed from: x */
    public List<AbstractC2092t> m1856x() {
        return this.f5406h;
    }

    /* renamed from: y */
    public AbstractC2082p.AbstractC2085a m1855y() {
        return this.f5407i;
    }
}
