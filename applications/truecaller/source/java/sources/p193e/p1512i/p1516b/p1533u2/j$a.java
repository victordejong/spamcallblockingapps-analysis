package p193e.p1512i.p1516b.p1533u2;

import e.m.e.b0;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.c;
import e.m.e.k;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;
import p193e.p1512i.p1516b.p1523l2.p1524c.AbstractC22980c;
/* renamed from: e.i.b.u2.j$a */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/j$a.class */
public final class j$a extends b0<AbstractC23127q> {

    /* renamed from: a */
    public volatile b0<String> f64025a;

    /* renamed from: b */
    public volatile b0<AbstractC23101a0> f64026b;

    /* renamed from: c */
    public volatile b0<AbstractC23120e0> f64027c;

    /* renamed from: d */
    public volatile b0<Integer> f64028d;

    /* renamed from: e */
    public volatile b0<AbstractC22980c> f64029e;

    /* renamed from: f */
    public volatile b0<List<AbstractC23129s>> f64030f;

    /* renamed from: g */
    public final k f64031g;

    public j$a(k kVar) {
        this.f64031g = kVar;
    }

    public Object read(a aVar) throws IOException {
        j jVar;
        b bVar = b.i;
        if (aVar.D0() == bVar) {
            aVar.p0();
            jVar = null;
        } else {
            aVar.d();
            int i = 0;
            String str = null;
            AbstractC23101a0 abstractC23101a0 = null;
            AbstractC23120e0 abstractC23120e0 = null;
            String str2 = null;
            AbstractC22980c abstractC22980c = null;
            List list = null;
            while (aVar.I()) {
                String k0 = aVar.k0();
                if (aVar.D0() == bVar) {
                    aVar.p0();
                } else {
                    k0.hashCode();
                    if (k0.equals("gdprConsent")) {
                        b0<AbstractC22980c> b0Var = this.f64029e;
                        b0<AbstractC22980c> b0Var2 = b0Var;
                        if (b0Var == null) {
                            b0Var2 = this.f64031g.i(AbstractC22980c.class);
                            this.f64029e = b0Var2;
                        }
                        abstractC22980c = (AbstractC22980c) b0Var2.read(aVar);
                    } else if ("id".equals(k0)) {
                        b0<String> b0Var3 = this.f64025a;
                        b0<String> b0Var4 = b0Var3;
                        if (b0Var3 == null) {
                            b0Var4 = this.f64031g.i(String.class);
                            this.f64025a = b0Var4;
                        }
                        str = (String) b0Var4.read(aVar);
                    } else if ("publisher".equals(k0)) {
                        b0<AbstractC23101a0> b0Var5 = this.f64026b;
                        b0<AbstractC23101a0> b0Var6 = b0Var5;
                        if (b0Var5 == null) {
                            b0Var6 = this.f64031g.i(AbstractC23101a0.class);
                            this.f64026b = b0Var6;
                        }
                        abstractC23101a0 = (AbstractC23101a0) b0Var6.read(aVar);
                    } else if ("user".equals(k0)) {
                        b0<AbstractC23120e0> b0Var7 = this.f64027c;
                        b0<AbstractC23120e0> b0Var8 = b0Var7;
                        if (b0Var7 == null) {
                            b0Var8 = this.f64031g.i(AbstractC23120e0.class);
                            this.f64027c = b0Var8;
                        }
                        abstractC23120e0 = (AbstractC23120e0) b0Var8.read(aVar);
                    } else if ("sdkVersion".equals(k0)) {
                        b0<String> b0Var9 = this.f64025a;
                        b0<String> b0Var10 = b0Var9;
                        if (b0Var9 == null) {
                            b0Var10 = this.f64031g.i(String.class);
                            this.f64025a = b0Var10;
                        }
                        str2 = (String) b0Var10.read(aVar);
                    } else if ("profileId".equals(k0)) {
                        b0<Integer> b0Var11 = this.f64028d;
                        b0<Integer> b0Var12 = b0Var11;
                        if (b0Var11 == null) {
                            b0Var12 = this.f64031g.i(Integer.class);
                            this.f64028d = b0Var12;
                        }
                        i = ((Integer) b0Var12.read(aVar)).intValue();
                    } else if ("slots".equals(k0)) {
                        b0<List<AbstractC23129s>> b0Var13 = this.f64030f;
                        b0<List<AbstractC23129s>> b0Var14 = b0Var13;
                        if (b0Var13 == null) {
                            b0Var14 = this.f64031g.h(e.m.e.f0.a.getParameterized(List.class, new Type[]{AbstractC23129s.class}));
                            this.f64030f = b0Var14;
                        }
                        list = (List) b0Var14.read(aVar);
                    } else {
                        aVar.L0();
                    }
                }
            }
            aVar.q();
            jVar = new j(str, abstractC23101a0, abstractC23120e0, str2, i, abstractC22980c, list);
        }
        return jVar;
    }

