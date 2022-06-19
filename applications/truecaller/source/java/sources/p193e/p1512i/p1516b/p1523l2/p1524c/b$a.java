package p193e.p1512i.p1516b.p1523l2.p1524c;

import e.m.e.b0;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.c;
import e.m.e.k;
import java.io.IOException;
/* renamed from: e.i.b.l2.c.b$a */
/* loaded from: classes-dex2jar.jar:e/i/b/l2/c/b$a.class */
public final class b$a extends b0<AbstractC22980c> {

    /* renamed from: a */
    public volatile b0<String> f63712a;

    /* renamed from: b */
    public volatile b0<Boolean> f63713b;

    /* renamed from: c */
    public volatile b0<Integer> f63714c;

    /* renamed from: d */
    public final k f63715d;

    public b$a(k kVar) {
        this.f63715d = kVar;
    }

    public Object read(a aVar) throws IOException {
        b bVar;
        b bVar2 = b.i;
        String str = null;
        if (aVar.D0() == bVar2) {
            aVar.p0();
            bVar = null;
        } else {
            aVar.d();
            Boolean bool = null;
            Integer num = null;
            while (aVar.I()) {
                String k0 = aVar.k0();
                if (aVar.D0() == bVar2) {
                    aVar.p0();
                } else {
                    k0.hashCode();
                    if ("consentData".equals(k0)) {
                        b0<String> b0Var = this.f63712a;
                        b0<String> b0Var2 = b0Var;
                        if (b0Var == null) {
                            b0Var2 = this.f63715d.i(String.class);
                            this.f63712a = b0Var2;
                        }
                        str = (String) b0Var2.read(aVar);
                    } else if ("gdprApplies".equals(k0)) {
                        b0<Boolean> b0Var3 = this.f63713b;
                        b0<Boolean> b0Var4 = b0Var3;
                        if (b0Var3 == null) {
                            b0Var4 = this.f63715d.i(Boolean.class);
                            this.f63713b = b0Var4;
                        }
                        bool = (Boolean) b0Var4.read(aVar);
                    } else if ("version".equals(k0)) {
                        b0<Integer> b0Var5 = this.f63714c;
                        b0<Integer> b0Var6 = b0Var5;
                        if (b0Var5 == null) {
                            b0Var6 = this.f63715d.i(Integer.class);
                            this.f63714c = b0Var6;
                        }
                        num = (Integer) b0Var6.read(aVar);
                    } else {
                        aVar.L0();
                    }
                }
            }
            aVar.q();
            bVar = new b(str, bool, num);
        }
        return bVar;
    }

    public String toString() {
        return "TypeAdapter(GdprData)";
    }

    public void write(c cVar, Object obj) throws IOException {
        AbstractC22980c abstractC22980c = (AbstractC22980c) obj;
        if (abstractC22980c == null) {
            cVar.I();
            return;
        }
        cVar.j();
        cVar.s("consentData");
        if (abstractC22980c.mo7603a() == null) {
            cVar.I();
        } else {
            b0<String> b0Var = this.f63712a;
            b0<String> b0Var2 = b0Var;
            if (b0Var == null) {
                b0Var2 = this.f63715d.i(String.class);
                this.f63712a = b0Var2;
            }
            b0Var2.write(cVar, abstractC22980c.mo7603a());
        }
        cVar.s("gdprApplies");
        if (abstractC22980c.mo7602b() == null) {
            cVar.I();
        } else {
            b0<Boolean> b0Var3 = this.f63713b;
            b0<Boolean> b0Var4 = b0Var3;
            if (b0Var3 == null) {
                b0Var4 = this.f63715d.i(Boolean.class);
                this.f63713b = b0Var4;
            }
            b0Var4.write(cVar, abstractC22980c.mo7602b());
        }
        cVar.s("version");
        if (abstractC22980c.mo7601c() == null) {
            cVar.I();
        } else {
            b0<Integer> b0Var5 = this.f63714c;
            b0<Integer> b0Var6 = b0Var5;
            if (b0Var5 == null) {
                b0Var6 = this.f63715d.i(Integer.class);
                this.f63714c = b0Var6;
            }
            b0Var6.write(cVar, abstractC22980c.mo7601c());
        }
        cVar.q();
    }
}
