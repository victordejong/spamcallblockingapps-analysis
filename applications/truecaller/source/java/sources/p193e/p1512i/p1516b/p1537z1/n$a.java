package p193e.p1512i.p1516b.p1537z1;

import e.m.e.b0;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.c;
import e.m.e.k;
import java.io.IOException;
import java.util.Objects;
import p193e.p1512i.p1516b.p1537z1.AbstractC23184g;
/* renamed from: e.i.b.z1.n$a */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/n$a.class */
public final class n$a extends b0<AbstractC23211x> {

    /* renamed from: a */
    public volatile b0<Long> f64215a;

    /* renamed from: b */
    public volatile b0<Boolean> f64216b;

    /* renamed from: c */
    public volatile b0<String> f64217c;

    /* renamed from: d */
    public volatile b0<Integer> f64218d;

    /* renamed from: e */
    public final k f64219e;

    public n$a(k kVar) {
        this.f64219e = kVar;
    }

    public Object read(a aVar) throws IOException {
        AbstractC23211x abstractC23211x;
        b bVar = b.i;
        if (aVar.D0() == bVar) {
            aVar.p0();
            abstractC23211x = null;
        } else {
            aVar.d();
            AbstractC23184g.C23186b c23186b = new AbstractC23184g.C23186b();
            c23186b.mo7358d(false);
            c23186b.mo7359c(false);
            c23186b.mo7361a(false);
            while (aVar.I()) {
                String k0 = aVar.k0();
                if (aVar.D0() == bVar) {
                    aVar.p0();
                } else {
                    k0.hashCode();
                    if ("cdbCallStartTimestamp".equals(k0)) {
                        b0<Long> b0Var = this.f64215a;
                        b0<Long> b0Var2 = b0Var;
                        if (b0Var == null) {
                            b0Var2 = this.f64219e.i(Long.class);
                            this.f64215a = b0Var2;
                        }
                        c23186b.f64172a = (Long) b0Var2.read(aVar);
                    } else if ("cdbCallEndTimestamp".equals(k0)) {
                        b0<Long> b0Var3 = this.f64215a;
                        b0<Long> b0Var4 = b0Var3;
                        if (b0Var3 == null) {
                            b0Var4 = this.f64219e.i(Long.class);
                            this.f64215a = b0Var4;
                        }
                        c23186b.f64173b = (Long) b0Var4.read(aVar);
                    } else if ("cdbCallTimeout".equals(k0)) {
                        b0<Boolean> b0Var5 = this.f64216b;
                        b0<Boolean> b0Var6 = b0Var5;
                        if (b0Var5 == null) {
                            b0Var6 = this.f64219e.i(Boolean.class);
                            this.f64216b = b0Var6;
                        }
                        c23186b.mo7359c(((Boolean) b0Var6.read(aVar)).booleanValue());
                    } else if ("cachedBidUsed".equals(k0)) {
                        b0<Boolean> b0Var7 = this.f64216b;
                        b0<Boolean> b0Var8 = b0Var7;
                        if (b0Var7 == null) {
                            b0Var8 = this.f64219e.i(Boolean.class);
                            this.f64216b = b0Var8;
                        }
                        c23186b.mo7361a(((Boolean) b0Var8.read(aVar)).booleanValue());
                    } else if ("elapsedTimestamp".equals(k0)) {
                        b0<Long> b0Var9 = this.f64215a;
                        b0<Long> b0Var10 = b0Var9;
                        if (b0Var9 == null) {
                            b0Var10 = this.f64219e.i(Long.class);
                            this.f64215a = b0Var10;
                        }
                        c23186b.f64176e = (Long) b0Var10.read(aVar);
                    } else if ("impressionId".equals(k0)) {
                        b0<String> b0Var11 = this.f64217c;
                        b0<String> b0Var12 = b0Var11;
                        if (b0Var11 == null) {
                            b0Var12 = this.f64219e.i(String.class);
                            this.f64217c = b0Var12;
                        }
                        String str = (String) b0Var12.read(aVar);
                        Objects.requireNonNull(str, "Null impressionId");
                        c23186b.f64177f = str;
                    } else if ("requestGroupId".equals(k0)) {
                        b0<String> b0Var13 = this.f64217c;
                        b0<String> b0Var14 = b0Var13;
                        if (b0Var13 == null) {
                            b0Var14 = this.f64219e.i(String.class);
                            this.f64217c = b0Var14;
                        }
                        c23186b.f64178g = (String) b0Var14.read(aVar);
                    } else if ("zoneId".equals(k0)) {
                        b0<Integer> b0Var15 = this.f64218d;
                        b0<Integer> b0Var16 = b0Var15;
                        if (b0Var15 == null) {
                            b0Var16 = this.f64219e.i(Integer.class);
                            this.f64218d = b0Var16;
                        }
                        c23186b.f64179h = (Integer) b0Var16.read(aVar);
                    } else if ("profileId".equals(k0)) {
                        b0<Integer> b0Var17 = this.f64218d;
                        b0<Integer> b0Var18 = b0Var17;
                        if (b0Var17 == null) {
                            b0Var18 = this.f64219e.i(Integer.class);
                            this.f64218d = b0Var18;
                        }
                        c23186b.f64180i = (Integer) b0Var18.read(aVar);
                    } else if ("readyToSend".equals(k0)) {
                        b0<Boolean> b0Var19 = this.f64216b;
                        b0<Boolean> b0Var20 = b0Var19;
                        if (b0Var19 == null) {
                            b0Var20 = this.f64219e.i(Boolean.class);
                            this.f64216b = b0Var20;
                        }
                        c23186b.mo7358d(((Boolean) b0Var20.read(aVar)).booleanValue());
                    } else {
                        aVar.L0();
                    }
                }
            }
            aVar.q();
            abstractC23211x = c23186b.mo7360b();
        }
        return abstractC23211x;
    }