    public String toString() {
        return "TypeAdapter(CdbRequest)";
    }

    public void write(c cVar, Object obj) throws IOException {
        AbstractC23127q abstractC23127q = (AbstractC23127q) obj;
        if (abstractC23127q == null) {
            cVar.I();
            return;
        }
        cVar.j();
        cVar.s("id");
        if (abstractC23127q.mo7497b() == null) {
            cVar.I();
        } else {
            b0<String> b0Var = this.f64025a;
            b0<String> b0Var2 = b0Var;
            if (b0Var == null) {
                b0Var2 = this.f64031g.i(String.class);
                this.f64025a = b0Var2;
            }
            b0Var2.write(cVar, abstractC23127q.mo7497b());
        }
        cVar.s("publisher");
        if (abstractC23127q.mo7495d() == null) {
            cVar.I();
        } else {
            b0<AbstractC23101a0> b0Var3 = this.f64026b;
            b0<AbstractC23101a0> b0Var4 = b0Var3;
            if (b0Var3 == null) {
                b0Var4 = this.f64031g.i(AbstractC23101a0.class);
                this.f64026b = b0Var4;
            }
            b0Var4.write(cVar, abstractC23127q.mo7495d());
        }
        cVar.s("user");
        if (abstractC23127q.mo7492g() == null) {
            cVar.I();
        } else {
            b0<AbstractC23120e0> b0Var5 = this.f64027c;
            b0<AbstractC23120e0> b0Var6 = b0Var5;
            if (b0Var5 == null) {
                b0Var6 = this.f64031g.i(AbstractC23120e0.class);
                this.f64027c = b0Var6;
            }
            b0Var6.write(cVar, abstractC23127q.mo7492g());
        }
        cVar.s("sdkVersion");
        if (abstractC23127q.mo7494e() == null) {
            cVar.I();
        } else {
            b0<String> b0Var7 = this.f64025a;
            b0<String> b0Var8 = b0Var7;
            if (b0Var7 == null) {
                b0Var8 = this.f64031g.i(String.class);
                this.f64025a = b0Var8;
            }
            b0Var8.write(cVar, abstractC23127q.mo7494e());
        }
        cVar.s("profileId");
        b0<Integer> b0Var9 = this.f64028d;
        b0<Integer> b0Var10 = b0Var9;
        if (b0Var9 == null) {
            b0Var10 = this.f64031g.i(Integer.class);
            this.f64028d = b0Var10;
        }
        b0Var10.write(cVar, Integer.valueOf(abstractC23127q.mo7496c()));
        cVar.s("gdprConsent");
        if (abstractC23127q.mo7498a() == null) {
            cVar.I();
        } else {
            b0<AbstractC22980c> b0Var11 = this.f64029e;
            b0<AbstractC22980c> b0Var12 = b0Var11;
            if (b0Var11 == null) {
                b0Var12 = this.f64031g.i(AbstractC22980c.class);
                this.f64029e = b0Var12;
            }
            b0Var12.write(cVar, abstractC23127q.mo7498a());
        }
        cVar.s("slots");
        if (abstractC23127q.mo7493f() == null) {
            cVar.I();
        } else {
            b0<List<AbstractC23129s>> b0Var13 = this.f64030f;
            b0<List<AbstractC23129s>> b0Var14 = b0Var13;
            if (b0Var13 == null) {
                b0Var14 = this.f64031g.h(e.m.e.f0.a.getParameterized(List.class, new Type[]{AbstractC23129s.class}));
                this.f64030f = b0Var14;
            }
            b0Var14.write(cVar, abstractC23127q.mo7493f());
        }
        cVar.q();
    }
}
