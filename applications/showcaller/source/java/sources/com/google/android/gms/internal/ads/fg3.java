package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fg3.class */
public final class fg3 {

    /* renamed from: a */
    private static final Class<?> f22886a;

    /* renamed from: b */
    private static final rg3<?, ?> f22887b;

    /* renamed from: c */
    private static final rg3<?, ?> f22888c;

    /* renamed from: d */
    private static final rg3<?, ?> f22889d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            cls = null;
        }
        f22886a = cls;
        f22887b = m15251C(false);
        f22888c = m15251C(true);
        f22889d = new tg3();
    }

    /* renamed from: A */
    public static void m15253A(Class<?> cls) {
        Class<?> cls2;
        if (ie3.class.isAssignableFrom(cls) || (cls2 = f22886a) == null || cls2.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    /* renamed from: B */
    public static void m15252B(int i, List<?> list, rd3 rd3Var, cg3 cg3Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            rd3Var.m11586D(i, list.get(i2), cg3Var);
        }
    }

    /* renamed from: C */
    private static rg3<?, ?> m15251C(boolean z) {
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
            return (rg3) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th2) {
            return null;
        }
    }

    /* renamed from: D */
    public static int m15250D(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof bf3)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += qd3.m11945C(list.get(i4).longValue());
                i4++;
            }
        } else {
            bf3 bf3Var = (bf3) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += qd3.m11945C(bf3Var.m16384e(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: E */
    public static int m15249E(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m15250D(list) + (list.size() * qd3.m11918z(i));
    }

    /* renamed from: F */
    public static int m15248F(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof bf3)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += qd3.m11945C(list.get(i4).longValue());
                i4++;
            }
        } else {
            bf3 bf3Var = (bf3) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += qd3.m11945C(bf3Var.m16384e(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: G */
    public static int m15247G(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m15248F(list) + (size * qd3.m11918z(i));
    }

    /* renamed from: H */
    public static int m15246H(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof bf3)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                long longValue = list.get(i4).longValue();
                i3 += qd3.m11945C((longValue >> 63) ^ (longValue + longValue));
                i4++;
            }
        } else {
            bf3 bf3Var = (bf3) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                long m16384e = bf3Var.m16384e(i2);
                i5 += qd3.m11945C((m16384e >> 63) ^ (m16384e + m16384e));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: I */
    public static int m15245I(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m15246H(list) + (size * qd3.m11918z(i));
    }

    /* renamed from: J */
    public static int m15244J(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof je3)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += qd3.m11947A(list.get(i4).intValue());
                i4++;
            }
        } else {
            je3 je3Var = (je3) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += qd3.m11947A(je3Var.m14134e(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: K */
    public static int m15243K(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m15244J(list) + (size * qd3.m11918z(i));
    }

    /* renamed from: L */
    public static int m15242L(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof je3)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += qd3.m11947A(list.get(i4).intValue());
                i4++;
            }
        } else {
            je3 je3Var = (je3) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += qd3.m11947A(je3Var.m14134e(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: M */
    public static int m15241M(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m15242L(list) + (size * qd3.m11918z(i));
    }

    /* renamed from: N */
    public static int m15240N(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof je3)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += qd3.m11946B(list.get(i4).intValue());
                i4++;
            }
        } else {
            je3 je3Var = (je3) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += qd3.m11946B(je3Var.m14134e(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: O */
    public static int m15239O(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m15240N(list) + (size * qd3.m11918z(i));
    }

    /* renamed from: P */
    public static int m15238P(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof je3)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                int intValue = list.get(i4).intValue();
                i3 += qd3.m11946B((intValue >> 31) ^ (intValue + intValue));
                i4++;
            }
        } else {
            je3 je3Var = (je3) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                int m14134e = je3Var.m14134e(i2);
                i5 += qd3.m11946B((m14134e >> 31) ^ (m14134e + m14134e));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: Q */
    public static int m15237Q(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m15238P(list) + (size * qd3.m11918z(i));
    }

    /* renamed from: R */
    public static int m15236R(List<?> list) {
        return list.size() * 4;
    }

    /* renamed from: S */
    public static int m15235S(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (qd3.m11946B(i << 3) + 4);
    }

    /* renamed from: T */
    public static int m15234T(List<?> list) {
        return list.size() * 8;
    }

    /* renamed from: U */
    public static int m15233U(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (qd3.m11946B(i << 3) + 8);
    }

    /* renamed from: V */
    public static int m15232V(List<?> list) {
        return list.size();
    }

    /* renamed from: W */
    public static int m15231W(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (qd3.m11946B(i << 3) + 1);
    }

    /* renamed from: X */
    public static int m15230X(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int m11918z = qd3.m11918z(i) * size;
        int i4 = m11918z;
        if (!(list instanceof we3)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 += obj instanceof zzgex ? qd3.m11942b((zzgex) obj) : qd3.m11944D((String) obj);
                i3++;
            }
        } else {
            we3 we3Var = (we3) list;
            int i5 = m11918z;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object mo9588Z = we3Var.mo9588Z(i6);
                i5 += mo9588Z instanceof zzgex ? qd3.m11942b((zzgex) mo9588Z) : qd3.m11944D((String) mo9588Z);
                i6++;
            }
        }
        return i2;
    }

    /* renamed from: Y */
    public static int m15229Y(int i, Object obj, cg3 cg3Var) {
        if (obj instanceof ue3) {
            int m11946B = qd3.m11946B(i << 3);
            int m10341a = ((ue3) obj).m10341a();
            return m11946B + qd3.m11946B(m10341a) + m10341a;
        }
        return qd3.m11946B(i << 3) + qd3.m11941c((mf3) obj, cg3Var);
    }

    /* renamed from: Z */
    public static int m15228Z(int i, List<?> list, cg3 cg3Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m11918z = qd3.m11918z(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            m11918z += obj instanceof ue3 ? qd3.m11943a((ue3) obj) : qd3.m11941c((mf3) obj, cg3Var);
        }
        return m11918z;
    }

    /* renamed from: a */
    public static rg3<?, ?> m15227a() {
        return f22887b;
    }

    /* renamed from: a0 */
    public static int m15226a0(int i, List<zzgex> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m11918z = size * qd3.m11918z(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            m11918z += qd3.m11942b(list.get(i2));
        }
        return m11918z;
    }

    /* renamed from: b */
    public static rg3<?, ?> m15225b() {
        return f22888c;
    }

    /* renamed from: b0 */
    public static int m15224b0(int i, List<mf3> list, cg3 cg3Var) {
        int size = list.size();
        if (size != 0) {
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += qd3.m11938f(i, list.get(i3), cg3Var);
            }
            return i2;
        }
        return 0;
    }

    /* renamed from: c */
    public static rg3<?, ?> m15223c() {
        return f22889d;
    }

    /* renamed from: d */
    public static boolean m15222d(Object obj, Object obj2) {
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
    public static <T, FT extends zd3<FT>> void m15221e(wd3<FT> wd3Var, T t, T t2) {
        wd3Var.mo9258b(t2);
        throw null;
    }

    /* renamed from: f */
    public static <T, UT, UB> void m15220f(rg3<UT, UB> rg3Var, T t, T t2) {
        rg3Var.mo10700i(t, rg3Var.mo10695o(rg3Var.mo10699j(t), rg3Var.mo10699j(t2)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public static <UT, UB> UB m15219g(int i, List<Integer> list, me3 me3Var, UB ub, rg3<UT, UB> rg3Var) {
        UB ub2;
        if (me3Var == null) {
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
                if (!me3Var.mo8821B(intValue)) {
                    ub = m15218h(i, intValue, ub, rg3Var);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (me3Var.mo8821B(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = m15218h(i, intValue2, ub, rg3Var);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return ub;
            }
            ub2 = ub;
        }
        return ub2;
    }

    /* renamed from: h */
    public static <UT, UB> UB m15218h(int i, int i2, UB ub, rg3<UT, UB> rg3Var) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = rg3Var.mo10702g();
        }
        rg3Var.mo10707b(ub2, i, i2);
        return ub2;
    }

    /* renamed from: i */
    public static <T> void m15217i(hf3 hf3Var, T t, T t2, long j) {
        bh3.m16340w(t, j, hf3.m14670c(bh3.m16341v(t, j), bh3.m16341v(t2, j)));
    }

    /* renamed from: j */
    public static void m15216j(int i, List<Double> list, rd3 rd3Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        rd3Var.m11577b(i, list, z);
    }

    /* renamed from: k */
    public static void m15215k(int i, List<Float> list, rd3 rd3Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        rd3Var.m11578a(i, list, z);
    }

    /* renamed from: l */
    public static void m15214l(int i, List<Long> list, rd3 rd3Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        rd3Var.m11581I(i, list, z);
    }

    /* renamed from: m */
    public static void m15213m(int i, List<Long> list, rd3 rd3Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        rd3Var.m11580J(i, list, z);
    }

    /* renamed from: n */
    public static void m15212n(int i, List<Long> list, rd3 rd3Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        rd3Var.m11568k(i, list, z);
    }

    /* renamed from: o */
    public static void m15211o(int i, List<Long> list, rd3 rd3Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        rd3Var.m11579K(i, list, z);
    }

    /* renamed from: p */
    public static void m15210p(int i, List<Long> list, rd3 rd3Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        rd3Var.m11570i(i, list, z);
    }

    /* renamed from: q */
    public static void m15209q(int i, List<Integer> list, rd3 rd3Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        rd3Var.m11583G(i, list, z);
    }

    /* renamed from: r */
    public static void m15208r(int i, List<Integer> list, rd3 rd3Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        rd3Var.m11572g(i, list, z);
    }

    /* renamed from: s */
    public static void m15207s(int i, List<Integer> list, rd3 rd3Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        rd3Var.m11569j(i, list, z);
    }

    /* renamed from: t */
    public static void m15206t(int i, List<Integer> list, rd3 rd3Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        rd3Var.m11582H(i, list, z);
    }

    /* renamed from: u */
    public static void m15205u(int i, List<Integer> list, rd3 rd3Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        rd3Var.m11571h(i, list, z);
    }

    /* renamed from: v */
    public static void m15204v(int i, List<Integer> list, rd3 rd3Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        rd3Var.m11576c(i, list, z);
    }

    /* renamed from: w */
    public static void m15203w(int i, List<Boolean> list, rd3 rd3Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        rd3Var.m11575d(i, list, z);
    }

    /* renamed from: x */
    public static void m15202x(int i, List<String> list, rd3 rd3Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        rd3Var.m11574e(i, list);
    }

    /* renamed from: y */
    public static void m15201y(int i, List<zzgex> list, rd3 rd3Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        rd3Var.m11573f(i, list);
    }

    /* renamed from: z */
    public static void m15200z(int i, List<?> list, rd3 rd3Var, cg3 cg3Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            rd3Var.m11587C(i, list.get(i2), cg3Var);
        }
    }
}
