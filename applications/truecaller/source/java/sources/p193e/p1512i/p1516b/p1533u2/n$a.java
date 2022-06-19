package p193e.p1512i.p1516b.p1533u2;

import com.criteo.publisher.logging.RemoteLogRecords;
import e.m.e.b0;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.c;
import e.m.e.k;
import java.io.IOException;
/* renamed from: e.i.b.u2.n$a */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/n$a.class */
public final class n$a extends b0<AbstractC23118d0> {

    /* renamed from: a */
    public volatile b0<Boolean> f64042a;

    /* renamed from: b */
    public volatile b0<String> f64043b;

    /* renamed from: c */
    public volatile b0<Integer> f64044c;

    /* renamed from: d */
    public volatile b0<RemoteLogRecords.RemoteLogLevel> f64045d;

    /* renamed from: e */
    public final k f64046e;

    public n$a(k kVar) {
        this.f64046e = kVar;
    }

    public Object read(a aVar) throws IOException {
        n nVar;
        b bVar = b.i;
        if (aVar.D0() == bVar) {
            aVar.p0();
            nVar = null;
        } else {
            aVar.d();
            Boolean bool = null;
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            Boolean bool2 = null;
            Boolean bool3 = null;
            Integer num = null;
            Boolean bool4 = null;
            RemoteLogRecords.RemoteLogLevel remoteLogLevel = null;
            while (aVar.I()) {
                String k0 = aVar.k0();
                if (aVar.D0() != bVar) {
                    k0.hashCode();
                    boolean z = true;
                    switch (k0.hashCode()) {
                        case -648432651:
                            if (k0.equals("AndroidAdTagDataMode")) {
                                z = false;
                                break;
                            }
                            break;
                        case 28088106:
                            if (k0.equals("AndroidAdTagUrlMode")) {
                                z = true;
                                break;
                            }
                            break;
                        case 1373006778:
                            if (k0.equals("AndroidAdTagDataMacro")) {
                                z = true;
                                break;
                            }
                            break;
                        case 1395208240:
                            if (k0.equals("AndroidDisplayUrlMacro")) {
                                z = true;
                                break;
                            }
                            break;
                    }
                    switch (z) {
                        case false:
                            b0<String> b0Var = this.f64043b;
                            b0<String> b0Var2 = b0Var;
                            if (b0Var == null) {
                                b0Var2 = this.f64046e.i(String.class);
                                this.f64043b = b0Var2;
                            }
                            str4 = (String) b0Var2.read(aVar);
                            continue;
                        case true:
                            b0<String> b0Var3 = this.f64043b;
                            b0<String> b0Var4 = b0Var3;
                            if (b0Var3 == null) {
                                b0Var4 = this.f64046e.i(String.class);
                                this.f64043b = b0Var4;
                            }
                            str2 = (String) b0Var4.read(aVar);
                            continue;
                        case true:
                            b0<String> b0Var5 = this.f64043b;
                            b0<String> b0Var6 = b0Var5;
                            if (b0Var5 == null) {
                                b0Var6 = this.f64046e.i(String.class);
                                this.f64043b = b0Var6;
                            }
                            str3 = (String) b0Var6.read(aVar);
                            continue;
                        case true:
                            b0<String> b0Var7 = this.f64043b;
                            b0<String> b0Var8 = b0Var7;
                            if (b0Var7 == null) {
                                b0Var8 = this.f64046e.i(String.class);
                                this.f64043b = b0Var8;
                            }
                            str = (String) b0Var8.read(aVar);
                            continue;
                        default:
                            if (!"killSwitch".equals(k0)) {
                                if (!"csmEnabled".equals(k0)) {
                                    if (!"liveBiddingEnabled".equals(k0)) {
                                        if (!"liveBiddingTimeBudgetInMillis".equals(k0)) {
                                            if (!"prefetchOnInitEnabled".equals(k0)) {
                                                if (!"remoteLogLevel".equals(k0)) {
                                                    aVar.L0();
                                                    break;
                                                } else {
                                                    b0<RemoteLogRecords.RemoteLogLevel> b0Var9 = this.f64045d;
                                                    b0<RemoteLogRecords.RemoteLogLevel> b0Var10 = b0Var9;
                                                    if (b0Var9 == null) {
                                                        b0Var10 = this.f64046e.i(RemoteLogRecords.RemoteLogLevel.class);
                                                        this.f64045d = b0Var10;
                                                    }
                                                    remoteLogLevel = (RemoteLogRecords.RemoteLogLevel) b0Var10.read(aVar);
                                                    break;
                                                }
                                            } else {
                                                b0<Boolean> b0Var11 = this.f64042a;
                                                b0<Boolean> b0Var12 = b0Var11;
                                                if (b0Var11 == null) {
                                                    b0Var12 = this.f64046e.i(Boolean.class);
                                                    this.f64042a = b0Var12;
                                                }
                                                bool4 = (Boolean) b0Var12.read(aVar);
                                                break;
                                            }
                                        } else {
                                            b0<Integer> b0Var13 = this.f64044c;
                                            b0<Integer> b0Var14 = b0Var13;
                                            if (b0Var13 == null) {
                                                b0Var14 = this.f64046e.i(Integer.class);
                                                this.f64044c = b0Var14;
                                            }
                                            num = (Integer) b0Var14.read(aVar);
                                            break;
                                        }
                                    } else {
                                        b0<Boolean> b0Var15 = this.f64042a;
                                        b0<Boolean> b0Var16 = b0Var15;
                                        if (b0Var15 == null) {
                                            b0Var16 = this.f64046e.i(Boolean.class);
                                            this.f64042a = b0Var16;
                                        }
                                        bool3 = (Boolean) b0Var16.read(aVar);
                                        break;
                                    }
                                } else {
                                    b0<Boolean> b0Var17 = this.f64042a;
                                    b0<Boolean> b0Var18 = b0Var17;
                                    if (b0Var17 == null) {
                                        b0Var18 = this.f64046e.i(Boolean.class);
                                        this.f64042a = b0Var18;
                                    }
                                    bool2 = (Boolean) b0Var18.read(aVar);
                                    break;
                                }
                            } else {
                                b0<Boolean> b0Var19 = this.f64042a;
                                b0<Boolean> b0Var20 = b0Var19;
                                if (b0Var19 == null) {
                                    b0Var20 = this.f64046e.i(Boolean.class);
                                    this.f64042a = b0Var20;
                                }
                                bool = (Boolean) b0Var20.read(aVar);
                                continue;
                            }
                    }
                } else {
                    aVar.p0();
                }
            }
            aVar.q();
            nVar = new n(bool, str, str2, str3, str4, bool2, bool3, num, bool4, remoteLogLevel);
        }
        return nVar;
    }

