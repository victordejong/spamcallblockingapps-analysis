package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/je2.class */
final class je2 {

    /* renamed from: a */
    private static final Class<?> f6892a;

    /* renamed from: b */
    private static final ue2<?, ?> f6893b;

    /* renamed from: c */
    private static final ue2<?, ?> f6894c;

    /* renamed from: d */
    private static final ue2<?, ?> f6895d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            cls = null;
        }
        f6892a = cls;
        f6893b = m7040C(false);
        f6894c = m7040C(true);
        f6895d = new we2();
    }

    /* renamed from: A */
    public static void m7042A(Class<?> cls) {
        Class<?> cls2;
        if (!oc2.class.isAssignableFrom(cls) && (cls2 = f6892a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* renamed from: B */
    public static void m7041B(int i, List<?> list, xb2 xb2Var, he2 he2Var) {
        if (!(list == null || list.isEmpty())) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                xb2Var.m4952D(i, list.get(i2), he2Var);
            }
        }
    }

    /* renamed from: C */
    private static ue2<?, ?> m7040C(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (ue2) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th2) {
            return null;
        }
    }

    /* renamed from: D */
    static int m7039D(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof gd2)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += wb2.B(list.get(i2).longValue());
                i2++;
            }
        } else {
            gd2 gd2Var = (gd2) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += wb2.B(gd2Var.k(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: E */
    static int m7038E(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m7039D(list) + (list.size() * wb2.y(i));
    }

    /* renamed from: F */
    static int m7037F(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof gd2)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += wb2.B(list.get(i2).longValue());
                i2++;
            }
        } else {
            gd2 gd2Var = (gd2) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += wb2.B(gd2Var.k(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: G */
    static int m7036G(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m7037F(list) + (size * wb2.y(i));
    }

    /* renamed from: H */
    static int m7035H(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof gd2)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                long longValue = list.get(i2).longValue();
                i4 += wb2.B((longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
        } else {
            gd2 gd2Var = (gd2) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                long k = gd2Var.k(i3);
                i5 += wb2.B((k >> 63) ^ (k + k));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: I */
    static int m7034I(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m7035H(list) + (size * wb2.y(i));
    }

    /* renamed from: J */
    static int m7033J(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof pc2)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += wb2.z(list.get(i2).intValue());
                i2++;
            }
        } else {
            pc2 pc2Var = (pc2) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += wb2.z(pc2Var.k(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: K */
    static int m7032K(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m7033J(list) + (size * wb2.y(i));
    }

    /* renamed from: L */
    static int m7031L(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof pc2)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += wb2.z(list.get(i2).intValue());
                i2++;
            }
        } else {
            pc2 pc2Var = (pc2) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += wb2.z(pc2Var.k(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: M */
    static int m7030M(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m7031L(list) + (size * wb2.y(i));
    }

    /* renamed from: N */
    static int m7029N(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof pc2)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += wb2.A(list.get(i2).intValue());
                i2++;
            }
        } else {
            pc2 pc2Var = (pc2) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += wb2.A(pc2Var.k(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: O */
    static int m7028O(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m7029N(list) + (size * wb2.y(i));
    }

    /* renamed from: P */
    static int m7027P(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof pc2)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                int intValue = list.get(i2).intValue();
                i4 += wb2.A((intValue >> 31) ^ (intValue + intValue));
                i2++;
            }
        } else {
            pc2 pc2Var = (pc2) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                int k = pc2Var.k(i3);
                i5 += wb2.A((k >> 31) ^ (k + k));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: Q */
    static int m7026Q(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m7027P(list) + (size * wb2.y(i));
    }

    /* renamed from: R */
    static int m7025R(List<?> list) {
        return list.size() * 4;
    }

    /* renamed from: S */
    static int m7024S(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (wb2.A(i << 3) + 4);
    }

    /* renamed from: T */
    static int m7023T(List<?> list) {
        return list.size() * 8;
    }

    /* renamed from: U */
    static int m7022U(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (wb2.A(i << 3) + 8);
    }

    /* renamed from: V */
    static int m7021V(List<?> list) {
        return list.size();
    }

    /* renamed from: W */
    static int m7020W(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (wb2.A(i << 3) + 1);
    }

    /* renamed from: X */
    static int m7019X(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int y = wb2.y(i) * size;
        int i5 = y;
        if (!(list instanceof ad2)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof zzesf ? wb2.a((zzesf) obj) : wb2.C((String) obj);
                i3++;
            }
        } else {
            ad2 ad2Var = (ad2) list;
            int i6 = y;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object a0 = ad2Var.m8147a0(i4);
                i6 += a0 instanceof zzesf ? wb2.a((zzesf) a0) : wb2.C((String) a0);
                i4++;
            }
        }
        return i2;
    }

    /* renamed from: Y */
    static int m7018Y(int i, Object obj, he2 he2Var) {
        if (!(obj instanceof yc2)) {
            return wb2.A(i << 3) + wb2.b((qd2) obj, he2Var);
        }
        int A = wb2.A(i << 3);
        int a = ((yc2) obj).m4764a();
        return A + wb2.A(a) + a;
    }

    /* renamed from: Z */
    static int m7017Z(int i, List<?> list, he2 he2Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int y = wb2.y(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            y += obj instanceof yc2 ? wb2.D((yc2) obj) : wb2.b((qd2) obj, he2Var);
        }
        return y;
    }

    /* renamed from: a */
    public static ue2<?, ?> m7016a() {
        return f6893b;
    }

    /* renamed from: a0 */
    static int m7015a0(int i, List<zzesf> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int y = size * wb2.y(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            y += wb2.a(list.get(i2));
        }
        return y;
    }

    /* renamed from: b */
    public static ue2<?, ?> m7014b() {
        return f6894c;
    }

    /* renamed from: b0 */
    static int m7013b0(int i, List<qd2> list, he2 he2Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += wb2.e(i, list.get(i3), he2Var);
        }
        return i2;
    }

    /* renamed from: c */
    public static ue2<?, ?> m7012c() {
        return f6895d;
    }

    /* renamed from: d */
    static boolean m7011d(Object obj, Object obj2) {
        boolean z = false;
        if (obj != obj2) {
            if (obj != null) {
                if (!obj.equals(obj2)) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    /* renamed from: e */
    static <T, FT extends fc2<FT>> void m7010e(cc2<FT> cc2Var, T t, T t2) {
        cc2Var.m7847b(t2);
        throw null;
    }

    /* renamed from: f */
    static <T, UT, UB> void m7009f(ue2<UT, UB> ue2Var, T t, T t2) {
        ue2Var.m5390i(t, ue2Var.m5384o(ue2Var.m5389j(t), ue2Var.m5389j(t2)));
    }

    /* renamed from: g */
    static <UT, UB> UB m7008g(int i, List<Integer> list, rc2 rc2Var, UB ub, ue2<UT, UB> ue2Var) {
        UB ub2;
        if (rc2Var == null) {
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
                if (!rc2Var.m5982a(intValue)) {
                    ub = (UB) m7007h(i, intValue, ub, ue2Var);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (rc2Var.m5982a(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) m7007h(i, intValue2, ub, ue2Var);
                }
            }
            if (i2 == size) {
                ub2 = ub;
            } else {
                list.subList(i2, size).clear();
                return ub;
            }
        }
        return ub2;
    }

    /* renamed from: h */
    static <UT, UB> UB m7007h(int i, int i2, UB ub, ue2<UT, UB> ue2Var) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = ue2Var.m5392g();
        }
        ue2Var.m5397b(ub2, i, i2);
        return ub2;
    }

    /* renamed from: i */
    static <T> void m7006i(ld2 ld2Var, T t, T t2, long j) {
        ff2.m7520t(t, j, ld2.m6700c(ff2.m7521s(t, j), ff2.m7521s(t2, j)));
    }

    /* renamed from: j */
    public static void m7005j(int i, List<Double> list, xb2 xb2Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xb2Var.m4943b(i, list, z);
        }
    }

    /* renamed from: k */
    public static void m7004k(int i, List<Float> list, xb2 xb2Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xb2Var.m4944a(i, list, z);
        }
    }

    /* renamed from: l */
    public static void m7003l(int i, List<Long> list, xb2 xb2Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xb2Var.m4947I(i, list, z);
        }
    }

    /* renamed from: m */
    public static void m7002m(int i, List<Long> list, xb2 xb2Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xb2Var.m4946J(i, list, z);
        }
    }

    /* renamed from: n */
    public static void m7001n(int i, List<Long> list, xb2 xb2Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xb2Var.m4934k(i, list, z);
        }
    }

    /* renamed from: o */
    public static void m7000o(int i, List<Long> list, xb2 xb2Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xb2Var.m4945K(i, list, z);
        }
    }

    /* renamed from: p */
    public static void m6999p(int i, List<Long> list, xb2 xb2Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xb2Var.m4936i(i, list, z);
        }
    }

    /* renamed from: q */
    public static void m6998q(int i, List<Integer> list, xb2 xb2Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xb2Var.m4949G(i, list, z);
        }
    }

    /* renamed from: r */
    public static void m6997r(int i, List<Integer> list, xb2 xb2Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xb2Var.m4938g(i, list, z);
        }
    }

    /* renamed from: s */
    public static void m6996s(int i, List<Integer> list, xb2 xb2Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xb2Var.m4935j(i, list, z);
        }
    }

    /* renamed from: t */
    public static void m6995t(int i, List<Integer> list, xb2 xb2Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xb2Var.m4948H(i, list, z);
        }
    }

    /* renamed from: u */
    public static void m6994u(int i, List<Integer> list, xb2 xb2Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xb2Var.m4937h(i, list, z);
        }
    }

    /* renamed from: v */
    public static void m6993v(int i, List<Integer> list, xb2 xb2Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xb2Var.m4942c(i, list, z);
        }
    }

    /* renamed from: w */
    public static void m6992w(int i, List<Boolean> list, xb2 xb2Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xb2Var.m4941d(i, list, z);
        }
    }

    /* renamed from: x */
    public static void m6991x(int i, List<String> list, xb2 xb2Var) {
        if (list != null && !list.isEmpty()) {
            xb2Var.m4940e(i, list);
        }
    }

    /* renamed from: y */
    public static void m6990y(int i, List<zzesf> list, xb2 xb2Var) {
        if (list != null && !list.isEmpty()) {
            xb2Var.m4939f(i, list);
        }
    }

    /* renamed from: z */
    public static void m6989z(int i, List<?> list, xb2 xb2Var, he2 he2Var) {
        if (!(list == null || list.isEmpty())) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                xb2Var.m4953C(i, list.get(i2), he2Var);
            }
        }
    }
}
