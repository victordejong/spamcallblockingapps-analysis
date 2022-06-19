package com.squareup.okhttp;

import com.squareup.okhttp.C2943k;
import com.squareup.okhttp.internal.http.AbstractC2941p;
import com.squareup.okhttp.internal.http.C2928g;
import com.squareup.okhttp.p089u.AbstractC2965b;
import com.squareup.okhttp.p089u.AbstractC2966c;
import com.squareup.okhttp.p089u.AbstractC2968e;
import com.squareup.okhttp.p089u.C2974h;
import com.squareup.okhttp.p089u.C2975i;
import java.net.CookieHandler;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.squareup.okhttp.o */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/o.class */
public class C2952o implements Cloneable {

    /* renamed from: b */
    private final C2974h f12429b;

    /* renamed from: c */
    private C2867i f12430c;

    /* renamed from: d */
    private Proxy f12431d;

    /* renamed from: e */
    private List<Protocol> f12432e;

    /* renamed from: f */
    private List<C2864h> f12433f;

    /* renamed from: g */
    private final List<AbstractC2949m> f12434g;

    /* renamed from: h */
    private final List<AbstractC2949m> f12435h;

    /* renamed from: i */
    private ProxySelector f12436i;

    /* renamed from: j */
    private CookieHandler f12437j;

    /* renamed from: k */
    private AbstractC2966c f12438k;

    /* renamed from: l */
    private C2854c f12439l;

    /* renamed from: m */
    private SocketFactory f12440m;

    /* renamed from: n */
    private SSLSocketFactory f12441n;

    /* renamed from: o */
    private HostnameVerifier f12442o;

    /* renamed from: p */
    private C2858e f12443p;

    /* renamed from: q */
    private AbstractC2853b f12444q;

    /* renamed from: r */
    private C2862g f12445r;

    /* renamed from: s */
    private AbstractC2968e f12446s;

    /* renamed from: t */
    private boolean f12447t;

    /* renamed from: u */
    private boolean f12448u;

    /* renamed from: v */
    private boolean f12449v;

    /* renamed from: w */
    private int f12450w;

    /* renamed from: x */
    private int f12451x;

    /* renamed from: y */
    private int f12452y;

    /* renamed from: z */
    private static final List<Protocol> f12428z = C2975i.m651i(Protocol.HTTP_2, Protocol.SPDY_3, Protocol.HTTP_1_1);

    /* renamed from: A */
    private static final List<C2864h> f12427A = C2975i.m651i(C2864h.f12112f, C2864h.f12113g, C2864h.f12114h);

    /* renamed from: com.squareup.okhttp.o$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/o$a.class */
    static final class C2953a extends AbstractC2965b {
        C2953a() {
        }

        @Override // com.squareup.okhttp.p089u.AbstractC2965b
        /* renamed from: a */
        public void mo704a(C2943k.C2945b c2945b, String str) {
            c2945b.m893c(str);
        }

        @Override // com.squareup.okhttp.p089u.AbstractC2965b
        /* renamed from: b */
        public void mo703b(C2864h c2864h, SSLSocket sSLSocket, boolean z) {
            c2864h.m1260c(sSLSocket, z);
        }

        @Override // com.squareup.okhttp.p089u.AbstractC2965b
        /* renamed from: c */
        public boolean mo702c(C2861f c2861f) {
            return c2861f.m1294a();
        }

        @Override // com.squareup.okhttp.p089u.AbstractC2965b
        /* renamed from: d */
        public void mo701d(C2861f c2861f, Object obj) {
            c2861f.m1293b(obj);
        }

        @Override // com.squareup.okhttp.p089u.AbstractC2965b
        /* renamed from: e */
        public void mo700e(C2952o c2952o, C2861f c2861f, C2928g c2928g, C2954p c2954p) {
            c2861f.m1291d(c2952o, c2928g, c2954p);
        }

        @Override // com.squareup.okhttp.p089u.AbstractC2965b
        /* renamed from: f */
        public AbstractC2966c mo699f(C2952o c2952o) {
            return c2952o.m797w();
        }

        @Override // com.squareup.okhttp.p089u.AbstractC2965b
        /* renamed from: g */
        public boolean mo698g(C2861f c2861f) {
            return c2861f.m1276s();
        }

        @Override // com.squareup.okhttp.p089u.AbstractC2965b
        /* renamed from: h */
        public AbstractC2968e mo697h(C2952o c2952o) {
            return c2952o.f12446s;
        }

