package p599h;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.Protocol;
import p599h.AbstractC10210e;
import p599h.AbstractC10229p;
import p599h.C10091a0;
import p599h.C10234r;
import p599h.p600d0.AbstractC10107a;
import p599h.p600d0.C10109c;
import p599h.p600d0.p601e.AbstractC10126f;
import p599h.p600d0.p602f.C10129c;
import p599h.p600d0.p602f.C10130d;
import p599h.p600d0.p602f.C10133f;
import p599h.p600d0.p607k.C10203f;
import p599h.p600d0.p608l.C10204a;
import p599h.p600d0.p609m.AbstractC10207c;
import p599h.p600d0.p609m.C10208d;
/* renamed from: h.w */
/* loaded from: classes2-dex2jar.jar:h/w.class */
public class C10244w implements Cloneable, AbstractC10210e.AbstractC10211a {

    /* renamed from: C */
    public static final List<Protocol> f37790C = C10109c.m1444a(Protocol.HTTP_2, Protocol.HTTP_1_1);

    /* renamed from: D */
    public static final List<C10221k> f37791D = C10109c.m1444a(C10221k.f37714g, C10221k.f37715h);

    /* renamed from: A */
    public final int f37792A;

    /* renamed from: B */
    public final int f37793B;

    /* renamed from: a */
    public final C10226n f37794a;

    /* renamed from: b */
    public final Proxy f37795b;

    /* renamed from: c */
    public final List<Protocol> f37796c;

    /* renamed from: d */
    public final List<C10221k> f37797d;

    /* renamed from: e */
    public final List<AbstractC10238t> f37798e;

    /* renamed from: f */
    public final List<AbstractC10238t> f37799f;

    /* renamed from: g */
    public final AbstractC10229p.AbstractC10232c f37800g;

    /* renamed from: h */
    public final ProxySelector f37801h;

    /* renamed from: i */
    public final AbstractC10224m f37802i;

    /* renamed from: j */
    public final C10097c f37803j;

    /* renamed from: k */
    public final AbstractC10126f f37804k;

    /* renamed from: l */
    public final SocketFactory f37805l;

    /* renamed from: m */
    public final SSLSocketFactory f37806m;

    /* renamed from: n */
    public final AbstractC10207c f37807n;

    /* renamed from: o */
    public final HostnameVerifier f37808o;

    /* renamed from: p */
    public final C10213g f37809p;

    /* renamed from: q */
    public final AbstractC10093b f37810q;

    /* renamed from: r */
    public final AbstractC10093b f37811r;

    /* renamed from: s */
    public final C10219j f37812s;

    /* renamed from: t */
    public final AbstractC10227o f37813t;

    /* renamed from: u */
    public final boolean f37814u;

    /* renamed from: v */
    public final boolean f37815v;

    /* renamed from: w */
    public final boolean f37816w;

    /* renamed from: x */
    public final int f37817x;

    /* renamed from: y */
    public final int f37818y;

    /* renamed from: z */
    public final int f37819z;

    /* renamed from: h.w$a */
    /* loaded from: classes2-dex2jar.jar:h/w$a.class */
    public class C10245a extends AbstractC10107a {
        @Override // p599h.p600d0.AbstractC10107a
        /* renamed from: a */
        public int mo851a(C10091a0.C10092a aVar) {
            return aVar.f37239c;
        }

        @Override // p599h.p600d0.AbstractC10107a
        /* renamed from: a */
        public C10129c mo846a(C10219j jVar, C10090a aVar, C10133f fVar, C10104c0 c0Var) {
            return jVar.m1041a(aVar, fVar, c0Var);
        }

        @Override // p599h.p600d0.AbstractC10107a
        /* renamed from: a */
        public C10130d mo848a(C10219j jVar) {
            return jVar.f37709e;
        }

        @Override // p599h.p600d0.AbstractC10107a
        /* renamed from: a */
        public IOException mo849a(AbstractC10210e eVar, IOException iOException) {
            return ((C10247x) eVar).m833a(iOException);
        }

