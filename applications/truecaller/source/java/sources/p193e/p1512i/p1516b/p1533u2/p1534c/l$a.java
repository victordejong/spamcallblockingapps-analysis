package p193e.p1512i.p1516b.p1533u2.p1534c;

import e.m.e.b0;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.c;
import e.m.e.k;
import java.io.IOException;
import java.net.URI;
/* renamed from: e.i.b.u2.c.l$a */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/c/l$a.class */
public final class l$a extends b0<AbstractC23115r> {

    /* renamed from: a */
    public volatile b0<String> f63981a;

    /* renamed from: b */
    public volatile b0<URI> f63982b;

    /* renamed from: c */
    public volatile b0<AbstractC23112o> f63983c;

    /* renamed from: d */
    public final k f63984d;

    public l$a(k kVar) {
        this.f63984d = kVar;
    }

    public Object read(a aVar) throws IOException {
        l lVar;
        b bVar = b.i;
        if (aVar.D0() == bVar) {
            aVar.p0();
            lVar = null;
        } else {
            aVar.d();
            String str = null;
            String str2 = null;
            String str3 = null;
            URI uri = null;
            String str4 = null;
            AbstractC23112o abstractC23112o = null;
            while (aVar.I()) {
                String k0 = aVar.k0();
                if (aVar.D0() == bVar) {
                    aVar.p0();
                } else {
                    k0.hashCode();
                    if ("title".equals(k0)) {
                        b0<String> b0Var = this.f63981a;
                        b0<String> b0Var2 = b0Var;
                        if (b0Var == null) {
                            b0Var2 = this.f63984d.i(String.class);
                            this.f63981a = b0Var2;
                        }
                        str = (String) b0Var2.read(aVar);
                    } else if ("description".equals(k0)) {
                        b0<String> b0Var3 = this.f63981a;
                        b0<String> b0Var4 = b0Var3;
                        if (b0Var3 == null) {
                            b0Var4 = this.f63984d.i(String.class);
                            this.f63981a = b0Var4;
                        }
                        str2 = (String) b0Var4.read(aVar);
                    } else if ("price".equals(k0)) {
                        b0<String> b0Var5 = this.f63981a;
                        b0<String> b0Var6 = b0Var5;
                        if (b0Var5 == null) {
                            b0Var6 = this.f63984d.i(String.class);
                            this.f63981a = b0Var6;
                        }
                        str3 = (String) b0Var6.read(aVar);
                    } else if ("clickUrl".equals(k0)) {
                        b0<URI> b0Var7 = this.f63982b;
                        b0<URI> b0Var8 = b0Var7;
                        if (b0Var7 == null) {
                            b0Var8 = this.f63984d.i(URI.class);
                            this.f63982b = b0Var8;
                        }
                        uri = (URI) b0Var8.read(aVar);
                    } else if ("callToAction".equals(k0)) {
                        b0<String> b0Var9 = this.f63981a;
                        b0<String> b0Var10 = b0Var9;
                        if (b0Var9 == null) {
                            b0Var10 = this.f63984d.i(String.class);
                            this.f63981a = b0Var10;
                        }
                        str4 = (String) b0Var10.read(aVar);
                    } else if ("image".equals(k0)) {
                        b0<AbstractC23112o> b0Var11 = this.f63983c;
                        b0<AbstractC23112o> b0Var12 = b0Var11;
                        if (b0Var11 == null) {
                            b0Var12 = this.f63984d.i(AbstractC23112o.class);
                            this.f63983c = b0Var12;
                        }
                        abstractC23112o = (AbstractC23112o) b0Var12.read(aVar);
                    } else {
                        aVar.L0();
                    }
                }
            }
            aVar.q();
            lVar = new l(str, str2, str3, uri, str4, abstractC23112o);
        }
        return lVar;
    }

    public String toString() {
        return "TypeAdapter(NativeProduct)";
    }

    public void write(c cVar, Object obj) throws IOException {
        AbstractC23115r abstractC23115r = (AbstractC23115r) obj;
        if (abstractC23115r == null) {
            cVar.I();
            return;
        }
        cVar.j();
        cVar.s("title");
        if (abstractC23115r.mo7528g() == null) {
            cVar.I();
        } else {
            b0<String> b0Var = this.f63981a;
            b0<String> b0Var2 = b0Var;
            if (b0Var == null) {
                b0Var2 = this.f63984d.i(String.class);
                this.f63981a = b0Var2;
            }
            b0Var2.write(cVar, abstractC23115r.mo7528g());
        }
        cVar.s("description");
        if (abstractC23115r.mo7532c() == null) {
            cVar.I();
        } else {
            b0<String> b0Var3 = this.f63981a;
            b0<String> b0Var4 = b0Var3;
            if (b0Var3 == null) {
                b0Var4 = this.f63984d.i(String.class);
                this.f63981a = b0Var4;
            }
            b0Var4.write(cVar, abstractC23115r.mo7532c());
        }
        cVar.s("price");
        if (abstractC23115r.mo7529f() == null) {
            cVar.I();
        } else {
            b0<String> b0Var5 = this.f63981a;
            b0<String> b0Var6 = b0Var5;
            if (b0Var5 == null) {
                b0Var6 = this.f63984d.i(String.class);
                this.f63981a = b0Var6;
            }
            b0Var6.write(cVar, abstractC23115r.mo7529f());
        }
        cVar.s("clickUrl");
        if (abstractC23115r.mo7533b() == null) {
            cVar.I();
        } else {
            b0<URI> b0Var7 = this.f63982b;
            b0<URI> b0Var8 = b0Var7;
            if (b0Var7 == null) {
                b0Var8 = this.f63984d.i(URI.class);
                this.f63982b = b0Var8;
            }
            b0Var8.write(cVar, abstractC23115r.mo7533b());
        }
        cVar.s("callToAction");
        if (abstractC23115r.mo7534a() == null) {
            cVar.I();
        } else {
            b0<String> b0Var9 = this.f63981a;
            b0<String> b0Var10 = b0Var9;
            if (b0Var9 == null) {
                b0Var10 = this.f63984d.i(String.class);
                this.f63981a = b0Var10;
            }
            b0Var10.write(cVar, abstractC23115r.mo7534a());
        }
        cVar.s("image");
        if (abstractC23115r.mo7531d() == null) {
            cVar.I();
        } else {
            b0<AbstractC23112o> b0Var11 = this.f63983c;
            b0<AbstractC23112o> b0Var12 = b0Var11;
            if (b0Var11 == null) {
                b0Var12 = this.f63984d.i(AbstractC23112o.class);
                this.f63983c = b0Var12;
            }
            b0Var12.write(cVar, abstractC23115r.mo7531d());
        }
        cVar.q();
    }
}
