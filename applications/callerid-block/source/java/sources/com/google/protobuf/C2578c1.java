package com.google.protobuf;

import com.google.protobuf.C2655t;
import com.google.protobuf.C2665x;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.protobuf.c1 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/c1.class */
public final class C2578c1 {

    /* renamed from: a */
    private static final Class<?> f11045a = m2892B();

    /* renamed from: b */
    private static final AbstractC2609g1<?, ?> f11046b = m2891C(false);

    /* renamed from: c */
    private static final AbstractC2609g1<?, ?> f11047c = m2891C(true);

    /* renamed from: d */
    private static final AbstractC2609g1<?, ?> f11048d = new C2620i1();

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: A */
    public static <UT, UB> UB m2893A(int i, List<Integer> list, C2665x.AbstractC2670e abstractC2670e, UB ub, AbstractC2609g1<UT, UB> abstractC2609g1) {
        UB ub2;
        if (abstractC2670e == null) {
            return ub;
        }
        if (!(list instanceof RandomAccess)) {
            Iterator<Integer> it = list.iterator();
            while (true) {
                ub2 = ub;
                if (!it.hasNext()) {
                    break;
                }
                int intValue = it.next().intValue();
                if (!abstractC2670e.mo2240a(intValue)) {
                    ub = m2882L(i, intValue, ub, abstractC2609g1);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (abstractC2670e.mo2240a(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = m2882L(i, intValue2, ub, abstractC2609g1);
                }
            }
            ub2 = ub;
            if (i2 != size) {
                list.subList(i2, size).clear();
                ub2 = ub;
            }
        }
        return ub2;
    }

    /* renamed from: B */
    private static Class<?> m2892B() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: C */
    private static AbstractC2609g1<?, ?> m2891C(boolean z) {
        try {
            Class<?> m2890D = m2890D();
            if (m2890D != null) {
                return (AbstractC2609g1) m2890D.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: D */
    private static Class<?> m2890D() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: E */
    public static <T, FT extends C2655t.AbstractC2657b<FT>> void m2889E(AbstractC2646p<FT> abstractC2646p, T t, T t2) {
        C2655t<FT> mo2345c = abstractC2646p.mo2345c(t2);
        if (!mo2345c.m2303n()) {
            abstractC2646p.mo2344d(t).m2296u(mo2345c);
        }
    }

    /* renamed from: F */
    public static <T> void m2888F(AbstractC2611h0 abstractC2611h0, T t, T t2, long j) {
        C2630k1.m2488T(t, j, abstractC2611h0.mo2622a(C2630k1.m2503E(t, j), C2630k1.m2503E(t2, j)));
    }

    /* renamed from: G */
    public static <T, UT, UB> void m2887G(AbstractC2609g1<UT, UB> abstractC2609g1, T t, T t2) {
        abstractC2609g1.mo2589p(t, abstractC2609g1.mo2592k(abstractC2609g1.mo2596g(t), abstractC2609g1.mo2596g(t2)));
    }

    /* renamed from: H */
    public static AbstractC2609g1<?, ?> m2886H() {
        return f11046b;
    }

    /* renamed from: I */
    public static AbstractC2609g1<?, ?> m2885I() {
        return f11047c;
    }

    /* renamed from: J */
    public static void m2884J(Class<?> cls) {
        Class<?> cls2;
        if (GeneratedMessageLite.class.isAssignableFrom(cls) || (cls2 = f11045a) == null || cls2.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    /* renamed from: K */
    public static boolean m2883K(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: L */
    public static <UT, UB> UB m2882L(int i, int i2, UB ub, AbstractC2609g1<UT, UB> abstractC2609g1) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = abstractC2609g1.mo2591n();
        }
        abstractC2609g1.mo2598e(ub2, i, i2);
        return ub2;
    }

    /* renamed from: M */
    public static AbstractC2609g1<?, ?> m2881M() {
        return f11048d;
    }

    /* renamed from: N */
    public static void m2880N(int i, List<Boolean> list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2512v(i, list, z);
    }

    /* renamed from: O */
    public static void m2879O(int i, List<ByteString> list, Writer writer) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2541O(i, list);
    }

    /* renamed from: P */
    public static void m2878P(int i, List<Double> list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2543M(i, list, z);
    }

    /* renamed from: Q */
    public static void m2877Q(int i, List<Integer> list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2544L(i, list, z);
    }

    /* renamed from: R */
    public static void m2876R(int i, List<Integer> list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2514t(i, list, z);
    }

    /* renamed from: S */
    public static void m2875S(int i, List<Long> list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2520n(i, list, z);
    }

    /* renamed from: T */
    public static void m2874T(int i, List<Float> list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2530d(i, list, z);
    }

    /* renamed from: U */
    public static void m2873U(int i, List<?> list, Writer writer, AbstractC2572a1 abstractC2572a1) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2532b(i, list, abstractC2572a1);
    }

    /* renamed from: V */
    public static void m2872V(int i, List<Integer> list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2531c(i, list, z);
    }

    /* renamed from: W */
    public static void m2871W(int i, List<Long> list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2545K(i, list, z);
    }

    /* renamed from: X */
    public static void m2870X(int i, List<?> list, Writer writer, AbstractC2572a1 abstractC2572a1) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2533a(i, list, abstractC2572a1);
    }

    /* renamed from: Y */
    public static void m2869Y(int i, List<Integer> list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2519o(i, list, z);
    }

    /* renamed from: Z */
    public static void m2868Z(int i, List<Long> list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2515s(i, list, z);
    }

    /* renamed from: a */
    public static int m2867a(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z ? CodedOutputStream.m3119V(i) + CodedOutputStream.m3147D(size) : size * CodedOutputStream.m3108e(i, true);
    }

    /* renamed from: a0 */
    public static void m2866a0(int i, List<Integer> list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2548H(i, list, z);
    }

    /* renamed from: b */
    public static int m2865b(List<?> list) {
        return list.size();
    }

    /* renamed from: b0 */
    public static void m2864b0(int i, List<Long> list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2508z(i, list, z);
    }

    /* renamed from: c */
    public static int m2863c(int i, List<ByteString> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m3119V = size * CodedOutputStream.m3119V(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            m3119V += CodedOutputStream.m3102i(list.get(i2));
        }
        return m3119V;
    }

    /* renamed from: c0 */
    public static void m2862c0(int i, List<String> list, Writer writer) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2551E(i, list);
    }

    /* renamed from: d */
    public static int m2861d(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m2859e = m2859e(list);
        int m3119V = CodedOutputStream.m3119V(i);
        return z ? m3119V + CodedOutputStream.m3147D(m2859e) : m2859e + (size * m3119V);
    }

    /* renamed from: d0 */
    public static void m2860d0(int i, List<Integer> list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2509y(i, list, z);
    }

    /* renamed from: e */
    public static int m2859e(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2663w)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += CodedOutputStream.m3096m(list.get(i4).intValue());
                i4++;
            }
        } else {
            C2663w c2663w = (C2663w) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m3096m(c2663w.mo2238q(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: e0 */
    public static void m2858e0(int i, List<Long> list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.mo2513u(i, list, z);
    }

    /* renamed from: f */
    public static int m2857f(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z ? CodedOutputStream.m3119V(i) + CodedOutputStream.m3147D(size * 4) : size * CodedOutputStream.m3095n(i, 0);
    }

    /* renamed from: g */
    public static int m2856g(List<?> list) {
        return list.size() * 4;
    }

    /* renamed from: h */
    public static int m2855h(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z ? CodedOutputStream.m3119V(i) + CodedOutputStream.m3147D(size * 8) : size * CodedOutputStream.m3092p(i, 0L);
    }

    /* renamed from: i */
    public static int m2854i(List<?> list) {
        return list.size() * 8;
    }

    /* renamed from: j */
    public static int m2853j(int i, List<AbstractC2639m0> list, AbstractC2572a1 abstractC2572a1) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += CodedOutputStream.m3085t(i, list.get(i3), abstractC2572a1);
        }
        return i2;
    }

    /* renamed from: k */
    public static int m2852k(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m2851l = m2851l(list);
        int m3119V = CodedOutputStream.m3119V(i);
        return z ? m3119V + CodedOutputStream.m3147D(m2851l) : m2851l + (size * m3119V);
    }

    /* renamed from: l */
    public static int m2851l(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2663w)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += CodedOutputStream.m3080x(list.get(i4).intValue());
                i4++;
            }
        } else {
            C2663w c2663w = (C2663w) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m3080x(c2663w.mo2238q(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: m */
    public static int m2850m(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        int m2849n = m2849n(list);
        return z ? CodedOutputStream.m3119V(i) + CodedOutputStream.m3147D(m2849n) : m2849n + (list.size() * CodedOutputStream.m3119V(i));
    }

    /* renamed from: n */
    public static int m2849n(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2597e0)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += CodedOutputStream.m3076z(list.get(i4).longValue());
                i4++;
            }
        } else {
            C2597e0 c2597e0 = (C2597e0) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m3076z(c2597e0.m2772A(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: o */
    public static int m2848o(int i, Object obj, AbstractC2572a1 abstractC2572a1) {
        return obj instanceof C2571a0 ? CodedOutputStream.m3150B(i, (C2571a0) obj) : CodedOutputStream.m3142G(i, (AbstractC2639m0) obj, abstractC2572a1);
    }

    /* renamed from: p */
    public static int m2847p(int i, List<?> list, AbstractC2572a1 abstractC2572a1) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m3119V = CodedOutputStream.m3119V(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            m3119V += obj instanceof C2571a0 ? CodedOutputStream.m3148C((C2571a0) obj) : CodedOutputStream.m3140I((AbstractC2639m0) obj, abstractC2572a1);
        }
        return m3119V;
    }

    /* renamed from: q */
    public static int m2846q(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m2845r = m2845r(list);
        int m3119V = CodedOutputStream.m3119V(i);
        return z ? m3119V + CodedOutputStream.m3147D(m2845r) : m2845r + (size * m3119V);
    }

    /* renamed from: r */
    public static int m2845r(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2663w)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += CodedOutputStream.m3126Q(list.get(i4).intValue());
                i4++;
            }
        } else {
            C2663w c2663w = (C2663w) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m3126Q(c2663w.mo2238q(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: s */
    public static int m2844s(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m2843t = m2843t(list);
        int m3119V = CodedOutputStream.m3119V(i);
        return z ? m3119V + CodedOutputStream.m3147D(m2843t) : m2843t + (size * m3119V);
    }

    /* renamed from: t */
    public static int m2843t(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2597e0)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += CodedOutputStream.m3122S(list.get(i4).longValue());
                i4++;
            }
        } else {
            C2597e0 c2597e0 = (C2597e0) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m3122S(c2597e0.m2772A(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: u */
    public static int m2842u(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int m3119V = CodedOutputStream.m3119V(i) * size;
        int i4 = m3119V;
        if (!(list instanceof AbstractC2577c0)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 += obj instanceof ByteString ? CodedOutputStream.m3102i((ByteString) obj) : CodedOutputStream.m3120U((String) obj);
                i3++;
            }
        } else {
            AbstractC2577c0 abstractC2577c0 = (AbstractC2577c0) list;
            int i5 = m3119V;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object mo2562y = abstractC2577c0.mo2562y(i6);
                i5 += mo2562y instanceof ByteString ? CodedOutputStream.m3102i((ByteString) mo2562y) : CodedOutputStream.m3120U((String) mo2562y);
                i6++;
            }
        }
        return i2;
    }

    /* renamed from: v */
    public static int m2841v(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m2840w = m2840w(list);
        int m3119V = CodedOutputStream.m3119V(i);
        return z ? m3119V + CodedOutputStream.m3147D(m2840w) : m2840w + (size * m3119V);
    }

    /* renamed from: w */
    public static int m2840w(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2663w)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += CodedOutputStream.m3117X(list.get(i4).intValue());
                i4++;
            }
        } else {
            C2663w c2663w = (C2663w) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m3117X(c2663w.mo2238q(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: x */
    public static int m2839x(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m2838y = m2838y(list);
        int m3119V = CodedOutputStream.m3119V(i);
        return z ? m3119V + CodedOutputStream.m3147D(m2838y) : m2838y + (size * m3119V);
    }

    /* renamed from: y */
    public static int m2838y(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2597e0)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += CodedOutputStream.m3115Z(list.get(i4).longValue());
                i4++;
            }
        } else {
            C2597e0 c2597e0 = (C2597e0) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m3115Z(c2597e0.m2772A(i2));
                i2++;
            }
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: z */
    public static <UT, UB> UB m2837z(int i, List<Integer> list, C2665x.AbstractC2669d<?> abstractC2669d, UB ub, AbstractC2609g1<UT, UB> abstractC2609g1) {
        UB ub2;
        if (abstractC2669d == null) {
            return ub;
        }
        if (!(list instanceof RandomAccess)) {
            Iterator<Integer> it = list.iterator();
            while (true) {
                ub2 = ub;
                if (!it.hasNext()) {
                    break;
                }
                int intValue = it.next().intValue();
                if (abstractC2669d.mo2241a(intValue) == null) {
                    ub = m2882L(i, intValue, ub, abstractC2609g1);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (abstractC2669d.mo2241a(intValue2) != null) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = m2882L(i, intValue2, ub, abstractC2609g1);
                }
            }
            ub2 = ub;
            if (i2 != size) {
                list.subList(i2, size).clear();
                ub2 = ub;
            }
        }
        return ub2;
    }
}
