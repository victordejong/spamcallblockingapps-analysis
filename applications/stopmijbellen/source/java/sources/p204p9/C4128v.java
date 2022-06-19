package p204p9;

import android.support.p012v4.media.C0082b;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import p204p9.AbstractC4097e;
import p204p9.AbstractC4116o;
import p204p9.C4121r;
import p214q9.AbstractC4169a;
import p214q9.C4171c;
import p236s9.C4335c;
import p236s9.C4338e;
import p290x9.C4945f;
import p300y9.C5018a;
import p310z9.AbstractC5118c;
import p310z9.C5119d;
/* renamed from: p9.v */
/* loaded from: classes2-dex2jar.jar:p9/v.class */
public class C4128v implements Cloneable, AbstractC4097e.AbstractC4098a {

    /* renamed from: y */
    public static final List<EnumC4131w> f12975y = C4171c.m1321o(EnumC4131w.HTTP_2, EnumC4131w.HTTP_1_1);

    /* renamed from: z */
    public static final List<C4108j> f12976z = C4171c.m1321o(C4108j.f12917e, C4108j.f12918f);

    /* renamed from: a */
    public final C4113m f12977a;

    /* renamed from: b */
    public final List<EnumC4131w> f12978b;

    /* renamed from: c */
    public final List<C4108j> f12979c;

    /* renamed from: d */
    public final List<AbstractC4125t> f12980d;

    /* renamed from: e */
    public final List<AbstractC4125t> f12981e;

    /* renamed from: f */
    public final AbstractC4116o.AbstractC4118b f12982f;

    /* renamed from: g */
    public final ProxySelector f12983g;

    /* renamed from: h */
    public final AbstractC4111l f12984h;
    @Nullable

    /* renamed from: i */
    public final C4086c f12985i;

    /* renamed from: j */
    public final SocketFactory f12986j;

    /* renamed from: k */
    public final SSLSocketFactory f12987k;

    /* renamed from: l */
    public final AbstractC5118c f12988l;

    /* renamed from: m */
    public final HostnameVerifier f12989m;

    /* renamed from: n */
    public final C4102g f12990n;

    /* renamed from: o */
    public final AbstractC4082b f12991o;

    /* renamed from: p */
    public final AbstractC4082b f12992p;

    /* renamed from: q */
    public final C4106i f12993q;

    /* renamed from: r */
    public final AbstractC4114n f12994r;

    /* renamed from: s */
    public final boolean f12995s;

    /* renamed from: t */
    public final boolean f12996t;

    /* renamed from: u */
    public final boolean f12997u;

    /* renamed from: v */
    public final int f12998v;

    /* renamed from: w */
    public final int f12999w;

    /* renamed from: x */
    public final int f13000x;

    /* renamed from: p9.v$a */
    /* loaded from: classes2-dex2jar.jar:p9/v$a.class */
    public class C4129a extends AbstractC4169a {
        @Override // p214q9.AbstractC4169a
        /* renamed from: a */
        public void mo1339a(C4121r.C4122a c4122a, String str, String str2) {
            c4122a.f12953a.add(str);
            c4122a.f12953a.add(str2.trim());
        }

        @Override // p214q9.AbstractC4169a
        /* renamed from: b */
        public Socket mo1338b(C4106i c4106i, C4080a c4080a, C4338e c4338e) {
            Socket socket;
            Iterator<C4335c> it2 = c4106i.f12913d.iterator();
            while (true) {
                socket = null;
                if (!it2.hasNext()) {
                    break;
                }
                C4335c next = it2.next();
                if (next.m1089g(c4080a, null) && next.m1088h() && next != c4338e.m1079b()) {
                    if (c4338e.f13521n != null || c4338e.f13517j.f13497n.size() != 1) {
                        throw new IllegalStateException();
                    }
                    Reference<C4338e> reference = c4338e.f13517j.f13497n.get(0);
                    socket = c4338e.m1078c(true, false, false);
                    c4338e.f13517j = next;
                    next.f13497n.add(reference);
                }
            }
            return socket;
        }

