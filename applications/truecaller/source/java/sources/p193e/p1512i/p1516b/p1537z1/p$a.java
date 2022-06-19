package p193e.p1512i.p1516b.p1537z1;

import e.m.e.b0;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.c;
import e.m.e.k;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;
import p193e.p1512i.p1516b.p1537z1.AbstractC23177d0;
/* renamed from: e.i.b.z1.p$a */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/p$a.class */
public final class p$a extends b0<AbstractC23177d0> {

    /* renamed from: a */
    public volatile b0<List<AbstractC23177d0.AbstractC23178a>> f64227a;

    /* renamed from: b */
    public volatile b0<String> f64228b;

    /* renamed from: c */
    public volatile b0<Integer> f64229c;

    /* renamed from: d */
    public final k f64230d;

    public p$a(k kVar) {
        this.f64230d = kVar;
    }

    public Object read(a aVar) throws IOException {
        p pVar;
        b bVar = b.i;
        List list = null;
        if (aVar.D0() == bVar) {
            aVar.p0();
            pVar = null;
        } else {
            aVar.d();
            int i = 0;
            String str = null;
            while (aVar.I()) {
                String k0 = aVar.k0();
                if (aVar.D0() == bVar) {
                    aVar.p0();
                } else {
                    k0.hashCode();
                    if (k0.equals("wrapper_version")) {
                        b0<String> b0Var = this.f64228b;
                        b0<String> b0Var2 = b0Var;
                        if (b0Var == null) {
                            b0Var2 = this.f64230d.i(String.class);
                            this.f64228b = b0Var2;
                        }
                        str = (String) b0Var2.read(aVar);
                    } else if (k0.equals("profile_id")) {
                        b0<Integer> b0Var3 = this.f64229c;
                        b0<Integer> b0Var4 = b0Var3;
                        if (b0Var3 == null) {
                            b0Var4 = this.f64230d.i(Integer.class);
                            this.f64229c = b0Var4;
                        }
                        i = ((Integer) b0Var4.read(aVar)).intValue();
                    } else if ("feedbacks".equals(k0)) {
                        b0<List<AbstractC23177d0.AbstractC23178a>> b0Var5 = this.f64227a;
                        b0<List<AbstractC23177d0.AbstractC23178a>> b0Var6 = b0Var5;
                        if (b0Var5 == null) {
                            b0Var6 = this.f64230d.h(e.m.e.f0.a.getParameterized(List.class, new Type[]{AbstractC23177d0.AbstractC23178a.class}));
                            this.f64227a = b0Var6;
                        }
                        list = (List) b0Var6.read(aVar);
                    } else {
                        aVar.L0();
                    }
                }
            }
            aVar.q();
            pVar = new p(list, str, i);
        }
        return pVar;
    }

    public String toString() {
        return "TypeAdapter(MetricRequest)";
    }

    public void write(c cVar, Object obj) throws IOException {
        AbstractC23177d0 abstractC23177d0 = (AbstractC23177d0) obj;
        if (abstractC23177d0 == null) {
            cVar.I();
            return;
        }
        cVar.j();
        cVar.s("feedbacks");
        if (abstractC23177d0.mo7414a() == null) {
            cVar.I();
        } else {
            b0<List<AbstractC23177d0.AbstractC23178a>> b0Var = this.f64227a;
            b0<List<AbstractC23177d0.AbstractC23178a>> b0Var2 = b0Var;
            if (b0Var == null) {
                b0Var2 = this.f64230d.h(e.m.e.f0.a.getParameterized(List.class, new Type[]{AbstractC23177d0.AbstractC23178a.class}));
                this.f64227a = b0Var2;
            }
            b0Var2.write(cVar, abstractC23177d0.mo7414a());
        }
        cVar.s("wrapper_version");
        if (abstractC23177d0.mo7412c() == null) {
            cVar.I();
        } else {
            b0<String> b0Var3 = this.f64228b;
            b0<String> b0Var4 = b0Var3;
            if (b0Var3 == null) {
                b0Var4 = this.f64230d.i(String.class);
                this.f64228b = b0Var4;
            }
            b0Var4.write(cVar, abstractC23177d0.mo7412c());
        }
        cVar.s("profile_id");
        b0<Integer> b0Var5 = this.f64229c;
        b0<Integer> b0Var6 = b0Var5;
        if (b0Var5 == null) {
            b0Var6 = this.f64230d.i(Integer.class);
            this.f64229c = b0Var6;
        }
        b0Var6.write(cVar, Integer.valueOf(abstractC23177d0.mo7413b()));
        cVar.q();
    }
}