        @Override // p599h.p600d0.AbstractC10107a
        /* renamed from: a */
        public Socket mo847a(C10219j jVar, C10090a aVar, C10133f fVar) {
            return jVar.m1042a(aVar, fVar);
        }

        @Override // p599h.p600d0.AbstractC10107a
        /* renamed from: a */
        public void mo844a(C10221k kVar, SSLSocket sSLSocket, boolean z) {
            kVar.m1035a(sSLSocket, z);
        }

        @Override // p599h.p600d0.AbstractC10107a
        /* renamed from: a */
        public void mo843a(C10234r.C10235a aVar, String str) {
            aVar.m962a(str);
        }

        @Override // p599h.p600d0.AbstractC10107a
        /* renamed from: a */
        public void mo842a(C10234r.C10235a aVar, String str, String str2) {
            aVar.m959b(str, str2);
        }

        @Override // p599h.p600d0.AbstractC10107a
        /* renamed from: a */
        public boolean mo850a(C10090a aVar, C10090a aVar2) {
            return aVar.m1554a(aVar2);
        }

        @Override // p599h.p600d0.AbstractC10107a
        /* renamed from: a */
        public boolean mo845a(C10219j jVar, C10129c cVar) {
            return jVar.m1040a(cVar);
        }

        @Override // p599h.p600d0.AbstractC10107a
        /* renamed from: b */
        public void mo841b(C10219j jVar, C10129c cVar) {
            jVar.m1038b(cVar);
        }
    }

    /* renamed from: h.w$b */
    /* loaded from: classes2-dex2jar.jar:h/w$b.class */
    public static final class C10246b {

        /* renamed from: A */
        public int f37820A;

        /* renamed from: B */
        public int f37821B;

        /* renamed from: a */
        public C10226n f37822a;

        /* renamed from: b */
        public Proxy f37823b;

        /* renamed from: c */
        public List<Protocol> f37824c;

        /* renamed from: d */
        public List<C10221k> f37825d;

        /* renamed from: e */
        public final List<AbstractC10238t> f37826e;

        /* renamed from: f */
        public final List<AbstractC10238t> f37827f;

        /* renamed from: g */
        public AbstractC10229p.AbstractC10232c f37828g;

        /* renamed from: h */
        public ProxySelector f37829h;

        /* renamed from: i */
        public AbstractC10224m f37830i;

        /* renamed from: j */
        public C10097c f37831j;

        /* renamed from: k */
        public AbstractC10126f f37832k;

        /* renamed from: l */
        public SocketFactory f37833l;

        /* renamed from: m */
        public SSLSocketFactory f37834m;

        /* renamed from: n */
        public AbstractC10207c f37835n;

        /* renamed from: o */
        public HostnameVerifier f37836o;

        /* renamed from: p */
        public C10213g f37837p;

        /* renamed from: q */
        public AbstractC10093b f37838q;

        /* renamed from: r */
        public AbstractC10093b f37839r;

        /* renamed from: s */
        public C10219j f37840s;

        /* renamed from: t */
        public AbstractC10227o f37841t;

        /* renamed from: u */
        public boolean f37842u;

        /* renamed from: v */
        public boolean f37843v;

        /* renamed from: w */
        public boolean f37844w;

        /* renamed from: x */
        public int f37845x;

        /* renamed from: y */
        public int f37846y;

        /* renamed from: z */
        public int f37847z;

        public C10246b() {
            this.f37826e = new ArrayList();
            this.f37827f = new ArrayList();
            this.f37822a = new C10226n();
            this.f37824c = C10244w.f37790C;
            this.f37825d = C10244w.f37791D;
            this.f37828g = AbstractC10229p.m989a(AbstractC10229p.f37746a);
            ProxySelector proxySelector = ProxySelector.getDefault();
            this.f37829h = proxySelector;
            if (proxySelector == null) {
                this.f37829h = new C10204a();
            }
            this.f37830i = AbstractC10224m.f37737a;
            this.f37833l = SocketFactory.getDefault();
            this.f37836o = C10208d.f37674a;
            this.f37837p = C10213g.f37675c;
            AbstractC10093b bVar = AbstractC10093b.f37249a;
            this.f37838q = bVar;
            this.f37839r = bVar;
            this.f37840s = new C10219j();
            this.f37841t = AbstractC10227o.f37745a;
            this.f37842u = true;
            this.f37843v = true;
            this.f37844w = true;
            this.f37845x = 0;
            this.f37846y = 10000;
            this.f37847z = 10000;
            this.f37820A = 10000;
            this.f37821B = 0;
        }

