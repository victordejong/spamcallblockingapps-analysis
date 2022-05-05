package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.g.d3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/d3.class */
public final class C7571d3 {

    /* renamed from: a */
    public static final Class<?> f17809a = m20245d();

    /* renamed from: b */
    public static final AbstractC7696t3<?, ?> f17810b = m20258a(false);

    /* renamed from: c */
    public static final AbstractC7696t3<?, ?> f17811c = m20258a(true);

    /* renamed from: d */
    public static final AbstractC7696t3<?, ?> f17812d = new C7710v3();

    /* renamed from: a */
    public static int m20272a(int i, Object obj, AbstractC7554b3 b3Var) {
        return obj instanceof C7687s1 ? AbstractC7639m0.m20065a(i, (C7687s1) obj) : AbstractC7639m0.m20050b(i, (AbstractC7627k2) obj, b3Var);
    }

    /* renamed from: a */
    public static int m20271a(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int e = AbstractC7639m0.m20032e(i) * size;
        int i5 = e;
        if (!(list instanceof AbstractC7701u1)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof AbstractC7539a0 ? AbstractC7639m0.m20064a((AbstractC7539a0) obj) : AbstractC7639m0.m20060a((String) obj);
                i3++;
            }
        } else {
            AbstractC7701u1 u1Var = (AbstractC7701u1) list;
            int i6 = e;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object a = u1Var.mo19685a(i4);
                i6 += a instanceof AbstractC7539a0 ? AbstractC7639m0.m20064a((AbstractC7539a0) a) : AbstractC7639m0.m20060a((String) a);
                i4++;
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static int m20270a(int i, List<?> list, AbstractC7554b3 b3Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e = AbstractC7639m0.m20032e(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            e += obj instanceof C7687s1 ? AbstractC7639m0.m20061a((C7687s1) obj) : AbstractC7639m0.m20062a((AbstractC7627k2) obj, b3Var);
        }
        return e;
    }

    /* renamed from: a */
    public static int m20265a(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m20259a(list) + (list.size() * AbstractC7639m0.m20032e(i));
    }

    /* renamed from: a */
    public static int m20259a(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7736z1)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC7639m0.m20033d(list.get(i2).longValue());
                i2++;
            }
        } else {
            C7736z1 z1Var = (C7736z1) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC7639m0.m20033d(z1Var.m19630g(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: a */
    public static AbstractC7696t3<?, ?> m20275a() {
        return f17810b;
    }

    /* renamed from: a */
    public static AbstractC7696t3<?, ?> m20258a(boolean z) {
        try {
            Class<?> e = m20241e();
            if (e == null) {
                return null;
            }
            return (AbstractC7696t3) e.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static <UT, UB> UB m20273a(int i, int i2, UB ub, AbstractC7696t3<UT, UB> t3Var) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = t3Var.mo19748a();
        }
        t3Var.mo19746a(ub2, i, i2);
        return ub2;
    }

    /* renamed from: a */
    public static <UT, UB> UB m20269a(int i, List<Integer> list, AbstractC7619j1<?> j1Var, UB ub, AbstractC7696t3<UT, UB> t3Var) {
        UB ub2;
        if (j1Var == null) {
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
                if (j1Var.mo20093a(intValue) == null) {
                    ub = (UB) m20273a(i, intValue, ub, t3Var);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (j1Var.mo20093a(intValue2) != null) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) m20273a(i, intValue2, ub, t3Var);
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
    public static void m20268a(int i, List<String> list, AbstractC7662o4 o4Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19905b(i, list);
        }
    }

    /* renamed from: a */
    public static void m20267a(int i, List<?> list, AbstractC7662o4 o4Var, AbstractC7554b3 b3Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19904b(i, list, b3Var);
        }
    }

    /* renamed from: a */
    public static void m20266a(int i, List<Double> list, AbstractC7662o4 o4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19885m(i, list, z);
        }
    }

    /* renamed from: a */
    public static <T> void m20264a(AbstractC7589f2 f2Var, T t, T t2, long j) {
        C7543a4.m20361a(t, j, f2Var.mo20154a(C7543a4.m20335f(t, j), C7543a4.m20335f(t2, j)));
    }

    /* renamed from: a */
    public static <T, FT extends AbstractC7735z0<FT>> void m20263a(AbstractC7686s0<FT> s0Var, T t, T t2) {
        C7714w0<FT> a = s0Var.mo19800a(t2);
        if (!a.m19713b()) {
            s0Var.mo19797b(t).m19718a(a);
        }
    }

    /* renamed from: a */
    public static <T, UT, UB> void m20262a(AbstractC7696t3<UT, UB> t3Var, T t, T t2) {
        t3Var.mo19743a(t, t3Var.mo19738c(t3Var.mo19739c(t), t3Var.mo19739c(t2)));
    }

    /* renamed from: a */
    public static void m20261a(Class<?> cls) {
        Class<?> cls2;
        if (!AbstractC7583f1.class.isAssignableFrom(cls) && (cls2 = f17809a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* renamed from: a */
    public static boolean m20274a(int i, int i2, int i3) {
        if (i2 < 40) {
            return true;
        }
        long j = i3;
        return ((((long) i2) - ((long) i)) + 1) + 9 <= ((2 * j) + 3) + ((j + 3) * 3);
    }

    /* renamed from: a */
    public static boolean m20260a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: b */
    public static int m20256b(int i, List<AbstractC7539a0> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e = size * AbstractC7639m0.m20032e(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            e += AbstractC7639m0.m20064a(list.get(i2));
        }
        return e;
    }

    /* renamed from: b */
    public static int m20255b(int i, List<AbstractC7627k2> list, AbstractC7554b3 b3Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += AbstractC7639m0.m20038c(i, list.get(i3), b3Var);
        }
        return i2;
    }

    /* renamed from: b */
    public static int m20251b(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m20250b(list) + (size * AbstractC7639m0.m20032e(i));
    }

    /* renamed from: b */
    public static int m20250b(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7736z1)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC7639m0.m20030e(list.get(i2).longValue());
                i2++;
            }
        } else {
            C7736z1 z1Var = (C7736z1) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC7639m0.m20030e(z1Var.m19630g(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: b */
    public static AbstractC7696t3<?, ?> m20257b() {
        return f17811c;
    }

    /* renamed from: b */
    public static void m20254b(int i, List<AbstractC7539a0> list, AbstractC7662o4 o4Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19913a(i, list);
        }
    }

    /* renamed from: b */
    public static void m20253b(int i, List<?> list, AbstractC7662o4 o4Var, AbstractC7554b3 b3Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19912a(i, list, b3Var);
        }
    }

    /* renamed from: b */
    public static void m20252b(int i, List<Float> list, AbstractC7662o4 o4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19884n(i, list, z);
        }
    }

    /* renamed from: c */
    public static int m20247c(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m20246c(list) + (size * AbstractC7639m0.m20032e(i));
    }

    /* renamed from: c */
    public static int m20246c(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7736z1)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC7639m0.m20026f(list.get(i2).longValue());
                i2++;
            }
        } else {
            C7736z1 z1Var = (C7736z1) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC7639m0.m20026f(z1Var.m19630g(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: c */
    public static AbstractC7696t3<?, ?> m20249c() {
        return f17812d;
    }

    /* renamed from: c */
    public static void m20248c(int i, List<Long> list, AbstractC7662o4 o4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19903b(i, list, z);
        }
    }

    /* renamed from: d */
    public static int m20243d(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m20242d(list) + (size * AbstractC7639m0.m20032e(i));
    }

    /* renamed from: d */
    public static int m20242d(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7595g1)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC7639m0.m20012k(list.get(i2).intValue());
                i2++;
            }
        } else {
            C7595g1 g1Var = (C7595g1) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC7639m0.m20012k(g1Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: d */
    public static Class<?> m20245d() {
        try {
            return Class.forName("h.i.g.v");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    public static void m20244d(int i, List<Long> list, AbstractC7662o4 o4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19886l(i, list, z);
        }
    }

    /* renamed from: e */
    public static int m20239e(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m20238e(list) + (size * AbstractC7639m0.m20032e(i));
    }

    /* renamed from: e */
    public static int m20238e(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7595g1)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC7639m0.m20029f(list.get(i2).intValue());
                i2++;
            }
        } else {
            C7595g1 g1Var = (C7595g1) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC7639m0.m20029f(g1Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: e */
    public static Class<?> m20241e() {
        try {
            return Class.forName("h.i.g.g1");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: e */
    public static void m20240e(int i, List<Long> list, AbstractC7662o4 o4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19897d(i, list, z);
        }
    }

    /* renamed from: f */
    public static int m20236f(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m20235f(list) + (size * AbstractC7639m0.m20032e(i));
    }

    /* renamed from: f */
    public static int m20235f(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7595g1)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC7639m0.m20025g(list.get(i2).intValue());
                i2++;
            }
        } else {
            C7595g1 g1Var = (C7595g1) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC7639m0.m20025g(g1Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: f */
    public static void m20237f(int i, List<Long> list, AbstractC7662o4 o4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19887k(i, list, z);
        }
    }

    /* renamed from: g */
    public static int m20233g(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m20232g(list) + (size * AbstractC7639m0.m20032e(i));
    }

    /* renamed from: g */
    public static int m20232g(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C7595g1)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC7639m0.m20021h(list.get(i2).intValue());
                i2++;
            }
        } else {
            C7595g1 g1Var = (C7595g1) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC7639m0.m20021h(g1Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: g */
    public static void m20234g(int i, List<Long> list, AbstractC7662o4 o4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19890h(i, list, z);
        }
    }

    /* renamed from: h */
    public static int m20230h(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * AbstractC7639m0.m20016i(i, 0);
    }

    /* renamed from: h */
    public static int m20229h(List<?> list) {
        return list.size() << 2;
    }

    /* renamed from: h */
    public static void m20231h(int i, List<Integer> list, AbstractC7662o4 o4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19911a(i, list, z);
        }
    }

    /* renamed from: i */
    public static int m20227i(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * AbstractC7639m0.m20023g(i, 0L);
    }

    /* renamed from: i */
    public static int m20226i(List<?> list) {
        return list.size() << 3;
    }

    /* renamed from: i */
    public static void m20228i(int i, List<Integer> list, AbstractC7662o4 o4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19889i(i, list, z);
        }
    }

    /* renamed from: j */
    public static int m20224j(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * AbstractC7639m0.m20047b(i, true);
    }

    /* renamed from: j */
    public static int m20223j(List<?> list) {
        return list.size();
    }

    /* renamed from: j */
    public static void m20225j(int i, List<Integer> list, AbstractC7662o4 o4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19894e(i, list, z);
        }
    }

    /* renamed from: k */
    public static void m20222k(int i, List<Integer> list, AbstractC7662o4 o4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19900c(i, list, z);
        }
    }

    /* renamed from: l */
    public static void m20221l(int i, List<Integer> list, AbstractC7662o4 o4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19888j(i, list, z);
        }
    }

    /* renamed from: m */
    public static void m20220m(int i, List<Integer> list, AbstractC7662o4 o4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19891g(i, list, z);
        }
    }

    /* renamed from: n */
    public static void m20219n(int i, List<Boolean> list, AbstractC7662o4 o4Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            o4Var.mo19892f(i, list, z);
        }
    }
}
