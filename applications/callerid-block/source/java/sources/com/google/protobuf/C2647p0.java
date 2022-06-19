package com.google.protobuf;

import com.google.protobuf.ByteString;
import com.google.protobuf.C2607g0;
import com.google.protobuf.C2665x;
import com.google.protobuf.WireFormat;
import com.google.protobuf.Writer;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.protobuf.p0 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/p0.class */
public final class C2647p0<T> implements AbstractC2572a1<T> {

    /* renamed from: r */
    private static final int[] f11181r = new int[0];

    /* renamed from: s */
    private static final Unsafe f11182s = C2630k1.m2502F();

    /* renamed from: a */
    private final int[] f11183a;

    /* renamed from: b */
    private final Object[] f11184b;

    /* renamed from: c */
    private final int f11185c;

    /* renamed from: d */
    private final int f11186d;

    /* renamed from: e */
    private final AbstractC2639m0 f11187e;

    /* renamed from: f */
    private final boolean f11188f;

    /* renamed from: g */
    private final boolean f11189g;

    /* renamed from: h */
    private final boolean f11190h;

    /* renamed from: i */
    private final boolean f11191i;

    /* renamed from: j */
    private final int[] f11192j;

    /* renamed from: k */
    private final int f11193k;

    /* renamed from: l */
    private final int f11194l;

    /* renamed from: m */
    private final AbstractC2652r0 f11195m;

    /* renamed from: n */
    private final AbstractC2580d0 f11196n;

    /* renamed from: o */
    private final AbstractC2609g1<?, ?> f11197o;

    /* renamed from: p */
    private final AbstractC2646p<?> f11198p;

    /* renamed from: q */
    private final AbstractC2611h0 f11199q;