        public C10246b(C10244w wVar) {
            this.f37826e = new ArrayList();
            this.f37827f = new ArrayList();
            this.f37822a = wVar.f37794a;
            this.f37823b = wVar.f37795b;
            this.f37824c = wVar.f37796c;
            this.f37825d = wVar.f37797d;
            this.f37826e.addAll(wVar.f37798e);
            this.f37827f.addAll(wVar.f37799f);
            this.f37828g = wVar.f37800g;
            this.f37829h = wVar.f37801h;
            this.f37830i = wVar.f37802i;
            this.f37832k = wVar.f37804k;
            this.f37831j = wVar.f37803j;
            this.f37833l = wVar.f37805l;
            this.f37834m = wVar.f37806m;
            this.f37835n = wVar.f37807n;
            this.f37836o = wVar.f37808o;
            this.f37837p = wVar.f37809p;
            this.f37838q = wVar.f37810q;
            this.f37839r = wVar.f37811r;
            this.f37840s = wVar.f37812s;
            this.f37841t = wVar.f37813t;
            this.f37842u = wVar.f37814u;
            this.f37843v = wVar.f37815v;
            this.f37844w = wVar.f37816w;
            this.f37845x = wVar.f37817x;
            this.f37846y = wVar.f37818y;
            this.f37847z = wVar.f37819z;
            this.f37820A = wVar.f37792A;
            this.f37821B = wVar.f37793B;
        }

        /* renamed from: a */
        public C10246b m839a(long j, TimeUnit timeUnit) {
            this.f37845x = C10109c.m1455a("timeout", j, timeUnit);
            return this;
        }

        /* renamed from: a */
        public C10246b m838a(C10097c cVar) {
            this.f37831j = cVar;
            this.f37832k = null;
            return this;
        }

        /* renamed from: a */
        public C10246b m837a(AbstractC10238t tVar) {
            if (tVar != null) {
                this.f37826e.add(tVar);
                return this;
            }
            throw new IllegalArgumentException("interceptor == null");
        }

        /* renamed from: a */
        public C10244w m840a() {
            return new C10244w(this);
        }
    }

    static {
        AbstractC10107a.f37312a = new C10245a();
    }

    public C10244w() {
        this(new C10246b());
    }

    public C10244w(C10246b bVar) {
        boolean z;
        this.f37794a = bVar.f37822a;
        this.f37795b = bVar.f37823b;
        this.f37796c = bVar.f37824c;
        this.f37797d = bVar.f37825d;
        this.f37798e = C10109c.m1447a(bVar.f37826e);
        this.f37799f = C10109c.m1447a(bVar.f37827f);
        this.f37800g = bVar.f37828g;
        this.f37801h = bVar.f37829h;
        this.f37802i = bVar.f37830i;
        this.f37803j = bVar.f37831j;
        this.f37804k = bVar.f37832k;
        this.f37805l = bVar.f37833l;
        loop0: while (true) {
            z = false;
            for (C10221k kVar : this.f37797d) {
                z = (z || kVar.m1034b()) ? true : z;
            }
        }
        if (bVar.f37834m != null || !z) {
            this.f37806m = bVar.f37834m;
            this.f37807n = bVar.f37835n;
        } else {
            X509TrustManager a = C10109c.m1469a();
            this.f37806m = m870a(a);
            this.f37807n = AbstractC10207c.m1067a(a);
        }
        if (this.f37806m != null) {
            C10203f.m1071d().mo1079a(this.f37806m);
        }
        this.f37808o = bVar.f37836o;
        this.f37809p = bVar.f37837p.m1057a(this.f37807n);
        this.f37810q = bVar.f37838q;
        this.f37811r = bVar.f37839r;
        this.f37812s = bVar.f37840s;
        this.f37813t = bVar.f37841t;
        this.f37814u = bVar.f37842u;
        this.f37815v = bVar.f37843v;
        this.f37816w = bVar.f37844w;
        this.f37817x = bVar.f37845x;
        this.f37818y = bVar.f37846y;
        this.f37819z = bVar.f37847z;
        this.f37792A = bVar.f37820A;
        this.f37793B = bVar.f37821B;
        if (this.f37798e.contains(null)) {
            throw new IllegalStateException("Null interceptor: " + this.f37798e);
        } else if (this.f37799f.contains(null)) {
            throw new IllegalStateException("Null network interceptor: " + this.f37799f);
        }
    }

