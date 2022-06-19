package p193e.p1512i.p1516b.p1537z1;

import e.m.e.b0;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.c;
import e.m.e.k;
import java.io.IOException;
import p193e.p1512i.p1516b.p1537z1.AbstractC23177d0;
/* renamed from: e.i.b.z1.r$a */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/r$a.class */
public final class r$a extends b0<AbstractC23177d0.AbstractC23179b> {

    /* renamed from: a */
    public volatile b0<String> f64237a;

    /* renamed from: b */
    public volatile b0<Integer> f64238b;

    /* renamed from: c */
    public volatile b0<Boolean> f64239c;

    /* renamed from: d */
    public final k f64240d;

    public r$a(k kVar) {
        this.f64240d = kVar;
    }

    public Object read(a aVar) throws IOException {
        r rVar;
        b bVar = b.i;
        String str = null;
        if (aVar.D0() == bVar) {
            aVar.p0();
            rVar = null;
        } else {
            aVar.d();
            boolean z = false;
            Integer num = null;
            while (aVar.I()) {
                String k0 = aVar.k0();
                if (aVar.D0() == bVar) {
                    aVar.p0();
                } else {
                    k0.hashCode();
                    if ("impressionId".equals(k0)) {
                        b0<String> b0Var = this.f64237a;
                        b0<String> b0Var2 = b0Var;
                        if (b0Var == null) {
                            b0Var2 = this.f64240d.i(String.class);
                            this.f64237a = b0Var2;
                        }
                        str = (String) b0Var2.read(aVar);
                    } else if ("zoneId".equals(k0)) {
                        b0<Integer> b0Var3 = this.f64238b;
                        b0<Integer> b0Var4 = b0Var3;
                        if (b0Var3 == null) {
                            b0Var4 = this.f64240d.i(Integer.class);
                            this.f64238b = b0Var4;
                        }
                        num = (Integer) b0Var4.read(aVar);
                    } else if ("cachedBidUsed".equals(k0)) {
                        b0<Boolean> b0Var5 = this.f64239c;
                        b0<Boolean> b0Var6 = b0Var5;
                        if (b0Var5 == null) {
                            b0Var6 = this.f64240d.i(Boolean.class);
                            this.f64239c = b0Var6;
                        }
                        z = ((Boolean) b0Var6.read(aVar)).booleanValue();
                    } else {
                        aVar.L0();
                    }
                }
            }
            aVar.q();
            rVar = new r(str, num, z);
        }
        return rVar;
    }

    public String toString() {
        return "TypeAdapter(MetricRequest.MetricRequestSlot)";
    }

    public void write(c cVar, Object obj) throws IOException {
        AbstractC23177d0.AbstractC23179b abstractC23179b = (AbstractC23177d0.AbstractC23179b) obj;
        if (abstractC23179b == null) {
            cVar.I();
            return;
        }
        cVar.j();
        cVar.s("impressionId");
        if (abstractC23179b.mo7395b() == null) {
            cVar.I();
        } else {
            b0<String> b0Var = this.f64237a;
            b0<String> b0Var2 = b0Var;
            if (b0Var == null) {
                b0Var2 = this.f64240d.i(String.class);
                this.f64237a = b0Var2;
            }
            b0Var2.write(cVar, abstractC23179b.mo7395b());
        }
        cVar.s("zoneId");
        if (abstractC23179b.mo7394c() == null) {
            cVar.I();
        } else {
            b0<Integer> b0Var3 = this.f64238b;
            b0<Integer> b0Var4 = b0Var3;
            if (b0Var3 == null) {
                b0Var4 = this.f64240d.i(Integer.class);
                this.f64238b = b0Var4;
            }
            b0Var4.write(cVar, abstractC23179b.mo7394c());
        }
        cVar.s("cachedBidUsed");
        b0<Boolean> b0Var5 = this.f64239c;
        b0<Boolean> b0Var6 = b0Var5;
        if (b0Var5 == null) {
            b0Var6 = this.f64240d.i(Boolean.class);
            this.f64239c = b0Var6;
        }
        b0Var6.write(cVar, Boolean.valueOf(abstractC23179b.mo7396a()));
        cVar.q();
    }
}
