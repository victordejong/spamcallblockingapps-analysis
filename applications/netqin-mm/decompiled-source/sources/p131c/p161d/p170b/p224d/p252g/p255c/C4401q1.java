package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzbb;
import com.google.android.gms.internal.clearcut.zzbn;
import com.google.android.gms.internal.clearcut.zzca;
import com.google.android.gms.internal.clearcut.zzcg;
import com.google.android.gms.internal.clearcut.zzck;
import com.google.android.gms.internal.clearcut.zzcv;
import com.google.android.gms.internal.clearcut.zzcx;
import com.google.android.gms.internal.clearcut.zzdo;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.c.q1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/q1.class */
public final class C4401q1 {

    /* renamed from: a */
    public static final Class<?> f16615a = m25697d();

    /* renamed from: b */
    public static final AbstractC4343f2<?, ?> f16616b = m25710a(false);

    /* renamed from: c */
    public static final AbstractC4343f2<?, ?> f16617c = m25710a(true);

    /* renamed from: d */
    public static final AbstractC4343f2<?, ?> f16618d = new C4348g2();

    /* renamed from: a */
    public static int m25724a(int i, Object obj, AbstractC4391o1 o1Var) {
        return obj instanceof zzcv ? zzbn.m10826a(i, (zzcv) obj) : zzbn.m10813b(i, (zzdo) obj, o1Var);
    }