        @Override // com.squareup.okhttp.p089u.AbstractC2965b
        /* renamed from: i */
        public AbstractC2941p mo696i(C2861f c2861f, C2928g c2928g) {
            return c2861f.m1275t(c2928g);
        }

        @Override // com.squareup.okhttp.p089u.AbstractC2965b
        /* renamed from: j */
        public void mo695j(C2862g c2862g, C2861f c2861f) {
            c2862g.m1265e(c2861f);
        }

        @Override // com.squareup.okhttp.p089u.AbstractC2965b
        /* renamed from: k */
        public int mo694k(C2861f c2861f) {
            return c2861f.m1274u();
        }

        @Override // com.squareup.okhttp.p089u.AbstractC2965b
        /* renamed from: l */
        public C2974h mo693l(C2952o c2952o) {
            return c2952o.m795z();
        }

        @Override // com.squareup.okhttp.p089u.AbstractC2965b
        /* renamed from: m */
        public void mo692m(C2952o c2952o, AbstractC2968e abstractC2968e) {
            c2952o.f12446s = abstractC2968e;
        }

        @Override // com.squareup.okhttp.p089u.AbstractC2965b
        /* renamed from: n */
        public void mo691n(C2861f c2861f, C2928g c2928g) {
            c2861f.m1272w(c2928g);
        }

        @Override // com.squareup.okhttp.p089u.AbstractC2965b
        /* renamed from: o */
        public void mo690o(C2861f c2861f, Protocol protocol) {
            c2861f.m1271x(protocol);
        }
    }

    static {
        AbstractC2965b.f12498b = new C2953a();
    }

    public C2952o() {
        this.f12434g = new ArrayList();
        this.f12435h = new ArrayList();
        this.f12447t = true;
        this.f12448u = true;
        this.f12449v = true;
        this.f12450w = 10000;
        this.f12451x = 10000;
        this.f12452y = 10000;
        this.f12429b = new C2974h();
        this.f12430c = new C2867i();
    }

    private C2952o(C2952o c2952o) {
        ArrayList arrayList = new ArrayList();
        this.f12434g = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.f12435h = arrayList2;
        this.f12447t = true;
        this.f12448u = true;
        this.f12449v = true;
        this.f12450w = 10000;
        this.f12451x = 10000;
        this.f12452y = 10000;
        this.f12429b = c2952o.f12429b;
        this.f12430c = c2952o.f12430c;
        this.f12431d = c2952o.f12431d;
        this.f12432e = c2952o.f12432e;
        this.f12433f = c2952o.f12433f;
        arrayList.addAll(c2952o.f12434g);
        arrayList2.addAll(c2952o.f12435h);
        this.f12436i = c2952o.f12436i;
        this.f12437j = c2952o.f12437j;
        C2854c c2854c = c2952o.f12439l;
        this.f12438k = c2854c != null ? c2854c.f12072a : c2952o.f12438k;
        this.f12440m = c2952o.f12440m;
        this.f12441n = c2952o.f12441n;
        this.f12442o = c2952o.f12442o;
        this.f12443p = c2952o.f12443p;
        this.f12444q = c2952o.f12444q;
        this.f12445r = c2952o.f12445r;
        this.f12446s = c2952o.f12446s;
        this.f12447t = c2952o.f12447t;
        this.f12448u = c2952o.f12448u;
        this.f12449v = c2952o.f12449v;
        this.f12450w = c2952o.f12450w;
        this.f12451x = c2952o.f12451x;
        this.f12452y = c2952o.f12452y;
    }

    /* renamed from: A */
    public C2952o m830A(AbstractC2853b abstractC2853b) {
        this.f12444q = abstractC2853b;
        return this;
    }

    /* renamed from: D */
    public C2952o m829D(C2854c c2854c) {
        this.f12438k = null;
        return this;
    }

