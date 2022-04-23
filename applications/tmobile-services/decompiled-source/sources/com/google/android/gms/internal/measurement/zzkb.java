package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkb.class */
public final class zzkb {

    /* renamed from: a */
    private static final Class<?> f8595a = m12209F();

    /* renamed from: b */
    private static final zzkr<?, ?> f8596b = m12178g(false);

    /* renamed from: c */
    private static final zzkr<?, ?> f8597c = m12178g(true);

    /* renamed from: d */
    private static final zzkr<?, ?> f8598d = new zzkt();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public static int m12214A(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zziv)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzhg.m12519o0(list.get(i2).longValue());
                i2++;
            }
        } else {
            zziv zzivVar = (zziv) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzhg.m12519o0(zzivVar.mo12365b(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: B */
    public static zzkr<?, ?> m12213B() {
        return f8598d;
    }

    /* renamed from: C */
    public static void m12212C(int i, List<Long> list, zzlo zzloVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo11989k(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: D */
    public static int m12211D(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m12210E(list) + (size * zzhg.m12528h0(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E */
    public static int m12210E(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzia)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzhg.m12559C0(list.get(i2).intValue());
                i2++;
            }
        } else {
            zzia zziaVar = (zzia) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzhg.m12559C0(zziaVar.m12402d(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: F */
    private static Class<?> m12209F() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: G */
    public static void m12208G(int i, List<Long> list, zzlo zzloVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo11977w(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H */
    public static int m12207H(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m12206I(list) + (size * zzhg.m12528h0(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I */
    public static int m12206I(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzia)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzhg.m12522l0(list.get(i2).intValue());
                i2++;
            }
        } else {
            zzia zziaVar = (zzia) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzhg.m12522l0(zziaVar.m12402d(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: J */
    private static Class<?> m12205J() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: K */
    public static void m12204K(int i, List<Long> list, zzlo zzloVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo11978v(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: L */
    public static int m12203L(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m12202M(list) + (size * zzhg.m12528h0(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: M */
    public static int m12202M(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzia)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzhg.m12518p0(list.get(i2).intValue());
                i2++;
            }
        } else {
            zzia zziaVar = (zzia) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzhg.m12518p0(zziaVar.m12402d(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: N */
    public static void m12201N(int i, List<Long> list, zzlo zzloVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo11980t(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: O */
    public static int m12200O(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m12199P(list) + (size * zzhg.m12528h0(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: P */
    public static int m12199P(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzia)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzhg.m12514t0(list.get(i2).intValue());
                i2++;
            }
        } else {
            zzia zziaVar = (zzia) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzhg.m12514t0(zziaVar.m12402d(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: Q */
    public static void m12198Q(int i, List<Long> list, zzlo zzloVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo11988l(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: R */
    public static int m12197R(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzhg.m12507y0(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: S */
    public static int m12196S(List<?> list) {
        return list.size() << 2;
    }

    /* renamed from: T */
    public static void m12195T(int i, List<Integer> list, zzlo zzloVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo11994f(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: U */
    public static int m12194U(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzhg.m12516r0(i, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: V */
    public static int m12193V(List<?> list) {
        return list.size() << 3;
    }

    /* renamed from: W */
    public static void m12192W(int i, List<Integer> list, zzlo zzloVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo11985o(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: X */
    public static int m12191X(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzhg.m12551H(i, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Y */
    public static int m12190Y(List<?> list) {
        return list.size();
    }

    /* renamed from: Z */
    public static void m12189Z(int i, List<Integer> list, zzlo zzloVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo11976x(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m12188a(int i, Object obj, zzjz zzjzVar) {
        return obj instanceof zziq ? zzhg.m12537c(i, (zziq) obj) : zzhg.m12554F(i, (zzjh) obj, zzjzVar);
    }

    /* renamed from: a0 */
    public static void m12187a0(int i, List<Integer> list, zzlo zzloVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo11987m(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m12186b(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int h0 = zzhg.m12528h0(i) * size;
        int i5 = h0;
        if (!(list instanceof zzis)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof zzgr ? zzhg.m12550I((zzgr) obj) : zzhg.m12548K((String) obj);
                i3++;
            }
        } else {
            zzis zzisVar = (zzis) list;
            int i6 = h0;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object b = zzisVar.mo12101b(i4);
                i6 += b instanceof zzgr ? zzhg.m12550I((zzgr) b) : zzhg.m12548K((String) b);
                i4++;
            }
        }
        return i2;
    }

    /* renamed from: b0 */
    public static void m12185b0(int i, List<Integer> list, zzlo zzloVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo11984p(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m12184c(int i, List<?> list, zzjz zzjzVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int h0 = zzhg.m12528h0(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            h0 += obj instanceof zziq ? zzhg.m12535d((zziq) obj) : zzhg.m12533e((zzjh) obj, zzjzVar);
        }
        return h0;
    }

    /* renamed from: c0 */
    public static void m12183c0(int i, List<Integer> list, zzlo zzloVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo11993g(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static int m12182d(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m12180e(list) + (list.size() * zzhg.m12528h0(i));
    }

    /* renamed from: d0 */
    public static void m12181d0(int i, List<Boolean> list, zzlo zzloVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo11996d(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static int m12180e(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zziv)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzhg.m12532e0(list.get(i2).longValue());
                i2++;
            }
        } else {
            zziv zzivVar = (zziv) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzhg.m12532e0(zzivVar.mo12365b(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: f */
    public static zzkr<?, ?> m12179f() {
        return f8596b;
    }

    /* renamed from: g */
    private static zzkr<?, ?> m12178g(boolean z) {
        try {
            Class<?> J = m12205J();
            if (J == null) {
                return null;
            }
            return (zzkr) J.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static <UT, UB> UB m12177h(int i, int i2, UB ub, zzkr<UT, UB> zzkrVar) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = zzkrVar.mo12132a();
        }
        zzkrVar.mo12129d(ub2, i, i2);
        return ub2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static <UT, UB> UB m12176i(int i, List<Integer> list, zzid zzidVar, UB ub, zzkr<UT, UB> zzkrVar) {
        UB ub2;
        if (zzidVar == null) {
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
                if (!zzidVar.mo12387a(intValue)) {
                    ub = (UB) m12177h(i, intValue, ub, zzkrVar);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (zzidVar.mo12387a(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) m12177h(i, intValue2, ub, zzkrVar);
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

    /* renamed from: j */
    public static void m12175j(int i, List<String> list, zzlo zzloVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo12010D(i, list);
        }
    }

    /* renamed from: k */
    public static void m12174k(int i, List<?> list, zzlo zzloVar, zzjz zzjzVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo12007G(i, list, zzjzVar);
        }
    }

    /* renamed from: l */
    public static void m12173l(int i, List<Double> list, zzlo zzloVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo11975y(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public static <T, FT extends zzhr<FT>> void m12172m(zzho<FT> zzhoVar, T t, T t2) {
        zzhp<FT> b = zzhoVar.mo12471b(t2);
        if (!b.f8504a.isEmpty()) {
            zzhoVar.mo12464i(t).m12456g(b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public static <T> void m12171n(zzje zzjeVar, T t, T t2, long j) {
        zzkx.m12075j(t, j, zzjeVar.mo12340f(zzkx.m12094F(t, j), zzkx.m12094F(t2, j)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static <T, UT, UB> void m12170o(zzkr<UT, UB> zzkrVar, T t, T t2) {
        zzkrVar.mo12125h(t, zzkrVar.mo12118p(zzkrVar.mo12123k(t), zzkrVar.mo12123k(t2)));
    }

    /* renamed from: p */
    public static void m12169p(Class<?> cls) {
        Class<?> cls2;
        if (!zzhz.class.isAssignableFrom(cls) && (cls2 = f8595a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static boolean m12168q(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public static int m12167r(int i, List<zzgr> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int h0 = size * zzhg.m12528h0(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            h0 += zzhg.m12550I(list.get(i2));
        }
        return h0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public static int m12166s(int i, List<zzjh> list, zzjz zzjzVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzhg.m12541V(i, list.get(i3), zzjzVar);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public static int m12165t(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m12164u(list) + (size * zzhg.m12528h0(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public static int m12164u(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zziv)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzhg.m12525j0(list.get(i2).longValue());
                i2++;
            }
        } else {
            zziv zzivVar = (zziv) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzhg.m12525j0(zzivVar.mo12365b(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: v */
    public static zzkr<?, ?> m12163v() {
        return f8597c;
    }

    /* renamed from: w */
    public static void m12162w(int i, List<zzgr> list, zzlo zzloVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo11974z(i, list);
        }
    }

    /* renamed from: x */
    public static void m12161x(int i, List<?> list, zzlo zzloVar, zzjz zzjzVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo12003K(i, list, zzjzVar);
        }
    }

    /* renamed from: y */
    public static void m12160y(int i, List<Float> list, zzlo zzloVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzloVar.mo12012B(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z */
    public static int m12159z(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m12214A(list) + (size * zzhg.m12528h0(i));
    }
}
