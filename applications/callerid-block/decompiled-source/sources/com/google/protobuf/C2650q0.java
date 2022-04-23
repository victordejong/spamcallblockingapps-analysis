package com.google.protobuf;

import com.google.protobuf.C2655t;
import com.google.protobuf.C2678z;
import com.google.protobuf.WireFormat;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.protobuf.q0 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/q0.class */
final class C2650q0<T> implements AbstractC2572a1<T> {

    /* renamed from: a */
    private final AbstractC2639m0 f11201a;

    /* renamed from: b */
    private final AbstractC2609g1<?, ?> f11202b;

    /* renamed from: c */
    private final boolean f11203c;

    /* renamed from: d */
    private final AbstractC2646p<?> f11204d;

    private C2650q0(AbstractC2609g1<?, ?> g1Var, AbstractC2646p<?> pVar, AbstractC2639m0 m0Var) {
        this.f11202b = g1Var;
        this.f11203c = pVar.mo2343e(m0Var);
        this.f11204d = pVar;
        this.f11201a = m0Var;
    }

    /* renamed from: j */
    private <UT, UB> int m2328j(AbstractC2609g1<UT, UB> g1Var, T t) {
        return g1Var.mo2594i(g1Var.mo2596g(t));
    }

    /* renamed from: k */
    private <UT, UB, ET extends C2655t.AbstractC2657b<ET>> void m2327k(AbstractC2609g1<UT, UB> g1Var, AbstractC2646p<ET> pVar, T t, AbstractC2682z0 z0Var, C2643o oVar) {
        UB f = g1Var.mo2597f(t);
        C2655t<ET> d = pVar.mo2344d(t);
        do {
            try {
                if (z0Var.mo2185t() == Integer.MAX_VALUE) {
                    g1Var.mo2590o(t, f);
                    return;
                }
            } catch (Throwable th) {
                g1Var.mo2590o(t, f);
                throw th;
            }
        } while (m2325m(z0Var, oVar, pVar, d, g1Var, f));
        g1Var.mo2590o(t, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static <T> C2650q0<T> m2326l(AbstractC2609g1<?, ?> g1Var, AbstractC2646p<?> pVar, AbstractC2639m0 m0Var) {
        return new C2650q0<>(g1Var, pVar, m0Var);
    }

    /* renamed from: m */
    private <UT, UB, ET extends C2655t.AbstractC2657b<ET>> boolean m2325m(AbstractC2682z0 z0Var, C2643o oVar, AbstractC2646p<ET> pVar, C2655t<ET> tVar, AbstractC2609g1<UT, UB> g1Var, UB ub) {
        int a = z0Var.mo2204a();
        if (a == WireFormat.f11002a) {
            int i = 0;
            Object obj = null;
            ByteString byteString = null;
            while (z0Var.mo2185t() != Integer.MAX_VALUE) {
                int a2 = z0Var.mo2204a();
                if (a2 == WireFormat.f11004c) {
                    i = z0Var.mo2217D();
                    obj = pVar.mo2346b(oVar, this.f11201a, i);
                } else if (a2 == WireFormat.f11005d) {
                    if (obj != null) {
                        pVar.mo2340h(z0Var, obj, oVar, tVar);
                    } else {
                        byteString = z0Var.mo2219B();
                    }
                } else if (!z0Var.mo2215F()) {
                    break;
                }
            }
            if (z0Var.mo2204a() != WireFormat.f11003b) {
                throw InvalidProtocolBufferException.invalidEndTag();
            } else if (byteString == null) {
                return true;
            } else {
                if (obj != null) {
                    pVar.mo2339i(byteString, obj, oVar, tVar);
                    return true;
                }
                g1Var.mo2599d(ub, i, byteString);
                return true;
            }
        } else if (WireFormat.m2923b(a) != 2) {
            return z0Var.mo2215F();
        } else {
            Object b = pVar.mo2346b(oVar, this.f11201a, WireFormat.m2924a(a));
            if (b == null) {
                return g1Var.m2723m(ub, z0Var);
            }
            pVar.mo2340h(z0Var, b, oVar, tVar);
            return true;
        }
    }

    /* renamed from: n */
    private <UT, UB> void m2324n(AbstractC2609g1<UT, UB> g1Var, T t, Writer writer) {
        g1Var.mo2586s(g1Var.mo2596g(t), writer);
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: a */
    public void mo2337a(T t, T t2) {
        C2578c1.m2887G(this.f11202b, t, t2);
        if (this.f11203c) {
            C2578c1.m2889E(this.f11204d, t, t2);
        }
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: b */
    public void mo2336b(T t, Writer writer) {
        Iterator<Map.Entry<?, Object>> s = this.f11204d.mo2345c(t).m2298s();
        while (s.hasNext()) {
            Map.Entry<?, Object> next = s.next();
            C2655t.AbstractC2657b bVar = (C2655t.AbstractC2657b) next.getKey();
            if (bVar.mo2287i() != WireFormat.JavaType.MESSAGE || bVar.mo2290d() || bVar.isPacked()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            writer.mo2526h(bVar.getNumber(), next instanceof C2678z.C2680b ? ((C2678z.C2680b) next).m2222a().m2905e() : next.getValue());
        }
        m2324n(this.f11202b, t, writer);
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: c */
    public void mo2335c(T t) {
        this.f11202b.mo2593j(t);
        this.f11204d.mo2342f(t);
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: d */
    public final boolean mo2334d(T t) {
        return this.f11204d.mo2345c(t).m2301p();
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: e */
    public void mo2333e(T t, AbstractC2682z0 z0Var, C2643o oVar) {
        m2327k(this.f11202b, this.f11204d, t, z0Var, oVar);
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: f */
    public boolean mo2332f(T t, T t2) {
        if (!this.f11202b.mo2596g(t).equals(this.f11202b.mo2596g(t2))) {
            return false;
        }
        if (this.f11203c) {
            return this.f11204d.mo2345c(t).equals(this.f11204d.mo2345c(t2));
        }
        return true;
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: g */
    public int mo2331g(T t) {
        int j = m2328j(this.f11202b, t) + 0;
        int i = j;
        if (this.f11203c) {
            i = j + this.f11204d.mo2345c(t).m2307j();
        }
        return i;
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: h */
    public T mo2330h() {
        return (T) this.f11201a.mo2423i().mo2418x();
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: i */
    public int mo2329i(T t) {
        int hashCode = this.f11202b.mo2596g(t).hashCode();
        int i = hashCode;
        if (this.f11203c) {
            i = (hashCode * 53) + this.f11204d.mo2345c(t).hashCode();
        }
        return i;
    }
}
