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
/* renamed from: e.i.b.z1.q$a */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/q$a.class */
public final class q$a extends b0<AbstractC23177d0.AbstractC23178a> {

    /* renamed from: a */
    public volatile b0<List<AbstractC23177d0.AbstractC23179b>> f64231a;

    /* renamed from: b */
    public volatile b0<Long> f64232b;

    /* renamed from: c */
    public volatile b0<Boolean> f64233c;

    /* renamed from: d */
    public volatile b0<Long> f64234d;

    /* renamed from: e */
    public volatile b0<String> f64235e;

    /* renamed from: f */
    public final k f64236f;

    public q$a(k kVar) {
        this.f64236f = kVar;
    }

    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    public Object read(a aVar) throws IOException {
        q qVar;
        b bVar = b.i;
        if (aVar.D0() == bVar) {
            aVar.p0();
            qVar = null;
        } else {
            aVar.d();
            boolean z = false;
            List list = null;
            Long l = null;
            Long l2 = null;
            String str = null;
            char c = 0;
            while (aVar.I()) {
                String k0 = aVar.k0();
                if (aVar.D0() == bVar) {
                    aVar.p0();
                } else {
                    k0.hashCode();
                    if (k0.equals("isTimeout")) {
                        b0<Boolean> b0Var = this.f64233c;
                        b0<Boolean> b0Var2 = b0Var;
                        if (b0Var == null) {
                            b0Var2 = this.f64236f.i(Boolean.class);
                            this.f64233c = b0Var2;
                        }
                        z = ((Boolean) b0Var2.read(aVar)).booleanValue();
                    } else if ("slots".equals(k0)) {
                        b0<List<AbstractC23177d0.AbstractC23179b>> b0Var3 = this.f64231a;
                        b0<List<AbstractC23177d0.AbstractC23179b>> b0Var4 = b0Var3;
                        if (b0Var3 == null) {
                            b0Var4 = this.f64236f.h(e.m.e.f0.a.getParameterized(List.class, new Type[]{AbstractC23177d0.AbstractC23179b.class}));
                            this.f64231a = b0Var4;
                        }
                        list = (List) b0Var4.read(aVar);
                    } else if ("elapsed".equals(k0)) {
                        b0<Long> b0Var5 = this.f64232b;
                        b0<Long> b0Var6 = b0Var5;
                        if (b0Var5 == null) {
                            b0Var6 = this.f64236f.i(Long.class);
                            this.f64232b = b0Var6;
                        }
                        l = (Long) b0Var6.read(aVar);
                    } else if ("cdbCallStartElapsed".equals(k0)) {
                        b0<Long> b0Var7 = this.f64234d;
                        b0<Long> b0Var8 = b0Var7;
                        if (b0Var7 == null) {
                            b0Var8 = this.f64236f.i(Long.class);
                            this.f64234d = b0Var8;
                        }
                        c = ((Long) b0Var8.read(aVar)).longValue();
                    } else if ("cdbCallEndElapsed".equals(k0)) {
                        b0<Long> b0Var9 = this.f64232b;
                        b0<Long> b0Var10 = b0Var9;
                        if (b0Var9 == null) {
                            b0Var10 = this.f64236f.i(Long.class);
                            this.f64232b = b0Var10;
                        }
                        l2 = (Long) b0Var10.read(aVar);
                    } else if ("requestGroupId".equals(k0)) {
                        b0<String> b0Var11 = this.f64235e;
                        b0<String> b0Var12 = b0Var11;
                        if (b0Var11 == null) {
                            b0Var12 = this.f64236f.i(String.class);
                            this.f64235e = b0Var12;
                        }
                        str = (String) b0Var12.read(aVar);
                    } else {
                        aVar.L0();
                    }
                }
            }
            aVar.q();
            qVar = new q(list, l, z, c, l2, str);
        }
        return qVar;
    }

    public String toString() {
        return "TypeAdapter(MetricRequest.MetricRequestFeedback)";
    }

    public void write(c cVar, Object obj) throws IOException {
        AbstractC23177d0.AbstractC23178a abstractC23178a = (AbstractC23177d0.AbstractC23178a) obj;
        if (abstractC23178a == null) {
            cVar.I();
            return;
        }
        cVar.j();
        cVar.s("slots");
        if (abstractC23178a.mo7403f() == null) {
            cVar.I();
        } else {
            b0<List<AbstractC23177d0.AbstractC23179b>> b0Var = this.f64231a;
            b0<List<AbstractC23177d0.AbstractC23179b>> b0Var2 = b0Var;
            if (b0Var == null) {
                b0Var2 = this.f64236f.h(e.m.e.f0.a.getParameterized(List.class, new Type[]{AbstractC23177d0.AbstractC23179b.class}));
                this.f64231a = b0Var2;
            }
            b0Var2.write(cVar, abstractC23178a.mo7403f());
        }
        cVar.s("elapsed");
        if (abstractC23178a.mo7405d() == null) {
            cVar.I();
        } else {
            b0<Long> b0Var3 = this.f64232b;
            b0<Long> b0Var4 = b0Var3;
            if (b0Var3 == null) {
                b0Var4 = this.f64236f.i(Long.class);
                this.f64232b = b0Var4;
            }
            b0Var4.write(cVar, abstractC23178a.mo7405d());
        }
        cVar.s("isTimeout");
        b0<Boolean> b0Var5 = this.f64233c;
        b0<Boolean> b0Var6 = b0Var5;
        if (b0Var5 == null) {
            b0Var6 = this.f64236f.i(Boolean.class);
            this.f64233c = b0Var6;
        }
        b0Var6.write(cVar, Boolean.valueOf(abstractC23178a.mo7402g()));
        cVar.s("cdbCallStartElapsed");
        b0<Long> b0Var7 = this.f64234d;
        b0<Long> b0Var8 = b0Var7;
        if (b0Var7 == null) {
            b0Var8 = this.f64236f.i(Long.class);
            this.f64234d = b0Var8;
        }
        b0Var8.write(cVar, Long.valueOf(abstractC23178a.mo7406c()));
        cVar.s("cdbCallEndElapsed");
        if (abstractC23178a.mo7407a() == null) {
            cVar.I();
        } else {
            b0<Long> b0Var9 = this.f64232b;
            b0<Long> b0Var10 = b0Var9;
            if (b0Var9 == null) {
                b0Var10 = this.f64236f.i(Long.class);
                this.f64232b = b0Var10;
            }
            b0Var10.write(cVar, abstractC23178a.mo7407a());
        }
        cVar.s("requestGroupId");
        if (abstractC23178a.mo7404e() == null) {
            cVar.I();
        } else {
            b0<String> b0Var11 = this.f64235e;
            b0<String> b0Var12 = b0Var11;
            if (b0Var11 == null) {
                b0Var12 = this.f64236f.i(String.class);
                this.f64235e = b0Var12;
            }
            b0Var12.write(cVar, abstractC23178a.mo7404e());
        }
        cVar.q();
    }
}