    /* renamed from: a */
    public static SSLSocketFactory m870a(X509TrustManager x509TrustManager) {
        try {
            SSLContext b = C10203f.m1071d().mo1077b();
            b.init(null, new TrustManager[]{x509TrustManager}, null);
            return b.getSocketFactory();
        } catch (GeneralSecurityException e) {
            throw C10109c.m1454a("No System TLS", (Exception) e);
        }
    }

    /* renamed from: A */
    public int m881A() {
        return this.f37793B;
    }

    /* renamed from: C */
    public List<Protocol> m880C() {
        return this.f37796c;
    }

    /* renamed from: E */
    public Proxy m879E() {
        return this.f37795b;
    }

    /* renamed from: G */
    public AbstractC10093b m878G() {
        return this.f37810q;
    }

    /* renamed from: H */
    public ProxySelector m877H() {
        return this.f37801h;
    }

    /* renamed from: I */
    public int m876I() {
        return this.f37819z;
    }

    /* renamed from: J */
    public boolean m875J() {
        return this.f37816w;
    }

    /* renamed from: L */
    public SocketFactory m874L() {
        return this.f37805l;
    }

    /* renamed from: N */
    public SSLSocketFactory m873N() {
        return this.f37806m;
    }

    /* renamed from: O */
    public int m872O() {
        return this.f37792A;
    }

    @Override // p599h.AbstractC10210e.AbstractC10211a
    /* renamed from: a */
    public AbstractC10210e mo871a(C10250y yVar) {
        return C10247x.m835a(this, yVar, false);
    }

    /* renamed from: c */
    public AbstractC10093b m869c() {
        return this.f37811r;
    }

    /* renamed from: e */
    public C10097c m868e() {
        return this.f37803j;
    }

    /* renamed from: g */
    public int m867g() {
        return this.f37817x;
    }

    /* renamed from: h */
    public C10213g m866h() {
        return this.f37809p;
    }

    /* renamed from: j */
    public int m865j() {
        return this.f37818y;
    }

    /* renamed from: k */
    public C10219j m864k() {
        return this.f37812s;
    }

    /* renamed from: l */
    public List<C10221k> m863l() {
        return this.f37797d;
    }

    /* renamed from: m */
    public AbstractC10224m m862m() {
        return this.f37802i;
    }

    /* renamed from: n */
    public C10226n m861n() {
        return this.f37794a;
    }

    /* renamed from: o */
    public AbstractC10227o m860o() {
        return this.f37813t;
    }

    /* renamed from: p */
    public AbstractC10229p.AbstractC10232c m859p() {
        return this.f37800g;
    }

    /* renamed from: q */
    public boolean m858q() {
        return this.f37815v;
    }

    /* renamed from: r */
    public boolean m857r() {
        return this.f37814u;
    }

    /* renamed from: s */
    public HostnameVerifier m856s() {
        return this.f37808o;
    }

    /* renamed from: t */
    public List<AbstractC10238t> m855t() {
        return this.f37798e;
    }

    /* renamed from: w */
    public AbstractC10126f m854w() {
        C10097c cVar = this.f37803j;
        return cVar != null ? cVar.f37253a : this.f37804k;
    }

    /* renamed from: x */
    public List<AbstractC10238t> m853x() {
        return this.f37799f;
    }

    /* renamed from: z */
    public C10246b m852z() {
        return new C10246b(this);
    }
}