    public String toString() {
        return "TypeAdapter(Metric)";
    }

    public void write(c cVar, Object obj) throws IOException {
        AbstractC23211x abstractC23211x = (AbstractC23211x) obj;
        if (abstractC23211x == null) {
            cVar.I();
            return;
        }
        cVar.j();
        cVar.s("cdbCallStartTimestamp");
        if (abstractC23211x.mo7371b() == null) {
            cVar.I();
        } else {
            b0<Long> b0Var = this.f64215a;
            b0<Long> b0Var2 = b0Var;
            if (b0Var == null) {
                b0Var2 = this.f64219e.i(Long.class);
                this.f64215a = b0Var2;
            }
            b0Var2.write(cVar, abstractC23211x.mo7371b());
        }
        cVar.s("cdbCallEndTimestamp");
        if (abstractC23211x.mo7372a() == null) {
            cVar.I();
        } else {
            b0<Long> b0Var3 = this.f64215a;
            b0<Long> b0Var4 = b0Var3;
            if (b0Var3 == null) {
                b0Var4 = this.f64219e.i(Long.class);
                this.f64215a = b0Var4;
            }
            b0Var4.write(cVar, abstractC23211x.mo7372a());
        }
        cVar.s("cdbCallTimeout");
        b0<Boolean> b0Var5 = this.f64216b;
        b0<Boolean> b0Var6 = b0Var5;
        if (b0Var5 == null) {
            b0Var6 = this.f64219e.i(Boolean.class);
            this.f64216b = b0Var6;
        }
        b0Var6.write(cVar, Boolean.valueOf(abstractC23211x.mo7364i()));
        cVar.s("cachedBidUsed");
        b0<Boolean> b0Var7 = this.f64216b;
        b0<Boolean> b0Var8 = b0Var7;
        if (b0Var7 == null) {
            b0Var8 = this.f64219e.i(Boolean.class);
            this.f64216b = b0Var8;
        }
        b0Var8.write(cVar, Boolean.valueOf(abstractC23211x.mo7365h()));
        cVar.s("elapsedTimestamp");
        if (abstractC23211x.mo7370c() == null) {
            cVar.I();
        } else {
            b0<Long> b0Var9 = this.f64215a;
            b0<Long> b0Var10 = b0Var9;
            if (b0Var9 == null) {
                b0Var10 = this.f64219e.i(Long.class);
                this.f64215a = b0Var10;
            }
            b0Var10.write(cVar, abstractC23211x.mo7370c());
        }
        cVar.s("impressionId");
        if (abstractC23211x.mo7369d() == null) {
            cVar.I();
        } else {
            b0<String> b0Var11 = this.f64217c;
            b0<String> b0Var12 = b0Var11;
            if (b0Var11 == null) {
                b0Var12 = this.f64219e.i(String.class);
                this.f64217c = b0Var12;
            }
            b0Var12.write(cVar, abstractC23211x.mo7369d());
        }
        cVar.s("requestGroupId");
        if (abstractC23211x.mo7367f() == null) {
            cVar.I();
        } else {
            b0<String> b0Var13 = this.f64217c;
            b0<String> b0Var14 = b0Var13;
            if (b0Var13 == null) {
                b0Var14 = this.f64219e.i(String.class);
                this.f64217c = b0Var14;
            }
            b0Var14.write(cVar, abstractC23211x.mo7367f());
        }
        cVar.s("zoneId");
        if (abstractC23211x.mo7366g() == null) {
            cVar.I();
        } else {
            b0<Integer> b0Var15 = this.f64218d;
            b0<Integer> b0Var16 = b0Var15;
            if (b0Var15 == null) {
                b0Var16 = this.f64219e.i(Integer.class);
                this.f64218d = b0Var16;
            }
            b0Var16.write(cVar, abstractC23211x.mo7366g());
        }
        cVar.s("profileId");
        if (abstractC23211x.mo7368e() == null) {
            cVar.I();
        } else {
            b0<Integer> b0Var17 = this.f64218d;
            b0<Integer> b0Var18 = b0Var17;
            if (b0Var17 == null) {
                b0Var18 = this.f64219e.i(Integer.class);
                this.f64218d = b0Var18;
            }
            b0Var18.write(cVar, abstractC23211x.mo7368e());
        }
        cVar.s("readyToSend");
        b0<Boolean> b0Var19 = this.f64216b;
        b0<Boolean> b0Var20 = b0Var19;
        if (b0Var19 == null) {
            b0Var20 = this.f64219e.i(Boolean.class);
            this.f64216b = b0Var20;
        }
        b0Var20.write(cVar, Boolean.valueOf(abstractC23211x.mo7363j()));
        cVar.q();
    }
}
