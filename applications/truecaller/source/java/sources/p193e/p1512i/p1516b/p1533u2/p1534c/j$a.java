package p193e.p1512i.p1516b.p1533u2.p1534c;

import e.m.e.b0;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.c;
import e.m.e.k;
import java.io.IOException;
import java.net.URL;
/* renamed from: e.i.b.u2.c.j$a */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/c/j$a.class */
public final class j$a extends b0<AbstractC23113p> {

    /* renamed from: a */
    public volatile b0<URL> f63975a;

    /* renamed from: b */
    public final k f63976b;

    public j$a(k kVar) {
        this.f63976b = kVar;
    }

    public Object read(a aVar) throws IOException {
        j jVar;
        b bVar = b.i;
        URL url = null;
        if (aVar.D0() == bVar) {
            aVar.p0();
            jVar = null;
        } else {
            aVar.d();
            while (aVar.I()) {
                String k0 = aVar.k0();
                if (aVar.D0() == bVar) {
                    aVar.p0();
                } else {
                    k0.hashCode();
                    if ("url".equals(k0)) {
                        b0<URL> b0Var = this.f63975a;
                        b0<URL> b0Var2 = b0Var;
                        if (b0Var == null) {
                            b0Var2 = this.f63976b.i(URL.class);
                            this.f63975a = b0Var2;
                        }
                        url = (URL) b0Var2.read(aVar);
                    } else {
                        aVar.L0();
                    }
                }
            }
            aVar.q();
            jVar = new j(url);
        }
        return jVar;
    }

    public String toString() {
        return "TypeAdapter(NativeImpressionPixel)";
    }

    public void write(c cVar, Object obj) throws IOException {
        AbstractC23113p abstractC23113p = (AbstractC23113p) obj;
        if (abstractC23113p == null) {
            cVar.I();
            return;
        }
        cVar.j();
        cVar.s("url");
        if (abstractC23113p.mo7538a() == null) {
            cVar.I();
        } else {
            b0<URL> b0Var = this.f63975a;
            b0<URL> b0Var2 = b0Var;
            if (b0Var == null) {
                b0Var2 = this.f63976b.i(URL.class);
                this.f63975a = b0Var2;
            }
            b0Var2.write(cVar, abstractC23113p.mo7538a());
        }
        cVar.q();
    }
}
