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
/* renamed from: com.google.protobuf.p0 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/p0.class */
final class C2647p0<T> implements AbstractC2572a1<T> {

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

    private C2647p0(int[] iArr, Object[] objArr, int i, int i2, AbstractC2639m0 m0Var, boolean z, boolean z2, int[] iArr2, int i3, int i4, AbstractC2652r0 r0Var, AbstractC2580d0 d0Var, AbstractC2609g1<?, ?> g1Var, AbstractC2646p<?> pVar, AbstractC2611h0 h0Var) {
        this.f11183a = iArr;
        this.f11184b = objArr;
        this.f11185c = i;
        this.f11186d = i2;
        this.f11189g = m0Var instanceof GeneratedMessageLite;
        this.f11190h = z;
        this.f11188f = pVar != null && pVar.mo2343e(m0Var);
        this.f11191i = z2;
        this.f11192j = iArr2;
        this.f11193k = i3;
        this.f11194l = i4;
        this.f11195m = r0Var;
        this.f11196n = d0Var;
        this.f11197o = g1Var;
        this.f11198p = pVar;
        this.f11187e = m0Var;
        this.f11199q = h0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: A */
    private static boolean m2405A(Object obj, int i, AbstractC2572a1 a1Var) {
        return a1Var.mo2334d(C2630k1.m2503E(obj, m2388R(i)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: B */
    private <N> boolean m2404B(Object obj, int i, int i2) {
        List list = (List) C2630k1.m2503E(obj, m2388R(i));
        if (list.isEmpty()) {
            return true;
        }
        AbstractC2572a1 s = m2355s(i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (!s.mo2334d(list.get(i3))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: C */
    private boolean m2403C(T t, int i, int i2) {
        Map<?, ?> g = this.f11199q.mo2616g(C2630k1.m2503E(t, m2388R(i)));
        if (g.isEmpty()) {
            return true;
        }
        if (this.f11199q.mo2617f(m2356r(i2)).f11105c.getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        AbstractC2572a1<T> a1Var = null;
        for (Object obj : g.values()) {
            AbstractC2572a1<T> a1Var2 = a1Var;
            if (a1Var == null) {
                a1Var2 = C2664w0.m2256a().m2253d(obj.getClass());
            }
            a1Var = a1Var2;
            if (!a1Var2.mo2334d(obj)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: D */
    private boolean m2402D(T t, T t2, int i) {
        long Y = m2381Y(i) & 1048575;
        return C2630k1.m2507A(t, Y) == C2630k1.m2507A(t2, Y);
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
        if (r19 >= r8.f11194l) goto L_0x0131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x011a, code lost:
        r21 = m2362n(r11, r8.f11192j[r19], r21, r9);
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0133, code lost:
        if (r21 == null) goto L_?;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0136, code lost:
        r9.mo2590o(r11, r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x013d, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
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
    private final <K, V> void m2396J(Object obj, int i, Object obj2, C2643o oVar, AbstractC2682z0 z0Var) {
        Object obj3;
        long R = m2388R(m2371i0(i));
        Object E = C2630k1.m2503E(obj, R);
        if (E == null) {
            obj3 = this.f11199q.mo2621b(obj2);
            C2630k1.m2488T(obj, R, obj3);
        } else {
            obj3 = E;
            if (this.f11199q.mo2619d(E)) {
                obj3 = this.f11199q.mo2621b(obj2);
                this.f11199q.mo2622a(obj3, E);
                C2630k1.m2488T(obj, R, obj3);
            }
        }
        z0Var.mo2181x(this.f11199q.mo2615h(obj3), this.f11199q.mo2617f(obj2), oVar);
    }

    /* renamed from: K */
    private void m2395K(T t, T t2, int i) {
        long R = m2388R(m2371i0(i));
        if (m2349y(t2, i)) {
            Object E = C2630k1.m2503E(t, R);
            Object E2 = C2630k1.m2503E(t2, R);
            if (E != null && E2 != null) {
                E2 = C2665x.m2244h(E, E2);
            } else if (E2 == null) {
                return;
            }
            C2630k1.m2488T(t, R, E2);
            m2375e0(t, i);
        }
    }

    /* renamed from: L */
    private void m2394L(T t, T t2, int i) {
        int i0 = m2371i0(i);
        int Q = m2389Q(i);
        long R = m2388R(i0);
        if (m2401E(t2, Q, i)) {
            Object obj = null;
            if (m2401E(t, Q, i)) {
                obj = C2630k1.m2503E(t, R);
            }
            Object E = C2630k1.m2503E(t2, R);
            if (obj != null && E != null) {
                E = C2665x.m2244h(obj, E);
            } else if (E == null) {
                return;
            }
            C2630k1.m2488T(t, R, E);
            m2374f0(t, Q, i);
        }
    }

    /* renamed from: M */
    private void m2393M(T t, T t2, int i) {
        int i0 = m2371i0(i);
        long R = m2388R(i0);
        int Q = m2389Q(i);
        switch (m2372h0(i0)) {
            case 0:
                if (m2349y(t2, i)) {
                    C2630k1.m2492P(t, R, C2630k1.m2461y(t2, R));
                    m2375e0(t, i);
                    return;
                }
                return;
            case 1:
                if (m2349y(t2, i)) {
                    C2630k1.m2491Q(t, R, C2630k1.m2460z(t2, R));
                    m2375e0(t, i);
                    return;
                }
                return;
            case 2:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2489S(t, R, C2630k1.m2505C(t2, R));
                m2375e0(t, i);
                return;
            case 3:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2489S(t, R, C2630k1.m2505C(t2, R));
                m2375e0(t, i);
                return;
            case 4:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2490R(t, R, C2630k1.m2507A(t2, R));
                m2375e0(t, i);
                return;
            case 5:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2489S(t, R, C2630k1.m2505C(t2, R));
                m2375e0(t, i);
                return;
            case 6:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2490R(t, R, C2630k1.m2507A(t2, R));
                m2375e0(t, i);
                return;
            case 7:
                if (m2349y(t2, i)) {
                    C2630k1.m2498J(t, R, C2630k1.m2468r(t2, R));
                    m2375e0(t, i);
                    return;
                }
                return;
            case 8:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2488T(t, R, C2630k1.m2503E(t2, R));
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
                C2630k1.m2488T(t, R, C2630k1.m2503E(t2, R));
                m2375e0(t, i);
                return;
            case 11:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2490R(t, R, C2630k1.m2507A(t2, R));
                m2375e0(t, i);
                return;
            case 12:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2490R(t, R, C2630k1.m2507A(t2, R));
                m2375e0(t, i);
                return;
            case 13:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2490R(t, R, C2630k1.m2507A(t2, R));
                m2375e0(t, i);
                return;
            case 14:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2489S(t, R, C2630k1.m2505C(t2, R));
                m2375e0(t, i);
                return;
            case 15:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2490R(t, R, C2630k1.m2507A(t2, R));
                m2375e0(t, i);
                return;
            case 16:
                if (!m2349y(t2, i)) {
                    return;
                }
                C2630k1.m2489S(t, R, C2630k1.m2505C(t2, R));
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
                this.f11196n.mo2828d(t, t2, R);
                return;
            case 50:
                C2578c1.m2888F(this.f11199q, t, t2, R);
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
                if (!m2401E(t2, Q, i)) {
                    return;
                }
                C2630k1.m2488T(t, R, C2630k1.m2503E(t2, R));
                m2374f0(t, Q, i);
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
                if (!m2401E(t2, Q, i)) {
                    return;
                }
                C2630k1.m2488T(t, R, C2630k1.m2503E(t2, R));
                m2374f0(t, Q, i);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: N */
    public static <T> C2647p0<T> m2392N(Class<T> cls, AbstractC2629k0 k0Var, AbstractC2652r0 r0Var, AbstractC2580d0 d0Var, AbstractC2609g1<?, ?> g1Var, AbstractC2646p<?> pVar, AbstractC2611h0 h0Var) {
        return k0Var instanceof C2677y0 ? m2390P((C2677y0) k0Var, r0Var, d0Var, g1Var, pVar, h0Var) : m2391O((C2598e1) k0Var, r0Var, d0Var, g1Var, pVar, h0Var);
    }

    /* renamed from: O */
    static <T> C2647p0<T> m2391O(C2598e1 e1Var, AbstractC2652r0 r0Var, AbstractC2580d0 d0Var, AbstractC2609g1<?, ?> g1Var, AbstractC2646p<?> pVar, AbstractC2611h0 h0Var) {
        boolean z = e1Var.mo2227b() == ProtoSyntax.PROTO3;
        C2653s[] e = e1Var.m2759e();
        if (e.length == 0) {
            int length = e.length;
            int[] iArr = new int[length * 3];
            Object[] objArr = new Object[length * 2];
            if (e.length <= 0) {
                int[] d = e1Var.m2760d();
                int[] iArr2 = d;
                if (d == null) {
                    iArr2 = f11181r;
                }
                if (e.length <= 0) {
                    int[] iArr3 = f11181r;
                    int[] iArr4 = f11181r;
                    int[] iArr5 = new int[iArr2.length + iArr3.length + iArr4.length];
                    System.arraycopy(iArr2, 0, iArr5, 0, iArr2.length);
                    System.arraycopy(iArr3, 0, iArr5, iArr2.length, iArr3.length);
                    System.arraycopy(iArr4, 0, iArr5, iArr2.length + iArr3.length, iArr4.length);
                    return new C2647p0<>(iArr, objArr, 0, 0, e1Var.mo2226c(), z, true, iArr5, iArr2.length, iArr2.length + iArr3.length, r0Var, d0Var, g1Var, pVar, h0Var);
                }
                e[0].m2320a();
                throw null;
            }
            e[0].m2319e();
            throw null;
        }
        e[0].m2320a();
        throw null;
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
    private <E> void m2380Z(Object obj, long j, AbstractC2682z0 z0Var, AbstractC2572a1<E> a1Var, C2643o oVar) {
        z0Var.mo2195j(this.f11196n.mo2827e(obj, j), a1Var, oVar);
    }

    /* renamed from: a0 */
    private <E> void m2379a0(Object obj, int i, AbstractC2682z0 z0Var, AbstractC2572a1<E> a1Var, C2643o oVar) {
        z0Var.mo2186s(this.f11196n.mo2827e(obj, m2388R(i)), a1Var, oVar);
    }

    /* renamed from: b0 */
    private void m2378b0(Object obj, int i, AbstractC2682z0 z0Var) {
        long R;
        Object B;
        if (m2350x(i)) {
            R = m2388R(i);
            B = z0Var.mo2208M();
        } else if (this.f11189g) {
            R = m2388R(i);
            B = z0Var.mo2190o();
        } else {
            R = m2388R(i);
            B = z0Var.mo2219B();
        }
        C2630k1.m2488T(obj, R, B);
    }

    /* renamed from: c0 */
    private void m2377c0(Object obj, int i, AbstractC2682z0 z0Var) {
        if (m2350x(i)) {
            z0Var.mo2179z(this.f11196n.mo2827e(obj, m2388R(i)));
        } else {
            z0Var.mo2184u(this.f11196n.mo2827e(obj, m2388R(i)));
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
        int Y = m2381Y(i);
        long j = 1048575 & Y;
        if (j != 1048575) {
            C2630k1.m2490R(t, j, (1 << (Y >>> 20)) | C2630k1.m2507A(t, j));
        }
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
            int Q = m2389Q(i4);
            if (i == Q) {
                return i4;
            }
            if (i < Q) {
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
        int i0 = m2371i0(i);
        long R = m2388R(i0);
        switch (m2372h0(i0)) {
            case 0:
                boolean z = false;
                if (m2370j(t, t2, i)) {
                    z = false;
                    if (Double.doubleToLongBits(C2630k1.m2461y(t, R)) == Double.doubleToLongBits(C2630k1.m2461y(t2, R))) {
                        z = true;
                    }
                }
                return z;
            case 1:
                boolean z2 = false;
                if (m2370j(t, t2, i)) {
                    z2 = false;
                    if (Float.floatToIntBits(C2630k1.m2460z(t, R)) == Float.floatToIntBits(C2630k1.m2460z(t2, R))) {
                        z2 = true;
                    }
                }
                return z2;
            case 2:
                boolean z3 = false;
                if (m2370j(t, t2, i)) {
                    z3 = false;
                    if (C2630k1.m2505C(t, R) == C2630k1.m2505C(t2, R)) {
                        z3 = true;
                    }
                }
                return z3;
            case 3:
                boolean z4 = false;
                if (m2370j(t, t2, i)) {
                    z4 = false;
                    if (C2630k1.m2505C(t, R) == C2630k1.m2505C(t2, R)) {
                        z4 = true;
                    }
                }
                return z4;
            case 4:
                boolean z5 = false;
                if (m2370j(t, t2, i)) {
                    z5 = false;
                    if (C2630k1.m2507A(t, R) == C2630k1.m2507A(t2, R)) {
                        z5 = true;
                    }
                }
                return z5;
            case 5:
                boolean z6 = false;
                if (m2370j(t, t2, i)) {
                    z6 = false;
                    if (C2630k1.m2505C(t, R) == C2630k1.m2505C(t2, R)) {
                        z6 = true;
                    }
                }
                return z6;
            case 6:
                boolean z7 = false;
                if (m2370j(t, t2, i)) {
                    z7 = false;
                    if (C2630k1.m2507A(t, R) == C2630k1.m2507A(t2, R)) {
                        z7 = true;
                    }
                }
                return z7;
            case 7:
                boolean z8 = false;
                if (m2370j(t, t2, i)) {
                    z8 = false;
                    if (C2630k1.m2468r(t, R) == C2630k1.m2468r(t2, R)) {
                        z8 = true;
                    }
                }
                return z8;
            case 8:
                boolean z9 = false;
                if (m2370j(t, t2, i)) {
                    z9 = false;
                    if (C2578c1.m2883K(C2630k1.m2503E(t, R), C2630k1.m2503E(t2, R))) {
                        z9 = true;
                    }
                }
                return z9;
            case 9:
                boolean z10 = false;
                if (m2370j(t, t2, i)) {
                    z10 = false;
                    if (C2578c1.m2883K(C2630k1.m2503E(t, R), C2630k1.m2503E(t2, R))) {
                        z10 = true;
                    }
                }
                return z10;
            case 10:
                boolean z11 = false;
                if (m2370j(t, t2, i)) {
                    z11 = false;
                    if (C2578c1.m2883K(C2630k1.m2503E(t, R), C2630k1.m2503E(t2, R))) {
                        z11 = true;
                    }
                }
                return z11;
            case 11:
                boolean z12 = false;
                if (m2370j(t, t2, i)) {
                    z12 = false;
                    if (C2630k1.m2507A(t, R) == C2630k1.m2507A(t2, R)) {
                        z12 = true;
                    }
                }
                return z12;
            case 12:
                boolean z13 = false;
                if (m2370j(t, t2, i)) {
                    z13 = false;
                    if (C2630k1.m2507A(t, R) == C2630k1.m2507A(t2, R)) {
                        z13 = true;
                    }
                }
                return z13;
            case 13:
                boolean z14 = false;
                if (m2370j(t, t2, i)) {
                    z14 = false;
                    if (C2630k1.m2507A(t, R) == C2630k1.m2507A(t2, R)) {
                        z14 = true;
                    }
                }
                return z14;
            case 14:
                boolean z15 = false;
                if (m2370j(t, t2, i)) {
                    z15 = false;
                    if (C2630k1.m2505C(t, R) == C2630k1.m2505C(t2, R)) {
                        z15 = true;
                    }
                }
                return z15;
            case 15:
                boolean z16 = false;
                if (m2370j(t, t2, i)) {
                    z16 = false;
                    if (C2630k1.m2507A(t, R) == C2630k1.m2507A(t2, R)) {
                        z16 = true;
                    }
                }
                return z16;
            case 16:
                boolean z17 = false;
                if (m2370j(t, t2, i)) {
                    z17 = false;
                    if (C2630k1.m2505C(t, R) == C2630k1.m2505C(t2, R)) {
                        z17 = true;
                    }
                }
                return z17;
            case 17:
                boolean z18 = false;
                if (m2370j(t, t2, i)) {
                    z18 = false;
                    if (C2578c1.m2883K(C2630k1.m2503E(t, R), C2630k1.m2503E(t2, R))) {
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
                return C2578c1.m2883K(C2630k1.m2503E(t, R), C2630k1.m2503E(t2, R));
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
                    if (C2578c1.m2883K(C2630k1.m2503E(t, R), C2630k1.m2503E(t2, R))) {
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
    private final <UT, UB> UB m2362n(Object obj, int i, UB ub, AbstractC2609g1<UT, UB> g1Var) {
        C2665x.AbstractC2670e q;
        int Q = m2389Q(i);
        Object E = C2630k1.m2503E(obj, m2388R(m2371i0(i)));
        if (!(E == null || (q = m2357q(i)) == null)) {
            return (UB) m2360o(i, Q, this.f11199q.mo2615h(E), q, ub, g1Var);
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
    private final <K, V, UT, UB> UB m2360o(int i, int i2, Map<K, V> map, C2665x.AbstractC2670e eVar, UB ub, AbstractC2609g1<UT, UB> g1Var) {
        C2607g0.C2608a<?, ?> f = this.f11199q.mo2617f(m2356r(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!eVar.mo2240a(((Integer) next.getValue()).intValue())) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = g1Var.mo2591n();
                }
                ByteString.C2544g newCodedBuilder = ByteString.newCodedBuilder(C2607g0.m2728b(f, next.getKey(), next.getValue()));
                try {
                    C2607g0.m2725e(newCodedBuilder.m3156b(), f, next.getKey(), next.getValue());
                    g1Var.mo2599d(ub2, i2, newCodedBuilder.m3157a());
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
    private <UT, UB> void m2359o0(AbstractC2609g1<UT, UB> g1Var, T t, Writer writer) {
        g1Var.mo2585t(g1Var.mo2596g(t), writer);
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
        AbstractC2572a1 a1Var = (AbstractC2572a1) this.f11184b[i2];
        if (a1Var != null) {
            return a1Var;
        }
        AbstractC2572a1<T> d = C2664w0.m2256a().m2253d((Class) this.f11184b[i2 + 1]);
        this.f11184b[i2] = d;
        return d;
    }

    /* renamed from: t */
    private int m2354t(T t) {
        int i;
        int i2;
        int i3;
        int e;
        int i4;
        int i5;
        int i6;
        int i7;
        long j;
        int i8;
        Unsafe unsafe = f11182s;
        int i9 = 0;
        int i10 = 1048575;
        int i11 = 0;
        for (int i12 = 0; i12 < this.f11183a.length; i12 += 3) {
            int i0 = m2371i0(i12);
            int Q = m2389Q(i12);
            int h0 = m2372h0(i0);
            if (h0 <= 17) {
                int i13 = this.f11183a[i12 + 2];
                int i14 = i13 & 1048575;
                int i15 = 1 << (i13 >>> 20);
                i10 = i10;
                i2 = i13;
                i = i15;
                if (i14 != i10) {
                    i11 = unsafe.getInt(t, i14);
                    i10 = i14;
                    i2 = i13;
                    i = i15;
                }
            } else {
                i2 = (!this.f11191i || h0 < FieldType.DOUBLE_LIST_PACKED.m3045id() || h0 > FieldType.SINT64_LIST_PACKED.m3045id()) ? 0 : this.f11183a[i12 + 2] & 1048575;
                i = 0;
                i10 = i10;
            }
            long R = m2388R(i0);
            switch (h0) {
                case 0:
                    i9 = i9;
                    if ((i11 & i) != 0) {
                        i3 = CodedOutputStream.m3101j(Q, 0.0d);
                        i9 += i3;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i9 = i9;
                    if ((i11 & i) != 0) {
                        i3 = CodedOutputStream.m3088r(Q, 0.0f);
                        i9 += i3;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i9 = i9;
                    if ((i11 & i) != 0) {
                        i3 = CodedOutputStream.m3078y(Q, unsafe.getLong(t, R));
                        i9 += i3;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i9 = i9;
                    if ((i11 & i) != 0) {
                        i3 = CodedOutputStream.m3116Y(Q, unsafe.getLong(t, R));
                        i9 += i3;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i9 = i9;
                    if ((i11 & i) != 0) {
                        i3 = CodedOutputStream.m3082w(Q, unsafe.getInt(t, R));
                        i9 += i3;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i9 = i9;
                    if ((i11 & i) != 0) {
                        i3 = CodedOutputStream.m3092p(Q, 0L);
                        i9 += i3;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i9 = i9;
                    if ((i11 & i) != 0) {
                        i3 = CodedOutputStream.m3095n(Q, 0);
                        i9 += i3;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i9 = i9;
                    if ((i11 & i) == 0) {
                        break;
                    }
                    e = CodedOutputStream.m3108e(Q, true);
                    i9 += e;
                    break;
                case 8:
                    i9 = i9;
                    if ((i11 & i) != 0) {
                        Object object = unsafe.getObject(t, R);
                        e = object instanceof ByteString ? CodedOutputStream.m3103h(Q, (ByteString) object) : CodedOutputStream.m3121T(Q, (String) object);
                        i9 += e;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    i9 = i9;
                    if ((i11 & i) == 0) {
                        break;
                    }
                    e = C2578c1.m2848o(Q, unsafe.getObject(t, R), m2355s(i12));
                    i9 += e;
                    break;
                case 10:
                    i9 = i9;
                    if ((i11 & i) == 0) {
                        break;
                    }
                    e = CodedOutputStream.m3103h(Q, (ByteString) unsafe.getObject(t, R));
                    i9 += e;
                    break;
                case 11:
                    i9 = i9;
                    if ((i11 & i) != 0) {
                        i4 = unsafe.getInt(t, R);
                        e = CodedOutputStream.m3118W(Q, i4);
                        i9 += e;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i9 = i9;
                    if ((i11 & i) != 0) {
                        i5 = unsafe.getInt(t, R);
                        e = CodedOutputStream.m3097l(Q, i5);
                        i9 += e;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    i9 = i9;
                    if ((i11 & i) == 0) {
                        break;
                    }
                    i6 = CodedOutputStream.m3136L(Q, 0);
                    i9 += i6;
                    break;
                case 14:
                    i9 = i9;
                    if ((i11 & i) == 0) {
                        break;
                    }
                    e = CodedOutputStream.m3132N(Q, 0L);
                    i9 += e;
                    break;
                case 15:
                    i9 = i9;
                    if ((i11 & i) != 0) {
                        i7 = unsafe.getInt(t, R);
                        e = CodedOutputStream.m3128P(Q, i7);
                        i9 += e;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    i9 = i9;
                    if ((i11 & i) != 0) {
                        j = unsafe.getLong(t, R);
                        e = CodedOutputStream.m3124R(Q, j);
                        i9 += e;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    i9 = i9;
                    if ((i11 & i) == 0) {
                        break;
                    }
                    e = CodedOutputStream.m3085t(Q, (AbstractC2639m0) unsafe.getObject(t, R), m2355s(i12));
                    i9 += e;
                    break;
                case 18:
                case 23:
                case 32:
                    e = C2578c1.m2855h(Q, (List) unsafe.getObject(t, R), false);
                    i9 += e;
                    break;
                case 19:
                case 24:
                case 31:
                    e = C2578c1.m2857f(Q, (List) unsafe.getObject(t, R), false);
                    i9 += e;
                    break;
                case 20:
                    e = C2578c1.m2850m(Q, (List) unsafe.getObject(t, R), false);
                    i9 += e;
                    break;
                case 21:
                    e = C2578c1.m2839x(Q, (List) unsafe.getObject(t, R), false);
                    i9 += e;
                    break;
                case 22:
                    e = C2578c1.m2852k(Q, (List) unsafe.getObject(t, R), false);
                    i9 += e;
                    break;
                case 25:
                    e = C2578c1.m2867a(Q, (List) unsafe.getObject(t, R), false);
                    i9 += e;
                    break;
                case 26:
                    e = C2578c1.m2842u(Q, (List) unsafe.getObject(t, R));
                    i9 += e;
                    break;
                case 27:
                    e = C2578c1.m2847p(Q, (List) unsafe.getObject(t, R), m2355s(i12));
                    i9 += e;
                    break;
                case 28:
                    e = C2578c1.m2863c(Q, (List) unsafe.getObject(t, R));
                    i9 += e;
                    break;
                case 29:
                    e = C2578c1.m2841v(Q, (List) unsafe.getObject(t, R), false);
                    i9 += e;
                    break;
                case 30:
                    e = C2578c1.m2861d(Q, (List) unsafe.getObject(t, R), false);
                    i9 += e;
                    break;
                case 33:
                    e = C2578c1.m2846q(Q, (List) unsafe.getObject(t, R), false);
                    i9 += e;
                    break;
                case 34:
                    e = C2578c1.m2844s(Q, (List) unsafe.getObject(t, R), false);
                    i9 += e;
                    break;
                case 35:
                    int i16 = C2578c1.m2854i((List) unsafe.getObject(t, R));
                    i9 = i9;
                    if (i16 > 0) {
                        i8 = i16;
                        if (this.f11191i) {
                            i8 = i16;
                            unsafe.putInt(t, i2, i8);
                        }
                        i6 = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i8) + i8;
                        i9 += i6;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int g = C2578c1.m2856g((List) unsafe.getObject(t, R));
                    i9 = i9;
                    if (g > 0) {
                        i8 = g;
                        if (this.f11191i) {
                            i8 = g;
                            unsafe.putInt(t, i2, i8);
                        }
                        i6 = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i8) + i8;
                        i9 += i6;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int n = C2578c1.m2849n((List) unsafe.getObject(t, R));
                    i9 = i9;
                    if (n > 0) {
                        i8 = n;
                        if (this.f11191i) {
                            i8 = n;
                            unsafe.putInt(t, i2, i8);
                        }
                        i6 = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i8) + i8;
                        i9 += i6;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int y = C2578c1.m2838y((List) unsafe.getObject(t, R));
                    i9 = i9;
                    if (y > 0) {
                        i8 = y;
                        if (this.f11191i) {
                            i8 = y;
                            unsafe.putInt(t, i2, i8);
                        }
                        i6 = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i8) + i8;
                        i9 += i6;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int l = C2578c1.m2851l((List) unsafe.getObject(t, R));
                    i9 = i9;
                    if (l > 0) {
                        i8 = l;
                        if (this.f11191i) {
                            i8 = l;
                            unsafe.putInt(t, i2, i8);
                        }
                        i6 = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i8) + i8;
                        i9 += i6;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int i17 = C2578c1.m2854i((List) unsafe.getObject(t, R));
                    i9 = i9;
                    if (i17 > 0) {
                        i8 = i17;
                        if (this.f11191i) {
                            i8 = i17;
                            unsafe.putInt(t, i2, i8);
                        }
                        i6 = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i8) + i8;
                        i9 += i6;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int g2 = C2578c1.m2856g((List) unsafe.getObject(t, R));
                    i9 = i9;
                    if (g2 > 0) {
                        i8 = g2;
                        if (this.f11191i) {
                            i8 = g2;
                            unsafe.putInt(t, i2, i8);
                        }
                        i6 = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i8) + i8;
                        i9 += i6;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    int b = C2578c1.m2865b((List) unsafe.getObject(t, R));
                    i9 = i9;
                    if (b > 0) {
                        i8 = b;
                        if (this.f11191i) {
                            i8 = b;
                            unsafe.putInt(t, i2, i8);
                        }
                        i6 = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i8) + i8;
                        i9 += i6;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int w = C2578c1.m2840w((List) unsafe.getObject(t, R));
                    i9 = i9;
                    if (w > 0) {
                        i8 = w;
                        if (this.f11191i) {
                            i8 = w;
                            unsafe.putInt(t, i2, i8);
                        }
                        i6 = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i8) + i8;
                        i9 += i6;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int e2 = C2578c1.m2859e((List) unsafe.getObject(t, R));
                    i9 = i9;
                    if (e2 > 0) {
                        i8 = e2;
                        if (this.f11191i) {
                            i8 = e2;
                            unsafe.putInt(t, i2, i8);
                        }
                        i6 = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i8) + i8;
                        i9 += i6;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int g3 = C2578c1.m2856g((List) unsafe.getObject(t, R));
                    i9 = i9;
                    if (g3 > 0) {
                        i8 = g3;
                        if (this.f11191i) {
                            i8 = g3;
                            unsafe.putInt(t, i2, i8);
                        }
                        i6 = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i8) + i8;
                        i9 += i6;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int i18 = C2578c1.m2854i((List) unsafe.getObject(t, R));
                    i9 = i9;
                    if (i18 > 0) {
                        i8 = i18;
                        if (this.f11191i) {
                            i8 = i18;
                            unsafe.putInt(t, i2, i8);
                        }
                        i6 = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i8) + i8;
                        i9 += i6;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int r = C2578c1.m2845r((List) unsafe.getObject(t, R));
                    i9 = i9;
                    if (r > 0) {
                        i8 = r;
                        if (this.f11191i) {
                            i8 = r;
                            unsafe.putInt(t, i2, i8);
                        }
                        i6 = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i8) + i8;
                        i9 += i6;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int t2 = C2578c1.m2843t((List) unsafe.getObject(t, R));
                    i9 = i9;
                    if (t2 > 0) {
                        i8 = t2;
                        if (this.f11191i) {
                            i8 = t2;
                            unsafe.putInt(t, i2, i8);
                        }
                        i6 = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i8) + i8;
                        i9 += i6;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    e = C2578c1.m2853j(Q, (List) unsafe.getObject(t, R), m2355s(i12));
                    i9 += e;
                    break;
                case 50:
                    e = this.f11199q.mo2620c(Q, unsafe.getObject(t, R), m2356r(i12));
                    i9 += e;
                    break;
                case 51:
                    i9 = i9;
                    if (m2401E(t, Q, i12)) {
                        e = CodedOutputStream.m3101j(Q, 0.0d);
                        i9 += e;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i9 = i9;
                    if (m2401E(t, Q, i12)) {
                        e = CodedOutputStream.m3088r(Q, 0.0f);
                        i9 += e;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i9 = i9;
                    if (m2401E(t, Q, i12)) {
                        e = CodedOutputStream.m3078y(Q, m2383W(t, R));
                        i9 += e;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i9 = i9;
                    if (m2401E(t, Q, i12)) {
                        e = CodedOutputStream.m3116Y(Q, m2383W(t, R));
                        i9 += e;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i9 = i9;
                    if (m2401E(t, Q, i12)) {
                        e = CodedOutputStream.m3082w(Q, m2384V(t, R));
                        i9 += e;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i9 = i9;
                    if (m2401E(t, Q, i12)) {
                        e = CodedOutputStream.m3092p(Q, 0L);
                        i9 += e;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i9 = i9;
                    if (m2401E(t, Q, i12)) {
                        i6 = CodedOutputStream.m3095n(Q, 0);
                        i9 += i6;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i9 = i9;
                    if (!m2401E(t, Q, i12)) {
                        break;
                    }
                    e = CodedOutputStream.m3108e(Q, true);
                    i9 += e;
                    break;
                case 59:
                    i9 = i9;
                    if (m2401E(t, Q, i12)) {
                        Object object2 = unsafe.getObject(t, R);
                        e = object2 instanceof ByteString ? CodedOutputStream.m3103h(Q, (ByteString) object2) : CodedOutputStream.m3121T(Q, (String) object2);
                        i9 += e;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i9 = i9;
                    if (!m2401E(t, Q, i12)) {
                        break;
                    }
                    e = C2578c1.m2848o(Q, unsafe.getObject(t, R), m2355s(i12));
                    i9 += e;
                    break;
                case 61:
                    i9 = i9;
                    if (!m2401E(t, Q, i12)) {
                        break;
                    }
                    e = CodedOutputStream.m3103h(Q, (ByteString) unsafe.getObject(t, R));
                    i9 += e;
                    break;
                case 62:
                    i9 = i9;
                    if (m2401E(t, Q, i12)) {
                        i4 = m2384V(t, R);
                        e = CodedOutputStream.m3118W(Q, i4);
                        i9 += e;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i9 = i9;
                    if (m2401E(t, Q, i12)) {
                        i5 = m2384V(t, R);
                        e = CodedOutputStream.m3097l(Q, i5);
                        i9 += e;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i9 = i9;
                    if (!m2401E(t, Q, i12)) {
                        break;
                    }
                    i6 = CodedOutputStream.m3136L(Q, 0);
                    i9 += i6;
                    break;
                case 65:
                    i9 = i9;
                    if (!m2401E(t, Q, i12)) {
                        break;
                    }
                    e = CodedOutputStream.m3132N(Q, 0L);
                    i9 += e;
                    break;
                case 66:
                    i9 = i9;
                    if (m2401E(t, Q, i12)) {
                        i7 = m2384V(t, R);
                        e = CodedOutputStream.m3128P(Q, i7);
                        i9 += e;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i9 = i9;
                    if (m2401E(t, Q, i12)) {
                        j = m2383W(t, R);
                        e = CodedOutputStream.m3124R(Q, j);
                        i9 += e;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i9 = i9;
                    if (!m2401E(t, Q, i12)) {
                        break;
                    }
                    e = CodedOutputStream.m3085t(Q, (AbstractC2639m0) unsafe.getObject(t, R), m2355s(i12));
                    i9 += e;
                    break;
                default:
                    i9 = i9;
                    break;
            }
        }
        int v = i9 + m2352v(this.f11197o, t);
        int i19 = v;
        if (this.f11188f) {
            i19 = v + this.f11198p.mo2345c(t).m2305l();
        }
        return i19;
    }

    /* renamed from: u */
    private int m2353u(T t) {
        int j;
        long j2;
        long j3;
        int i;
        Object obj;
        Object obj2;
        int i2;
        int i3;
        int i4;
        long j4;
        int i5;
        Unsafe unsafe = f11182s;
        int i6 = 0;
        for (int i7 = 0; i7 < this.f11183a.length; i7 += 3) {
            int i0 = m2371i0(i7);
            int h0 = m2372h0(i0);
            int Q = m2389Q(i7);
            long R = m2388R(i0);
            int i8 = (h0 < FieldType.DOUBLE_LIST_PACKED.m3045id() || h0 > FieldType.SINT64_LIST_PACKED.m3045id()) ? 0 : this.f11183a[i7 + 2] & 1048575;
            switch (h0) {
                case 0:
                    i6 = i6;
                    if (!m2349y(t, i7)) {
                        continue;
                    }
                    j = CodedOutputStream.m3101j(Q, 0.0d);
                    break;
                case 1:
                    i6 = i6;
                    if (!m2349y(t, i7)) {
                        continue;
                    }
                    j = CodedOutputStream.m3088r(Q, 0.0f);
                    break;
                case 2:
                    i6 = i6;
                    if (m2349y(t, i7)) {
                        j2 = C2630k1.m2505C(t, R);
                        j = CodedOutputStream.m3078y(Q, j2);
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    i6 = i6;
                    if (m2349y(t, i7)) {
                        j3 = C2630k1.m2505C(t, R);
                        j = CodedOutputStream.m3116Y(Q, j3);
                        break;
                    } else {
                        continue;
                    }
                case 4:
                    i6 = i6;
                    if (m2349y(t, i7)) {
                        i = C2630k1.m2507A(t, R);
                        j = CodedOutputStream.m3082w(Q, i);
                        break;
                    } else {
                        continue;
                    }
                case 5:
                    i6 = i6;
                    if (!m2349y(t, i7)) {
                        continue;
                    }
                    j = CodedOutputStream.m3092p(Q, 0L);
                    break;
                case 6:
                    i6 = i6;
                    if (!m2349y(t, i7)) {
                        continue;
                    }
                    j = CodedOutputStream.m3095n(Q, 0);
                    break;
                case 7:
                    i6 = i6;
                    if (!m2349y(t, i7)) {
                        continue;
                    }
                    j = CodedOutputStream.m3108e(Q, true);
                    break;
                case 8:
                    i6 = i6;
                    if (m2349y(t, i7)) {
                        Object E = C2630k1.m2503E(t, R);
                        obj = E;
                        if (E instanceof ByteString) {
                            obj2 = E;
                            j = CodedOutputStream.m3103h(Q, (ByteString) obj2);
                            break;
                        }
                        j = CodedOutputStream.m3121T(Q, (String) obj);
                        break;
                    } else {
                        continue;
                    }
                case 9:
                    i6 = i6;
                    if (!m2349y(t, i7)) {
                        continue;
                    }
                    j = C2578c1.m2848o(Q, C2630k1.m2503E(t, R), m2355s(i7));
                    break;
                case 10:
                    i6 = i6;
                    if (!m2349y(t, i7)) {
                        continue;
                    }
                    obj2 = C2630k1.m2503E(t, R);
                    j = CodedOutputStream.m3103h(Q, (ByteString) obj2);
                    break;
                case 11:
                    i6 = i6;
                    if (m2349y(t, i7)) {
                        i2 = C2630k1.m2507A(t, R);
                        j = CodedOutputStream.m3118W(Q, i2);
                        break;
                    } else {
                        continue;
                    }
                case 12:
                    i6 = i6;
                    if (m2349y(t, i7)) {
                        i3 = C2630k1.m2507A(t, R);
                        j = CodedOutputStream.m3097l(Q, i3);
                        break;
                    } else {
                        continue;
                    }
                case 13:
                    i6 = i6;
                    if (!m2349y(t, i7)) {
                        continue;
                    }
                    j = CodedOutputStream.m3136L(Q, 0);
                    break;
                case 14:
                    i6 = i6;
                    if (!m2349y(t, i7)) {
                        continue;
                    }
                    j = CodedOutputStream.m3132N(Q, 0L);
                    break;
                case 15:
                    i6 = i6;
                    if (m2349y(t, i7)) {
                        i4 = C2630k1.m2507A(t, R);
                        j = CodedOutputStream.m3128P(Q, i4);
                        break;
                    } else {
                        continue;
                    }
                case 16:
                    i6 = i6;
                    if (m2349y(t, i7)) {
                        j4 = C2630k1.m2505C(t, R);
                        j = CodedOutputStream.m3124R(Q, j4);
                        break;
                    } else {
                        continue;
                    }
                case 17:
                    i6 = i6;
                    if (!m2349y(t, i7)) {
                        continue;
                    }
                    j = CodedOutputStream.m3085t(Q, (AbstractC2639m0) C2630k1.m2503E(t, R), m2355s(i7));
                    break;
                case 18:
                case 23:
                case 32:
                    j = C2578c1.m2855h(Q, m2399G(t, R), false);
                    break;
                case 19:
                case 24:
                case 31:
                    j = C2578c1.m2857f(Q, m2399G(t, R), false);
                    break;
                case 20:
                    j = C2578c1.m2850m(Q, m2399G(t, R), false);
                    break;
                case 21:
                    j = C2578c1.m2839x(Q, m2399G(t, R), false);
                    break;
                case 22:
                    j = C2578c1.m2852k(Q, m2399G(t, R), false);
                    break;
                case 25:
                    j = C2578c1.m2867a(Q, m2399G(t, R), false);
                    break;
                case 26:
                    j = C2578c1.m2842u(Q, m2399G(t, R));
                    break;
                case 27:
                    j = C2578c1.m2847p(Q, m2399G(t, R), m2355s(i7));
                    break;
                case 28:
                    j = C2578c1.m2863c(Q, m2399G(t, R));
                    break;
                case 29:
                    j = C2578c1.m2841v(Q, m2399G(t, R), false);
                    break;
                case 30:
                    j = C2578c1.m2861d(Q, m2399G(t, R), false);
                    break;
                case 33:
                    j = C2578c1.m2846q(Q, m2399G(t, R), false);
                    break;
                case 34:
                    j = C2578c1.m2844s(Q, m2399G(t, R), false);
                    break;
                case 35:
                    int i9 = C2578c1.m2854i((List) unsafe.getObject(t, R));
                    i6 = i6;
                    if (i9 > 0) {
                        i5 = i9;
                        if (this.f11191i) {
                            i5 = i9;
                            unsafe.putInt(t, i8, i5);
                        }
                        j = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i5) + i5;
                        break;
                    } else {
                        continue;
                    }
                case 36:
                    int g = C2578c1.m2856g((List) unsafe.getObject(t, R));
                    i6 = i6;
                    if (g > 0) {
                        i5 = g;
                        if (this.f11191i) {
                            i5 = g;
                            unsafe.putInt(t, i8, i5);
                        }
                        j = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i5) + i5;
                        break;
                    } else {
                        continue;
                    }
                case 37:
                    int n = C2578c1.m2849n((List) unsafe.getObject(t, R));
                    i6 = i6;
                    if (n > 0) {
                        i5 = n;
                        if (this.f11191i) {
                            i5 = n;
                            unsafe.putInt(t, i8, i5);
                        }
                        j = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i5) + i5;
                        break;
                    } else {
                        continue;
                    }
                case 38:
                    int y = C2578c1.m2838y((List) unsafe.getObject(t, R));
                    i6 = i6;
                    if (y > 0) {
                        i5 = y;
                        if (this.f11191i) {
                            i5 = y;
                            unsafe.putInt(t, i8, i5);
                        }
                        j = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i5) + i5;
                        break;
                    } else {
                        continue;
                    }
                case 39:
                    int l = C2578c1.m2851l((List) unsafe.getObject(t, R));
                    i6 = i6;
                    if (l > 0) {
                        i5 = l;
                        if (this.f11191i) {
                            i5 = l;
                            unsafe.putInt(t, i8, i5);
                        }
                        j = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i5) + i5;
                        break;
                    } else {
                        continue;
                    }
                case 40:
                    int i10 = C2578c1.m2854i((List) unsafe.getObject(t, R));
                    i6 = i6;
                    if (i10 > 0) {
                        i5 = i10;
                        if (this.f11191i) {
                            i5 = i10;
                            unsafe.putInt(t, i8, i5);
                        }
                        j = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i5) + i5;
                        break;
                    } else {
                        continue;
                    }
                case 41:
                    int g2 = C2578c1.m2856g((List) unsafe.getObject(t, R));
                    i6 = i6;
                    if (g2 > 0) {
                        i5 = g2;
                        if (this.f11191i) {
                            i5 = g2;
                            unsafe.putInt(t, i8, i5);
                        }
                        j = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i5) + i5;
                        break;
                    } else {
                        continue;
                    }
                case 42:
                    int b = C2578c1.m2865b((List) unsafe.getObject(t, R));
                    i6 = i6;
                    if (b > 0) {
                        i5 = b;
                        if (this.f11191i) {
                            i5 = b;
                            unsafe.putInt(t, i8, i5);
                        }
                        j = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i5) + i5;
                        break;
                    } else {
                        continue;
                    }
                case 43:
                    int w = C2578c1.m2840w((List) unsafe.getObject(t, R));
                    i6 = i6;
                    if (w > 0) {
                        i5 = w;
                        if (this.f11191i) {
                            i5 = w;
                            unsafe.putInt(t, i8, i5);
                        }
                        j = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i5) + i5;
                        break;
                    } else {
                        continue;
                    }
                case 44:
                    int e = C2578c1.m2859e((List) unsafe.getObject(t, R));
                    i6 = i6;
                    if (e > 0) {
                        i5 = e;
                        if (this.f11191i) {
                            i5 = e;
                            unsafe.putInt(t, i8, i5);
                        }
                        j = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i5) + i5;
                        break;
                    } else {
                        continue;
                    }
                case 45:
                    int g3 = C2578c1.m2856g((List) unsafe.getObject(t, R));
                    i6 = i6;
                    if (g3 > 0) {
                        i5 = g3;
                        if (this.f11191i) {
                            i5 = g3;
                            unsafe.putInt(t, i8, i5);
                        }
                        j = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i5) + i5;
                        break;
                    } else {
                        continue;
                    }
                case 46:
                    int i11 = C2578c1.m2854i((List) unsafe.getObject(t, R));
                    i6 = i6;
                    if (i11 > 0) {
                        i5 = i11;
                        if (this.f11191i) {
                            i5 = i11;
                            unsafe.putInt(t, i8, i5);
                        }
                        j = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i5) + i5;
                        break;
                    } else {
                        continue;
                    }
                case 47:
                    int r = C2578c1.m2845r((List) unsafe.getObject(t, R));
                    i6 = i6;
                    if (r > 0) {
                        i5 = r;
                        if (this.f11191i) {
                            i5 = r;
                            unsafe.putInt(t, i8, i5);
                        }
                        j = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i5) + i5;
                        break;
                    } else {
                        continue;
                    }
                case 48:
                    int t2 = C2578c1.m2843t((List) unsafe.getObject(t, R));
                    i6 = i6;
                    if (t2 > 0) {
                        i5 = t2;
                        if (this.f11191i) {
                            i5 = t2;
                            unsafe.putInt(t, i8, i5);
                        }
                        j = CodedOutputStream.m3119V(Q) + CodedOutputStream.m3117X(i5) + i5;
                        break;
                    } else {
                        continue;
                    }
                case 49:
                    j = C2578c1.m2853j(Q, m2399G(t, R), m2355s(i7));
                    break;
                case 50:
                    j = this.f11199q.mo2620c(Q, C2630k1.m2503E(t, R), m2356r(i7));
                    break;
                case 51:
                    i6 = i6;
                    if (!m2401E(t, Q, i7)) {
                        continue;
                    }
                    j = CodedOutputStream.m3101j(Q, 0.0d);
                    break;
                case 52:
                    i6 = i6;
                    if (!m2401E(t, Q, i7)) {
                        continue;
                    }
                    j = CodedOutputStream.m3088r(Q, 0.0f);
                    break;
                case 53:
                    i6 = i6;
                    if (m2401E(t, Q, i7)) {
                        j2 = m2383W(t, R);
                        j = CodedOutputStream.m3078y(Q, j2);
                        break;
                    } else {
                        continue;
                    }
                case 54:
                    i6 = i6;
                    if (m2401E(t, Q, i7)) {
                        j3 = m2383W(t, R);
                        j = CodedOutputStream.m3116Y(Q, j3);
                        break;
                    } else {
                        continue;
                    }
                case 55:
                    i6 = i6;
                    if (m2401E(t, Q, i7)) {
                        i = m2384V(t, R);
                        j = CodedOutputStream.m3082w(Q, i);
                        break;
                    } else {
                        continue;
                    }
                case 56:
                    i6 = i6;
                    if (!m2401E(t, Q, i7)) {
                        continue;
                    }
                    j = CodedOutputStream.m3092p(Q, 0L);
                    break;
                case 57:
                    i6 = i6;
                    if (!m2401E(t, Q, i7)) {
                        continue;
                    }
                    j = CodedOutputStream.m3095n(Q, 0);
                    break;
                case 58:
                    i6 = i6;
                    if (!m2401E(t, Q, i7)) {
                        continue;
                    }
                    j = CodedOutputStream.m3108e(Q, true);
                    break;
                case 59:
                    i6 = i6;
                    if (m2401E(t, Q, i7)) {
                        Object E2 = C2630k1.m2503E(t, R);
                        obj = E2;
                        if (E2 instanceof ByteString) {
                            obj2 = E2;
                            j = CodedOutputStream.m3103h(Q, (ByteString) obj2);
                            break;
                        }
                        j = CodedOutputStream.m3121T(Q, (String) obj);
                        break;
                    } else {
                        continue;
                    }
                case 60:
                    i6 = i6;
                    if (!m2401E(t, Q, i7)) {
                        continue;
                    }
                    j = C2578c1.m2848o(Q, C2630k1.m2503E(t, R), m2355s(i7));
                    break;
                case 61:
                    i6 = i6;
                    if (!m2401E(t, Q, i7)) {
                        continue;
                    }
                    obj2 = C2630k1.m2503E(t, R);
                    j = CodedOutputStream.m3103h(Q, (ByteString) obj2);
                    break;
                case 62:
                    i6 = i6;
                    if (m2401E(t, Q, i7)) {
                        i2 = m2384V(t, R);
                        j = CodedOutputStream.m3118W(Q, i2);
                        break;
                    } else {
                        continue;
                    }
                case 63:
                    i6 = i6;
                    if (m2401E(t, Q, i7)) {
                        i3 = m2384V(t, R);
                        j = CodedOutputStream.m3097l(Q, i3);
                        break;
                    } else {
                        continue;
                    }
                case 64:
                    i6 = i6;
                    if (!m2401E(t, Q, i7)) {
                        continue;
                    }
                    j = CodedOutputStream.m3136L(Q, 0);
                    break;
                case 65:
                    i6 = i6;
                    if (!m2401E(t, Q, i7)) {
                        continue;
                    }
                    j = CodedOutputStream.m3132N(Q, 0L);
                    break;
                case 66:
                    i6 = i6;
                    if (m2401E(t, Q, i7)) {
                        i4 = m2384V(t, R);
                        j = CodedOutputStream.m3128P(Q, i4);
                        break;
                    } else {
                        continue;
                    }
                case 67:
                    i6 = i6;
                    if (m2401E(t, Q, i7)) {
                        j4 = m2383W(t, R);
                        j = CodedOutputStream.m3124R(Q, j4);
                        break;
                    } else {
                        continue;
                    }
                case 68:
                    i6 = i6;
                    if (!m2401E(t, Q, i7)) {
                        continue;
                    }
                    j = CodedOutputStream.m3085t(Q, (AbstractC2639m0) C2630k1.m2503E(t, R), m2355s(i7));
                    break;
                default:
                    i6 = i6;
                    continue;
            }
            i6 += j;
        }
        return i6 + m2352v(this.f11197o, t);
    }

    /* renamed from: v */
    private <UT, UB> int m2352v(AbstractC2609g1<UT, UB> g1Var, T t) {
        return g1Var.mo2595h(g1Var.mo2596g(t));
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
        int Y = m2381Y(i);
        long j = 1048575 & Y;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = false;
        if (j == 1048575) {
            int i0 = m2371i0(i);
            long R = m2388R(i0);
            switch (m2372h0(i0)) {
                case 0:
                    if (C2630k1.m2461y(t, R) != 0.0d) {
                        z14 = true;
                    }
                    return z14;
                case 1:
                    if (C2630k1.m2460z(t, R) != 0.0f) {
                        z13 = true;
                    }
                    return z13;
                case 2:
                    if (C2630k1.m2505C(t, R) != 0) {
                        z12 = true;
                    }
                    return z12;
                case 3:
                    if (C2630k1.m2505C(t, R) != 0) {
                        z11 = true;
                    }
                    return z11;
                case 4:
                    if (C2630k1.m2507A(t, R) != 0) {
                        z10 = true;
                    }
                    return z10;
                case 5:
                    if (C2630k1.m2505C(t, R) != 0) {
                        z9 = true;
                    }
                    return z9;
                case 6:
                    if (C2630k1.m2507A(t, R) != 0) {
                        z8 = true;
                    }
                    return z8;
                case 7:
                    return C2630k1.m2468r(t, R);
                case 8:
                    Object E = C2630k1.m2503E(t, R);
                    if (E instanceof String) {
                        return !((String) E).isEmpty();
                    }
                    if (E instanceof ByteString) {
                        return !ByteString.f10869b.equals(E);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    if (C2630k1.m2503E(t, R) != null) {
                        z7 = true;
                    }
                    return z7;
                case 10:
                    return !ByteString.f10869b.equals(C2630k1.m2503E(t, R));
                case 11:
                    if (C2630k1.m2507A(t, R) != 0) {
                        z6 = true;
                    }
                    return z6;
                case 12:
                    if (C2630k1.m2507A(t, R) != 0) {
                        z5 = true;
                    }
                    return z5;
                case 13:
                    if (C2630k1.m2507A(t, R) != 0) {
                        z4 = true;
                    }
                    return z4;
                case 14:
                    if (C2630k1.m2505C(t, R) != 0) {
                        z3 = true;
                    }
                    return z3;
                case 15:
                    if (C2630k1.m2507A(t, R) != 0) {
                        z2 = true;
                    }
                    return z2;
                case 16:
                    if (C2630k1.m2505C(t, R) != 0) {
                        z = true;
                    }
                    return z;
                case 17:
                    if (C2630k1.m2503E(t, R) != null) {
                        z16 = true;
                    }
                    return z16;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            if ((C2630k1.m2507A(t, j) & (1 << (Y >>> 20))) != 0) {
                z15 = true;
            }
            return z15;
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
            long R = m2388R(m2371i0(this.f11192j[i2]));
            Object E = C2630k1.m2503E(t, R);
            if (E != null) {
                C2630k1.m2488T(t, R, this.f11199q.mo2618e(E));
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
            int Q = m2389Q(i4);
            int i0 = m2371i0(i4);
            int i5 = this.f11183a[i4 + 2];
            int i6 = i5 & 1048575;
            int i7 = 1 << (i5 >>> 20);
            if (i6 != i) {
                if (i6 != 1048575) {
                    i2 = f11182s.getInt(t, i6);
                }
                i = i6;
            }
            if (m2400F(i0) && !m2348z(t, i4, i, i2, i7)) {
                return false;
            }
            int h0 = m2372h0(i0);
            if (h0 != 9 && h0 != 17) {
                if (h0 != 27) {
                    if (h0 == 60 || h0 == 68) {
                        if (m2401E(t, Q, i4) && !m2405A(t, i0, m2355s(i4))) {
                            return false;
                        }
                    } else if (h0 != 49) {
                        if (h0 == 50 && !m2403C(t, i0, i4)) {
                            return false;
                        }
                    }
                }
                if (!m2404B(t, i0, i4)) {
                    return false;
                }
            } else if (m2348z(t, i4, i, i2, i7) && !m2405A(t, i0, m2355s(i4))) {
                return false;
            }
        }
        return !this.f11188f || this.f11198p.mo2345c(t).m2301p();
    }

    @Override // com.google.protobuf.AbstractC2572a1
    /* renamed from: e */
    public void mo2333e(T t, AbstractC2682z0 z0Var, C2643o oVar) {
        oVar.getClass();
        m2397I(this.f11197o, this.f11198p, t, z0Var, oVar);
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
        if (this.f11188f) {
            return this.f11198p.mo2345c(t).equals(this.f11198p.mo2345c(t2));
        }
        return true;
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
        if (r15 != null) goto L_0x032f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x032c, code lost:
        if (r15 != null) goto L_0x032f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x032f, code lost:
        r10 = r15.hashCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0336, code lost:
        r10 = (r0 * 53) + r10;
     */
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