    /* renamed from: E */
    public void m828E(long j, TimeUnit timeUnit) {
        if (j >= 0) {
            if (timeUnit == null) {
                throw new IllegalArgumentException("unit == null");
            }
            long millis = timeUnit.toMillis(j);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException("Timeout too large.");
            }
            if (millis == 0 && j > 0) {
                throw new IllegalArgumentException("Timeout too small.");
            }
            this.f12450w = (int) millis;
            return;
        }
        throw new IllegalArgumentException("timeout < 0");
    }

    /* renamed from: G */
    public C2952o m827G(C2862g c2862g) {
        this.f12445r = c2862g;
        return this;
    }

    /* renamed from: H */
    public C2952o m826H(List<C2864h> list) {
        this.f12433f = C2975i.m652h(list);
        return this;
    }

    /* renamed from: I */
    public void m825I(boolean z) {
        this.f12448u = z;
    }

    /* renamed from: J */
    public C2952o m824J(HostnameVerifier hostnameVerifier) {
        this.f12442o = hostnameVerifier;
        return this;
    }

    /* renamed from: L */
    public C2952o m823L(List<Protocol> list) {
        List m652h = C2975i.m652h(list);
        if (!m652h.contains(Protocol.HTTP_1_1)) {
            throw new IllegalArgumentException("protocols doesn't contain http/1.1: " + m652h);
        } else if (!m652h.contains(Protocol.HTTP_1_0)) {
            if (m652h.contains(null)) {
                throw new IllegalArgumentException("protocols must not contain null");
            }
            this.f12432e = C2975i.m652h(m652h);
            return this;
        } else {
            throw new IllegalArgumentException("protocols must not contain http/1.0: " + m652h);
        }
    }

    /* renamed from: M */
    public C2952o m822M(Proxy proxy) {
        this.f12431d = proxy;
        return this;
    }

    /* renamed from: N */
    public C2952o m821N(ProxySelector proxySelector) {
        this.f12436i = proxySelector;
        return this;
    }

    /* renamed from: P */
    public void m820P(long j, TimeUnit timeUnit) {
        if (j >= 0) {
            if (timeUnit == null) {
                throw new IllegalArgumentException("unit == null");
            }
            long millis = timeUnit.toMillis(j);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException("Timeout too large.");
            }
            if (millis == 0 && j > 0) {
                throw new IllegalArgumentException("Timeout too small.");
            }
            this.f12451x = (int) millis;
            return;
        }
        throw new IllegalArgumentException("timeout < 0");
    }

    /* renamed from: Q */
    public C2952o m819Q(SocketFactory socketFactory) {
        this.f12440m = socketFactory;
        return this;
    }

    /* renamed from: R */
    public C2952o m818R(SSLSocketFactory sSLSocketFactory) {
        this.f12441n = sSLSocketFactory;
        return this;
    }

    /* renamed from: d */
    public C2952o clone() {
        return new C2952o(this);
    }

    /* renamed from: e */
    public AbstractC2853b m814e() {
        return this.f12444q;
    }

    /* renamed from: f */
    public C2858e m813f() {
        return this.f12443p;
    }

    /* renamed from: g */
    public int m812g() {
        return this.f12450w;
    }

    /* renamed from: h */
    public C2862g m811h() {
        return this.f12445r;
    }

    /* renamed from: i */
    public List<C2864h> m810i() {
        return this.f12433f;
    }

    /* renamed from: j */
    public CookieHandler m809j() {
        return this.f12437j;
    }

    /* renamed from: k */
    public boolean m808k() {
        return this.f12448u;
    }

    /* renamed from: l */
    public boolean m807l() {
        return this.f12447t;
    }

    /* renamed from: m */
    public HostnameVerifier m806m() {
        return this.f12442o;
    }

    /* renamed from: n */
    public List<Protocol> m805n() {
        return this.f12432e;
    }

    /* renamed from: o */
    public Proxy m804o() {
        return this.f12431d;
    }

    /* renamed from: q */
    public ProxySelector m803q() {
        return this.f12436i;
    }

    /* renamed from: r */
    public int m802r() {
        return this.f12451x;
    }

    /* renamed from: s */
    public boolean m801s() {
        return this.f12449v;
    }

    /* renamed from: t */
    public SocketFactory m800t() {
        return this.f12440m;
    }

    /* renamed from: u */
    public SSLSocketFactory m799u() {
        return this.f12441n;
    }

    /* renamed from: v */
    public int m798v() {
        return this.f12452y;
    }

    /* renamed from: w */
    AbstractC2966c m797w() {
        return this.f12438k;
    }

    /* renamed from: y */
    public List<AbstractC2949m> m796y() {
        return this.f12435h;
    }

    /* renamed from: z */
    public C2974h m795z() {
        return this.f12429b;
    }
}
