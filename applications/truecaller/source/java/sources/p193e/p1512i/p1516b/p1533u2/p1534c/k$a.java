package p193e.p1512i.p1516b.p1533u2.p1534c;

import e.m.e.b0;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.c;
import e.m.e.k;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
/* renamed from: e.i.b.u2.c.k$a */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/c/k$a.class */
public final class k$a extends b0<AbstractC23114q> {

    /* renamed from: a */
    public volatile b0<URI> f63977a;

    /* renamed from: b */
    public volatile b0<URL> f63978b;

    /* renamed from: c */
    public volatile b0<String> f63979c;

    /* renamed from: d */
    public final k f63980d;

    public k$a(k kVar) {
        this.f63980d = kVar;
    }

    public Object read(a aVar) throws IOException {
        k kVar;
        b bVar = b.i;
        URI uri = null;
        if (aVar.D0() == bVar) {
            aVar.p0();
            kVar = null;
        } else {
            aVar.d();
            URL url = null;
            String str = null;
            while (aVar.I()) {
                String k0 = aVar.k0();
                if (aVar.D0() == bVar) {
                    aVar.p0();
                } else {
                    k0.hashCode();
                    boolean z = true;
                    switch (k0.hashCode()) {
                        case -111772945:
                            if (k0.equals("optoutImageUrl")) {
                                z = false;
                                break;
                            }
                            break;
                        case 763886698:
                            if (k0.equals("longLegalText")) {
                                z = true;
                                break;
                            }
                            break;
                        case 1654281122:
                            if (k0.equals("optoutClickUrl")) {
                                z = true;
                                break;
                            }
                            break;
                    }
                    switch (z) {
                        case false:
                            b0<URL> b0Var = this.f63978b;
                            b0<URL> b0Var2 = b0Var;
                            if (b0Var == null) {
                                b0Var2 = this.f63980d.i(URL.class);
                                this.f63978b = b0Var2;
                            }
                            url = (URL) b0Var2.read(aVar);
                            continue;
                        case true:
                            b0<String> b0Var3 = this.f63979c;
                            b0<String> b0Var4 = b0Var3;
                            if (b0Var3 == null) {
                                b0Var4 = this.f63980d.i(String.class);
                                this.f63979c = b0Var4;
                            }
                            str = (String) b0Var4.read(aVar);
                            continue;
                        case true:
                            b0<URI> b0Var5 = this.f63977a;
                            b0<URI> b0Var6 = b0Var5;
                            if (b0Var5 == null) {
                                b0Var6 = this.f63980d.i(URI.class);
                                this.f63977a = b0Var6;
                            }
                            uri = (URI) b0Var6.read(aVar);
                            continue;
                        default:
                            aVar.L0();
                            continue;
                    }
                }
            }
            aVar.q();
            kVar = new k(uri, url, str);
        }
        return kVar;
    }

    public String toString() {
        return "TypeAdapter(NativePrivacy)";
    }

    public void write(c cVar, Object obj) throws IOException {
        AbstractC23114q abstractC23114q = (AbstractC23114q) obj;
        if (abstractC23114q == null) {
            cVar.I();
            return;
        }
        cVar.j();
        cVar.s("optoutClickUrl");
        if (abstractC23114q.mo7537a() == null) {
            cVar.I();
        } else {
            b0<URI> b0Var = this.f63977a;
            b0<URI> b0Var2 = b0Var;
            if (b0Var == null) {
                b0Var2 = this.f63980d.i(URI.class);
                this.f63977a = b0Var2;
            }
            b0Var2.write(cVar, abstractC23114q.mo7537a());
        }
        cVar.s("optoutImageUrl");
        if (abstractC23114q.mo7536b() == null) {
            cVar.I();
        } else {
            b0<URL> b0Var3 = this.f63978b;
            b0<URL> b0Var4 = b0Var3;
            if (b0Var3 == null) {
                b0Var4 = this.f63980d.i(URL.class);
                this.f63978b = b0Var4;
            }
            b0Var4.write(cVar, abstractC23114q.mo7536b());
        }
        cVar.s("longLegalText");
        if (abstractC23114q.mo7535c() == null) {
            cVar.I();
        } else {
            b0<String> b0Var5 = this.f63979c;
            b0<String> b0Var6 = b0Var5;
            if (b0Var5 == null) {
                b0Var6 = this.f63980d.i(String.class);
                this.f63979c = b0Var6;
            }
            b0Var6.write(cVar, abstractC23114q.mo7535c());
        }
        cVar.q();
    }
}
