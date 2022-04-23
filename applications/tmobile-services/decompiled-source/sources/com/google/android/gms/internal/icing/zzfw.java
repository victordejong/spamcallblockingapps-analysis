package com.google.android.gms.internal.icing;

import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfw.class */
public final class zzfw {

    /* renamed from: a */
    private static final Class<?> f8067a = m13645y();

    /* renamed from: b */
    private static final zzgm<?, ?> f8068b = m13689I(false);

    /* renamed from: c */
    private static final zzgm<?, ?> f8069c = m13689I(true);

    /* renamed from: d */
    private static final zzgm<?, ?> f8070d = new zzgo();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public static int m13697A(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzdz)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzdk.m13896z0(list.get(i2).intValue());
                i2++;
            }
        } else {
            zzdz zzdzVar = (zzdz) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzdk.m13896z0(zzdzVar.m13809d(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: B */
    public static void m13696B(int i, List<Long> list, zzhg zzhgVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13489v(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C */
    public static int m13695C(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzdz)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzdk.m13954A0(list.get(i2).intValue());
                i2++;
            }
        } else {
            zzdz zzdzVar = (zzdz) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzdk.m13954A0(zzdzVar.m13809d(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: D */
    public static void m13694D(int i, List<Long> list, zzhg zzhgVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13491t(i, list, z);
        }
    }

    /* renamed from: E */
    public static void m13693E(Class<?> cls) {
        Class<?> cls2;
        if (!zzdx.class.isAssignableFrom(cls) && (cls2 = f8067a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: F */
    public static int m13692F(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzdz)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzdk.m13952B0(list.get(i2).intValue());
                i2++;
            }
        } else {
            zzdz zzdzVar = (zzdz) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzdk.m13952B0(zzdzVar.m13809d(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: G */
    public static void m13691G(int i, List<Long> list, zzhg zzhgVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13499l(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H */
    public static int m13690H(List<?> list) {
        return list.size() << 2;
    }

    /* renamed from: I */
    private static zzgm<?, ?> m13689I(boolean z) {
        try {
            Class<?> z2 = m13644z();
            if (z2 == null) {
                return null;
            }
            return (zzgm) z2.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: J */
    public static void m13688J(int i, List<Integer> list, zzhg zzhgVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13505f(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: K */
    public static int m13687K(List<?> list) {
        return list.size() << 3;
    }

    /* renamed from: L */
    public static void m13686L(int i, List<Integer> list, zzhg zzhgVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13496o(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: M */
    public static int m13685M(List<?> list) {
        return list.size();
    }

    /* renamed from: N */
    public static void m13684N(int i, List<Integer> list, zzhg zzhgVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13487x(i, list, z);
        }
    }

    /* renamed from: O */
    public static void m13683O(int i, List<Integer> list, zzhg zzhgVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13498m(i, list, z);
        }
    }

    /* renamed from: P */
    public static void m13682P(int i, List<Integer> list, zzhg zzhgVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13495p(i, list, z);
        }
    }

    /* renamed from: Q */
    public static void m13681Q(int i, List<Integer> list, zzhg zzhgVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13504g(i, list, z);
        }
    }

    /* renamed from: R */
    public static void m13680R(int i, List<Boolean> list, zzhg zzhgVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13507d(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: S */
    public static int m13679S(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m13671a(list) + (list.size() * zzdk.m13898y0(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: T */
    public static int m13678T(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m13662h(list) + (size * zzdk.m13898y0(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: U */
    public static int m13677U(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m13655o(list) + (size * zzdk.m13898y0(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: V */
    public static int m13676V(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m13649u(list) + (size * zzdk.m13898y0(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: W */
    public static int m13675W(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m13697A(list) + (size * zzdk.m13898y0(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: X */
    public static int m13674X(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m13695C(list) + (size * zzdk.m13898y0(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Y */
    public static int m13673Y(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m13692F(list) + (size * zzdk.m13898y0(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Z */
    public static int m13672Z(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzdk.m13913o0(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m13671a(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzev)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzdk.m13934Z(list.get(i2).longValue());
                i2++;
            }
        } else {
            zzev zzevVar = (zzev) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzdk.m13934Z(zzevVar.m13777d(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a0 */
    public static int m13670a0(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzdk.m13920h0(i, 0L);
    }

    /* renamed from: b */
    public static void m13669b(int i, List<String> list, zzhg zzhgVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13522D(i, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b0 */
    public static int m13668b0(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzdk.m13951C(i, true);
    }

    /* renamed from: c */
    public static void m13667c(int i, List<?> list, zzhg zzhgVar, zzfu zzfuVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13513M(i, list, zzfuVar);
        }
    }

    /* renamed from: d */
    public static void m13666d(int i, List<Double> list, zzhg zzhgVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13486y(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static <T, FT extends zzdu<FT>> void m13665e(zzdn<FT> zzdnVar, T t, T t2) {
        zzds<FT> c = zzdnVar.mo13860c(t2);
        if (!c.f7989a.isEmpty()) {
            zzdnVar.mo13859d(t).m13849h(c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static <T> void m13664f(zzfa zzfaVar, T t, T t2, long j) {
        zzgs.m13573g(t, j, zzfaVar.mo13764b(zzgs.m13588G(t, j), zzgs.m13588G(t2, j)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static <T, UT, UB> void m13663g(zzgm<UT, UB> zzgmVar, T t, T t2) {
        zzgmVar.mo13613c(t, zzgmVar.mo13612d(zzgmVar.mo13609g(t), zzgmVar.mo13609g(t2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static int m13662h(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzev)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzdk.m13927d0(list.get(i2).longValue());
                i2++;
            }
        } else {
            zzev zzevVar = (zzev) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzdk.m13927d0(zzevVar.m13777d(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: i */
    public static void m13661i(int i, List<zzct> list, zzhg zzhgVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13485z(i, list);
        }
    }

    /* renamed from: j */
    public static void m13660j(int i, List<?> list, zzhg zzhgVar, zzfu zzfuVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13511O(i, list, zzfuVar);
        }
    }

    /* renamed from: k */
    public static void m13659k(int i, List<Float> list, zzhg zzhgVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13524B(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static int m13658l(int i, Object obj, zzfu zzfuVar) {
        return obj instanceof zzem ? zzdk.m13932b(i, (zzem) obj) : zzdk.m13955A(i, (zzfh) obj, zzfuVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public static int m13657m(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int y0 = zzdk.m13898y0(i) * size;
        int i5 = y0;
        if (!(list instanceof zzeo)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof zzct ? zzdk.m13949D((zzct) obj) : zzdk.m13901w0((String) obj);
                i3++;
            }
        } else {
            zzeo zzeoVar = (zzeo) list;
            int i6 = y0;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object m = zzeoVar.mo13596m(i4);
                i6 += m instanceof zzct ? zzdk.m13949D((zzct) m) : zzdk.m13901w0((String) m);
                i4++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public static int m13656n(int i, List<?> list, zzfu zzfuVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int y0 = zzdk.m13898y0(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            y0 += obj instanceof zzem ? zzdk.m13930c((zzem) obj) : zzdk.m13928d((zzfh) obj, zzfuVar);
        }
        return y0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static int m13655o(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzev)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzdk.m13919i0(list.get(i2).longValue());
                i2++;
            }
        } else {
            zzev zzevVar = (zzev) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzdk.m13919i0(zzevVar.m13777d(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: p */
    public static void m13654p(int i, List<Long> list, zzhg zzhgVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13500k(i, list, z);
        }
    }

    /* renamed from: q */
    public static zzgm<?, ?> m13653q() {
        return f8068b;
    }

    /* renamed from: r */
    public static zzgm<?, ?> m13652r() {
        return f8069c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public static int m13651s(int i, List<zzct> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int y0 = size * zzdk.m13898y0(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            y0 += zzdk.m13949D(list.get(i2));
        }
        return y0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public static int m13650t(int i, List<zzfh> list, zzfu zzfuVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzdk.m13942M(i, list.get(i3), zzfuVar);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public static int m13649u(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzdz)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzdk.m13946E0(list.get(i2).intValue());
                i2++;
            }
        } else {
            zzdz zzdzVar = (zzdz) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzdk.m13946E0(zzdzVar.m13809d(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: v */
    public static void m13648v(int i, List<Long> list, zzhg zzhgVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhgVar.mo13488w(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public static boolean m13647w(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: x */
    public static zzgm<?, ?> m13646x() {
        return f8070d;
    }

    /* renamed from: y */
    private static Class<?> m13645y() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: z */
    private static Class<?> m13644z() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }
}
