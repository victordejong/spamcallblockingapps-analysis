package p193e.p1512i.p1516b.p1533u2.p1534c;

import e.m.e.b0;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.c;
import e.m.e.k;
import e.m.e.u;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.i.b.u2.c.h$a */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/c/h$a.class */
public final class h$a extends b0<AbstractC23111n> {

    /* renamed from: a */
    public volatile b0<List<AbstractC23115r>> f63968a;

    /* renamed from: b */
    public volatile b0<AbstractC23110m> f63969b;

    /* renamed from: c */
    public volatile b0<AbstractC23114q> f63970c;

    /* renamed from: d */
    public volatile b0<List<AbstractC23113p>> f63971d;

    /* renamed from: e */
    public final k f63972e;

    public h$a(k kVar) {
        this.f63972e = kVar;
    }

    public Object read(a aVar) throws IOException {
        h hVar;
        b bVar = b.i;
        List list = null;
        if (aVar.D0() == bVar) {
            aVar.p0();
            hVar = null;
        } else {
            aVar.d();
            List list2 = null;
            AbstractC23110m abstractC23110m = null;
            AbstractC23114q abstractC23114q = null;
            while (aVar.I()) {
                String k0 = aVar.k0();
                if (aVar.D0() == bVar) {
                    aVar.p0();
                } else {
                    k0.hashCode();
                    if (k0.equals("products")) {
                        b0<List<AbstractC23115r>> b0Var = this.f63968a;
                        b0<List<AbstractC23115r>> b0Var2 = b0Var;
                        if (b0Var == null) {
                            b0Var2 = this.f63972e.h(e.m.e.f0.a.getParameterized(List.class, new Type[]{AbstractC23115r.class}));
                            this.f63968a = b0Var2;
                        }
                        list = (List) b0Var2.read(aVar);
                        Objects.requireNonNull(list, "Null nativeProducts");
                    } else if (k0.equals("impressionPixels")) {
                        b0<List<AbstractC23113p>> b0Var3 = this.f63971d;
                        b0<List<AbstractC23113p>> b0Var4 = b0Var3;
                        if (b0Var3 == null) {
                            b0Var4 = this.f63972e.h(e.m.e.f0.a.getParameterized(List.class, new Type[]{AbstractC23113p.class}));
                            this.f63971d = b0Var4;
                        }
                        list2 = (List) b0Var4.read(aVar);
                        Objects.requireNonNull(list2, "Null pixels");
                    } else if ("advertiser".equals(k0)) {
                        b0<AbstractC23110m> b0Var5 = this.f63969b;
                        b0<AbstractC23110m> b0Var6 = b0Var5;
                        if (b0Var5 == null) {
                            b0Var6 = this.f63972e.i(AbstractC23110m.class);
                            this.f63969b = b0Var6;
                        }
                        abstractC23110m = (AbstractC23110m) b0Var6.read(aVar);
                        Objects.requireNonNull(abstractC23110m, "Null advertiser");
                    } else if ("privacy".equals(k0)) {
                        b0<AbstractC23114q> b0Var7 = this.f63970c;
                        b0<AbstractC23114q> b0Var8 = b0Var7;
                        if (b0Var7 == null) {
                            b0Var8 = this.f63972e.i(AbstractC23114q.class);
                            this.f63970c = b0Var8;
                        }
                        abstractC23114q = (AbstractC23114q) b0Var8.read(aVar);
                        Objects.requireNonNull(abstractC23114q, "Null privacy");
                    } else {
                        aVar.L0();
                    }
                }
            }
            aVar.q();
            if (list == null) {
                throw new IllegalStateException("Property \"nativeProducts\" has not been set");
            }
            if (list.isEmpty()) {
                throw new u("Expect that native payload has, at least, one product.");
            }
            if (list2 == null) {
                throw new IllegalStateException("Property \"pixels\" has not been set");
            }
            if (list2.isEmpty()) {
                throw new u("Expect that native payload has, at least, one impression pixel.");
            }
            String str = "";
            if (abstractC23110m == null) {
                str = C22128a.m8543z2("", " advertiser");
            }
            String str2 = str;
            if (abstractC23114q == null) {
                str2 = C22128a.m8543z2(str, " privacy");
            }
            if (!str2.isEmpty()) {
                throw new IllegalStateException(C22128a.m8543z2("Missing required properties:", str2));
            }
            hVar = new h(list, abstractC23110m, abstractC23114q, list2);
        }
        return hVar;
    }

    public String toString() {
        return "TypeAdapter(NativeAssets)";
    }

    public void write(c cVar, Object obj) throws IOException {
        AbstractC23111n abstractC23111n = (AbstractC23111n) obj;
        if (abstractC23111n == null) {
            cVar.I();
            return;
        }
        cVar.j();
        cVar.s("products");
        if (abstractC23111n.mo7544d() == null) {
            cVar.I();
        } else {
            b0<List<AbstractC23115r>> b0Var = this.f63968a;
            b0<List<AbstractC23115r>> b0Var2 = b0Var;
            if (b0Var == null) {
                b0Var2 = this.f63972e.h(e.m.e.f0.a.getParameterized(List.class, new Type[]{AbstractC23115r.class}));
                this.f63968a = b0Var2;
            }
            b0Var2.write(cVar, abstractC23111n.mo7544d());
        }
        cVar.s("advertiser");
        if (abstractC23111n.mo7547a() == null) {
            cVar.I();
        } else {
            b0<AbstractC23110m> b0Var3 = this.f63969b;
            b0<AbstractC23110m> b0Var4 = b0Var3;
            if (b0Var3 == null) {
                b0Var4 = this.f63972e.i(AbstractC23110m.class);
                this.f63969b = b0Var4;
            }
            b0Var4.write(cVar, abstractC23111n.mo7547a());
        }
        cVar.s("privacy");
        if (abstractC23111n.mo7542f() == null) {
            cVar.I();
        } else {
            b0<AbstractC23114q> b0Var5 = this.f63970c;
            b0<AbstractC23114q> b0Var6 = b0Var5;
            if (b0Var5 == null) {
                b0Var6 = this.f63972e.i(AbstractC23114q.class);
                this.f63970c = b0Var6;
            }
            b0Var6.write(cVar, abstractC23111n.mo7542f());
        }
        cVar.s("impressionPixels");
        if (abstractC23111n.mo7543e() == null) {
            cVar.I();
        } else {
            b0<List<AbstractC23113p>> b0Var7 = this.f63971d;
            b0<List<AbstractC23113p>> b0Var8 = b0Var7;
            if (b0Var7 == null) {
                b0Var8 = this.f63972e.h(e.m.e.f0.a.getParameterized(List.class, new Type[]{AbstractC23113p.class}));
                this.f63971d = b0Var8;
            }
            b0Var8.write(cVar, abstractC23111n.mo7543e());
        }
        cVar.q();
    }
}
