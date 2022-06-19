package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.m7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/m7.class */
public final class C7464m7 {

    /* renamed from: a */
    private static final Class<?> f34592a;

    /* renamed from: b */
    private static final AbstractC7611x7<?, ?> f34593b;

    /* renamed from: c */
    private static final AbstractC7611x7<?, ?> f34594c;

    /* renamed from: d */
    private static final AbstractC7611x7<?, ?> f34595d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            cls = null;
        }
        f34592a = cls;
        f34593b = m7160C(false);
        f34594c = m7160C(true);
        f34595d = new C7637z7();
    }

    /* renamed from: A */
    public static void m7162A(Class<?> cls) {
        Class<?> cls2;
        if (AbstractC7609x5.class.isAssignableFrom(cls) || (cls2 = f34592a) == null || cls2.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    /* renamed from: B */
    public static void m7161B(int i, List<?> list, C7378g5 c7378g5, AbstractC7436k7 abstractC7436k7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            c7378g5.m7420D(i, list.get(i2), abstractC7436k7);
        }
    }

    /* renamed from: C */
    private static AbstractC7611x7<?, ?> m7160C(boolean z) {
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
            return (AbstractC7611x7) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th2) {
            return null;
        }
    }

    /* renamed from: D */
    public static int m7159D(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7491o6)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += AbstractC7364f5.m7532B(list.get(i4).longValue());
                i4++;
            }
        } else {
            C7491o6 c7491o6 = (C7491o6) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += AbstractC7364f5.m7532B(c7491o6.mo7041C(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: E */
    public static int m7158E(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m7159D(list) + (list.size() * AbstractC7364f5.m7505y(i));
    }

    /* renamed from: F */
    public static int m7157F(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7491o6)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += AbstractC7364f5.m7532B(list.get(i4).longValue());
                i4++;
            }
        } else {
            C7491o6 c7491o6 = (C7491o6) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += AbstractC7364f5.m7532B(c7491o6.mo7041C(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: G */
    public static int m7156G(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m7157F(list) + (size * AbstractC7364f5.m7505y(i));
    }

    /* renamed from: H */
    public static int m7155H(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7491o6)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                long longValue = list.get(i4).longValue();
                i3 += AbstractC7364f5.m7532B((longValue >> 63) ^ (longValue + longValue));
                i4++;
            }
        } else {
            C7491o6 c7491o6 = (C7491o6) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                long mo7041C = c7491o6.mo7041C(i2);
                i5 += AbstractC7364f5.m7532B((mo7041C >> 63) ^ (mo7041C + mo7041C));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: I */
    public static int m7154I(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m7155H(list) + (size * AbstractC7364f5.m7505y(i));
    }

    /* renamed from: J */
    public static int m7153J(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7622y5)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += AbstractC7364f5.m7504z(list.get(i4).intValue());
                i4++;
            }
        } else {
            C7622y5 c7622y5 = (C7622y5) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += AbstractC7364f5.m7504z(c7622y5.m6734e(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: K */
    public static int m7152K(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m7153J(list) + (size * AbstractC7364f5.m7505y(i));
    }

    /* renamed from: L */
    public static int m7151L(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7622y5)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += AbstractC7364f5.m7504z(list.get(i4).intValue());
                i4++;
            }
        } else {
            C7622y5 c7622y5 = (C7622y5) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += AbstractC7364f5.m7504z(c7622y5.m6734e(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: M */
    public static int m7150M(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m7151L(list) + (size * AbstractC7364f5.m7505y(i));
    }

    /* renamed from: N */
    public static int m7149N(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7622y5)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += AbstractC7364f5.m7533A(list.get(i4).intValue());
                i4++;
            }
        } else {
            C7622y5 c7622y5 = (C7622y5) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += AbstractC7364f5.m7533A(c7622y5.m6734e(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: O */
    public static int m7148O(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m7149N(list) + (size * AbstractC7364f5.m7505y(i));
    }

    /* renamed from: P */
    public static int m7147P(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7622y5)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                int intValue = list.get(i4).intValue();
                i3 += AbstractC7364f5.m7533A((intValue >> 31) ^ (intValue + intValue));
                i4++;
            }
        } else {
            C7622y5 c7622y5 = (C7622y5) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                int m6734e = c7622y5.m6734e(i2);
                i5 += AbstractC7364f5.m7533A((m6734e >> 31) ^ (m6734e + m6734e));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: Q */
    public static int m7146Q(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m7147P(list) + (size * AbstractC7364f5.m7505y(i));
    }

    /* renamed from: R */
    public static int m7145R(List<?> list) {
        return list.size() * 4;
    }

    /* renamed from: S */
    public static int m7144S(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (AbstractC7364f5.m7533A(i << 3) + 4);
    }

    /* renamed from: T */
    public static int m7143T(List<?> list) {
        return list.size() * 8;
    }

    /* renamed from: U */
    public static int m7142U(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (AbstractC7364f5.m7533A(i << 3) + 8);
    }

    /* renamed from: V */
    public static int m7141V(List<?> list) {
        return list.size();
    }

    /* renamed from: W */
    public static int m7140W(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (AbstractC7364f5.m7533A(i << 3) + 1);
    }

    /* renamed from: X */
    public static int m7139X(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int m7505y = AbstractC7364f5.m7505y(i) * size;
        int i4 = m7505y;
        if (!(list instanceof AbstractC7421j6)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 += obj instanceof zzgr ? AbstractC7364f5.m7529a((zzgr) obj) : AbstractC7364f5.m7531C((String) obj);
                i3++;
            }
        } else {
            AbstractC7421j6 abstractC7421j6 = (AbstractC7421j6) list;
            int i5 = m7505y;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object mo7245Z = abstractC7421j6.mo7245Z(i6);
                i5 += mo7245Z instanceof zzgr ? AbstractC7364f5.m7529a((zzgr) mo7245Z) : AbstractC7364f5.m7531C((String) mo7245Z);
                i6++;
            }
        }
        return i2;
    }

    /* renamed from: Y */
    public static int m7138Y(int i, Object obj, AbstractC7436k7 abstractC7436k7) {
        if (obj instanceof C7393h6) {
            int m7533A = AbstractC7364f5.m7533A(i << 3);
            int m7371a = ((C7393h6) obj).m7371a();
            return m7533A + AbstractC7364f5.m7533A(m7371a) + m7371a;
        }
        return AbstractC7364f5.m7533A(i << 3) + AbstractC7364f5.m7528b((AbstractC7623y6) obj, abstractC7436k7);
    }

    /* renamed from: Z */
    public static int m7137Z(int i, List<?> list, AbstractC7436k7 abstractC7436k7) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m7505y = AbstractC7364f5.m7505y(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            m7505y += obj instanceof C7393h6 ? AbstractC7364f5.m7530D((C7393h6) obj) : AbstractC7364f5.m7528b((AbstractC7623y6) obj, abstractC7436k7);
        }
        return m7505y;
    }

    /* renamed from: a */
    public static AbstractC7611x7<?, ?> m7136a() {
        return f34593b;
    }

    /* renamed from: a0 */
    public static int m7135a0(int i, List<zzgr> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m7505y = size * AbstractC7364f5.m7505y(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            m7505y += AbstractC7364f5.m7529a(list.get(i2));
        }
        return m7505y;
    }

    /* renamed from: b */
    public static AbstractC7611x7<?, ?> m7134b() {
        return f34594c;
    }

    /* renamed from: b0 */
    public static int m7133b0(int i, List<AbstractC7623y6> list, AbstractC7436k7 abstractC7436k7) {
        int size = list.size();
        if (size != 0) {
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += AbstractC7364f5.m7525e(i, list.get(i3), abstractC7436k7);
            }
            return i2;
        }
        return 0;
    }

    /* renamed from: c */
    public static AbstractC7611x7<?, ?> m7132c() {
        return f34595d;
    }

    /* renamed from: d */
    public static boolean m7131d(Object obj, Object obj2) {
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
    public static <T, FT extends AbstractC7504p5<FT>> void m7130e(AbstractC7462m5<FT> abstractC7462m5, T t, T t2) {
        abstractC7462m5.mo7078b(t2);
        throw null;
    }

    /* renamed from: f */
    public static <T, UT, UB> void m7129f(AbstractC7611x7<UT, UB> abstractC7611x7, T t, T t2) {
        abstractC7611x7.mo6640c(t, abstractC7611x7.mo6637f(abstractC7611x7.mo6639d(t), abstractC7611x7.mo6639d(t2)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public static <UT, UB> UB m7128g(int i, List<Integer> list, AbstractC7309b6 abstractC7309b6, UB ub, AbstractC7611x7<UT, UB> abstractC7611x7) {
        UB ub2;
        if (abstractC7309b6 == null) {
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
                if (!abstractC7309b6.mo6836B(intValue)) {
                    ub = m7127h(i, intValue, ub, abstractC7611x7);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (abstractC7309b6.mo6836B(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = m7127h(i, intValue2, ub, abstractC7611x7);
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
    static <UT, UB> UB m7127h(int i, int i2, UB ub, AbstractC7611x7<UT, UB> abstractC7611x7) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = abstractC7611x7.mo6641b();
        }
        abstractC7611x7.mo6642a(ub2, i, i2);
        return ub2;
    }

    /* renamed from: i */
    public static <T> void m7126i(C7558t6 c7558t6, T t, T t2, long j) {
        C7409i8.m7304t(t, j, C7558t6.m6903b(C7409i8.m7305s(t, j), C7409i8.m7305s(t2, j)));
    }

    /* renamed from: j */
    public static void m7125j(int i, List<Double> list, C7378g5 c7378g5, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c7378g5.m7411b(i, list, z);
    }

    /* renamed from: k */
    public static void m7124k(int i, List<Float> list, C7378g5 c7378g5, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c7378g5.m7412a(i, list, z);
    }

    /* renamed from: l */
    public static void m7123l(int i, List<Long> list, C7378g5 c7378g5, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c7378g5.m7415I(i, list, z);
    }

    /* renamed from: m */
    public static void m7122m(int i, List<Long> list, C7378g5 c7378g5, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c7378g5.m7414J(i, list, z);
    }

    /* renamed from: n */
    public static void m7121n(int i, List<Long> list, C7378g5 c7378g5, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c7378g5.m7402k(i, list, z);
    }

    /* renamed from: o */
    public static void m7120o(int i, List<Long> list, C7378g5 c7378g5, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c7378g5.m7413K(i, list, z);
    }

    /* renamed from: p */
    public static void m7119p(int i, List<Long> list, C7378g5 c7378g5, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c7378g5.m7404i(i, list, z);
    }

    /* renamed from: q */
    public static void m7118q(int i, List<Integer> list, C7378g5 c7378g5, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c7378g5.m7417G(i, list, z);
    }

    /* renamed from: r */
    public static void m7117r(int i, List<Integer> list, C7378g5 c7378g5, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c7378g5.m7406g(i, list, z);
    }

    /* renamed from: s */
    public static void m7116s(int i, List<Integer> list, C7378g5 c7378g5, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c7378g5.m7403j(i, list, z);
    }

    /* renamed from: t */
    public static void m7115t(int i, List<Integer> list, C7378g5 c7378g5, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c7378g5.m7416H(i, list, z);
    }

    /* renamed from: u */
    public static void m7114u(int i, List<Integer> list, C7378g5 c7378g5, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c7378g5.m7405h(i, list, z);
    }

    /* renamed from: v */
    public static void m7113v(int i, List<Integer> list, C7378g5 c7378g5, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c7378g5.m7410c(i, list, z);
    }

    /* renamed from: w */
    public static void m7112w(int i, List<Boolean> list, C7378g5 c7378g5, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c7378g5.m7409d(i, list, z);
    }

    /* renamed from: x */
    public static void m7111x(int i, List<String> list, C7378g5 c7378g5) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c7378g5.m7408e(i, list);
    }

    /* renamed from: y */
    public static void m7110y(int i, List<zzgr> list, C7378g5 c7378g5) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c7378g5.m7407f(i, list);
    }

    /* renamed from: z */
    public static void m7109z(int i, List<?> list, C7378g5 c7378g5, AbstractC7436k7 abstractC7436k7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            c7378g5.m7421C(i, list.get(i2), abstractC7436k7);
        }
    }
}
