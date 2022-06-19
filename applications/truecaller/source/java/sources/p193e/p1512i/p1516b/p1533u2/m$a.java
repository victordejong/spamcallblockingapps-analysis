package p193e.p1512i.p1516b.p1533u2;

import e.m.e.b0;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.c;
import e.m.e.k;
import java.io.IOException;
/* renamed from: e.i.b.u2.m$a */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/m$a.class */
public final class m$a extends b0<AbstractC23103b0> {

    /* renamed from: a */
    public volatile b0<String> f64039a;

    /* renamed from: b */
    public volatile b0<Integer> f64040b;

    /* renamed from: c */
    public final k f64041c;

    public m$a(k kVar) {
        this.f64041c = kVar;
    }

    public Object read(a aVar) throws IOException {
        m mVar;
        b bVar = b.i;
        if (aVar.D0() == bVar) {
            aVar.p0();
            mVar = null;
        } else {
            aVar.d();
            int i = 0;
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            while (aVar.I()) {
                String k0 = aVar.k0();
                if (aVar.D0() == bVar) {
                    aVar.p0();
                } else {
                    k0.hashCode();
                    if (k0.equals("cpId")) {
                        b0<String> b0Var = this.f64039a;
                        b0<String> b0Var2 = b0Var;
                        if (b0Var == null) {
                            b0Var2 = this.f64041c.i(String.class);
                            this.f64039a = b0Var2;
                        }
                        str = (String) b0Var2.read(aVar);
                    } else if (k0.equals("rtbProfileId")) {
                        b0<Integer> b0Var3 = this.f64040b;
                        b0<Integer> b0Var4 = b0Var3;
                        if (b0Var3 == null) {
                            b0Var4 = this.f64041c.i(Integer.class);
                            this.f64040b = b0Var4;
                        }
                        i = ((Integer) b0Var4.read(aVar)).intValue();
                    } else if ("bundleId".equals(k0)) {
                        b0<String> b0Var5 = this.f64039a;
                        b0<String> b0Var6 = b0Var5;
                        if (b0Var5 == null) {
                            b0Var6 = this.f64041c.i(String.class);
                            this.f64039a = b0Var6;
                        }
                        str2 = (String) b0Var6.read(aVar);
                    } else if ("sdkVersion".equals(k0)) {
                        b0<String> b0Var7 = this.f64039a;
                        b0<String> b0Var8 = b0Var7;
                        if (b0Var7 == null) {
                            b0Var8 = this.f64041c.i(String.class);
                            this.f64039a = b0Var8;
                        }
                        str3 = (String) b0Var8.read(aVar);
                    } else if ("deviceId".equals(k0)) {
                        b0<String> b0Var9 = this.f64039a;
                        b0<String> b0Var10 = b0Var9;
                        if (b0Var9 == null) {
                            b0Var10 = this.f64041c.i(String.class);
                            this.f64039a = b0Var10;
                        }
                        str4 = (String) b0Var10.read(aVar);
                    } else if ("deviceOs".equals(k0)) {
                        b0<String> b0Var11 = this.f64039a;
                        b0<String> b0Var12 = b0Var11;
                        if (b0Var11 == null) {
                            b0Var12 = this.f64041c.i(String.class);
                            this.f64039a = b0Var12;
                        }
                        str5 = (String) b0Var12.read(aVar);
                    } else {
                        aVar.L0();
                    }
                }
            }
            aVar.q();
            mVar = new m(str, str2, str3, i, str4, str5);
        }
        return mVar;
    }

    public String toString() {
        return "TypeAdapter(RemoteConfigRequest)";
    }

    public void write(c cVar, Object obj) throws IOException {
        AbstractC23103b0 abstractC23103b0 = (AbstractC23103b0) obj;
        if (abstractC23103b0 == null) {
            cVar.I();
            return;
        }
        cVar.j();
        cVar.s("cpId");
        if (abstractC23103b0.mo7521b() == null) {
            cVar.I();
        } else {
            b0<String> b0Var = this.f64039a;
            b0<String> b0Var2 = b0Var;
            if (b0Var == null) {
                b0Var2 = this.f64041c.i(String.class);
                this.f64039a = b0Var2;
            }
            b0Var2.write(cVar, abstractC23103b0.mo7521b());
        }
        cVar.s("bundleId");
        if (abstractC23103b0.mo7522a() == null) {
            cVar.I();
        } else {
            b0<String> b0Var3 = this.f64039a;
            b0<String> b0Var4 = b0Var3;
            if (b0Var3 == null) {
                b0Var4 = this.f64041c.i(String.class);
                this.f64039a = b0Var4;
            }
            b0Var4.write(cVar, abstractC23103b0.mo7522a());
        }
        cVar.s("sdkVersion");
        if (abstractC23103b0.mo7517f() == null) {
            cVar.I();
        } else {
            b0<String> b0Var5 = this.f64039a;
            b0<String> b0Var6 = b0Var5;
            if (b0Var5 == null) {
                b0Var6 = this.f64041c.i(String.class);
                this.f64039a = b0Var6;
            }
            b0Var6.write(cVar, abstractC23103b0.mo7517f());
        }
        cVar.s("rtbProfileId");
        b0<Integer> b0Var7 = this.f64040b;
        b0<Integer> b0Var8 = b0Var7;
        if (b0Var7 == null) {
            b0Var8 = this.f64041c.i(Integer.class);
            this.f64040b = b0Var8;
        }
        b0Var8.write(cVar, Integer.valueOf(abstractC23103b0.mo7518e()));
        cVar.s("deviceId");
        if (abstractC23103b0.mo7520c() == null) {
            cVar.I();
        } else {
            b0<String> b0Var9 = this.f64039a;
            b0<String> b0Var10 = b0Var9;
            if (b0Var9 == null) {
                b0Var10 = this.f64041c.i(String.class);
                this.f64039a = b0Var10;
            }
            b0Var10.write(cVar, abstractC23103b0.mo7520c());
        }
        cVar.s("deviceOs");
        if (abstractC23103b0.mo7519d() == null) {
            cVar.I();
        } else {
            b0<String> b0Var11 = this.f64039a;
            b0<String> b0Var12 = b0Var11;
            if (b0Var11 == null) {
                b0Var12 = this.f64041c.i(String.class);
                this.f64039a = b0Var12;
            }
            b0Var12.write(cVar, abstractC23103b0.mo7519d());
        }
        cVar.q();
    }
}