    /* renamed from: a */
    public static int m25723a(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int e = zzbn.m10793e(i) * size;
        int i5 = e;
        if (!(list instanceof zzcx)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof zzbb ? zzbn.m10809b((zzbb) obj) : zzbn.m10807b((String) obj);
                i3++;
            }
        } else {
            zzcx zzcxVar = (zzcx) list;
            int i6 = e;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object d = zzcxVar.mo10660d(i4);
                i6 += d instanceof zzbb ? zzbn.m10809b((zzbb) d) : zzbn.m10807b((String) d);
                i4++;
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static int m25722a(int i, List<?> list, AbstractC4391o1 o1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e = zzbn.m10793e(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            e += obj instanceof zzcv ? zzbn.m10825a((zzcv) obj) : zzbn.m10824a((zzdo) obj, o1Var);
        }
        return e;
    }

    /* renamed from: a */
    public static int m25717a(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m25711a(list) + (list.size() * zzbn.m10793e(i));
    }

    /* renamed from: a */
    public static int m25711a(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C4410s0)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzbn.m10794d(list.get(i2).longValue());
                i2++;
            }
        } else {
            C4410s0 s0Var = (C4410s0) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzbn.m10794d(s0Var.m25651a(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: a */
    public static AbstractC4343f2<?, ?> m25727a() {
        return f16616b;
    }

    /* renamed from: a */
    public static AbstractC4343f2<?, ?> m25710a(boolean z) {
        try {
            Class<?> e = m25693e();
            if (e == null) {
                return null;
            }
            return (AbstractC4343f2) e.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static <UT, UB> UB m25725a(int i, int i2, UB ub, AbstractC4343f2<UT, UB> f2Var) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = f2Var.mo25917a();
        }
        f2Var.mo25915a((AbstractC4343f2<UT, UB>) ub2, i, i2);
        return ub2;
    }

    /* renamed from: a */
    public static <UT, UB> UB m25718a(int i, List<Integer> list, zzck<?> zzckVar, UB ub, AbstractC4343f2<UT, UB> f2Var) {
        UB ub2;
        if (zzckVar == null) {
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
                if (zzckVar.zzb(intValue) == null) {
                    ub = (UB) m25725a(i, intValue, ub, f2Var);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (zzckVar.zzb(intValue2) != null) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) m25725a(i, intValue2, ub, f2Var);
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

    /* renamed from: a */
    public static void m25721a(int i, List<String> list, AbstractC4407r2 r2Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25607b(i, list);
        }
    }

    /* renamed from: a */
    public static void m25720a(int i, List<?> list, AbstractC4407r2 r2Var, AbstractC4391o1 o1Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25606b(i, list, o1Var);
        }
    }

    /* renamed from: a */
    public static void m25719a(int i, List<Double> list, AbstractC4407r2 r2Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25587m(i, list, z);
        }
    }

    /* renamed from: a */
    public static <T, FT extends zzca<FT>> void m25716a(AbstractC4321b0<FT> b0Var, T t, T t2) {
        C4341f0<FT> a = b0Var.mo25993a(t2);
        if (!a.m25931b()) {
            b0Var.mo25990b(t).m25939a(a);
        }
    }

    /* renamed from: a */
    public static <T, UT, UB> void m25715a(AbstractC4343f2<UT, UB> f2Var, T t, T t2) {
        f2Var.mo25911a(t, f2Var.mo25906c(f2Var.mo25907c(t), f2Var.mo25907c(t2)));
    }

    /* renamed from: a */
    public static <T> void m25714a(AbstractC4432x0 x0Var, T t, T t2, long j) {
        C4368k2.m25874a(t, j, x0Var.mo25582b(C4368k2.m25848f(t, j), C4368k2.m25848f(t2, j)));
    }

    /* renamed from: a */
    public static void m25713a(Class<?> cls) {
        Class<?> cls2;
        if (!zzcg.class.isAssignableFrom(cls) && (cls2 = f16615a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* renamed from: a */
    public static boolean m25726a(int i, int i2, int i3) {
        if (i2 < 40) {
            return true;
        }
        long j = i3;
        return ((((long) i2) - ((long) i)) + 1) + 9 <= ((2 * j) + 3) + ((j + 3) * 3);
    }

    /* renamed from: a */
    public static boolean m25712a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: b */
    public static int m25708b(int i, List<zzbb> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e = size * zzbn.m10793e(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            e += zzbn.m10809b(list.get(i2));
        }
        return e;
    }

    /* renamed from: b */
    public static int m25707b(int i, List<zzdo> list, AbstractC4391o1 o1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzbn.m10800c(i, list.get(i3), o1Var);
        }
        return i2;
    }

    /* renamed from: b */
    public static int m25703b(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25702b(list) + (size * zzbn.m10793e(i));
    }

    /* renamed from: b */
    public static int m25702b(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C4410s0)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzbn.m10791e(list.get(i2).longValue());
                i2++;
            }
        } else {
            C4410s0 s0Var = (C4410s0) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzbn.m10791e(s0Var.m25651a(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: b */
    public static AbstractC4343f2<?, ?> m25709b() {
        return f16617c;
    }

    /* renamed from: b */
    public static void m25706b(int i, List<zzbb> list, AbstractC4407r2 r2Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25616a(i, list);
        }
    }

    /* renamed from: b */
    public static void m25705b(int i, List<?> list, AbstractC4407r2 r2Var, AbstractC4391o1 o1Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25615a(i, list, o1Var);
        }
    }

    /* renamed from: b */
    public static void m25704b(int i, List<Float> list, AbstractC4407r2 r2Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25586n(i, list, z);
        }
    }

    /* renamed from: c */
    public static int m25699c(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25698c(list) + (size * zzbn.m10793e(i));
    }

    /* renamed from: c */
    public static int m25698c(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C4410s0)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzbn.m10787f(list.get(i2).longValue());
                i2++;
            }
        } else {
            C4410s0 s0Var = (C4410s0) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzbn.m10787f(s0Var.m25651a(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: c */
    public static AbstractC4343f2<?, ?> m25701c() {
        return f16618d;
    }

    /* renamed from: c */
    public static void m25700c(int i, List<Long> list, AbstractC4407r2 r2Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25599d(i, list, z);
        }
    }

    /* renamed from: d */
    public static int m25695d(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25694d(list) + (size * zzbn.m10793e(i));
    }

    /* renamed from: d */
    public static int m25694d(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C4366k0)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzbn.m10773k(list.get(i2).intValue());
                i2++;
            }
        } else {
            C4366k0 k0Var = (C4366k0) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzbn.m10773k(k0Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: d */
    public static Class<?> m25697d() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    public static void m25696d(int i, List<Long> list, AbstractC4407r2 r2Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25589k(i, list, z);
        }
    }

    /* renamed from: e */
    public static int m25691e(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25690e(list) + (size * zzbn.m10793e(i));
    }

    /* renamed from: e */
    public static int m25690e(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C4366k0)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzbn.m10790f(list.get(i2).intValue());
                i2++;
            }
        } else {
            C4366k0 k0Var = (C4366k0) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzbn.m10790f(k0Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: e */
    public static Class<?> m25693e() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: e */
    public static void m25692e(int i, List<Long> list, AbstractC4407r2 r2Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25590j(i, list, z);
        }
    }

    /* renamed from: f */
    public static int m25688f(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25687f(list) + (size * zzbn.m10793e(i));
    }

    /* renamed from: f */
    public static int m25687f(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C4366k0)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzbn.m10786g(list.get(i2).intValue());
                i2++;
            }
        } else {
            C4366k0 k0Var = (C4366k0) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzbn.m10786g(k0Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: f */
    public static void m25689f(int i, List<Long> list, AbstractC4407r2 r2Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25591i(i, list, z);
        }
    }

    /* renamed from: g */
    public static int m25685g(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25684g(list) + (size * zzbn.m10793e(i));
    }

    /* renamed from: g */
    public static int m25684g(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C4366k0)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzbn.m10782h(list.get(i2).intValue());
                i2++;
            }
        } else {
            C4366k0 k0Var = (C4366k0) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzbn.m10782h(k0Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: g */
    public static void m25686g(int i, List<Long> list, AbstractC4407r2 r2Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25596e(i, list, z);
        }
    }

    /* renamed from: h */
    public static int m25682h(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzbn.m10777i(i, 0);
    }

    /* renamed from: h */
    public static int m25681h(List<?> list) {
        return list.size() << 2;
    }

    /* renamed from: h */
    public static void m25683h(int i, List<Integer> list, AbstractC4407r2 r2Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25605b(i, list, z);
        }
    }

    /* renamed from: i */
    public static int m25679i(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzbn.m10784g(i, 0L);
    }

    /* renamed from: i */
    public static int m25678i(List<?> list) {
        return list.size() << 3;
    }

    /* renamed from: i */
    public static void m25680i(int i, List<Integer> list, AbstractC4407r2 r2Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25593g(i, list, z);
        }
    }

    /* renamed from: j */
    public static int m25676j(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzbn.m10811b(i, true);
    }

    /* renamed from: j */
    public static int m25675j(List<?> list) {
        return list.size();
    }

    /* renamed from: j */
    public static void m25677j(int i, List<Integer> list, AbstractC4407r2 r2Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25588l(i, list, z);
        }
    }

    /* renamed from: k */
    public static void m25674k(int i, List<Integer> list, AbstractC4407r2 r2Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25594f(i, list, z);
        }
    }

    /* renamed from: l */
    public static void m25673l(int i, List<Integer> list, AbstractC4407r2 r2Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25592h(i, list, z);
        }
    }

    /* renamed from: m */
    public static void m25672m(int i, List<Integer> list, AbstractC4407r2 r2Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25602c(i, list, z);
        }
    }

    /* renamed from: n */
    public static void m25671n(int i, List<Boolean> list, AbstractC4407r2 r2Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r2Var.mo25614a(i, list, z);
        }
    }
}
