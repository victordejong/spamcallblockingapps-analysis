package p193e.p1512i.p1516b.p1533u2;

import e.m.e.b0;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.c;
import e.m.e.k;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
/* renamed from: e.i.b.u2.k$a */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/k$a.class */
public final class k$a extends b0<AbstractC23129s> {

    /* renamed from: a */
    public volatile b0<String> f64032a;

    /* renamed from: b */
    public volatile b0<Boolean> f64033b;

    /* renamed from: c */
    public volatile b0<Collection<String>> f64034c;

    /* renamed from: d */
    public final k f64035d;

    public k$a(k kVar) {
        this.f64035d = kVar;
    }

    public Object read(a aVar) throws IOException {
        k kVar;
        b bVar = b.i;
        if (aVar.D0() == bVar) {
            aVar.p0();
            kVar = null;
        } else {
            aVar.d();
            String str = null;
            String str2 = null;
            Boolean bool = null;
            Boolean bool2 = null;
            Collection collection = null;
            while (aVar.I()) {
                String k0 = aVar.k0();
                if (aVar.D0() == bVar) {
                    aVar.p0();
                } else {
                    k0.hashCode();
                    boolean z = true;
                    switch (k0.hashCode()) {
                        case -378584607:
                            if (k0.equals("isNative")) {
                                z = false;
                                break;
                            }
                            break;
                        case 100326919:
                            if (k0.equals("impId")) {
                                z = true;
                                break;
                            }
                            break;
                        case 109453458:
                            if (k0.equals("sizes")) {
                                z = true;
                                break;
                            }
                            break;
                        case 604727084:
                            if (k0.equals("interstitial")) {
                                z = true;
                                break;
                            }
                            break;
                        case 732231392:
                            if (k0.equals("placementId")) {
                                z = true;
                                break;
                            }
                            break;
                    }
                    switch (z) {
                        case false:
                            b0<Boolean> b0Var = this.f64033b;
                            b0<Boolean> b0Var2 = b0Var;
                            if (b0Var == null) {
                                b0Var2 = this.f64035d.i(Boolean.class);
                                this.f64033b = b0Var2;
                            }
                            bool = (Boolean) b0Var2.read(aVar);
                            continue;
                        case true:
                            b0<String> b0Var3 = this.f64032a;
                            b0<String> b0Var4 = b0Var3;
                            if (b0Var3 == null) {
                                b0Var4 = this.f64035d.i(String.class);
                                this.f64032a = b0Var4;
                            }
                            str = (String) b0Var4.read(aVar);
                            continue;
                        case true:
                            b0<Collection<String>> b0Var5 = this.f64034c;
                            b0<Collection<String>> b0Var6 = b0Var5;
                            if (b0Var5 == null) {
                                b0Var6 = this.f64035d.h(e.m.e.f0.a.getParameterized(Collection.class, new Type[]{String.class}));
                                this.f64034c = b0Var6;
                            }
                            collection = (Collection) b0Var6.read(aVar);
                            continue;
                        case true:
                            b0<Boolean> b0Var7 = this.f64033b;
                            b0<Boolean> b0Var8 = b0Var7;
                            if (b0Var7 == null) {
                                b0Var8 = this.f64035d.i(Boolean.class);
                                this.f64033b = b0Var8;
                            }
                            bool2 = (Boolean) b0Var8.read(aVar);
                            continue;
                        case true:
                            b0<String> b0Var9 = this.f64032a;
                            b0<String> b0Var10 = b0Var9;
                            if (b0Var9 == null) {
                                b0Var10 = this.f64035d.i(String.class);
                                this.f64032a = b0Var10;
                            }
                            str2 = (String) b0Var10.read(aVar);
                            continue;
                        default:
                            aVar.L0();
                            continue;
                    }
                }
            }
            aVar.q();
            kVar = new k(str, str2, bool, bool2, collection);
        }
        return kVar;
    }

    public String toString() {
        return "TypeAdapter(CdbRequestSlot)";
    }

    public void write(c cVar, Object obj) throws IOException {
        AbstractC23129s abstractC23129s = (AbstractC23129s) obj;
        if (abstractC23129s == null) {
            cVar.I();
            return;
        }
        cVar.j();
        cVar.s("impId");
        if (abstractC23129s.mo7490a() == null) {
            cVar.I();
        } else {
            b0<String> b0Var = this.f64032a;
            b0<String> b0Var2 = b0Var;
            if (b0Var == null) {
                b0Var2 = this.f64035d.i(String.class);
                this.f64032a = b0Var2;
            }
            b0Var2.write(cVar, abstractC23129s.mo7490a());
        }
        cVar.s("placementId");
        if (abstractC23129s.mo7489b() == null) {
            cVar.I();
        } else {
            b0<String> b0Var3 = this.f64032a;
            b0<String> b0Var4 = b0Var3;
            if (b0Var3 == null) {
                b0Var4 = this.f64035d.i(String.class);
                this.f64032a = b0Var4;
            }
            b0Var4.write(cVar, abstractC23129s.mo7489b());
        }
        cVar.s("isNative");
        if (abstractC23129s.mo7486e() == null) {
            cVar.I();
        } else {
            b0<Boolean> b0Var5 = this.f64033b;
            b0<Boolean> b0Var6 = b0Var5;
            if (b0Var5 == null) {
                b0Var6 = this.f64035d.i(Boolean.class);
                this.f64033b = b0Var6;
            }
            b0Var6.write(cVar, abstractC23129s.mo7486e());
        }
        cVar.s("interstitial");
        if (abstractC23129s.mo7487d() == null) {
            cVar.I();
        } else {
            b0<Boolean> b0Var7 = this.f64033b;
            b0<Boolean> b0Var8 = b0Var7;
            if (b0Var7 == null) {
                b0Var8 = this.f64035d.i(Boolean.class);
                this.f64033b = b0Var8;
            }
            b0Var8.write(cVar, abstractC23129s.mo7487d());
        }
        cVar.s("sizes");
        if (abstractC23129s.mo7488c() == null) {
            cVar.I();
        } else {
            b0<Collection<String>> b0Var9 = this.f64034c;
            b0<Collection<String>> b0Var10 = b0Var9;
            if (b0Var9 == null) {
                b0Var10 = this.f64035d.h(e.m.e.f0.a.getParameterized(Collection.class, new Type[]{String.class}));
                this.f64034c = b0Var10;
            }
            b0Var10.write(cVar, abstractC23129s.mo7488c());
        }
        cVar.q();
    }
}