        @Override // p214q9.AbstractC4169a
        /* renamed from: c */
        public C4335c mo1337c(C4106i c4106i, C4080a c4080a, C4338e c4338e, C4099e0 c4099e0) {
            C4335c c4335c;
            Iterator<C4335c> it2 = c4106i.f12913d.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    c4335c = null;
                    break;
                }
                c4335c = it2.next();
                if (c4335c.m1089g(c4080a, c4099e0)) {
                    c4338e.m1080a(c4335c, true);
                    break;
                }
            }
            return c4335c;
        }

        @Override // p214q9.AbstractC4169a
        @Nullable
        /* renamed from: d */
        public IOException mo1336d(AbstractC4097e abstractC4097e, @Nullable IOException iOException) {
            return ((C4132x) abstractC4097e).m1364d(iOException);
        }
    }

    /* renamed from: p9.v$b */
    /* loaded from: classes2-dex2jar.jar:p9/v$b.class */
    public static final class C4130b {

        /* renamed from: g */
        public ProxySelector f13007g;

        /* renamed from: h */
        public AbstractC4111l f13008h;
        @Nullable

        /* renamed from: i */
        public C4086c f13009i;

        /* renamed from: j */
        public SocketFactory f13010j;

        /* renamed from: k */
        public HostnameVerifier f13011k;

        /* renamed from: l */
        public C4102g f13012l;

        /* renamed from: m */
        public AbstractC4082b f13013m;

        /* renamed from: n */
        public AbstractC4082b f13014n;

        /* renamed from: o */
        public C4106i f13015o;

        /* renamed from: p */
        public AbstractC4114n f13016p;

        /* renamed from: q */
        public boolean f13017q;

        /* renamed from: r */
        public boolean f13018r;

        /* renamed from: s */
        public boolean f13019s;

        /* renamed from: t */
        public int f13020t;

        /* renamed from: u */
        public int f13021u;

        /* renamed from: v */
        public int f13022v;

        /* renamed from: d */
        public final List<AbstractC4125t> f13004d = new ArrayList();

        /* renamed from: e */
        public final List<AbstractC4125t> f13005e = new ArrayList();

        /* renamed from: a */
        public C4113m f13001a = new C4113m();

        /* renamed from: b */
        public List<EnumC4131w> f13002b = C4128v.f12975y;

        /* renamed from: c */
        public List<C4108j> f13003c = C4128v.f12976z;

        /* renamed from: f */
        public AbstractC4116o.AbstractC4118b f13006f = new C4119p(AbstractC4116o.f12946a);

        public C4130b() {
            ProxySelector proxySelector = ProxySelector.getDefault();
            this.f13007g = proxySelector;
            if (proxySelector == null) {
                this.f13007g = new C5018a();
            }
            this.f13008h = AbstractC4111l.f12940a;
            this.f13010j = SocketFactory.getDefault();
            this.f13011k = C5119d.f15486a;
            this.f13012l = C4102g.f12885c;
            AbstractC4082b abstractC4082b = AbstractC4082b.f12796a;
            this.f13013m = abstractC4082b;
            this.f13014n = abstractC4082b;
            this.f13015o = new C4106i();
            this.f13016p = AbstractC4114n.f12945a;
            this.f13017q = true;
            this.f13018r = true;
            this.f13019s = true;
            this.f13020t = 10000;
            this.f13021u = 10000;
            this.f13022v = 10000;
        }
    }

    static {
        AbstractC4169a.f13142a = new C4129a();
    }

    public C4128v() {
        this(new C4130b());
    }

    public C4128v(C4130b c4130b) {
        boolean z;
        this.f12977a = c4130b.f13001a;
        this.f12978b = c4130b.f13002b;
        List<C4108j> list = c4130b.f13003c;
        this.f12979c = list;
        this.f12980d = C4171c.m1322n(c4130b.f13004d);
        this.f12981e = C4171c.m1322n(c4130b.f13005e);
        this.f12982f = c4130b.f13006f;
        this.f12983g = c4130b.f13007g;
        this.f12984h = c4130b.f13008h;
        this.f12985i = c4130b.f13009i;
        this.f12986j = c4130b.f13010j;
        Iterator<C4108j> it2 = list.iterator();
        loop0: while (true) {
            boolean z2 = false;
            while (true) {
                z = z2;
                if (!it2.hasNext()) {
                    break loop0;
                }
                z2 = (z || it2.next().f12919a) ? true : z2;
            }
        }
        if (!z) {
            this.f12987k = null;
            this.f12988l = null;
        } else {
            try {
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init((KeyStore) null);
                TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                if (trustManagers.length != 1 || !(trustManagers[0] instanceof X509TrustManager)) {
                    throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
                }
                X509TrustManager x509TrustManager = (X509TrustManager) trustManagers[0];
                try {
                    C4945f c4945f = C4945f.f15078a;
                    SSLContext mo214h = c4945f.mo214h();
                    mo214h.init(null, new TrustManager[]{x509TrustManager}, null);
                    this.f12987k = mo214h.getSocketFactory();
                    this.f12988l = c4945f.mo219c(x509TrustManager);
                } catch (GeneralSecurityException e) {
                    throw C4171c.m1335a("No System TLS", e);
                }
            } catch (GeneralSecurityException e2) {
                throw C4171c.m1335a("No System TLS", e2);
            }
        }
        SSLSocketFactory sSLSocketFactory = this.f12987k;
        if (sSLSocketFactory != null) {
            C4945f.f15078a.mo217e(sSLSocketFactory);
        }
        this.f12989m = c4130b.f13011k;
        C4102g c4102g = c4130b.f13012l;
        AbstractC5118c abstractC5118c = this.f12988l;
        this.f12990n = !C4171c.m1325k(c4102g.f12887b, abstractC5118c) ? new C4102g(c4102g.f12886a, abstractC5118c) : c4102g;
        this.f12991o = c4130b.f13013m;
        this.f12992p = c4130b.f13014n;
        this.f12993q = c4130b.f13015o;
        this.f12994r = c4130b.f13016p;
        this.f12995s = c4130b.f13017q;
        this.f12996t = c4130b.f13018r;
        this.f12997u = c4130b.f13019s;
        this.f12998v = c4130b.f13020t;
        this.f12999w = c4130b.f13021u;
        this.f13000x = c4130b.f13022v;
        if (this.f12980d.contains(null)) {
            StringBuilder m8752j = C0082b.m8752j("Null interceptor: ");
            m8752j.append(this.f12980d);
            throw new IllegalStateException(m8752j.toString());
        } else if (!this.f12981e.contains(null)) {
        } else {
            StringBuilder m8752j2 = C0082b.m8752j("Null network interceptor: ");
            m8752j2.append(this.f12981e);
            throw new IllegalStateException(m8752j2.toString());
        }
    }
}
