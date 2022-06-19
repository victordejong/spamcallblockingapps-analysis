package p193e.p1512i.p1516b.p1533u2.p1534c;

import e.m.e.b0;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.c;
import e.m.e.k;
import java.io.IOException;
import java.net.URL;
/* renamed from: e.i.b.u2.c.i$a */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/c/i$a.class */
public final class i$a extends b0<AbstractC23112o> {

    /* renamed from: a */
    public volatile b0<URL> f63973a;

    /* renamed from: b */
    public final k f63974b;

    public i$a(k kVar) {
        this.f63974b = kVar;
    }

    public Object read(a aVar) throws IOException {
        i iVar;
        b bVar = b.i;
        URL url = null;
        if (aVar.D0() == bVar) {
            aVar.p0();
            iVar = null;
        } else {
            aVar.d();
            while (aVar.I()) {
                String k0 = aVar.k0();
                if (aVar.D0() == bVar) {
                    aVar.p0();
                } else {
                    k0.hashCode();
                    if ("url".equals(k0)) {
                        b0<URL> b0Var = this.f63973a;
                        b0<URL> b0Var2 = b0Var;
                        if (b0Var == null) {
                            b0Var2 = this.f63974b.i(URL.class);
                            this.f63973a = b0Var2;
                        }
                        url = (URL) b0Var2.read(aVar);
                    } else {
                        aVar.L0();
                    }
                }
            }
            aVar.q();
            iVar = new i(url);
        }
        return iVar;
    }

    public String toString() {
        return "TypeAdapter(NativeImage)";
    }

    public void write(c cVar, Object obj) throws IOException {
        AbstractC23112o abstractC23112o = (AbstractC23112o) obj;
        if (abstractC23112o == null) {
            cVar.I();
            return;
        }
        cVar.j();
        cVar.s("url");
        if (abstractC23112o.mo7539a() == null) {
            cVar.I();
        } else {
            b0<URL> b0Var = this.f63973a;
            b0<URL> b0Var2 = b0Var;
            if (b0Var == null) {
                b0Var2 = this.f63974b.i(URL.class);
                this.f63973a = b0Var2;
            }
            b0Var2.write(cVar, abstractC23112o.mo7539a());
        }
        cVar.q();
    }
}
