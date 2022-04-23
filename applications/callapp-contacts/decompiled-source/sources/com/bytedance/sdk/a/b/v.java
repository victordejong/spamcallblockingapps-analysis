package com.bytedance.sdk.a.b;

import com.bytedance.sdk.a.b.a.a.e;
import com.bytedance.sdk.a.b.a.b.d;
import com.bytedance.sdk.a.b.a.b.g;
import com.bytedance.sdk.a.b.a.c;
import com.bytedance.sdk.a.b.aa;
import com.bytedance.sdk.a.b.p;
import com.bytedance.sdk.a.b.r;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
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
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/v.class */
public class v implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    static final List<w> f8149a = c.a(w.HTTP_2, w.HTTP_1_1);

    /* renamed from: b  reason: collision with root package name */
    static final List<k> f8150b = c.a(k.f8107a, k.f8109c);
    final int A;
    final int B;
    final int C;

    /* renamed from: c  reason: collision with root package name */
    final n f8151c;

    /* renamed from: d  reason: collision with root package name */
    final Proxy f8152d;
    final List<w> e;
    final List<k> f;
    final List<t> g;
    final List<t> h;
    final p.a i;
    final ProxySelector j;
    final m k;
    final c l;
    final e m;
    final SocketFactory n;
    final SSLSocketFactory o;
    final com.bytedance.sdk.a.b.a.i.c p;
    final HostnameVerifier q;
    final g r;
    final b s;
    final b t;
    final j u;
    final o v;
    final boolean w;
    final boolean x;
    final boolean y;
    final int z;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/v$a.class */
    public static final class a {
        int A;

        /* renamed from: a  reason: collision with root package name */
        n f8153a;

        /* renamed from: b  reason: collision with root package name */
        Proxy f8154b;

        /* renamed from: c  reason: collision with root package name */
        List<w> f8155c;

        /* renamed from: d  reason: collision with root package name */
        List<k> f8156d;
        final List<t> e;
        final List<t> f;
        p.a g;
        ProxySelector h;
        m i;
        c j;
        e k;
        SocketFactory l;
        SSLSocketFactory m;
        com.bytedance.sdk.a.b.a.i.c n;
        HostnameVerifier o;
        g p;
        b q;
        b r;
        j s;
        o t;
        boolean u;
        boolean v;
        boolean w;
        int x;
        int y;
        int z;

        public a() {
            this.e = new ArrayList();
            this.f = new ArrayList();
            this.f8153a = new n();
            this.f8155c = v.f8149a;
            this.f8156d = v.f8150b;
            this.g = p.a(p.f8125a);
            this.h = ProxySelector.getDefault();
            this.i = m.f8119a;
            this.l = SocketFactory.getDefault();
            this.o = com.bytedance.sdk.a.b.a.i.e.f8060a;
            this.p = g.f8090a;
            this.q = b.f8079a;
            this.r = b.f8079a;
            this.s = new j();
            this.t = o.f8124a;
            this.u = true;
            this.v = true;
            this.w = true;
            this.x = 10000;
            this.y = 10000;
            this.z = 10000;
            this.A = 0;
        }

        a(v vVar) {
            ArrayList arrayList = new ArrayList();
            this.e = arrayList;
            ArrayList arrayList2 = new ArrayList();
            this.f = arrayList2;
            this.f8153a = vVar.f8151c;
            this.f8154b = vVar.f8152d;
            this.f8155c = vVar.e;
            this.f8156d = vVar.f;
            arrayList.addAll(vVar.g);
            arrayList2.addAll(vVar.h);
            this.g = vVar.i;
            this.h = vVar.j;
            this.i = vVar.k;
            this.k = vVar.m;
            this.j = vVar.l;
            this.l = vVar.n;
            this.m = vVar.o;
            this.n = vVar.p;
            this.o = vVar.q;
            this.p = vVar.r;
            this.q = vVar.s;
            this.r = vVar.t;
            this.s = vVar.u;
            this.t = vVar.v;
            this.u = vVar.w;
            this.v = vVar.x;
            this.w = vVar.y;
            this.x = vVar.z;
            this.y = vVar.A;
            this.z = vVar.B;
            this.A = vVar.C;
        }

        public final a a(long j, TimeUnit timeUnit) {
            this.x = c.a("timeout", j, timeUnit);
            return this;
        }

        public final a a(boolean z) {
            this.u = z;
            return this;
        }

        public final v a() {
            return new v(this);
        }

        public final a b(long j, TimeUnit timeUnit) {
            this.y = c.a("timeout", j, timeUnit);
            return this;
        }

        public final a b(boolean z) {
            this.v = z;
            return this;
        }

        public final a c(long j, TimeUnit timeUnit) {
            this.z = c.a("timeout", j, timeUnit);
            return this;
        }
    }

    static {
        com.bytedance.sdk.a.b.a.a.f7830a = new com.bytedance.sdk.a.b.a.a() { // from class: com.bytedance.sdk.a.b.v.1
            @Override // com.bytedance.sdk.a.b.a.a
            public final int a(aa.a aVar) {
                return aVar.f8067c;
            }

            @Override // com.bytedance.sdk.a.b.a.a
            public final com.bytedance.sdk.a.b.a.b.c a(j jVar, com.bytedance.sdk.a.b.a aVar, g gVar, ac acVar) {
                return jVar.a(aVar, gVar, acVar);
            }

            @Override // com.bytedance.sdk.a.b.a.a
            public final d a(j jVar) {
                return jVar.f8104a;
            }

            @Override // com.bytedance.sdk.a.b.a.a
            public final Socket a(j jVar, com.bytedance.sdk.a.b.a aVar, g gVar) {
                return jVar.a(aVar, gVar);
            }

            @Override // com.bytedance.sdk.a.b.a.a
            public final void a(k kVar, SSLSocket sSLSocket, boolean z) {
                kVar.a(sSLSocket, z);
            }

            @Override // com.bytedance.sdk.a.b.a.a
            public final void a(r.a aVar, String str) {
                aVar.a(str);
            }

            @Override // com.bytedance.sdk.a.b.a.a
            public final void a(r.a aVar, String str, String str2) {
                aVar.b(str, str2);
            }

            @Override // com.bytedance.sdk.a.b.a.a
            public final boolean a(com.bytedance.sdk.a.b.a aVar, com.bytedance.sdk.a.b.a aVar2) {
                return aVar.a(aVar2);
            }

            @Override // com.bytedance.sdk.a.b.a.a
            public final boolean a(j jVar, com.bytedance.sdk.a.b.a.b.c cVar) {
                return jVar.b(cVar);
            }

            @Override // com.bytedance.sdk.a.b.a.a
            public final void b(j jVar, com.bytedance.sdk.a.b.a.b.c cVar) {
                jVar.a(cVar);
            }
        };
    }

    public v() {
        this(new a());
    }

    v(a aVar) {
        boolean z;
        this.f8151c = aVar.f8153a;
        this.f8152d = aVar.f8154b;
        this.e = aVar.f8155c;
        List<k> list = aVar.f8156d;
        this.f = list;
        this.g = c.a(aVar.e);
        this.h = c.a(aVar.f);
        this.i = aVar.g;
        this.j = aVar.h;
        this.k = aVar.i;
        this.l = aVar.j;
        this.m = aVar.k;
        this.n = aVar.l;
        loop0: while (true) {
            z = false;
            for (k kVar : list) {
                z = (z || kVar.a()) ? true : z;
            }
        }
        if (aVar.m != null || !z) {
            this.o = aVar.m;
            this.p = aVar.n;
        } else {
            X509TrustManager z2 = z();
            this.o = a(z2);
            this.p = com.bytedance.sdk.a.b.a.i.c.a(z2);
        }
        this.q = aVar.o;
        this.r = aVar.p.a(this.p);
        this.s = aVar.q;
        this.t = aVar.r;
        this.u = aVar.s;
        this.v = aVar.t;
        this.w = aVar.u;
        this.x = aVar.v;
        this.y = aVar.w;
        this.z = aVar.x;
        this.A = aVar.y;
        this.B = aVar.z;
        this.C = aVar.A;
        if (this.g.contains(null)) {
            throw new IllegalStateException("Null interceptor: " + this.g);
        } else if (this.h.contains(null)) {
            throw new IllegalStateException("Null network interceptor: " + this.h);
        }
    }

    private SSLSocketFactory a(X509TrustManager x509TrustManager) {
        try {
            SSLContext instance = SSLContext.getInstance("TLS");
            instance.init(null, new TrustManager[]{x509TrustManager}, null);
            return instance.getSocketFactory();
        } catch (GeneralSecurityException e) {
            throw c.a("No System TLS", (Exception) e);
        }
    }

    private X509TrustManager z() {
        try {
            TrustManagerFactory instance = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            instance.init((KeyStore) null);
            TrustManager[] trustManagers = instance.getTrustManagers();
            if (trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager)) {
                return (X509TrustManager) trustManagers[0];
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e) {
            throw c.a("No System TLS", (Exception) e);
        }
    }

    public int a() {
        return this.z;
    }

    public e a(y yVar) {
        return x.a(this, yVar, false);
    }

    public int b() {
        return this.A;
    }

    public int c() {
        return this.B;
    }

    public Proxy d() {
        return this.f8152d;
    }

    public ProxySelector e() {
        return this.j;
    }

    public m f() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e g() {
        c cVar = this.l;
        return cVar != null ? cVar.f8080a : this.m;
    }

    public o h() {
        return this.v;
    }

    public SocketFactory i() {
        return this.n;
    }

    public SSLSocketFactory j() {
        return this.o;
    }

    public HostnameVerifier k() {
        return this.q;
    }

    public g l() {
        return this.r;
    }

    public b m() {
        return this.t;
    }

    public b n() {
        return this.s;
    }

    public j o() {
        return this.u;
    }

    public boolean p() {
        return this.w;
    }

    public boolean q() {
        return this.x;
    }

    public boolean r() {
        return this.y;
    }

    public n s() {
        return this.f8151c;
    }

    public List<w> t() {
        return this.e;
    }

    public List<k> u() {
        return this.f;
    }

    public List<t> v() {
        return this.g;
    }

    public List<t> w() {
        return this.h;
    }

    public p.a x() {
        return this.i;
    }

    public a y() {
        return new a(this);
    }
}
