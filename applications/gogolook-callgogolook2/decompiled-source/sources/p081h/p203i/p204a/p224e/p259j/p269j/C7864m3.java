package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.j.m3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/m3.class */
public final class C7864m3 {

    /* renamed from: a */
    public static final Class<?> f18414a = m19214d();

    /* renamed from: b */
    public static final AbstractC7787d4<?, ?> f18415b = m19227a(false);

    /* renamed from: c */
    public static final AbstractC7787d4<?, ?> f18416c = m19227a(true);

    /* renamed from: d */
    public static final AbstractC7787d4<?, ?> f18417d = new C7804f4();

    /* renamed from: a */
    public static int m19241a(int i, Object obj, AbstractC7849k3 k3Var) {
        return obj instanceof C7769b2 ? AbstractC7918t0.m18987a(i, (C7769b2) obj) : AbstractC7918t0.m18971b(i, (AbstractC7925t2) obj, k3Var);
    }

    /* renamed from: a */
    public static int m19240a(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int m = AbstractC7918t0.m18931m(i) * size;
        int i5 = m;
        if (!(list instanceof AbstractC7785d2)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof AbstractC7791e0 ? AbstractC7918t0.m18985a((AbstractC7791e0) obj) : AbstractC7918t0.m18982a((String) obj);
                i3++;
            }
        } else {
            AbstractC7785d2 d2Var = (AbstractC7785d2) list;
            int i6 = m;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object a = d2Var.mo19378a(i4);
                i6 += a instanceof AbstractC7791e0 ? AbstractC7918t0.m18985a((AbstractC7791e0) a) : AbstractC7918t0.m18982a((String) a);
                i4++;
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static int m19239a(int i, List<?> list, AbstractC7849k3 k3Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m = AbstractC7918t0.m18931m(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            m += obj instanceof C7769b2 ? AbstractC7918t0.m18986a((C7769b2) obj) : AbstractC7918t0.m18983a((AbstractC7925t2) obj, k3Var);
        }
        return m;
    }

    /* renamed from: a */
    public static int m19234a(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m19219b(list) + (list.size() * AbstractC7918t0.m18931m(i));
    }

    /* renamed from: a */
    public static int m19228a(List<?> list) {
        return list.size();
    }

    /* renamed from: a */
    public static AbstractC7787d4<?, ?> m19243a() {
        return f18415b;
    }

    /* renamed from: a */
    public static AbstractC7787d4<?, ?> m19227a(boolean z) {
        try {
            Class<?> e = m19210e();
            if (e == null) {
                return null;
            }
            return (AbstractC7787d4) e.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static <UT, UB> UB m19242a(int i, int i2, UB ub, AbstractC7787d4<UT, UB> d4Var) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = d4Var.mo19425a();
        }
        d4Var.mo19421a((AbstractC7787d4<UT, UB>) ub2, i, i2);
        return ub2;
    }

    /* renamed from: a */
    public static <UT, UB> UB m19238a(int i, List<Integer> list, AbstractC7905r1 r1Var, UB ub, AbstractC7787d4<UT, UB> d4Var) {
        UB ub2;
        if (r1Var == null) {
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
                if (!r1Var.mo18993a(intValue)) {
                    ub = (UB) m19242a(i, intValue, ub, d4Var);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (r1Var.mo18993a(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) m19242a(i, intValue2, ub, d4Var);
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
    public static void m19237a(int i, List<String> list, AbstractC7962y4 y4Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18771b(i, list);
        }
    }

    /* renamed from: a */
    public static void m19236a(int i, List<?> list, AbstractC7962y4 y4Var, AbstractC7849k3 k3Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18770b(i, list, k3Var);
        }
    }

    /* renamed from: a */
    public static void m19235a(int i, List<Double> list, AbstractC7962y4 y4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18751m(i, list, z);
        }
    }

    /* renamed from: a */
    public static <T, FT extends AbstractC7809g1<FT>> void m19233a(AbstractC7768b1<FT> b1Var, T t, T t2) {
        C7792e1<FT> a = b1Var.mo19498a(t2);
        if (!a.m19460b()) {
            b1Var.mo19495b(t).m19467a(a);
        }
    }

    /* renamed from: a */
    public static <T, UT, UB> void m19232a(AbstractC7787d4<UT, UB> d4Var, T t, T t2) {
        d4Var.mo19416a(t, d4Var.mo19410c(d4Var.mo19409d(t), d4Var.mo19409d(t2)));
    }

    /* renamed from: a */
    public static <T> void m19231a(AbstractC7885o2 o2Var, T t, T t2, long j) {
        C7838j4.m19325a(t, j, o2Var.mo19096a(C7838j4.m19301f(t, j), C7838j4.m19301f(t2, j)));
    }

    /* renamed from: a */
    public static void m19230a(Class<?> cls) {
        Class<?> cls2;
        if (!AbstractC7869n1.class.isAssignableFrom(cls) && (cls2 = f18414a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* renamed from: a */
    public static boolean m19229a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: b */
    public static int m19225b(int i, List<AbstractC7791e0> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m = size * AbstractC7918t0.m18931m(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            m += AbstractC7918t0.m18985a(list.get(i2));
        }
        return m;
    }

    /* renamed from: b */
    public static int m19224b(int i, List<AbstractC7925t2> list, AbstractC7849k3 k3Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += AbstractC7918t0.m18960c(i, list.get(i3), k3Var);
        }
        return i2;
    }

    /* renamed from: b */
    public static int m19220b(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m19215c(list) + (size * AbstractC7918t0.m18931m(i));
    }

    /* renamed from: b */
    public static int m19219b(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7827i2)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC7918t0.m18955d(list.get(i2).longValue());
                i2++;
            }
        } else {
            C7827i2 i2Var = (C7827i2) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC7918t0.m18955d(i2Var.m19347g(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: b */
    public static AbstractC7787d4<?, ?> m19226b() {
        return f18416c;
    }

    /* renamed from: b */
    public static void m19223b(int i, List<AbstractC7791e0> list, AbstractC7962y4 y4Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18779a(i, list);
        }
    }

    /* renamed from: b */
    public static void m19222b(int i, List<?> list, AbstractC7962y4 y4Var, AbstractC7849k3 k3Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18778a(i, list, k3Var);
        }
    }

    /* renamed from: b */
    public static void m19221b(int i, List<Float> list, AbstractC7962y4 y4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18750n(i, list, z);
        }
    }

    /* renamed from: c */
    public static int m19216c(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m19211d(list) + (size * AbstractC7918t0.m18931m(i));
    }

    /* renamed from: c */
    public static int m19215c(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7827i2)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC7918t0.m18952e(list.get(i2).longValue());
                i2++;
            }
        } else {
            C7827i2 i2Var = (C7827i2) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC7918t0.m18952e(i2Var.m19347g(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: c */
    public static AbstractC7787d4<?, ?> m19218c() {
        return f18417d;
    }

    /* renamed from: c */
    public static void m19217c(int i, List<Long> list, AbstractC7962y4 y4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18769b(i, list, z);
        }
    }

    /* renamed from: d */
    public static int m19212d(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m19207e(list) + (size * AbstractC7918t0.m18931m(i));
    }

    /* renamed from: d */
    public static int m19211d(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7827i2)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC7918t0.m18948f(list.get(i2).longValue());
                i2++;
            }
        } else {
            C7827i2 i2Var = (C7827i2) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC7918t0.m18948f(i2Var.m19347g(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: d */
    public static Class<?> m19214d() {
        try {
            return Class.forName("h.i.g.v");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    public static void m19213d(int i, List<Long> list, AbstractC7962y4 y4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18752l(i, list, z);
        }
    }

    /* renamed from: e */
    public static int m19208e(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m19204f(list) + (size * AbstractC7918t0.m18931m(i));
    }

    /* renamed from: e */
    public static int m19207e(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7884o1)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC7918t0.m18936j(list.get(i2).intValue());
                i2++;
            }
        } else {
            C7884o1 o1Var = (C7884o1) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC7918t0.m18936j(o1Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: e */
    public static Class<?> m19210e() {
        try {
            return Class.forName("h.i.g.g1");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: e */
    public static void m19209e(int i, List<Long> list, AbstractC7962y4 y4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18763d(i, list, z);
        }
    }

    /* renamed from: f */
    public static int m19205f(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m19201g(list) + (size * AbstractC7918t0.m18931m(i));
    }

    /* renamed from: f */
    public static int m19204f(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7884o1)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC7918t0.m18954e(list.get(i2).intValue());
                i2++;
            }
        } else {
            C7884o1 o1Var = (C7884o1) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC7918t0.m18954e(o1Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: f */
    public static void m19206f(int i, List<Long> list, AbstractC7962y4 y4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18753k(i, list, z);
        }
    }

    /* renamed from: g */
    public static int m19202g(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m19198h(list) + (size * AbstractC7918t0.m18931m(i));
    }

    /* renamed from: g */
    public static int m19201g(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7884o1)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC7918t0.m18951f(list.get(i2).intValue());
                i2++;
            }
        } else {
            C7884o1 o1Var = (C7884o1) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC7918t0.m18951f(o1Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: g */
    public static void m19203g(int i, List<Long> list, AbstractC7962y4 y4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18756h(i, list, z);
        }
    }

    /* renamed from: h */
    public static int m19199h(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * AbstractC7918t0.m18938i(i, 0);
    }

    /* renamed from: h */
    public static int m19198h(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7884o1)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC7918t0.m18947g(list.get(i2).intValue());
                i2++;
            }
        } else {
            C7884o1 o1Var = (C7884o1) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC7918t0.m18947g(o1Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: h */
    public static void m19200h(int i, List<Integer> list, AbstractC7962y4 y4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18777a(i, list, z);
        }
    }

    /* renamed from: i */
    public static int m19196i(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * AbstractC7918t0.m18945g(i, 0L);
    }

    /* renamed from: i */
    public static int m19195i(List<?> list) {
        return list.size() << 2;
    }

    /* renamed from: i */
    public static void m19197i(int i, List<Integer> list, AbstractC7962y4 y4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18755i(i, list, z);
        }
    }

    /* renamed from: j */
    public static int m19193j(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * AbstractC7918t0.m18969b(i, true);
    }

    /* renamed from: j */
    public static int m19192j(List<?> list) {
        return list.size() << 3;
    }

    /* renamed from: j */
    public static void m19194j(int i, List<Integer> list, AbstractC7962y4 y4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18760e(i, list, z);
        }
    }

    /* renamed from: k */
    public static void m19191k(int i, List<Integer> list, AbstractC7962y4 y4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18766c(i, list, z);
        }
    }

    /* renamed from: l */
    public static void m19190l(int i, List<Integer> list, AbstractC7962y4 y4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18754j(i, list, z);
        }
    }

    /* renamed from: m */
    public static void m19189m(int i, List<Integer> list, AbstractC7962y4 y4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18757g(i, list, z);
        }
    }

    /* renamed from: n */
    public static void m19188n(int i, List<Boolean> list, AbstractC7962y4 y4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            y4Var.mo18758f(i, list, z);
        }
    }
}