    public String toString() {
        return "TypeAdapter(RemoteConfigResponse)";
    }

    public void write(c cVar, Object obj) throws IOException {
        AbstractC23118d0 abstractC23118d0 = (AbstractC23118d0) obj;
        if (abstractC23118d0 == null) {
            cVar.I();
            return;
        }
        cVar.j();
        cVar.s("killSwitch");
        if (abstractC23118d0.mo7511h() == null) {
            cVar.I();
        } else {
            b0<Boolean> b0Var = this.f64042a;
            b0<Boolean> b0Var2 = b0Var;
            if (b0Var == null) {
                b0Var2 = this.f64046e.i(Boolean.class);
                this.f64042a = b0Var2;
            }
            b0Var2.write(cVar, abstractC23118d0.mo7511h());
        }
        cVar.s("AndroidDisplayUrlMacro");
        if (abstractC23118d0.mo7513f() == null) {
            cVar.I();
        } else {
            b0<String> b0Var3 = this.f64043b;
            b0<String> b0Var4 = b0Var3;
            if (b0Var3 == null) {
                b0Var4 = this.f64046e.i(String.class);
                this.f64043b = b0Var4;
            }
            b0Var4.write(cVar, abstractC23118d0.mo7513f());
        }
        cVar.s("AndroidAdTagUrlMode");
        if (abstractC23118d0.mo7514e() == null) {
            cVar.I();
        } else {
            b0<String> b0Var5 = this.f64043b;
            b0<String> b0Var6 = b0Var5;
            if (b0Var5 == null) {
                b0Var6 = this.f64046e.i(String.class);
                this.f64043b = b0Var6;
            }
            b0Var6.write(cVar, abstractC23118d0.mo7514e());
        }
        cVar.s("AndroidAdTagDataMacro");
        if (abstractC23118d0.mo7516c() == null) {
            cVar.I();
        } else {
            b0<String> b0Var7 = this.f64043b;
            b0<String> b0Var8 = b0Var7;
            if (b0Var7 == null) {
                b0Var8 = this.f64046e.i(String.class);
                this.f64043b = b0Var8;
            }
            b0Var8.write(cVar, abstractC23118d0.mo7516c());
        }
        cVar.s("AndroidAdTagDataMode");
        if (abstractC23118d0.mo7515d() == null) {
            cVar.I();
        } else {
            b0<String> b0Var9 = this.f64043b;
            b0<String> b0Var10 = b0Var9;
            if (b0Var9 == null) {
                b0Var10 = this.f64046e.i(String.class);
                this.f64043b = b0Var10;
            }
            b0Var10.write(cVar, abstractC23118d0.mo7515d());
        }
        cVar.s("csmEnabled");
        if (abstractC23118d0.mo7512g() == null) {
            cVar.I();
        } else {
            b0<Boolean> b0Var11 = this.f64042a;
            b0<Boolean> b0Var12 = b0Var11;
            if (b0Var11 == null) {
                b0Var12 = this.f64046e.i(Boolean.class);
                this.f64042a = b0Var12;
            }
            b0Var12.write(cVar, abstractC23118d0.mo7512g());
        }
        cVar.s("liveBiddingEnabled");
        if (abstractC23118d0.mo7510i() == null) {
            cVar.I();
        } else {
            b0<Boolean> b0Var13 = this.f64042a;
            b0<Boolean> b0Var14 = b0Var13;
            if (b0Var13 == null) {
                b0Var14 = this.f64046e.i(Boolean.class);
                this.f64042a = b0Var14;
            }
            b0Var14.write(cVar, abstractC23118d0.mo7510i());
        }
        cVar.s("liveBiddingTimeBudgetInMillis");
        if (abstractC23118d0.mo7509j() == null) {
            cVar.I();
        } else {
            b0<Integer> b0Var15 = this.f64044c;
            b0<Integer> b0Var16 = b0Var15;
            if (b0Var15 == null) {
                b0Var16 = this.f64046e.i(Integer.class);
                this.f64044c = b0Var16;
            }
            b0Var16.write(cVar, abstractC23118d0.mo7509j());
        }
        cVar.s("prefetchOnInitEnabled");
        if (abstractC23118d0.mo7508k() == null) {
            cVar.I();
        } else {
            b0<Boolean> b0Var17 = this.f64042a;
            b0<Boolean> b0Var18 = b0Var17;
            if (b0Var17 == null) {
                b0Var18 = this.f64046e.i(Boolean.class);
                this.f64042a = b0Var18;
            }
            b0Var18.write(cVar, abstractC23118d0.mo7508k());
        }
        cVar.s("remoteLogLevel");
        if (abstractC23118d0.mo7507l() == null) {
            cVar.I();
        } else {
            b0<RemoteLogRecords.RemoteLogLevel> b0Var19 = this.f64045d;
            b0<RemoteLogRecords.RemoteLogLevel> b0Var20 = b0Var19;
            if (b0Var19 == null) {
                b0Var20 = this.f64046e.i(RemoteLogRecords.RemoteLogLevel.class);
                this.f64045d = b0Var20;
            }
            b0Var20.write(cVar, abstractC23118d0.mo7507l());
        }
        cVar.q();
    }
}
