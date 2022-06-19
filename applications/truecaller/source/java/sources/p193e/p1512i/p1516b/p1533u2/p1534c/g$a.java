package p193e.p1512i.p1516b.p1533u2.p1534c;

import e.m.e.b0;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.c;
import e.m.e.k;
import java.io.IOException;
import java.net.URI;
/* renamed from: e.i.b.u2.c.g$a */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/c/g$a.class */
public final class g$a extends b0<AbstractC23110m> {

    /* renamed from: a */
    public volatile b0<String> f63964a;

    /* renamed from: b */
    public volatile b0<URI> f63965b;

    /* renamed from: c */
    public volatile b0<AbstractC23112o> f63966c;

    /* renamed from: d */
    public final k f63967d;

    public g$a(k kVar) {
        this.f63967d = kVar;
    }

    public Object read(a aVar) throws IOException {
        g gVar;
        b bVar = b.i;
        String str = null;
        if (aVar.D0() == bVar) {
            aVar.p0();
            gVar = null;
        } else {
            aVar.d();
            String str2 = null;
            URI uri = null;
            AbstractC23112o abstractC23112o = null;
            while (aVar.I()) {
                String k0 = aVar.k0();
                if (aVar.D0() == bVar) {
                    aVar.p0();
                } else {
                    k0.hashCode();
                    if ("domain".equals(k0)) {
                        b0<String> b0Var = this.f63964a;
                        b0<String> b0Var2 = b0Var;
                        if (b0Var == null) {
                            b0Var2 = this.f63967d.i(String.class);
                            this.f63964a = b0Var2;
                        }
                        str = (String) b0Var2.read(aVar);
                    } else if ("description".equals(k0)) {
                        b0<String> b0Var3 = this.f63964a;
                        b0<String> b0Var4 = b0Var3;
                        if (b0Var3 == null) {
                            b0Var4 = this.f63967d.i(String.class);
                            this.f63964a = b0Var4;
                        }
                        str2 = (String) b0Var4.read(aVar);
                    } else if ("logoClickUrl".equals(k0)) {
                        b0<URI> b0Var5 = this.f63965b;
                        b0<URI> b0Var6 = b0Var5;
                        if (b0Var5 == null) {
                            b0Var6 = this.f63967d.i(URI.class);
                            this.f63965b = b0Var6;
                        }
                        uri = (URI) b0Var6.read(aVar);
                    } else if ("logo".equals(k0)) {
                        b0<AbstractC23112o> b0Var7 = this.f63966c;
                        b0<AbstractC23112o> b0Var8 = b0Var7;
                        if (b0Var7 == null) {
                            b0Var8 = this.f63967d.i(AbstractC23112o.class);
                            this.f63966c = b0Var8;
                        }
                        abstractC23112o = (AbstractC23112o) b0Var8.read(aVar);
                    } else {
                        aVar.L0();
                    }
                }
            }
            aVar.q();
            gVar = new g(str, str2, uri, abstractC23112o);
        }
        return gVar;
    }

    public String toString() {
        return "TypeAdapter(NativeAdvertiser)";
    }

    public void write(c cVar, Object obj) throws IOException {
        AbstractC23110m abstractC23110m = (AbstractC23110m) obj;
        if (abstractC23110m == null) {
            cVar.I();
            return;
        }
        cVar.j();
        cVar.s("domain");
        if (abstractC23110m.mo7550b() == null) {
            cVar.I();
        } else {
            b0<String> b0Var = this.f63964a;
            b0<String> b0Var2 = b0Var;
            if (b0Var == null) {
                b0Var2 = this.f63967d.i(String.class);
                this.f63964a = b0Var2;
            }
            b0Var2.write(cVar, abstractC23110m.mo7550b());
        }
        cVar.s("description");
        if (abstractC23110m.mo7551a() == null) {
            cVar.I();
        } else {
            b0<String> b0Var3 = this.f63964a;
            b0<String> b0Var4 = b0Var3;
            if (b0Var3 == null) {
                b0Var4 = this.f63967d.i(String.class);
                this.f63964a = b0Var4;
            }
            b0Var4.write(cVar, abstractC23110m.mo7551a());
        }
        cVar.s("logoClickUrl");
        if (abstractC23110m.mo7548d() == null) {
            cVar.I();
        } else {
            b0<URI> b0Var5 = this.f63965b;
            b0<URI> b0Var6 = b0Var5;
            if (b0Var5 == null) {
                b0Var6 = this.f63967d.i(URI.class);
                this.f63965b = b0Var6;
            }
            b0Var6.write(cVar, abstractC23110m.mo7548d());
        }
        cVar.s("logo");
        if (abstractC23110m.mo7549c() == null) {
            cVar.I();
        } else {
            b0<AbstractC23112o> b0Var7 = this.f63966c;
            b0<AbstractC23112o> b0Var8 = b0Var7;
            if (b0Var7 == null) {
                b0Var8 = this.f63967d.i(AbstractC23112o.class);
                this.f63966c = b0Var8;
            }
            b0Var8.write(cVar, abstractC23110m.mo7549c());
        }
        cVar.q();
    }
}
