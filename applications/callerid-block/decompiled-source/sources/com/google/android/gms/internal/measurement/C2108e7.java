package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.e7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/e7.class */
final class C2108e7 {

    /* renamed from: a */
    private static final Class<?> f9743a;

    /* renamed from: b */
    private static final AbstractC2160p7<?, ?> f9744b;

    /* renamed from: c */
    private static final AbstractC2160p7<?, ?> f9745c;

    /* renamed from: d */
    private static final AbstractC2160p7<?, ?> f9746d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            cls = null;
        }
        f9743a = cls;
        f9744b = m4400C(false);
        f9745c = m4400C(true);
        f9746d = new r7();
    }

    /* renamed from: A */
    public static void m4402A(Class<?> cls) {
        Class<?> cls2;
        if (!q5.class.isAssignableFrom(cls) && (cls2 = f9743a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* renamed from: B */
    public static void m4401B(int i, List<?> list, C2211z4 z4Var, AbstractC2099c7 c7Var) {
        if (!(list == null || list.isEmpty())) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                z4Var.m4112D(i, list.get(i2), c7Var);
            }
        }
    }

    /* renamed from: C */
    private static AbstractC2160p7<?, ?> m4400C(boolean z) {
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
            return (AbstractC2160p7) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th2) {
            return null;
        }
    }

    /* renamed from: D */
    static int m4399D(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof g6)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += y4.B(list.get(i2).longValue());
                i2++;
            }
        } else {
            g6 g6Var = (g6) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += y4.B(g6Var.H(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: E */
    static int m4398E(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m4399D(list) + (list.size() * y4.y(i));
    }

    /* renamed from: F */
    static int m4397F(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof g6)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += y4.B(list.get(i2).longValue());
                i2++;
            }
        } else {
            g6 g6Var = (g6) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += y4.B(g6Var.H(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: G */
    static int m4396G(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m4397F(list) + (size * y4.y(i));
    }

    /* renamed from: H */
    static int m4395H(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof g6)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                long longValue = list.get(i2).longValue();
                i4 += y4.B((longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
        } else {
            g6 g6Var = (g6) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                long H = g6Var.H(i3);
                i5 += y4.B((H >> 63) ^ (H + H));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: I */
    static int m4394I(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m4395H(list) + (size * y4.y(i));
    }

    /* renamed from: J */
    static int m4393J(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof r5)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += y4.z(list.get(i2).intValue());
                i2++;
            }
        } else {
            r5 r5Var = (r5) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += y4.z(r5Var.k(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: K */
    static int m4392K(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m4393J(list) + (size * y4.y(i));
    }

    /* renamed from: L */
    static int m4391L(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof r5)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += y4.z(list.get(i2).intValue());
                i2++;
            }
        } else {
            r5 r5Var = (r5) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += y4.z(r5Var.k(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: M */
    static int m4390M(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m4391L(list) + (size * y4.y(i));
    }

    /* renamed from: N */
    static int m4389N(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof r5)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += y4.A(list.get(i2).intValue());
                i2++;
            }
        } else {
            r5 r5Var = (r5) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += y4.A(r5Var.k(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: O */
    static int m4388O(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m4389N(list) + (size * y4.y(i));
    }

    /* renamed from: P */
    static int m4387P(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof r5)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                int intValue = list.get(i2).intValue();
                i4 += y4.A((intValue >> 31) ^ (intValue + intValue));
                i2++;
            }
        } else {
            r5 r5Var = (r5) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                int k = r5Var.k(i3);
                i5 += y4.A((k >> 31) ^ (k + k));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: Q */
    static int m4386Q(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m4387P(list) + (size * y4.y(i));
    }

    /* renamed from: R */
    static int m4385R(List<?> list) {
        return list.size() * 4;
    }

    /* renamed from: S */
    static int m4384S(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (y4.A(i << 3) + 4);
    }

    /* renamed from: T */
    static int m4383T(List<?> list) {
        return list.size() * 8;
    }

    /* renamed from: U */
    static int m4382U(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (y4.A(i << 3) + 8);
    }

    /* renamed from: V */
    static int m4381V(List<?> list) {
        return list.size();
    }

    /* renamed from: W */
    static int m4380W(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (y4.A(i << 3) + 1);
    }

    /* renamed from: X */
    static int m4379X(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int y = y4.y(i) * size;
        int i5 = y;
        if (!(list instanceof AbstractC2092b6)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof zzgr ? y4.a((zzgr) obj) : y4.C((String) obj);
                i3++;
            }
        } else {
            AbstractC2092b6 b6Var = (AbstractC2092b6) list;
            int i6 = y;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object a0 = b6Var.m4429a0(i4);
                i6 += a0 instanceof zzgr ? y4.a((zzgr) a0) : y4.C((String) a0);
                i4++;
            }
        }
        return i2;
    }

    /* renamed from: Y */
    static int m4378Y(int i, Object obj, AbstractC2099c7 c7Var) {
        if (!(obj instanceof C2212z5)) {
            return y4.A(i << 3) + y4.b((q6) obj, c7Var);
        }
        int A = y4.A(i << 3);
        int a = ((C2212z5) obj).m4078a();
        return A + y4.A(a) + a;
    }

    /* renamed from: Z */
    static int m4377Z(int i, List<?> list, AbstractC2099c7 c7Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int y = y4.y(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            y += obj instanceof C2212z5 ? y4.D((C2212z5) obj) : y4.b((q6) obj, c7Var);
        }
        return y;
    }

    /* renamed from: a */
    public static AbstractC2160p7<?, ?> m4376a() {
        return f9744b;
    }

    /* renamed from: a0 */
    static int m4375a0(int i, List<zzgr> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int y = size * y4.y(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            y += y4.a(list.get(i2));
        }
        return y;
    }

    /* renamed from: b */
    public static AbstractC2160p7<?, ?> m4374b() {
        return f9745c;
    }

    /* renamed from: b0 */
    static int m4373b0(int i, List<q6> list, AbstractC2099c7 c7Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += y4.e(i, list.get(i3), c7Var);
        }
        return i2;
    }

    /* renamed from: c */
    public static AbstractC2160p7<?, ?> m4372c() {
        return f9746d;
    }

    /* renamed from: d */
    static boolean m4371d(Object obj, Object obj2) {
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
    static <T, FT extends AbstractC2130i5<FT>> void m4370e(AbstractC2111f5<FT> f5Var, T t, T t2) {
        f5Var.m4338b(t2);
        throw null;
    }

    /* renamed from: f */
    static <T, UT, UB> void m4369f(AbstractC2160p7<UT, UB> p7Var, T t, T t2) {
        p7Var.m4221c(t, p7Var.m4218f(p7Var.m4220d(t), p7Var.m4220d(t2)));
    }

    /* renamed from: g */
    static <UT, UB> UB m4368g(int i, List<Integer> list, AbstractC2181t5 t5Var, UB ub, AbstractC2160p7<UT, UB> p7Var) {
        UB ub2;
        if (t5Var == null) {
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
                if (!t5Var.m4178a(intValue)) {
                    ub = (UB) m4367h(i, intValue, ub, p7Var);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (t5Var.m4178a(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) m4367h(i, intValue2, ub, p7Var);
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
    static <UT, UB> UB m4367h(int i, int i2, UB ub, AbstractC2160p7<UT, UB> p7Var) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = p7Var.m4222b();
        }
        p7Var.m4223a(ub2, i, i2);
        return ub2;
    }

    /* renamed from: i */
    static <T> void m4366i(C2145l6 l6Var, T t, T t2, long j) {
        C2087a8.m4436t(t, j, C2145l6.m4265b(C2087a8.m4437s(t, j), C2087a8.m4437s(t2, j)));
    }

    /* renamed from: j */
    public static void m4365j(int i, List<Double> list, C2211z4 z4Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            z4Var.m4103b(i, list, z);
        }
    }

    /* renamed from: k */
    public static void m4364k(int i, List<Float> list, C2211z4 z4Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            z4Var.m4104a(i, list, z);
        }
    }

    /* renamed from: l */
    public static void m4363l(int i, List<Long> list, C2211z4 z4Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            z4Var.m4107I(i, list, z);
        }
    }

    /* renamed from: m */
    public static void m4362m(int i, List<Long> list, C2211z4 z4Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            z4Var.m4106J(i, list, z);
        }
    }

    /* renamed from: n */
    public static void m4361n(int i, List<Long> list, C2211z4 z4Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            z4Var.m4094k(i, list, z);
        }
    }

    /* renamed from: o */
    public static void m4360o(int i, List<Long> list, C2211z4 z4Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            z4Var.m4105K(i, list, z);
        }
    }

    /* renamed from: p */
    public static void m4359p(int i, List<Long> list, C2211z4 z4Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            z4Var.m4096i(i, list, z);
        }
    }

    /* renamed from: q */
    public static void m4358q(int i, List<Integer> list, C2211z4 z4Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            z4Var.m4109G(i, list, z);
        }
    }

    /* renamed from: r */
    public static void m4357r(int i, List<Integer> list, C2211z4 z4Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            z4Var.m4098g(i, list, z);
        }
    }

    /* renamed from: s */
    public static void m4356s(int i, List<Integer> list, C2211z4 z4Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            z4Var.m4095j(i, list, z);
        }
    }

    /* renamed from: t */
    public static void m4355t(int i, List<Integer> list, C2211z4 z4Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            z4Var.m4108H(i, list, z);
        }
    }

    /* renamed from: u */
    public static void m4354u(int i, List<Integer> list, C2211z4 z4Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            z4Var.m4097h(i, list, z);
        }
    }

    /* renamed from: v */
    public static void m4353v(int i, List<Integer> list, C2211z4 z4Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            z4Var.m4102c(i, list, z);
        }
    }

    /* renamed from: w */
    public static void m4352w(int i, List<Boolean> list, C2211z4 z4Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            z4Var.m4101d(i, list, z);
        }
    }

    /* renamed from: x */
    public static void m4351x(int i, List<String> list, C2211z4 z4Var) {
        if (list != null && !list.isEmpty()) {
            z4Var.m4100e(i, list);
        }
    }

    /* renamed from: y */
    public static void m4350y(int i, List<zzgr> list, C2211z4 z4Var) {
        if (list != null && !list.isEmpty()) {
            z4Var.m4099f(i, list);
        }
    }

    /* renamed from: z */
    public static void m4349z(int i, List<?> list, C2211z4 z4Var, AbstractC2099c7 c7Var) {
        if (!(list == null || list.isEmpty())) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                z4Var.m4113C(i, list.get(i2), c7Var);
            }
        }
    }
}
