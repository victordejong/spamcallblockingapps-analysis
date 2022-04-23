package com.google.protobuf;

import com.google.protobuf.C2655t;
import com.google.protobuf.C2665x;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: com.google.protobuf.c1 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/c1.class */
final class C2578c1 {

    /* renamed from: a */
    private static final Class<?> f11045a = m2892B();

    /* renamed from: b */
    private static final AbstractC2609g1<?, ?> f11046b = m2891C(false);

    /* renamed from: c */
    private static final AbstractC2609g1<?, ?> f11047c = m2891C(true);

    /* renamed from: d */
    private static final AbstractC2609g1<?, ?> f11048d = new C2620i1();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public static <UT, UB> UB m2893A(int i, List<Integer> list, C2665x.AbstractC2670e eVar, UB ub, AbstractC2609g1<UT, UB> g1Var) {
        UB ub2;
        if (eVar == null) {
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
                if (!eVar.mo2240a(intValue)) {
                    ub = (UB) m2882L(i, intValue, ub, g1Var);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (eVar.mo2240a(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) m2882L(i, intValue2, ub, g1Var);
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
            Class<?> D = m2890D();
            if (D == null) {
                return null;
            }
            return (AbstractC2609g1) D.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E */
    public static <T, FT extends C2655t.AbstractC2657b<FT>> void m2889E(AbstractC2646p<FT> pVar, T t, T t2) {
        C2655t<FT> c = pVar.mo2345c(t2);
        if (!c.m2303n()) {
            pVar.mo2344d(t).m2296u(c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: F */
    public static <T> void m2888F(AbstractC2611h0 h0Var, T t, T t2, long j) {
        C2630k1.m2488T(t, j, h0Var.mo2622a(C2630k1.m2503E(t, j), C2630k1.m2503E(t2, j)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: G */
    public static <T, UT, UB> void m2887G(AbstractC2609g1<UT, UB> g1Var, T t, T t2) {
        g1Var.mo2589p(t, g1Var.mo2592k(g1Var.mo2596g(t), g1Var.mo2596g(t2)));
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
        if (!GeneratedMessageLite.class.isAssignableFrom(cls) && (cls2 = f11045a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: K */
    public static boolean m2883K(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: L */
    public static <UT, UB> UB m2882L(int i, int i2, UB ub, AbstractC2609g1<UT, UB> g1Var) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = g1Var.mo2591n();
        }
        g1Var.mo2598e(ub2, i, i2);
        return ub2;
    }

    /* renamed from: M */
    public static AbstractC2609g1<?, ?> m2881M() {
        return f11048d;
    }

    /* renamed from: N */
    public static void m2880N(int i, List<Boolean> list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            writer.mo2512v(i, list, z);
        }
    }

    /* renamed from: O */
    public static void m2879O(int i, List<ByteString> list, Writer writer) {
        if (list != null && !list.isEmpty()) {
            writer.mo2541O(i, list);
        }
    }

    /* renamed from: P */
    public static void m2878P(int i, List<Double> list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            writer.mo2543M(i, list, z);
        }
    }

    /* renamed from: Q */
    public static void m2877Q(int i, List<Integer> list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            writer.mo2544L(i, list, z);
        }
    }

    /* renamed from: R */
    public static void m2876R(int i, List<Integer> list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            writer.mo2514t(i, list, z);
        }
    }

    /* renamed from: S */
    public static void m2875S(int i, List<Long> list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            writer.mo2520n(i, list, z);
        }
    }

    /* renamed from: T */
    public static void m2874T(int i, List<Float> list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            writer.mo2530d(i, list, z);
        }
    }

    /* renamed from: U */
    public static void m2873U(int i, List<?> list, Writer writer, AbstractC2572a1 a1Var) {
        if (list != null && !list.isEmpty()) {
            writer.mo2532b(i, list, a1Var);
        }
    }

    /* renamed from: V */
    public static void m2872V(int i, List<Integer> list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            writer.mo2531c(i, list, z);
        }
    }

    /* renamed from: W */
    public static void m2871W(int i, List<Long> list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            writer.mo2545K(i, list, z);
        }
    }

    /* renamed from: X */
    public static void m2870X(int i, List<?> list, Writer writer, AbstractC2572a1 a1Var) {
        if (list != null && !list.isEmpty()) {
            writer.mo2533a(i, list, a1Var);
        }
    }

    /* renamed from: Y */
    public static void m2869Y(int i, List<Integer> list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            writer.mo2519o(i, list, z);
        }
    }

    /* renamed from: Z */
    public static void m2868Z(int i, List<Long> list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            writer.mo2515s(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
        if (list != null && !list.isEmpty()) {
            writer.mo2548H(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m2865b(List<?> list) {
        return list.size();
    }

    /* renamed from: b0 */
    public static void m2864b0(int i, List<Long> list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            writer.mo2508z(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m2863c(int i, List<ByteString> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int V = size * CodedOutputStream.m3119V(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            V += CodedOutputStream.m3102i(list.get(i2));
        }
        return V;
    }

    /* renamed from: c0 */
    public static void m2862c0(int i, List<String> list, Writer writer) {
        if (list != null && !list.isEmpty()) {
            writer.mo2551E(i, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static int m2861d(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e = m2859e(list);
        int V = CodedOutputStream.m3119V(i);
        return z ? V + CodedOutputStream.m3147D(e) : e + (size * V);
    }

    /* renamed from: d0 */
    public static void m2860d0(int i, List<Integer> list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            writer.mo2509y(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static int m2859e(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2663w)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.m3096m(list.get(i2).intValue());
                i2++;
            }
        } else {
            C2663w wVar = (C2663w) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m3096m(wVar.mo2238q(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: e0 */
    public static void m2858e0(int i, List<Long> list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            writer.mo2513u(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static int m2857f(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z ? CodedOutputStream.m3119V(i) + CodedOutputStream.m3147D(size * 4) : size * CodedOutputStream.m3095n(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m2856g(List<?> list) {
        return list.size() * 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static int m2855h(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z ? CodedOutputStream.m3119V(i) + CodedOutputStream.m3147D(size * 8) : size * CodedOutputStream.m3092p(i, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static int m2854i(List<?> list) {
        return list.size() * 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static int m2853j(int i, List<AbstractC2639m0> list, AbstractC2572a1 a1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += CodedOutputStream.m3085t(i, list.get(i3), a1Var);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static int m2852k(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int l = m2851l(list);
        int V = CodedOutputStream.m3119V(i);
        return z ? V + CodedOutputStream.m3147D(l) : l + (size * V);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static int m2851l(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2663w)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.m3080x(list.get(i2).intValue());
                i2++;
            }
        } else {
            C2663w wVar = (C2663w) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m3080x(wVar.mo2238q(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public static int m2850m(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        int n = m2849n(list);
        return z ? CodedOutputStream.m3119V(i) + CodedOutputStream.m3147D(n) : n + (list.size() * CodedOutputStream.m3119V(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public static int m2849n(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2597e0)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.m3076z(list.get(i2).longValue());
                i2++;
            }
        } else {
            C2597e0 e0Var = (C2597e0) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m3076z(e0Var.m2772A(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static int m2848o(int i, Object obj, AbstractC2572a1 a1Var) {
        return obj instanceof C2571a0 ? CodedOutputStream.m3150B(i, (C2571a0) obj) : CodedOutputStream.m3142G(i, (AbstractC2639m0) obj, a1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static int m2847p(int i, List<?> list, AbstractC2572a1 a1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int V = CodedOutputStream.m3119V(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            V += obj instanceof C2571a0 ? CodedOutputStream.m3148C((C2571a0) obj) : CodedOutputStream.m3140I((AbstractC2639m0) obj, a1Var);
        }
        return V;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static int m2846q(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int r = m2845r(list);
        int V = CodedOutputStream.m3119V(i);
        return z ? V + CodedOutputStream.m3147D(r) : r + (size * V);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public static int m2845r(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2663w)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.m3126Q(list.get(i2).intValue());
                i2++;
            }
        } else {
            C2663w wVar = (C2663w) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m3126Q(wVar.mo2238q(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public static int m2844s(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int t = m2843t(list);
        int V = CodedOutputStream.m3119V(i);
        return z ? V + CodedOutputStream.m3147D(t) : t + (size * V);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public static int m2843t(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2597e0)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.m3122S(list.get(i2).longValue());
                i2++;
            }
        } else {
            C2597e0 e0Var = (C2597e0) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m3122S(e0Var.m2772A(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public static int m2842u(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int V = CodedOutputStream.m3119V(i) * size;
        int i5 = V;
        if (!(list instanceof AbstractC2577c0)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof ByteString ? CodedOutputStream.m3102i((ByteString) obj) : CodedOutputStream.m3120U((String) obj);
                i3++;
            }
        } else {
            AbstractC2577c0 c0Var = (AbstractC2577c0) list;
            int i6 = V;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object y = c0Var.mo2562y(i4);
                i6 += y instanceof ByteString ? CodedOutputStream.m3102i((ByteString) y) : CodedOutputStream.m3120U((String) y);
                i4++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public static int m2841v(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int w = m2840w(list);
        int V = CodedOutputStream.m3119V(i);
        return z ? V + CodedOutputStream.m3147D(w) : w + (size * V);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public static int m2840w(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2663w)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.m3117X(list.get(i2).intValue());
                i2++;
            }
        } else {
            C2663w wVar = (C2663w) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m3117X(wVar.mo2238q(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public static int m2839x(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int y = m2838y(list);
        int V = CodedOutputStream.m3119V(i);
        return z ? V + CodedOutputStream.m3147D(y) : y + (size * V);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public static int m2838y(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2597e0)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.m3115Z(list.get(i2).longValue());
                i2++;
            }
        } else {
            C2597e0 e0Var = (C2597e0) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m3115Z(e0Var.m2772A(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z */
    public static <UT, UB> UB m2837z(int i, List<Integer> list, C2665x.AbstractC2669d<?> dVar, UB ub, AbstractC2609g1<UT, UB> g1Var) {
        UB ub2;
        if (dVar == null) {
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
                if (dVar.mo2241a(intValue) == null) {
                    ub = (UB) m2882L(i, intValue, ub, g1Var);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (dVar.mo2241a(intValue2) != null) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) m2882L(i, intValue2, ub, g1Var);
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
