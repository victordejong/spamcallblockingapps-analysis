package p193e.p1512i.p1516b.p1533u2;

import e.m.e.b0;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.c;
import e.m.e.k;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Map;
/* renamed from: e.i.b.u2.l$a */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/l$a.class */
public final class l$a extends b0<AbstractC23101a0> {

    /* renamed from: a */
    public volatile b0<String> f64036a;

    /* renamed from: b */
    public volatile b0<Map<String, Object>> f64037b;

    /* renamed from: c */
    public final k f64038c;

    public l$a(k kVar) {
        this.f64038c = kVar;
    }

    public Object read(a aVar) throws IOException {
        l lVar;
        b bVar = b.i;
        String str = null;
        if (aVar.D0() == bVar) {
            aVar.p0();
            lVar = null;
        } else {
            aVar.d();
            String str2 = null;
            Map map = null;
            while (aVar.I()) {
                String k0 = aVar.k0();
                if (aVar.D0() == bVar) {
                    aVar.p0();
                } else {
                    k0.hashCode();
                    if (k0.equals("cpId")) {
                        b0<String> b0Var = this.f64036a;
                        b0<String> b0Var2 = b0Var;
                        if (b0Var == null) {
                            b0Var2 = this.f64038c.i(String.class);
                            this.f64036a = b0Var2;
                        }
                        str2 = (String) b0Var2.read(aVar);
                    } else if ("bundleId".equals(k0)) {
                        b0<String> b0Var3 = this.f64036a;
                        b0<String> b0Var4 = b0Var3;
                        if (b0Var3 == null) {
                            b0Var4 = this.f64038c.i(String.class);
                            this.f64036a = b0Var4;
                        }
                        str = (String) b0Var4.read(aVar);
                    } else if ("ext".equals(k0)) {
                        b0<Map<String, Object>> b0Var5 = this.f64037b;
                        b0<Map<String, Object>> b0Var6 = b0Var5;
                        if (b0Var5 == null) {
                            b0Var6 = this.f64038c.h(e.m.e.f0.a.getParameterized(Map.class, new Type[]{String.class, Object.class}));
                            this.f64037b = b0Var6;
                        }
                        map = (Map) b0Var6.read(aVar);
                    } else {
                        aVar.L0();
                    }
                }
            }
            aVar.q();
            lVar = new l(str, str2, map);
        }
        return lVar;
    }

    public String toString() {
        return "TypeAdapter(Publisher)";
    }

    public void write(c cVar, Object obj) throws IOException {
        AbstractC23101a0 abstractC23101a0 = (AbstractC23101a0) obj;
        if (abstractC23101a0 == null) {
            cVar.I();
            return;
        }
        cVar.j();
        cVar.s("bundleId");
        if (abstractC23101a0.mo7525a() == null) {
            cVar.I();
        } else {
            b0<String> b0Var = this.f64036a;
            b0<String> b0Var2 = b0Var;
            if (b0Var == null) {
                b0Var2 = this.f64038c.i(String.class);
                this.f64036a = b0Var2;
            }
            b0Var2.write(cVar, abstractC23101a0.mo7525a());
        }
        cVar.s("cpId");
        if (abstractC23101a0.mo7524b() == null) {
            cVar.I();
        } else {
            b0<String> b0Var3 = this.f64036a;
            b0<String> b0Var4 = b0Var3;
            if (b0Var3 == null) {
                b0Var4 = this.f64038c.i(String.class);
                this.f64036a = b0Var4;
            }
            b0Var4.write(cVar, abstractC23101a0.mo7524b());
        }
        cVar.s("ext");
        if (abstractC23101a0.mo7523c() == null) {
            cVar.I();
        } else {
            b0<Map<String, Object>> b0Var5 = this.f64037b;
            b0<Map<String, Object>> b0Var6 = b0Var5;
            if (b0Var5 == null) {
                b0Var6 = this.f64038c.h(e.m.e.f0.a.getParameterized(Map.class, new Type[]{String.class, Object.class}));
                this.f64037b = b0Var6;
            }
            b0Var6.write(cVar, abstractC23101a0.mo7523c());
        }
        cVar.q();
    }
}
