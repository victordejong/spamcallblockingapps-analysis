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

    private C2650q0(AbstractC2609g1<?, ?> abstractC2609g1, AbstractC2646p<?> abstractC2646p, AbstractC2639m0 abstractC2639m0) {
        this.f11202b = abstractC2609g1;
        this.f11203c = abstractC2646p.mo2343e(abstractC2639m0);
        this.f11204d = abstractC2646p;
        this.f11201a = abstractC2639m0;
    }

    /* renamed from: j */
    private <UT, UB> int m2328j(AbstractC2609g1<UT, UB> abstractC2609g1, T t) {
        return abstractC2609g1.mo2594i(abstractC2609g1.mo2596g(t));
    }

    /* renamed from: k */
    private <UT, UB, ET extends C2655t.AbstractC2657b<ET>> void m2327k(AbstractC2609g1<UT, UB> abstractC2609g1, AbstractC2646p<ET> abstractC2646p, T t, AbstractC2682z0 abstractC2682z0, C2643o c2643o) {
        UB mo2597f = abstractC2609g1.mo2597f(t);
        C2655t<ET> mo2344d = abstractC2646p.mo2344d(t);
        do {
            try {
                if (abstractC2682z0.mo2185t() == Integer.MAX_VALUE) {
                    abstractC2609g1.mo2590o(t, mo2597f);
                    return;
                }
            } catch (Throwable th) {
                abstractC2609g1.mo2590o(t, mo2597f);
                throw th;
            }
        } while (m2325m(abstractC2682z0, c2643o, abstractC2646p, mo2344d, abstractC2609g1, mo2597f));
        abstractC2609g1.mo2590o(t, mo2597f);
    }

    /* renamed from: l */
    public static <T> C2650q0<T> m2326l(AbstractC2609g1<?, ?> abstractC2609g1, AbstractC2646p<?> abstractC2646p, AbstractC2639m0 abstractC2639m0) {
        return new C2650q0<>(abstractC2609g1, abstractC2646p, abstractC2639m0);
    }

    /* renamed from: m */
    private <UT, UB, ET extends C2655t.AbstractC2657b<ET>> boolean m2325m(AbstractC2682z0 abstractC2682z0, C2643o c2643o, AbstractC2646p<ET> abstractC2646p, C2655t<ET> c2655t, AbstractC2609g1<UT, UB> abstractC2609g1, UB ub) {
        int mo2204a = abstractC2682z0.mo2204a();
        if (mo2204a != WireFormat.f11002a) {
            if (WireFormat.m2923b(mo2204a) != 2) {
                return abstractC2682z0.mo2215F();
            }
            Object mo2346b = abstractC2646p.mo2346b(c2643o, this.f11201a, WireFormat.m2924a(mo2204a));
            if (mo2346b == null) {
                return abstractC2609g1.m2723m(ub, abstractC2682z0);
            }
            abstractC2646p.mo2340h(abstractC2682z0, mo2346b, c2643o, c2655t);
            return true;
        }
        int i = 0;
        Object obj = null;
        ByteString byteString = null;
        while (abstractC2682z0.mo2185t() != Integer.MAX_VALUE) {
            int mo2204a2 = abstractC2682z0.mo2204a();
            if (mo2204a2 == WireFormat.f11004c) {
                i = abstractC2682z0.mo2217D();
                obj = abstractC2646p.mo2346b(c2643o, this.f11201a, i);
            } else if (mo2204a2 == WireFormat.f11005d) {
                if (obj != null) {
                    abstractC2646p.mo2340h(abstractC2682z0, obj, c2643o, c2655t);
                } else {
                    byteString = abstractC2682z0.mo2219B();
                }
            } else if (!abstractC2682z0.mo2215F()) {
                break;
            }
        }
        if (abstractC2682z0.mo2204a() != WireFormat.f11003b) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
        if (byteString == null) {
            return true;
        }
        if (obj != null) {
            abstractC2646p.mo2339i(byteString, obj, c2643o, c2655t);
            return true;
        }
        abstractC2609g1.mo2599d(ub, i, byteString);
        return true;
    }

    /* renamed from: n */
    private <UT, UB> void m2324n(AbstractC2609g1<UT, UB> abstractC2609g1, T t, Writer writer) {
        abstractC2609g1.mo2586s(abstractC2609g1.mo2596g(t), writer);
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
        Iterator<Map.Entry<?, Object>> m2298s = this.f11204d.mo2345c(t).m2298s();
        while (m2298s.hasNext()) {
            Map.Entry<?, Object> next = m2298s.next();
            C2655t.AbstractC2657b abstractC2657b = (C2655t.AbstractC2657b) next.getKey();
            if (abstractC2657b.mo2287i() != WireFormat.JavaType.MESSAGE || abstractC2657b.mo2290d() || abstractC2657b.isPacked()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            writer.mo2526h(abstractC2657b.getNumber(), next instanceof C2678z.C2680b ? ((C2678z.C2680b) next).m2222a().m2905e() : next.getValue());
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
    public void mo2333e(T t, AbstractC2682z0 abstractC2682z0, C2643o c2643o) {
        m2327k(this.f11202b, this.f11204d, t, abstractC2682z0, c2643o);
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: f */
    public boolean mo2332f(T t, T t2) {
        if (!this.f11202b.mo2596g(t).equals(this.f11202b.mo2596g(t2))) {
            return false;
        }
        if (!this.f11203c) {
            return true;
        }
        return this.f11204d.mo2345c(t).equals(this.f11204d.mo2345c(t2));
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: g */
    public int mo2331g(T t) {
        int m2328j = m2328j(this.f11202b, t) + 0;
        int i = m2328j;
        if (this.f11203c) {
            i = m2328j + this.f11204d.mo2345c(t).m2307j();
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