    private C2647p0(int[] iArr, Object[] objArr, int i, int i2, AbstractC2639m0 abstractC2639m0, boolean z, boolean z2, int[] iArr2, int i3, int i4, AbstractC2652r0 abstractC2652r0, AbstractC2580d0 abstractC2580d0, AbstractC2609g1<?, ?> abstractC2609g1, AbstractC2646p<?> abstractC2646p, AbstractC2611h0 abstractC2611h0) {
        this.f11183a = iArr;
        this.f11184b = objArr;
        this.f11185c = i;
        this.f11186d = i2;
        this.f11189g = abstractC2639m0 instanceof GeneratedMessageLite;
        this.f11190h = z;
        this.f11188f = abstractC2646p != null && abstractC2646p.mo2343e(abstractC2639m0);
        this.f11191i = z2;
        this.f11192j = iArr2;
        this.f11193k = i3;
        this.f11194l = i4;
        this.f11195m = abstractC2652r0;
        this.f11196n = abstractC2580d0;
        this.f11197o = abstractC2609g1;
        this.f11198p = abstractC2646p;
        this.f11187e = abstractC2639m0;
        this.f11199q = abstractC2611h0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: A */
    private static boolean m2405A(Object obj, int i, AbstractC2572a1 abstractC2572a1) {
        return abstractC2572a1.mo2334d(C2630k1.m2503E(obj, m2388R(i)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: B */
    private <N> boolean m2404B(Object obj, int i, int i2) {
        List list = (List) C2630k1.m2503E(obj, m2388R(i));
        if (list.isEmpty()) {
            return true;
        }
        AbstractC2572a1 m2355s = m2355s(i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (!m2355s.mo2334d(list.get(i3))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: C */
    private boolean m2403C(T t, int i, int i2) {
        Map<?, ?> mo2616g = this.f11199q.mo2616g(C2630k1.m2503E(t, m2388R(i)));
        if (mo2616g.isEmpty()) {
            return true;
        }
        if (this.f11199q.mo2617f(m2356r(i2)).f11105c.getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        AbstractC2572a1<T> abstractC2572a1 = null;
        for (Object obj : mo2616g.values()) {
            AbstractC2572a1<T> abstractC2572a12 = abstractC2572a1;
            if (abstractC2572a1 == null) {
                abstractC2572a12 = C2664w0.m2256a().m2253d(obj.getClass());
            }
            abstractC2572a1 = abstractC2572a12;
            if (!abstractC2572a12.mo2334d(obj)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: D */
    private boolean m2402D(T t, T t2, int i) {
        long m2381Y = m2381Y(i) & 1048575;
        return C2630k1.m2507A(t, m2381Y) == C2630k1.m2507A(t2, m2381Y);
    }

    /* renamed from: E */
    private boolean m2401E(T t, int i, int i2) {
        return C2630k1.m2507A(t, (long) (m2381Y(i2) & 1048575)) == i;
    }

    /* renamed from: F */
    private static boolean m2400F(int i) {
        return (i & 268435456) != 0;
    }

    /* renamed from: G */
    private static List<?> m2399G(Object obj, long j) {
        return (List) C2630k1.m2503E(obj, j);
    }

    /* renamed from: H */
    private static <T> long m2398H(T t, long j) {
        return C2630k1.m2505C(t, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:505:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x010b, code lost:
        r19 = r8.f11193k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0117, code lost:
        if (r19 >= r8.f11194l) goto L499;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x011a, code lost:
        r21 = m2362n(r11, r8.f11192j[r19], r21, r9);
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0133, code lost:
        if (r21 == null) goto L505;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0136, code lost:
        r9.mo2590o(r11, r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x013d, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v228, types: [long] */
    /* JADX WARN: Type inference failed for: r0v279, types: [long] */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <UT, UB, ET extends com.google.protobuf.C2655t.AbstractC2657b<ET>> void m2397I(com.google.protobuf.AbstractC2609g1<UT, UB> r9, com.google.protobuf.AbstractC2646p<ET> r10, T r11, com.google.protobuf.AbstractC2682z0 r12, com.google.protobuf.C2643o r13) {
        /*
            Method dump skipped, instructions count: 3612
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C2647p0.m2397I(com.google.protobuf.g1, com.google.protobuf.p, java.lang.Object, com.google.protobuf.z0, com.google.protobuf.o):void");
    }

    /* renamed from: J */
    private final <K, V> void m2396J(Object obj, int i, Object obj2, C2643o c2643o, AbstractC2682z0 abstractC2682z0) {
        Object obj3;
        long m2388R = m2388R(m2371i0(i));
        Object m2503E = C2630k1.m2503E(obj, m2388R);
        if (m2503E == null) {
            obj3 = this.f11199q.mo2621b(obj2);
            C2630k1.m2488T(obj, m2388R, obj3);
        } else {
            obj3 = m2503E;
            if (this.f11199q.mo2619d(m2503E)) {
                obj3 = this.f11199q.mo2621b(obj2);
                this.f11199q.mo2622a(obj3, m2503E);
                C2630k1.m2488T(obj, m2388R, obj3);
            }
        }
        abstractC2682z0.mo2181x(this.f11199q.mo2615h(obj3), this.f11199q.mo2617f(obj2), c2643o);
    }

    /* renamed from: K */
    private void m2395K(T t, T t2, int i) {
        long m2388R = m2388R(m2371i0(i));
        if (!m2349y(t2, i)) {
            return;
        }
        Object m2503E = C2630k1.m2503E(t, m2388R);
        Object m2503E2 = C2630k1.m2503E(t2, m2388R);
        if (m2503E != null && m2503E2 != null) {
            m2503E2 = C2665x.m2244h(m2503E, m2503E2);
        } else if (m2503E2 == null) {
            return;
        }
        C2630k1.m2488T(t, m2388R, m2503E2);
        m2375e0(t, i);
    }

    /* renamed from: L */
    private void m2394L(T t, T t2, int i) {
        int m2371i0 = m2371i0(i);
        int m2389Q = m2389Q(i);
        long m2388R = m2388R(m2371i0);
        if (!m2401E(t2, m2389Q, i)) {
            return;
        }
        Object obj = null;
        if (m2401E(t, m2389Q, i)) {
            obj = C2630k1.m2503E(t, m2388R);
        }
        Object m2503E = C2630k1.m2503E(t2, m2388R);
        if (obj != null && m2503E != null) {
            m2503E = C2665x.m2244h(obj, m2503E);
        } else if (m2503E == null) {
            return;
        }
        C2630k1.m2488T(t, m2388R, m2503E);
        m2374f0(t, m2389Q, i);
    }

    /* renamed from: M */
    private void m2393M(T t, T t2, int i) {
        int m2371i0 = m2371i0(i);
        long m2388R = m2388R(m2371i0);
        int m2389Q = m2389Q(i);
        switch (m2372h0(m2371i0)) {
            case 0:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2492P(t, m2388R, C2630k1.m2461y(t2, m2388R));
                m2375e0(t, i);
                return;
            case 1:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2491Q(t, m2388R, C2630k1.m2460z(t2, m2388R));
                m2375e0(t, i);
                return;
            case 2:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2489S(t, m2388R, C2630k1.m2505C(t2, m2388R));
                m2375e0(t, i);
                return;
            case 3:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2489S(t, m2388R, C2630k1.m2505C(t2, m2388R));
                m2375e0(t, i);
                return;
            case 4:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2490R(t, m2388R, C2630k1.m2507A(t2, m2388R));
                m2375e0(t, i);
                return;
            case 5:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2489S(t, m2388R, C2630k1.m2505C(t2, m2388R));
                m2375e0(t, i);
                return;
            case 6:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2490R(t, m2388R, C2630k1.m2507A(t2, m2388R));
                m2375e0(t, i);
                return;
            case 7:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2498J(t, m2388R, C2630k1.m2468r(t2, m2388R));
                m2375e0(t, i);
                return;
            case 8:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2488T(t, m2388R, C2630k1.m2503E(t2, m2388R));
                m2375e0(t, i);
                return;
            case 9:
            case 17:
                m2395K(t, t2, i);
                return;
            case 10:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2488T(t, m2388R, C2630k1.m2503E(t2, m2388R));
                m2375e0(t, i);
                return;
            case 11:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2490R(t, m2388R, C2630k1.m2507A(t2, m2388R));
                m2375e0(t, i);
                return;
            case 12:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2490R(t, m2388R, C2630k1.m2507A(t2, m2388R));
                m2375e0(t, i);
                return;
            case 13:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2490R(t, m2388R, C2630k1.m2507A(t2, m2388R));
                m2375e0(t, i);
                return;
            case 14:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2489S(t, m2388R, C2630k1.m2505C(t2, m2388R));
                m2375e0(t, i);
                return;
            case 15:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2490R(t, m2388R, C2630k1.m2507A(t2, m2388R));
                m2375e0(t, i);
                return;
            case 16:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2489S(t, m2388R, C2630k1.m2505C(t2, m2388R));
                m2375e0(t, i);
                return;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                this.f11196n.mo2828d(t, t2, m2388R);
                return;
            case 50:
                C2578c1.m2888F(this.f11199q, t, t2, m2388R);
                return;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (!m2401E(t2, m2389Q, i)) {
                    return;
                }
                C2630k1.m2488T(t, m2388R, C2630k1.m2503E(t2, m2388R));
                m2374f0(t, m2389Q, i);
                return;
            case 60:
            case 68:
                m2394L(t, t2, i);
                return;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (!m2401E(t2, m2389Q, i)) {
                    return;
                }
                C2630k1.m2488T(t, m2388R, C2630k1.m2503E(t2, m2388R));
                m2374f0(t, m2389Q, i);
                return;
            default:
                return;
        }
    }

    /* renamed from: N */
    public static <T> C2647p0<T> m2392N(Class<T> cls, AbstractC2629k0 abstractC2629k0, AbstractC2652r0 abstractC2652r0, AbstractC2580d0 abstractC2580d0, AbstractC2609g1<?, ?> abstractC2609g1, AbstractC2646p<?> abstractC2646p, AbstractC2611h0 abstractC2611h0) {
        return abstractC2629k0 instanceof C2677y0 ? m2390P((C2677y0) abstractC2629k0, abstractC2652r0, abstractC2580d0, abstractC2609g1, abstractC2646p, abstractC2611h0) : m2391O((C2598e1) abstractC2629k0, abstractC2652r0, abstractC2580d0, abstractC2609g1, abstractC2646p, abstractC2611h0);
    }

    /* renamed from: O */
    static <T> C2647p0<T> m2391O(C2598e1 c2598e1, AbstractC2652r0 abstractC2652r0, AbstractC2580d0 abstractC2580d0, AbstractC2609g1<?, ?> abstractC2609g1, AbstractC2646p<?> abstractC2646p, AbstractC2611h0 abstractC2611h0) {
        boolean z = c2598e1.mo2227b() == ProtoSyntax.PROTO3;
        C2653s[] m2759e = c2598e1.m2759e();
        if (m2759e.length != 0) {
            m2759e[0].m2320a();
            throw null;
        }
        int length = m2759e.length;
        int[] iArr = new int[length * 3];
        Object[] objArr = new Object[length * 2];
        if (m2759e.length > 0) {
            m2759e[0].m2319e();
            throw null;
        }
        int[] m2760d = c2598e1.m2760d();
        int[] iArr2 = m2760d;
        if (m2760d == null) {
            iArr2 = f11181r;
        }
        if (m2759e.length > 0) {
            m2759e[0].m2320a();
            throw null;
        }
        int[] iArr3 = f11181r;
        int[] iArr4 = f11181r;
        int[] iArr5 = new int[iArr2.length + iArr3.length + iArr4.length];
        System.arraycopy(iArr2, 0, iArr5, 0, iArr2.length);
        System.arraycopy(iArr3, 0, iArr5, iArr2.length, iArr3.length);
        System.arraycopy(iArr4, 0, iArr5, iArr2.length + iArr3.length, iArr4.length);
        return new C2647p0<>(iArr, objArr, 0, 0, c2598e1.mo2226c(), z, true, iArr5, iArr2.length, iArr2.length + iArr3.length, abstractC2652r0, abstractC2580d0, abstractC2609g1, abstractC2646p, abstractC2611h0);
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x06cf  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x06d9  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0708  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0712  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0862  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0868  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0944  */
    /* renamed from: P */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <T> com.google.protobuf.C2647p0<T> m2390P(com.google.protobuf.C2677y0 r18, com.google.protobuf.AbstractC2652r0 r19, com.google.protobuf.AbstractC2580d0 r20, com.google.protobuf.AbstractC2609g1<?, ?> r21, com.google.protobuf.AbstractC2646p<?> r22, com.google.protobuf.AbstractC2611h0 r23) {
        /*
            Method dump skipped, instructions count: 2575
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C2647p0.m2390P(com.google.protobuf.y0, com.google.protobuf.r0, com.google.protobuf.d0, com.google.protobuf.g1, com.google.protobuf.p, com.google.protobuf.h0):com.google.protobuf.p0");
    }

    /* renamed from: Q */
    private int m2389Q(int i) {
        return this.f11183a[i];
    }

    /* renamed from: R */
    private static long m2388R(int i) {
        return i & 1048575;
    }

    /* renamed from: S */
    private static <T> boolean m2387S(T t, long j) {
        return ((Boolean) C2630k1.m2503E(t, j)).booleanValue();
    }

    /* renamed from: T */
    private static <T> double m2386T(T t, long j) {
        return ((Double) C2630k1.m2503E(t, j)).doubleValue();
    }

    /* renamed from: U */
    private static <T> float m2385U(T t, long j) {
        return ((Float) C2630k1.m2503E(t, j)).floatValue();
    }

    /* renamed from: V */
    private static <T> int m2384V(T t, long j) {
        return ((Integer) C2630k1.m2503E(t, j)).intValue();
    }

    /* renamed from: W */
    private static <T> long m2383W(T t, long j) {
        return ((Long) C2630k1.m2503E(t, j)).longValue();
    }

    /* renamed from: X */
    private int m2382X(int i) {
        if (i < this.f11185c || i > this.f11186d) {
            return -1;
        }
        return m2373g0(i, 0);
    }

    /* renamed from: Y */
    private int m2381Y(int i) {
        return this.f11183a[i + 2];
    }

    /* renamed from: Z */
    private <E> void m2380Z(Object obj, long j, AbstractC2682z0 abstractC2682z0, AbstractC2572a1<E> abstractC2572a1, C2643o c2643o) {
        abstractC2682z0.mo2195j(this.f11196n.mo2827e(obj, j), abstractC2572a1, c2643o);
    }

    /* renamed from: a0 */
    private <E> void m2379a0(Object obj, int i, AbstractC2682z0 abstractC2682z0, AbstractC2572a1<E> abstractC2572a1, C2643o c2643o) {
        abstractC2682z0.mo2186s(this.f11196n.mo2827e(obj, m2388R(i)), abstractC2572a1, c2643o);
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: b0 */
    private void m2378b0(Object obj, int i, AbstractC2682z0 abstractC2682z0) {
        char m2388R;
        String mo2219B;
        if (m2350x(i)) {
            m2388R = m2388R(i);
            mo2219B = abstractC2682z0.mo2208M();
        } else if (this.f11189g) {
            m2388R = m2388R(i);
            mo2219B = abstractC2682z0.mo2190o();
        } else {
            m2388R = m2388R(i);
            mo2219B = abstractC2682z0.mo2219B();
        }
        C2630k1.m2488T(obj, m2388R, mo2219B);
    }

    /* renamed from: c0 */
    private void m2377c0(Object obj, int i, AbstractC2682z0 abstractC2682z0) {
        if (m2350x(i)) {
            abstractC2682z0.mo2179z(this.f11196n.mo2827e(obj, m2388R(i)));
        } else {
            abstractC2682z0.mo2184u(this.f11196n.mo2827e(obj, m2388R(i)));
        }
    }

    /* renamed from: d0 */
    private static Field m2376d0(Class<?> cls, String str) {
        Field[] declaredFields;
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            for (Field field : cls.getDeclaredFields()) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    /* renamed from: e0 */
    private void m2375e0(T t, int i) {
        int m2381Y = m2381Y(i);
        long j = 1048575 & m2381Y;
        if (j == 1048575) {
            return;
        }
        C2630k1.m2490R(t, j, (1 << (m2381Y >>> 20)) | C2630k1.m2507A(t, j));
    }

    /* renamed from: f0 */
    private void m2374f0(T t, int i, int i2) {
        C2630k1.m2490R(t, m2381Y(i2) & 1048575, i);
    }

    /* renamed from: g0 */
    private int m2373g0(int i, int i2) {
        int length = (this.f11183a.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int m2389Q = m2389Q(i4);
            if (i == m2389Q) {
                return i4;
            }
            if (i < m2389Q) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    /* renamed from: h0 */
    private static int m2372h0(int i) {
        return (i & 267386880) >>> 20;
    }

    /* renamed from: i0 */
    private int m2371i0(int i) {
        return this.f11183a[i + 1];
    }

    /* renamed from: j */
    private boolean m2370j(T t, T t2, int i) {
        return m2349y(t, i) == m2349y(t2, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x096c  */
    /* renamed from: j0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m2369j0(T r9, com.google.protobuf.Writer r10) {
        /*
            Method dump skipped, instructions count: 2461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C2647p0.m2369j0(java.lang.Object, com.google.protobuf.Writer):void");
    }

    /* renamed from: k */
    private static <T> boolean m2368k(T t, long j) {
        return C2630k1.m2468r(t, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x092d  */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v175, types: [double] */
    /* JADX WARN: Type inference failed for: r0v183, types: [long] */
    /* JADX WARN: Type inference failed for: r0v187, types: [long] */
    /* JADX WARN: Type inference failed for: r0v195, types: [long] */
    /* JADX WARN: Type inference failed for: r0v225, types: [long] */
    /* JADX WARN: Type inference failed for: r0v233, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [double] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    /* renamed from: k0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m2367k0(T r8, com.google.protobuf.Writer r9) {
        /*
            Method dump skipped, instructions count: 2398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C2647p0.m2367k0(java.lang.Object, com.google.protobuf.Writer):void");
    }

    /* renamed from: l */
    private static <T> double m2366l(T t, long j) {
        return C2630k1.m2461y(t, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x092e  */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v175, types: [double] */
    /* JADX WARN: Type inference failed for: r0v183, types: [long] */
    /* JADX WARN: Type inference failed for: r0v187, types: [long] */
    /* JADX WARN: Type inference failed for: r0v195, types: [long] */
    /* JADX WARN: Type inference failed for: r0v225, types: [long] */
    /* JADX WARN: Type inference failed for: r0v233, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [double] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    /* renamed from: l0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m2365l0(T r8, com.google.protobuf.Writer r9) {
        /*
            Method dump skipped, instructions count: 2392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C2647p0.m2365l0(java.lang.Object, com.google.protobuf.Writer):void");
    }

    /* renamed from: m */
    private boolean m2364m(T t, T t2, int i) {
        int m2371i0 = m2371i0(i);
        long m2388R = m2388R(m2371i0);
        switch (m2372h0(m2371i0)) {
            case 0:
                boolean z = false;
                if (m2370j(t, t2, i)) {
                    z = false;
                    if (Double.doubleToLongBits(C2630k1.m2461y(t, m2388R)) == Double.doubleToLongBits(C2630k1.m2461y(t2, m2388R))) {
                        z = true;
                    }
                }
                return z;
            case 1:
                boolean z2 = false;
                if (m2370j(t, t2, i)) {
                    z2 = false;
                    if (Float.floatToIntBits(C2630k1.m2460z(t, m2388R)) == Float.floatToIntBits(C2630k1.m2460z(t2, m2388R))) {
                        z2 = true;
                    }
                }
                return z2;
            case 2:
                boolean z3 = false;
                if (m2370j(t, t2, i)) {
                    z3 = false;
                    if (C2630k1.m2505C(t, m2388R) == C2630k1.m2505C(t2, m2388R)) {
                        z3 = true;
                    }
                }
                return z3;
            case 3:
                boolean z4 = false;
                if (m2370j(t, t2, i)) {
                    z4 = false;
                    if (C2630k1.m2505C(t, m2388R) == C2630k1.m2505C(t2, m2388R)) {
                        z4 = true;
                    }
                }
                return z4;
            case 4:
                boolean z5 = false;
                if (m2370j(t, t2, i)) {
                    z5 = false;
                    if (C2630k1.m2507A(t, m2388R) == C2630k1.m2507A(t2, m2388R)) {
                        z5 = true;
                    }
                }
                return z5;
            case 5:
                boolean z6 = false;
                if (m2370j(t, t2, i)) {
                    z6 = false;
                    if (C2630k1.m2505C(t, m2388R) == C2630k1.m2505C(t2, m2388R)) {
                        z6 = true;
                    }
                }
                return z6;
            case 6:
                boolean z7 = false;
                if (m2370j(t, t2, i)) {
                    z7 = false;
                    if (C2630k1.m2507A(t, m2388R) == C2630k1.m2507A(t2, m2388R)) {
                        z7 = true;
                    }
                }
                return z7;
            case 7:
                boolean z8 = false;
                if (m2370j(t, t2, i)) {
                    z8 = false;
                    if (C2630k1.m2468r(t, m2388R) == C2630k1.m2468r(t2, m2388R)) {
                        z8 = true;
                    }
                }
                return z8;
            case 8:
                boolean z9 = false;
                if (m2370j(t, t2, i)) {
                    z9 = false;
                    if (C2578c1.m2883K(C2630k1.m2503E(t, m2388R), C2630k1.m2503E(t2, m2388R))) {
                        z9 = true;
                    }
                }
                return z9;
            case 9:
                boolean z10 = false;
                if (m2370j(t, t2, i)) {
                    z10 = false;
                    if (C2578c1.m2883K(C2630k1.m2503E(t, m2388R), C2630k1.m2503E(t2, m2388R))) {
                        z10 = true;
                    }
                }
                return z10;
            case 10:
                boolean z11 = false;
                if (m2370j(t, t2, i)) {
                    z11 = false;
                    if (C2578c1.m2883K(C2630k1.m2503E(t, m2388R), C2630k1.m2503E(t2, m2388R))) {
                        z11 = true;
                    }
                }
                return z11;
            case 11:
                boolean z12 = false;
                if (m2370j(t, t2, i)) {
                    z12 = false;
                    if (C2630k1.m2507A(t, m2388R) == C2630k1.m2507A(t2, m2388R)) {
                        z12 = true;
                    }
                }
                return z12;
            case 12:
                boolean z13 = false;
                if (m2370j(t, t2, i)) {
                    z13 = false;
                    if (C2630k1.m2507A(t, m2388R) == C2630k1.m2507A(t2, m2388R)) {
                        z13 = true;
                    }
                }
                return z13;
            case 13:
                boolean z14 = false;
                if (m2370j(t, t2, i)) {
                    z14 = false;
                    if (C2630k1.m2507A(t, m2388R) == C2630k1.m2507A(t2, m2388R)) {
                        z14 = true;
                    }
                }
                return z14;
            case 14:
                boolean z15 = false;
                if (m2370j(t, t2, i)) {
                    z15 = false;
                    if (C2630k1.m2505C(t, m2388R) == C2630k1.m2505C(t2, m2388R)) {
                        z15 = true;
                    }
                }
                return z15;
            case 15:
                boolean z16 = false;
                if (m2370j(t, t2, i)) {
                    z16 = false;
                    if (C2630k1.m2507A(t, m2388R) == C2630k1.m2507A(t2, m2388R)) {
                        z16 = true;
                    }
                }
                return z16;
            case 16:
                boolean z17 = false;
                if (m2370j(t, t2, i)) {
                    z17 = false;
                    if (C2630k1.m2505C(t, m2388R) == C2630k1.m2505C(t2, m2388R)) {
                        z17 = true;
                    }
                }
                return z17;
            case 17:
                boolean z18 = false;
                if (m2370j(t, t2, i)) {
                    z18 = false;
                    if (C2578c1.m2883K(C2630k1.m2503E(t, m2388R), C2630k1.m2503E(t2, m2388R))) {
                        z18 = true;
                    }
                }
                return z18;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
                return C2578c1.m2883K(C2630k1.m2503E(t, m2388R), C2630k1.m2503E(t2, m2388R));
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
                boolean z19 = false;
                if (m2402D(t, t2, i)) {
                    z19 = false;
                    if (C2578c1.m2883K(C2630k1.m2503E(t, m2388R), C2630k1.m2503E(t2, m2388R))) {
                        z19 = true;
                    }
                }
                return z19;
            default:
                return true;
        }
    }

    /* renamed from: m0 */
    private <K, V> void m2363m0(Writer writer, int i, Object obj, int i2) {
        if (obj != null) {
            writer.mo2510x(i, this.f11199q.mo2617f(m2356r(i2)), this.f11199q.mo2616g(obj));
        }
    }

    /* renamed from: n */
    private final <UT, UB> UB m2362n(Object obj, int i, UB ub, AbstractC2609g1<UT, UB> abstractC2609g1) {
        C2665x.AbstractC2670e m2357q;
        int m2389Q = m2389Q(i);
        Object m2503E = C2630k1.m2503E(obj, m2388R(m2371i0(i)));
        if (m2503E != null && (m2357q = m2357q(i)) != null) {
            return (UB) m2360o(i, m2389Q, this.f11199q.mo2615h(m2503E), m2357q, ub, abstractC2609g1);
        }
        return ub;
    }

    /* renamed from: n0 */
    private void m2361n0(int i, Object obj, Writer writer) {
        if (obj instanceof String) {
            writer.mo2549G(i, (String) obj);
        } else {
            writer.mo2522l(i, (ByteString) obj);
        }
    }

    /* renamed from: o */
    private final <K, V, UT, UB> UB m2360o(int i, int i2, Map<K, V> map, C2665x.AbstractC2670e abstractC2670e, UB ub, AbstractC2609g1<UT, UB> abstractC2609g1) {
        C2607g0.C2608a<?, ?> mo2617f = this.f11199q.mo2617f(m2356r(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!abstractC2670e.mo2240a(((Integer) next.getValue()).intValue())) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = abstractC2609g1.mo2591n();
                }
                ByteString.C2544g newCodedBuilder = ByteString.newCodedBuilder(C2607g0.m2728b(mo2617f, next.getKey(), next.getValue()));
                try {
                    C2607g0.m2725e(newCodedBuilder.m3156b(), mo2617f, next.getKey(), next.getValue());
                    abstractC2609g1.mo2599d(ub2, i2, newCodedBuilder.m3157a());
                    it.remove();
                    ub = ub2;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* renamed from: o0 */
    private <UT, UB> void m2359o0(AbstractC2609g1<UT, UB> abstractC2609g1, T t, Writer writer) {
        abstractC2609g1.mo2585t(abstractC2609g1.mo2596g(t), writer);
    }

    /* renamed from: p */
    private static <T> float m2358p(T t, long j) {
        return C2630k1.m2460z(t, j);
    }

    /* renamed from: q */
    private C2665x.AbstractC2670e m2357q(int i) {
        return (C2665x.AbstractC2670e) this.f11184b[((i / 3) * 2) + 1];
    }

    /* renamed from: r */
    private Object m2356r(int i) {
        return this.f11184b[(i / 3) * 2];
    }

    /* renamed from: s */
    private AbstractC2572a1 m2355s(int i) {
        int i2 = (i / 3) * 2;
        AbstractC2572a1 abstractC2572a1 = (AbstractC2572a1) this.f11184b[i2];
        if (abstractC2572a1 != null) {
            return abstractC2572a1;
        }
        AbstractC2572a1<T> m2253d = C2664w0.m2256a().m2253d((Class) this.f11184b[i2 + 1]);
        this.f11184b[i2] = m2253d;
        return m2253d;
    }

    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    /* JADX WARN: Type inference failed for: r0v392, types: [long] */
    /* renamed from: t */
    private int m2354t(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int m3108e;
        int i6;
        int i7;
        int i8;
        int i9;
        char c;
        int i10;
        Unsafe unsafe = f11182s;
        int i11 = 0;
        int i12 = 0;
        int i13 = 1048575;
        int i14 = 0;
        while (i11 < this.f11183a.length) {
            int m2371i0 = m2371i0(i11);
            int m2389Q = m2389Q(i11);
            int m2372h0 = m2372h0(m2371i0);
            if (m2372h0 <= 17) {
                int i15 = this.f11183a[i11 + 2];
                int i16 = i15 & 1048575;
                int i17 = 1 << (i15 >>> 20);
                i3 = i13;
                i2 = i15;
                i = i17;
                if (i16 != i13) {
                    i14 = unsafe.getInt(t, i16);
                    i3 = i16;
                    i2 = i15;
                    i = i17;
                }
            } else {
                i = 0;
                i2 = (!this.f11191i || m2372h0 < FieldType.DOUBLE_LIST_PACKED.m3045id() || m2372h0 > FieldType.SINT64_LIST_PACKED.m3045id()) ? 0 : this.f11183a[i11 + 2] & 1048575;
                i3 = i13;
            }
            long m2388R = m2388R(m2371i0);
            switch (m2372h0) {
                case 0:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    } else {
                        i5 = CodedOutputStream.m3101j(m2389Q, 0.0d);
                        i4 = i12 + i5;
                        break;
                    }
                case 1:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    } else {
                        i5 = CodedOutputStream.m3088r(m2389Q, 0.0f);
                        i4 = i12 + i5;
                        break;
                    }
                case 2:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    } else {
                        i5 = CodedOutputStream.m3078y(m2389Q, unsafe.getLong(t, m2388R));
                        i4 = i12 + i5;
                        break;
                    }
                case 3:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    } else {
                        i5 = CodedOutputStream.m3116Y(m2389Q, unsafe.getLong(t, m2388R));
                        i4 = i12 + i5;
                        break;
                    }
                case 4:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    } else {
                        i5 = CodedOutputStream.m3082w(m2389Q, unsafe.getInt(t, m2388R));
                        i4 = i12 + i5;
                        break;
                    }
                case 5:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    } else {
                        i5 = CodedOutputStream.m3092p(m2389Q, 0L);
                        i4 = i12 + i5;
                        break;
                    }
                case 6:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    } else {
                        i5 = CodedOutputStream.m3095n(m2389Q, 0);
                        i4 = i12 + i5;
                        break;
                    }
                case 7:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    }
                    m3108e = CodedOutputStream.m3108e(m2389Q, true);
                    i4 = i12 + m3108e;
                    break;
                case 8:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    } else {
                        Object object = unsafe.getObject(t, m2388R);
                        m3108e = object instanceof ByteString ? CodedOutputStream.m3103h(m2389Q, (ByteString) object) : CodedOutputStream.m3121T(m2389Q, (String) object);
                        i4 = i12 + m3108e;
                        break;
                    }
                case 9:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    }
                    m3108e = C2578c1.m2848o(m2389Q, unsafe.getObject(t, m2388R), m2355s(i11));
                    i4 = i12 + m3108e;
                    break;
                case 10:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    }
                    m3108e = CodedOutputStream.m3103h(m2389Q, (ByteString) unsafe.getObject(t, m2388R));
                    i4 = i12 + m3108e;
                    break;
                case 11:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    } else {
                        i6 = unsafe.getInt(t, m2388R);
                        m3108e = CodedOutputStream.m3118W(m2389Q, i6);
                        i4 = i12 + m3108e;
                        break;
                    }
                case 12:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    } else {
                        i7 = unsafe.getInt(t, m2388R);
                        m3108e = CodedOutputStream.m3097l(m2389Q, i7);
                        i4 = i12 + m3108e;
                        break;
                    }
                case 13:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    }
                    i8 = CodedOutputStream.m3136L(m2389Q, 0);
                    i4 = i12 + i8;
                    break;
                case 14:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    }
                    m3108e = CodedOutputStream.m3132N(m2389Q, 0L);
                    i4 = i12 + m3108e;
                    break;
                case 15:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    } else {
                        i9 = unsafe.getInt(t, m2388R);
                        m3108e = CodedOutputStream.m3128P(m2389Q, i9);
                        i4 = i12 + m3108e;
                        break;
                    }
                case 16:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    } else {
                        c = unsafe.getLong(t, m2388R);
                        m3108e = CodedOutputStream.m3124R(m2389Q, c);
                        i4 = i12 + m3108e;
                        break;
                    }
                case 17:
                    i4 = i12;
                    if ((i14 & i) == 0) {
                        break;
                    }
                    m3108e = CodedOutputStream.m3085t(m2389Q, (AbstractC2639m0) unsafe.getObject(t, m2388R), m2355s(i11));
                    i4 = i12 + m3108e;
                    break;
                case 18:
                case 23:
                case 32:
                    m3108e = C2578c1.m2855h(m2389Q, (List) unsafe.getObject(t, m2388R), false);
                    i4 = i12 + m3108e;
                    break;
                case 19:
                case 24:
                case 31:
                    m3108e = C2578c1.m2857f(m2389Q, (List) unsafe.getObject(t, m2388R), false);
                    i4 = i12 + m3108e;
                    break;
                case 20:
                    m3108e = C2578c1.m2850m(m2389Q, (List) unsafe.getObject(t, m2388R), false);
                    i4 = i12 + m3108e;
                    break;
                case 21:
                    m3108e = C2578c1.m2839x(m2389Q, (List) unsafe.getObject(t, m2388R), false);
                    i4 = i12 + m3108e;
                    break;
                case 22:
                    m3108e = C2578c1.m2852k(m2389Q, (List) unsafe.getObject(t, m2388R), false);
                    i4 = i12 + m3108e;
                    break;
                case 25:
                    m3108e = C2578c1.m2867a(m2389Q, (List) unsafe.getObject(t, m2388R), false);
                    i4 = i12 + m3108e;
                    break;
                case 26:
                    m3108e = C2578c1.m2842u(m2389Q, (List) unsafe.getObject(t, m2388R));
                    i4 = i12 + m3108e;
                    break;
                case 27:
                    m3108e = C2578c1.m2847p(m2389Q, (List) unsafe.getObject(t, m2388R), m2355s(i11));
                    i4 = i12 + m3108e;
                    break;
                case 28:
                    m3108e = C2578c1.m2863c(m2389Q, (List) unsafe.getObject(t, m2388R));
                    i4 = i12 + m3108e;
                    break;
                case 29:
                    m3108e = C2578c1.m2841v(m2389Q, (List) unsafe.getObject(t, m2388R), false);
                    i4 = i12 + m3108e;
                    break;
                case 30:
                    m3108e = C2578c1.m2861d(m2389Q, (List) unsafe.getObject(t, m2388R), false);
                    i4 = i12 + m3108e;
                    break;
                case 33:
                    m3108e = C2578c1.m2846q(m2389Q, (List) unsafe.getObject(t, m2388R), false);
                    i4 = i12 + m3108e;
                    break;
                case 34:
                    m3108e = C2578c1.m2844s(m2389Q, (List) unsafe.getObject(t, m2388R), false);
                    i4 = i12 + m3108e;
                    break;
                case 35:
                    int m2854i = C2578c1.m2854i((List) unsafe.getObject(t, m2388R));
                    i4 = i12;
                    if (m2854i <= 0) {
                        break;
                    } else {
                        i10 = m2854i;
                        if (this.f11191i) {
                            i10 = m2854i;
                            unsafe.putInt(t, i2, i10);
                        }
                        i8 = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i10) + i10;
                        i4 = i12 + i8;
                        break;
                    }
                case 36:
                    int m2856g = C2578c1.m2856g((List) unsafe.getObject(t, m2388R));
                    i4 = i12;
                    if (m2856g <= 0) {
                        break;
                    } else {
                        i10 = m2856g;
                        if (this.f11191i) {
                            i10 = m2856g;
                            unsafe.putInt(t, i2, i10);
                        }
                        i8 = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i10) + i10;
                        i4 = i12 + i8;
                        break;
                    }
                case 37:
                    int m2849n = C2578c1.m2849n((List) unsafe.getObject(t, m2388R));
                    i4 = i12;
                    if (m2849n <= 0) {
                        break;
                    } else {
                        i10 = m2849n;
                        if (this.f11191i) {
                            i10 = m2849n;
                            unsafe.putInt(t, i2, i10);
                        }
                        i8 = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i10) + i10;
                        i4 = i12 + i8;
                        break;
                    }
                case 38:
                    int m2838y = C2578c1.m2838y((List) unsafe.getObject(t, m2388R));
                    i4 = i12;
                    if (m2838y <= 0) {
                        break;
                    } else {
                        i10 = m2838y;
                        if (this.f11191i) {
                            i10 = m2838y;
                            unsafe.putInt(t, i2, i10);
                        }
                        i8 = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i10) + i10;
                        i4 = i12 + i8;
                        break;
                    }
                case 39:
                    int m2851l = C2578c1.m2851l((List) unsafe.getObject(t, m2388R));
                    i4 = i12;
                    if (m2851l <= 0) {
                        break;
                    } else {
                        i10 = m2851l;
                        if (this.f11191i) {
                            i10 = m2851l;
                            unsafe.putInt(t, i2, i10);
                        }
                        i8 = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i10) + i10;
                        i4 = i12 + i8;
                        break;
                    }
                case 40:
                    int m2854i2 = C2578c1.m2854i((List) unsafe.getObject(t, m2388R));
                    i4 = i12;
                    if (m2854i2 <= 0) {
                        break;
                    } else {
                        i10 = m2854i2;
                        if (this.f11191i) {
                            i10 = m2854i2;
                            unsafe.putInt(t, i2, i10);
                        }
                        i8 = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i10) + i10;
                        i4 = i12 + i8;
                        break;
                    }
                case 41:
                    int m2856g2 = C2578c1.m2856g((List) unsafe.getObject(t, m2388R));
                    i4 = i12;
                    if (m2856g2 <= 0) {
                        break;
                    } else {
                        i10 = m2856g2;
                        if (this.f11191i) {
                            i10 = m2856g2;
                            unsafe.putInt(t, i2, i10);
                        }
                        i8 = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i10) + i10;
                        i4 = i12 + i8;
                        break;
                    }
                case 42:
                    int m2865b = C2578c1.m2865b((List) unsafe.getObject(t, m2388R));
                    i4 = i12;
                    if (m2865b <= 0) {
                        break;
                    } else {
                        i10 = m2865b;
                        if (this.f11191i) {
                            i10 = m2865b;
                            unsafe.putInt(t, i2, i10);
                        }
                        i8 = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i10) + i10;
                        i4 = i12 + i8;
                        break;
                    }
                case 43:
                    int m2840w = C2578c1.m2840w((List) unsafe.getObject(t, m2388R));
                    i4 = i12;
                    if (m2840w <= 0) {
                        break;
                    } else {
                        i10 = m2840w;
                        if (this.f11191i) {
                            i10 = m2840w;
                            unsafe.putInt(t, i2, i10);
                        }
                        i8 = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i10) + i10;
                        i4 = i12 + i8;
                        break;
                    }
                case 44:
                    int m2859e = C2578c1.m2859e((List) unsafe.getObject(t, m2388R));
                    i4 = i12;
                    if (m2859e <= 0) {
                        break;
                    } else {
                        i10 = m2859e;
                        if (this.f11191i) {
                            i10 = m2859e;
                            unsafe.putInt(t, i2, i10);
                        }
                        i8 = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i10) + i10;
                        i4 = i12 + i8;
                        break;
                    }
                case 45:
                    int m2856g3 = C2578c1.m2856g((List) unsafe.getObject(t, m2388R));
                    i4 = i12;
                    if (m2856g3 <= 0) {
                        break;
                    } else {
                        i10 = m2856g3;
                        if (this.f11191i) {
                            i10 = m2856g3;
                            unsafe.putInt(t, i2, i10);
                        }
                        i8 = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i10) + i10;
                        i4 = i12 + i8;
                        break;
                    }
                case 46:
                    int m2854i3 = C2578c1.m2854i((List) unsafe.getObject(t, m2388R));
                    i4 = i12;
                    if (m2854i3 <= 0) {
                        break;
                    } else {
                        i10 = m2854i3;
                        if (this.f11191i) {
                            i10 = m2854i3;
                            unsafe.putInt(t, i2, i10);
                        }
                        i8 = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i10) + i10;
                        i4 = i12 + i8;
                        break;
                    }
                case 47:
                    int m2845r = C2578c1.m2845r((List) unsafe.getObject(t, m2388R));
                    i4 = i12;
                    if (m2845r <= 0) {
                        break;
                    } else {
                        i10 = m2845r;
                        if (this.f11191i) {
                            i10 = m2845r;
                            unsafe.putInt(t, i2, i10);
                        }
                        i8 = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i10) + i10;
                        i4 = i12 + i8;
                        break;
                    }
                case 48:
                    int m2843t = C2578c1.m2843t((List) unsafe.getObject(t, m2388R));
                    i4 = i12;
                    if (m2843t <= 0) {
                        break;
                    } else {
                        i10 = m2843t;
                        if (this.f11191i) {
                            i10 = m2843t;
                            unsafe.putInt(t, i2, i10);
                        }
                        i8 = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i10) + i10;
                        i4 = i12 + i8;
                        break;
                    }
                case 49:
                    m3108e = C2578c1.m2853j(m2389Q, (List) unsafe.getObject(t, m2388R), m2355s(i11));
                    i4 = i12 + m3108e;
                    break;
                case 50:
                    m3108e = this.f11199q.mo2620c(m2389Q, unsafe.getObject(t, m2388R), m2356r(i11));
                    i4 = i12 + m3108e;
                    break;
                case 51:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    } else {
                        m3108e = CodedOutputStream.m3101j(m2389Q, 0.0d);
                        i4 = i12 + m3108e;
                        break;
                    }
                case 52:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    } else {
                        m3108e = CodedOutputStream.m3088r(m2389Q, 0.0f);
                        i4 = i12 + m3108e;
                        break;
                    }
                case 53:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    } else {
                        m3108e = CodedOutputStream.m3078y(m2389Q, m2383W(t, m2388R));
                        i4 = i12 + m3108e;
                        break;
                    }
                case 54:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    } else {
                        m3108e = CodedOutputStream.m3116Y(m2389Q, m2383W(t, m2388R));
                        i4 = i12 + m3108e;
                        break;
                    }
                case 55:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    } else {
                        m3108e = CodedOutputStream.m3082w(m2389Q, m2384V(t, m2388R));
                        i4 = i12 + m3108e;
                        break;
                    }
                case 56:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    } else {
                        m3108e = CodedOutputStream.m3092p(m2389Q, 0L);
                        i4 = i12 + m3108e;
                        break;
                    }
                case 57:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    } else {
                        i8 = CodedOutputStream.m3095n(m2389Q, 0);
                        i4 = i12 + i8;
                        break;
                    }
                case 58:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    }
                    m3108e = CodedOutputStream.m3108e(m2389Q, true);
                    i4 = i12 + m3108e;
                    break;
                case 59:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    } else {
                        Object object2 = unsafe.getObject(t, m2388R);
                        m3108e = object2 instanceof ByteString ? CodedOutputStream.m3103h(m2389Q, (ByteString) object2) : CodedOutputStream.m3121T(m2389Q, (String) object2);
                        i4 = i12 + m3108e;
                        break;
                    }
                case 60:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    }
                    m3108e = C2578c1.m2848o(m2389Q, unsafe.getObject(t, m2388R), m2355s(i11));
                    i4 = i12 + m3108e;
                    break;
                case 61:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    }
                    m3108e = CodedOutputStream.m3103h(m2389Q, (ByteString) unsafe.getObject(t, m2388R));
                    i4 = i12 + m3108e;
                    break;
                case 62:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    } else {
                        i6 = m2384V(t, m2388R);
                        m3108e = CodedOutputStream.m3118W(m2389Q, i6);
                        i4 = i12 + m3108e;
                        break;
                    }
                case 63:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    } else {
                        i7 = m2384V(t, m2388R);
                        m3108e = CodedOutputStream.m3097l(m2389Q, i7);
                        i4 = i12 + m3108e;
                        break;
                    }
                case 64:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    }
                    i8 = CodedOutputStream.m3136L(m2389Q, 0);
                    i4 = i12 + i8;
                    break;
                case 65:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    }
                    m3108e = CodedOutputStream.m3132N(m2389Q, 0L);
                    i4 = i12 + m3108e;
                    break;
                case 66:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    } else {
                        i9 = m2384V(t, m2388R);
                        m3108e = CodedOutputStream.m3128P(m2389Q, i9);
                        i4 = i12 + m3108e;
                        break;
                    }
                case 67:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    } else {
                        c = m2383W(t, m2388R);
                        m3108e = CodedOutputStream.m3124R(m2389Q, c);
                        i4 = i12 + m3108e;
                        break;
                    }
                case 68:
                    i4 = i12;
                    if (!m2401E(t, m2389Q, i11)) {
                        break;
                    }
                    m3108e = CodedOutputStream.m3085t(m2389Q, (AbstractC2639m0) unsafe.getObject(t, m2388R), m2355s(i11));
                    i4 = i12 + m3108e;
                    break;
                default:
                    i4 = i12;
                    break;
            }
            i11 += 3;
            i12 = i4;
            i13 = i3;
        }
        int m2352v = i12 + m2352v(this.f11197o, t);
        int i18 = m2352v;
        if (this.f11188f) {
            i18 = m2352v + this.f11198p.mo2345c(t).m2305l();
        }
        return i18;
    }

    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r0v316, types: [long] */
    /* JADX WARN: Type inference failed for: r0v321, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v378, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* renamed from: u */
    private int m2353u(T t) {
        int i;
        int m3101j;
        char c;
        char c2;
        int i2;
        Object obj;
        Object obj2;
        int i3;
        int i4;
        int i5;
        char c3;
        int i6;
        Unsafe unsafe = f11182s;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = i8;
            if (i7 < this.f11183a.length) {
                int m2371i0 = m2371i0(i7);
                int m2372h0 = m2372h0(m2371i0);
                int m2389Q = m2389Q(i7);
                long m2388R = m2388R(m2371i0);
                int i10 = (m2372h0 < FieldType.DOUBLE_LIST_PACKED.m3045id() || m2372h0 > FieldType.SINT64_LIST_PACKED.m3045id()) ? 0 : this.f11183a[i7 + 2] & 1048575;
                switch (m2372h0) {
                    case 0:
                        i = i9;
                        if (!m2349y(t, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = CodedOutputStream.m3101j(m2389Q, 0.0d);
                        break;
                    case 1:
                        i = i9;
                        if (!m2349y(t, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = CodedOutputStream.m3088r(m2389Q, 0.0f);
                        break;
                    case 2:
                        i = i9;
                        if (m2349y(t, i7)) {
                            c = C2630k1.m2505C(t, m2388R);
                            m3101j = CodedOutputStream.m3078y(m2389Q, c);
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 3:
                        i = i9;
                        if (m2349y(t, i7)) {
                            c2 = C2630k1.m2505C(t, m2388R);
                            m3101j = CodedOutputStream.m3116Y(m2389Q, c2);
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 4:
                        i = i9;
                        if (m2349y(t, i7)) {
                            i2 = C2630k1.m2507A(t, m2388R);
                            m3101j = CodedOutputStream.m3082w(m2389Q, i2);
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 5:
                        i = i9;
                        if (!m2349y(t, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = CodedOutputStream.m3092p(m2389Q, 0L);
                        break;
                    case 6:
                        i = i9;
                        if (!m2349y(t, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = CodedOutputStream.m3095n(m2389Q, 0);
                        break;
                    case 7:
                        i = i9;
                        if (!m2349y(t, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = CodedOutputStream.m3108e(m2389Q, true);
                        break;
                    case 8:
                        i = i9;
                        if (m2349y(t, i7)) {
                            Object m2503E = C2630k1.m2503E(t, m2388R);
                            obj = m2503E;
                            if (m2503E instanceof ByteString) {
                                obj2 = m2503E;
                                m3101j = CodedOutputStream.m3103h(m2389Q, (ByteString) obj2);
                                break;
                            }
                            m3101j = CodedOutputStream.m3121T(m2389Q, (String) obj);
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 9:
                        i = i9;
                        if (!m2349y(t, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = C2578c1.m2848o(m2389Q, C2630k1.m2503E(t, m2388R), m2355s(i7));
                        break;
                    case 10:
                        i = i9;
                        if (!m2349y(t, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        obj2 = C2630k1.m2503E(t, m2388R);
                        m3101j = CodedOutputStream.m3103h(m2389Q, (ByteString) obj2);
                        break;
                    case 11:
                        i = i9;
                        if (m2349y(t, i7)) {
                            i3 = C2630k1.m2507A(t, m2388R);
                            m3101j = CodedOutputStream.m3118W(m2389Q, i3);
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 12:
                        i = i9;
                        if (m2349y(t, i7)) {
                            i4 = C2630k1.m2507A(t, m2388R);
                            m3101j = CodedOutputStream.m3097l(m2389Q, i4);
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 13:
                        i = i9;
                        if (!m2349y(t, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = CodedOutputStream.m3136L(m2389Q, 0);
                        break;
                    case 14:
                        i = i9;
                        if (!m2349y(t, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = CodedOutputStream.m3132N(m2389Q, 0L);
                        break;
                    case 15:
                        i = i9;
                        if (m2349y(t, i7)) {
                            i5 = C2630k1.m2507A(t, m2388R);
                            m3101j = CodedOutputStream.m3128P(m2389Q, i5);
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 16:
                        i = i9;
                        if (m2349y(t, i7)) {
                            c3 = C2630k1.m2505C(t, m2388R);
                            m3101j = CodedOutputStream.m3124R(m2389Q, c3);
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 17:
                        i = i9;
                        if (!m2349y(t, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = CodedOutputStream.m3085t(m2389Q, (AbstractC2639m0) C2630k1.m2503E(t, m2388R), m2355s(i7));
                        break;
                    case 18:
                    case 23:
                    case 32:
                        m3101j = C2578c1.m2855h(m2389Q, m2399G(t, m2388R), false);
                        break;
                    case 19:
                    case 24:
                    case 31:
                        m3101j = C2578c1.m2857f(m2389Q, m2399G(t, m2388R), false);
                        break;
                    case 20:
                        m3101j = C2578c1.m2850m(m2389Q, m2399G(t, m2388R), false);
                        break;
                    case 21:
                        m3101j = C2578c1.m2839x(m2389Q, m2399G(t, m2388R), false);
                        break;
                    case 22:
                        m3101j = C2578c1.m2852k(m2389Q, m2399G(t, m2388R), false);
                        break;
                    case 25:
                        m3101j = C2578c1.m2867a(m2389Q, m2399G(t, m2388R), false);
                        break;
                    case 26:
                        m3101j = C2578c1.m2842u(m2389Q, m2399G(t, m2388R));
                        break;
                    case 27:
                        m3101j = C2578c1.m2847p(m2389Q, m2399G(t, m2388R), m2355s(i7));
                        break;
                    case 28:
                        m3101j = C2578c1.m2863c(m2389Q, m2399G(t, m2388R));
                        break;
                    case 29:
                        m3101j = C2578c1.m2841v(m2389Q, m2399G(t, m2388R), false);
                        break;
                    case 30:
                        m3101j = C2578c1.m2861d(m2389Q, m2399G(t, m2388R), false);
                        break;
                    case 33:
                        m3101j = C2578c1.m2846q(m2389Q, m2399G(t, m2388R), false);
                        break;
                    case 34:
                        m3101j = C2578c1.m2844s(m2389Q, m2399G(t, m2388R), false);
                        break;
                    case 35:
                        int m2854i = C2578c1.m2854i((List) unsafe.getObject(t, m2388R));
                        i = i9;
                        if (m2854i > 0) {
                            i6 = m2854i;
                            if (this.f11191i) {
                                i6 = m2854i;
                                unsafe.putInt(t, i10, i6);
                            }
                            m3101j = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i6) + i6;
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 36:
                        int m2856g = C2578c1.m2856g((List) unsafe.getObject(t, m2388R));
                        i = i9;
                        if (m2856g > 0) {
                            i6 = m2856g;
                            if (this.f11191i) {
                                i6 = m2856g;
                                unsafe.putInt(t, i10, i6);
                            }
                            m3101j = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i6) + i6;
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 37:
                        int m2849n = C2578c1.m2849n((List) unsafe.getObject(t, m2388R));
                        i = i9;
                        if (m2849n > 0) {
                            i6 = m2849n;
                            if (this.f11191i) {
                                i6 = m2849n;
                                unsafe.putInt(t, i10, i6);
                            }
                            m3101j = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i6) + i6;
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 38:
                        int m2838y = C2578c1.m2838y((List) unsafe.getObject(t, m2388R));
                        i = i9;
                        if (m2838y > 0) {
                            i6 = m2838y;
                            if (this.f11191i) {
                                i6 = m2838y;
                                unsafe.putInt(t, i10, i6);
                            }
                            m3101j = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i6) + i6;
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 39:
                        int m2851l = C2578c1.m2851l((List) unsafe.getObject(t, m2388R));
                        i = i9;
                        if (m2851l > 0) {
                            i6 = m2851l;
                            if (this.f11191i) {
                                i6 = m2851l;
                                unsafe.putInt(t, i10, i6);
                            }
                            m3101j = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i6) + i6;
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 40:
                        int m2854i2 = C2578c1.m2854i((List) unsafe.getObject(t, m2388R));
                        i = i9;
                        if (m2854i2 > 0) {
                            i6 = m2854i2;
                            if (this.f11191i) {
                                i6 = m2854i2;
                                unsafe.putInt(t, i10, i6);
                            }
                            m3101j = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i6) + i6;
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 41:
                        int m2856g2 = C2578c1.m2856g((List) unsafe.getObject(t, m2388R));
                        i = i9;
                        if (m2856g2 > 0) {
                            i6 = m2856g2;
                            if (this.f11191i) {
                                i6 = m2856g2;
                                unsafe.putInt(t, i10, i6);
                            }
                            m3101j = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i6) + i6;
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 42:
                        int m2865b = C2578c1.m2865b((List) unsafe.getObject(t, m2388R));
                        i = i9;
                        if (m2865b > 0) {
                            i6 = m2865b;
                            if (this.f11191i) {
                                i6 = m2865b;
                                unsafe.putInt(t, i10, i6);
                            }
                            m3101j = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i6) + i6;
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 43:
                        int m2840w = C2578c1.m2840w((List) unsafe.getObject(t, m2388R));
                        i = i9;
                        if (m2840w > 0) {
                            i6 = m2840w;
                            if (this.f11191i) {
                                i6 = m2840w;
                                unsafe.putInt(t, i10, i6);
                            }
                            m3101j = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i6) + i6;
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 44:
                        int m2859e = C2578c1.m2859e((List) unsafe.getObject(t, m2388R));
                        i = i9;
                        if (m2859e > 0) {
                            i6 = m2859e;
                            if (this.f11191i) {
                                i6 = m2859e;
                                unsafe.putInt(t, i10, i6);
                            }
                            m3101j = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i6) + i6;
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 45:
                        int m2856g3 = C2578c1.m2856g((List) unsafe.getObject(t, m2388R));
                        i = i9;
                        if (m2856g3 > 0) {
                            i6 = m2856g3;
                            if (this.f11191i) {
                                i6 = m2856g3;
                                unsafe.putInt(t, i10, i6);
                            }
                            m3101j = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i6) + i6;
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 46:
                        int m2854i3 = C2578c1.m2854i((List) unsafe.getObject(t, m2388R));
                        i = i9;
                        if (m2854i3 > 0) {
                            i6 = m2854i3;
                            if (this.f11191i) {
                                i6 = m2854i3;
                                unsafe.putInt(t, i10, i6);
                            }
                            m3101j = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i6) + i6;
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 47:
                        int m2845r = C2578c1.m2845r((List) unsafe.getObject(t, m2388R));
                        i = i9;
                        if (m2845r > 0) {
                            i6 = m2845r;
                            if (this.f11191i) {
                                i6 = m2845r;
                                unsafe.putInt(t, i10, i6);
                            }
                            m3101j = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i6) + i6;
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 48:
                        int m2843t = C2578c1.m2843t((List) unsafe.getObject(t, m2388R));
                        i = i9;
                        if (m2843t > 0) {
                            i6 = m2843t;
                            if (this.f11191i) {
                                i6 = m2843t;
                                unsafe.putInt(t, i10, i6);
                            }
                            m3101j = CodedOutputStream.m3119V(m2389Q) + CodedOutputStream.m3117X(i6) + i6;
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 49:
                        m3101j = C2578c1.m2853j(m2389Q, m2399G(t, m2388R), m2355s(i7));
                        break;
                    case 50:
                        m3101j = this.f11199q.mo2620c(m2389Q, C2630k1.m2503E(t, m2388R), m2356r(i7));
                        break;
                    case 51:
                        i = i9;
                        if (!m2401E(t, m2389Q, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = CodedOutputStream.m3101j(m2389Q, 0.0d);
                        break;
                    case 52:
                        i = i9;
                        if (!m2401E(t, m2389Q, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = CodedOutputStream.m3088r(m2389Q, 0.0f);
                        break;
                    case 53:
                        i = i9;
                        if (m2401E(t, m2389Q, i7)) {
                            c = m2383W(t, m2388R);
                            m3101j = CodedOutputStream.m3078y(m2389Q, c);
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 54:
                        i = i9;
                        if (m2401E(t, m2389Q, i7)) {
                            c2 = m2383W(t, m2388R);
                            m3101j = CodedOutputStream.m3116Y(m2389Q, c2);
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 55:
                        i = i9;
                        if (m2401E(t, m2389Q, i7)) {
                            i2 = m2384V(t, m2388R);
                            m3101j = CodedOutputStream.m3082w(m2389Q, i2);
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 56:
                        i = i9;
                        if (!m2401E(t, m2389Q, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = CodedOutputStream.m3092p(m2389Q, 0L);
                        break;
                    case 57:
                        i = i9;
                        if (!m2401E(t, m2389Q, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = CodedOutputStream.m3095n(m2389Q, 0);
                        break;
                    case 58:
                        i = i9;
                        if (!m2401E(t, m2389Q, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = CodedOutputStream.m3108e(m2389Q, true);
                        break;
                    case 59:
                        i = i9;
                        if (m2401E(t, m2389Q, i7)) {
                            Object m2503E2 = C2630k1.m2503E(t, m2388R);
                            obj = m2503E2;
                            if (m2503E2 instanceof ByteString) {
                                obj2 = m2503E2;
                                m3101j = CodedOutputStream.m3103h(m2389Q, (ByteString) obj2);
                                break;
                            }
                            m3101j = CodedOutputStream.m3121T(m2389Q, (String) obj);
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 60:
                        i = i9;
                        if (!m2401E(t, m2389Q, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = C2578c1.m2848o(m2389Q, C2630k1.m2503E(t, m2388R), m2355s(i7));
                        break;
                    case 61:
                        i = i9;
                        if (!m2401E(t, m2389Q, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        obj2 = C2630k1.m2503E(t, m2388R);
                        m3101j = CodedOutputStream.m3103h(m2389Q, (ByteString) obj2);
                        break;
                    case 62:
                        i = i9;
                        if (m2401E(t, m2389Q, i7)) {
                            i3 = m2384V(t, m2388R);
                            m3101j = CodedOutputStream.m3118W(m2389Q, i3);
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 63:
                        i = i9;
                        if (m2401E(t, m2389Q, i7)) {
                            i4 = m2384V(t, m2388R);
                            m3101j = CodedOutputStream.m3097l(m2389Q, i4);
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 64:
                        i = i9;
                        if (!m2401E(t, m2389Q, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = CodedOutputStream.m3136L(m2389Q, 0);
                        break;
                    case 65:
                        i = i9;
                        if (!m2401E(t, m2389Q, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = CodedOutputStream.m3132N(m2389Q, 0L);
                        break;
                    case 66:
                        i = i9;
                        if (m2401E(t, m2389Q, i7)) {
                            i5 = m2384V(t, m2388R);
                            m3101j = CodedOutputStream.m3128P(m2389Q, i5);
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 67:
                        i = i9;
                        if (m2401E(t, m2389Q, i7)) {
                            c3 = m2383W(t, m2388R);
                            m3101j = CodedOutputStream.m3124R(m2389Q, c3);
                            break;
                        } else {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                    case 68:
                        i = i9;
                        if (!m2401E(t, m2389Q, i7)) {
                            continue;
                            i7 += 3;
                            i8 = i;
                        }
                        m3101j = CodedOutputStream.m3085t(m2389Q, (AbstractC2639m0) C2630k1.m2503E(t, m2388R), m2355s(i7));
                        break;
                    default:
                        i = i9;
                        continue;
                        i7 += 3;
                        i8 = i;
                }
                i = i9 + m3101j;
                i7 += 3;
                i8 = i;
            } else {
                return i9 + m2352v(this.f11197o, t);
            }
        }
    }

    /* renamed from: v */
    private <UT, UB> int m2352v(AbstractC2609g1<UT, UB> abstractC2609g1, T t) {
        return abstractC2609g1.mo2595h(abstractC2609g1.mo2596g(t));
    }

    /* renamed from: w */
    private static <T> int m2351w(T t, long j) {
        return C2630k1.m2507A(t, j);
    }

    /* renamed from: x */
    private static boolean m2350x(int i) {
        return (i & 536870912) != 0;
    }

    /* renamed from: y */
    private boolean m2349y(T t, int i) {
        int m2381Y = m2381Y(i);
        long j = 1048575 & m2381Y;
        boolean z = false;
        if (j != 1048575) {
            boolean z2 = false;
            if ((C2630k1.m2507A(t, j) & (1 << (m2381Y >>> 20))) != 0) {
                z2 = true;
            }
            return z2;
        }
        int m2371i0 = m2371i0(i);
        long m2388R = m2388R(m2371i0);
        switch (m2372h0(m2371i0)) {
            case 0:
                boolean z3 = false;
                if (C2630k1.m2461y(t, m2388R) != 0.0d) {
                    z3 = true;
                }
                return z3;
            case 1:
                boolean z4 = false;
                if (C2630k1.m2460z(t, m2388R) != 0.0f) {
                    z4 = true;
                }
                return z4;
            case 2:
                boolean z5 = false;
                if (C2630k1.m2505C(t, m2388R) != 0) {
                    z5 = true;
                }
                return z5;
            case 3:
                boolean z6 = false;
                if (C2630k1.m2505C(t, m2388R) != 0) {
                    z6 = true;
                }
                return z6;
            case 4:
                boolean z7 = false;
                if (C2630k1.m2507A(t, m2388R) != 0) {
                    z7 = true;
                }
                return z7;
            case 5:
                boolean z8 = false;
                if (C2630k1.m2505C(t, m2388R) != 0) {
                    z8 = true;
                }
                return z8;
            case 6:
                boolean z9 = false;
                if (C2630k1.m2507A(t, m2388R) != 0) {
                    z9 = true;
                }
                return z9;
            case 7:
                return C2630k1.m2468r(t, m2388R);
            case 8:
                Object m2503E = C2630k1.m2503E(t, m2388R);
                if (m2503E instanceof String) {
                    return !((String) m2503E).isEmpty();
                }
                if (!(m2503E instanceof ByteString)) {
                    throw new IllegalArgumentException();
                }
                return !ByteString.f10869b.equals(m2503E);
            case 9:
                boolean z10 = false;
                if (C2630k1.m2503E(t, m2388R) != null) {
                    z10 = true;
                }
                return z10;
            case 10:
                return !ByteString.f10869b.equals(C2630k1.m2503E(t, m2388R));
            case 11:
                boolean z11 = false;
                if (C2630k1.m2507A(t, m2388R) != 0) {
                    z11 = true;
                }
                return z11;
            case 12:
                boolean z12 = false;
                if (C2630k1.m2507A(t, m2388R) != 0) {
                    z12 = true;
                }
                return z12;
            case 13:
                boolean z13 = false;
                if (C2630k1.m2507A(t, m2388R) != 0) {
                    z13 = true;
                }
                return z13;
            case 14:
                boolean z14 = false;
                if (C2630k1.m2505C(t, m2388R) != 0) {
                    z14 = true;
                }
                return z14;
            case 15:
                boolean z15 = false;
                if (C2630k1.m2507A(t, m2388R) != 0) {
                    z15 = true;
                }
                return z15;
            case 16:
                boolean z16 = false;
                if (C2630k1.m2505C(t, m2388R) != 0) {
                    z16 = true;
                }
                return z16;
            case 17:
                if (C2630k1.m2503E(t, m2388R) != null) {
                    z = true;
                }
                return z;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* renamed from: z */
    private boolean m2348z(T t, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return m2349y(t, i);
        }
        return (i3 & i4) != 0;
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: a */
    public void mo2337a(T t, T t2) {
        t2.getClass();
        for (int i = 0; i < this.f11183a.length; i += 3) {
            m2393M(t, t2, i);
        }
        C2578c1.m2887G(this.f11197o, t, t2);
        if (this.f11188f) {
            C2578c1.m2889E(this.f11198p, t, t2);
        }
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: b */
    public void mo2336b(T t, Writer writer) {
        if (writer.mo2554B() == Writer.FieldOrder.DESCENDING) {
            m2365l0(t, writer);
        } else if (this.f11190h) {
            m2367k0(t, writer);
        } else {
            m2369j0(t, writer);
        }
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: c */
    public void mo2335c(T t) {
        int i;
        int i2 = this.f11193k;
        while (true) {
            i = this.f11194l;
            if (i2 >= i) {
                break;
            }
            long m2388R = m2388R(m2371i0(this.f11192j[i2]));
            Object m2503E = C2630k1.m2503E(t, m2388R);
            if (m2503E != null) {
                C2630k1.m2488T(t, m2388R, this.f11199q.mo2618e(m2503E));
            }
            i2++;
        }
        int length = this.f11192j.length;
        for (int i3 = i; i3 < length; i3++) {
            this.f11196n.mo2829c(t, this.f11192j[i3]);
        }
        this.f11197o.mo2593j(t);
        if (this.f11188f) {
            this.f11198p.mo2342f(t);
        }
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: d */
    public final boolean mo2334d(T t) {
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.f11193k; i3++) {
            int i4 = this.f11192j[i3];
            int m2389Q = m2389Q(i4);
            int m2371i0 = m2371i0(i4);
            int i5 = this.f11183a[i4 + 2];
            int i6 = i5 & 1048575;
            int i7 = 1 << (i5 >>> 20);
            if (i6 != i) {
                if (i6 != 1048575) {
                    i2 = f11182s.getInt(t, i6);
                }
                i = i6;
            }
            if (m2400F(m2371i0) && !m2348z(t, i4, i, i2, i7)) {
                return false;
            }
            int m2372h0 = m2372h0(m2371i0);
            if (m2372h0 != 9 && m2372h0 != 17) {
                if (m2372h0 != 27) {
                    if (m2372h0 == 60 || m2372h0 == 68) {
                        if (m2401E(t, m2389Q, i4) && !m2405A(t, m2371i0, m2355s(i4))) {
                            return false;
                        }
                    } else if (m2372h0 != 49) {
                        if (m2372h0 == 50 && !m2403C(t, m2371i0, i4)) {
                            return false;
                        }
                    }
                }
                if (!m2404B(t, m2371i0, i4)) {
                    return false;
                }
            } else if (m2348z(t, i4, i, i2, i7) && !m2405A(t, m2371i0, m2355s(i4))) {
                return false;
            }
        }
        return !this.f11188f || this.f11198p.mo2345c(t).m2301p();
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: e */
    public void mo2333e(T t, AbstractC2682z0 abstractC2682z0, C2643o c2643o) {
        c2643o.getClass();
        m2397I(this.f11197o, this.f11198p, t, abstractC2682z0, c2643o);
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: f */
    public boolean mo2332f(T t, T t2) {
        int length = this.f11183a.length;
        for (int i = 0; i < length; i += 3) {
            if (!m2364m(t, t2, i)) {
                return false;
            }
        }
        if (!this.f11197o.mo2596g(t).equals(this.f11197o.mo2596g(t2))) {
            return false;
        }
        if (!this.f11188f) {
            return true;
        }
        return this.f11198p.mo2345c(t).equals(this.f11198p.mo2345c(t2));
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: g */
    public int mo2331g(T t) {
        return this.f11190h ? m2353u(t) : m2354t(t);
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: h */
    public T mo2330h() {
        return (T) this.f11195m.mo2318a(this.f11187e);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0303, code lost:
        if (r15 != null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x032c, code lost:
        if (r15 != null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x032f, code lost:
        r10 = r15.hashCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0336, code lost:
        r10 = (r9 * 53) + r10;
     */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [double] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [double] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo2329i(T r6) {
        /*
            Method dump skipped, instructions count: 1043
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C2647p0.mo2329i(java.lang.Object):int");
    }
}
