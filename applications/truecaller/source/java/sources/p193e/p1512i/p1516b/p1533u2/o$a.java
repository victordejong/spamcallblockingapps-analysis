package p193e.p1512i.p1516b.p1533u2;

import e.m.e.b0;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.c;
import e.m.e.k;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Map;
/* renamed from: e.i.b.u2.o$a */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/o$a.class */
public final class o$a extends b0<AbstractC23120e0> {

    /* renamed from: a */
    public volatile b0<String> f64047a;

    /* renamed from: b */
    public volatile b0<Map<String, Object>> f64048b;

    /* renamed from: c */
    public final k f64049c;

    public o$a(k kVar) {
        this.f64049c = kVar;
    }

    public Object read(a aVar) throws IOException {
        o oVar;
        b bVar = b.i;
        if (aVar.D0() == bVar) {
            aVar.p0();
            oVar = null;
        } else {
            aVar.d();
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            Map map = null;
            while (aVar.I()) {
                String k0 = aVar.k0();
                if (aVar.D0() == bVar) {
                    aVar.p0();
                } else {
                    k0.hashCode();
                    if ("deviceId".equals(k0)) {
                        b0<String> b0Var = this.f64047a;
                        b0<String> b0Var2 = b0Var;
                        if (b0Var == null) {
                            b0Var2 = this.f64049c.i(String.class);
                            this.f64047a = b0Var2;
                        }
                        str = (String) b0Var2.read(aVar);
                    } else if ("deviceIdType".equals(k0)) {
                        b0<String> b0Var3 = this.f64047a;
                        b0<String> b0Var4 = b0Var3;
                        if (b0Var3 == null) {
                            b0Var4 = this.f64049c.i(String.class);
                            this.f64047a = b0Var4;
                        }
                        str2 = (String) b0Var4.read(aVar);
                    } else if ("deviceOs".equals(k0)) {
                        b0<String> b0Var5 = this.f64047a;
                        b0<String> b0Var6 = b0Var5;
                        if (b0Var5 == null) {
                            b0Var6 = this.f64049c.i(String.class);
                            this.f64047a = b0Var6;
                        }
                        str3 = (String) b0Var6.read(aVar);
                    } else if ("mopubConsent".equals(k0)) {
                        b0<String> b0Var7 = this.f64047a;
                        b0<String> b0Var8 = b0Var7;
                        if (b0Var7 == null) {
                            b0Var8 = this.f64049c.i(String.class);
                            this.f64047a = b0Var8;
                        }
                        str4 = (String) b0Var8.read(aVar);
                    } else if ("uspIab".equals(k0)) {
                        b0<String> b0Var9 = this.f64047a;
                        b0<String> b0Var10 = b0Var9;
                        if (b0Var9 == null) {
                            b0Var10 = this.f64049c.i(String.class);
                            this.f64047a = b0Var10;
                        }
                        str5 = (String) b0Var10.read(aVar);
                    } else if ("uspOptout".equals(k0)) {
                        b0<String> b0Var11 = this.f64047a;
                        b0<String> b0Var12 = b0Var11;
                        if (b0Var11 == null) {
                            b0Var12 = this.f64049c.i(String.class);
                            this.f64047a = b0Var12;
                        }
                        str6 = (String) b0Var12.read(aVar);
                    } else if ("ext".equals(k0)) {
                        b0<Map<String, Object>> b0Var13 = this.f64048b;
                        b0<Map<String, Object>> b0Var14 = b0Var13;
                        if (b0Var13 == null) {
                            b0Var14 = this.f64049c.h(e.m.e.f0.a.getParameterized(Map.class, new Type[]{String.class, Object.class}));
                            this.f64048b = b0Var14;
                        }
                        map = (Map) b0Var14.read(aVar);
                    } else {
                        aVar.L0();
                    }
                }
            }
            aVar.q();
            oVar = new o(str, str2, str3, str4, str5, str6, map);
        }
        return oVar;
    }

    public String toString() {
        return "TypeAdapter(User)";
    }

    public void write(c cVar, Object obj) throws IOException {
        AbstractC23120e0 abstractC23120e0 = (AbstractC23120e0) obj;
        if (abstractC23120e0 == null) {
            cVar.I();
            return;
        }
        cVar.j();
        cVar.s("deviceId");
        if (abstractC23120e0.mo7506a() == null) {
            cVar.I();
        } else {
            b0<String> b0Var = this.f64047a;
            b0<String> b0Var2 = b0Var;
            if (b0Var == null) {
                b0Var2 = this.f64049c.i(String.class);
                this.f64047a = b0Var2;
            }
            b0Var2.write(cVar, abstractC23120e0.mo7506a());
        }
        cVar.s("deviceIdType");
        if (abstractC23120e0.mo7505b() == null) {
            cVar.I();
        } else {
            b0<String> b0Var3 = this.f64047a;
            b0<String> b0Var4 = b0Var3;
            if (b0Var3 == null) {
                b0Var4 = this.f64049c.i(String.class);
                this.f64047a = b0Var4;
            }
            b0Var4.write(cVar, abstractC23120e0.mo7505b());
        }
        cVar.s("deviceOs");
        if (abstractC23120e0.mo7504c() == null) {
            cVar.I();
        } else {
            b0<String> b0Var5 = this.f64047a;
            b0<String> b0Var6 = b0Var5;
            if (b0Var5 == null) {
                b0Var6 = this.f64049c.i(String.class);
                this.f64047a = b0Var6;
            }
            b0Var6.write(cVar, abstractC23120e0.mo7504c());
        }
        cVar.s("mopubConsent");
        if (abstractC23120e0.mo7502e() == null) {
            cVar.I();
        } else {
            b0<String> b0Var7 = this.f64047a;
            b0<String> b0Var8 = b0Var7;
            if (b0Var7 == null) {
                b0Var8 = this.f64049c.i(String.class);
                this.f64047a = b0Var8;
            }
            b0Var8.write(cVar, abstractC23120e0.mo7502e());
        }
        cVar.s("uspIab");
        if (abstractC23120e0.mo7501f() == null) {
            cVar.I();
        } else {
            b0<String> b0Var9 = this.f64047a;
            b0<String> b0Var10 = b0Var9;
            if (b0Var9 == null) {
                b0Var10 = this.f64049c.i(String.class);
                this.f64047a = b0Var10;
            }
            b0Var10.write(cVar, abstractC23120e0.mo7501f());
        }
        cVar.s("uspOptout");
        if (abstractC23120e0.mo7500g() == null) {
            cVar.I();
        } else {
            b0<String> b0Var11 = this.f64047a;
            b0<String> b0Var12 = b0Var11;
            if (b0Var11 == null) {
                b0Var12 = this.f64049c.i(String.class);
                this.f64047a = b0Var12;
            }
            b0Var12.write(cVar, abstractC23120e0.mo7500g());
        }
        cVar.s("ext");
        if (abstractC23120e0.mo7503d() == null) {
            cVar.I();
        } else {
            b0<Map<String, Object>> b0Var13 = this.f64048b;
            b0<Map<String, Object>> b0Var14 = b0Var13;
            if (b0Var13 == null) {
                b0Var14 = this.f64049c.h(e.m.e.f0.a.getParameterized(Map.class, new Type[]{String.class, Object.class}));
                this.f64048b = b0Var14;
            }
            b0Var14.write(cVar, abstractC23120e0.mo7503d());
        }
        cVar.q();
    }
}
