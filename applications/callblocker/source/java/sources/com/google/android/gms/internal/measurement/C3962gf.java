package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.gf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/gf.class */
public final class C3962gf {

    /* renamed from: a */
    private static final Class<?> f18203a = m5391d();

    /* renamed from: b */
    private static final AbstractC3978gv<?, ?> f18204b = m5404a(false);

    /* renamed from: c */
    private static final AbstractC3978gv<?, ?> f18205c = m5404a(true);

    /* renamed from: d */
    private static final AbstractC3978gv<?, ?> f18206d = new C3979gw();

    /* renamed from: a */
    public static int m5418a(int i, Object obj, AbstractC3960gd abstractC3960gd) {
        return obj instanceof C3920er ? zzes.m4935a(i, (C3920er) obj) : zzes.m4921b(i, (AbstractC3943fn) obj, abstractC3960gd);
    }

    /* renamed from: a */
    public static int m5417a(int i, List<?> list) {
        int m4903e;
        int size = list.size();
        if (size == 0) {
            m4903e = 0;
        } else {
            m4903e = zzes.m4903e(i) * size;
            if (list instanceof AbstractC3923eu) {
                AbstractC3923eu abstractC3923eu = (AbstractC3923eu) list;
                for (int i2 = 0; i2 < size; i2++) {
                    Object mo5302b = abstractC3923eu.mo5302b(i2);
                    m4903e = (mo5302b instanceof AbstractC3859ct ? zzes.m4917b((AbstractC3859ct) mo5302b) : zzes.m4915b((String) mo5302b)) + m4903e;
                }
            } else {
                for (int i3 = 0; i3 < size; i3++) {
                    Object obj = list.get(i3);
                    m4903e = (obj instanceof AbstractC3859ct ? zzes.m4917b((AbstractC3859ct) obj) : zzes.m4915b((String) obj)) + m4903e;
                }
            }
        }
        return m4903e;
    }

    /* renamed from: a */
    public static int m5415a(int i, List<?> list, AbstractC3960gd abstractC3960gd) {
        int m4903e;
        int size = list.size();
        if (size == 0) {
            m4903e = 0;
        } else {
            m4903e = zzes.m4903e(i) * size;
            for (int i2 = 0; i2 < size; i2++) {
                Object obj = list.get(i2);
                m4903e = (obj instanceof C3920er ? zzes.m4934a((C3920er) obj) : zzes.m4933a((AbstractC3943fn) obj, abstractC3960gd)) + m4903e;
            }
        }
        return m4903e;
    }

    /* renamed from: a */
    public static int m5411a(int i, List<Long> list, boolean z) {
        return list.size() == 0 ? 0 : m5405a(list) + (list.size() * zzes.m4903e(i));
    }

    /* renamed from: a */
    public static int m5405a(List<Long> list) {
        int i;
        int size = list.size();
        if (size == 0) {
            i = 0;
        } else if (list instanceof C3931fb) {
            C3931fb c3931fb = (C3931fb) list;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                i3 += zzes.m4904d(c3931fb.mo5575b(i2));
                i2++;
            }
        } else {
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                i4 += zzes.m4904d(list.get(i5).longValue());
            }
            i = i4;
        }
        return i;
    }

    /* renamed from: a */
    public static AbstractC3978gv<?, ?> m5420a() {
        return f18204b;
    }

    /* renamed from: a */
    private static AbstractC3978gv<?, ?> m5404a(boolean z) {
        AbstractC3978gv<?, ?> abstractC3978gv;
        try {
            Class<?> m5387e = m5387e();
            abstractC3978gv = m5387e == null ? null : (AbstractC3978gv) m5387e.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            abstractC3978gv = null;
        }
        return abstractC3978gv;
    }

    /* renamed from: a */
    public static <UT, UB> UB m5419a(int i, int i2, UB ub, AbstractC3978gv<UT, UB> abstractC3978gv) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = abstractC3978gv.mo5334a();
        }
        abstractC3978gv.mo5330a((AbstractC3978gv<UT, UB>) ub2, i, i2);
        return ub2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <UT, UB> UB m5416a(int i, List<Integer> list, AbstractC3913ek abstractC3913ek, UB ub, AbstractC3978gv<UT, UB> abstractC3978gv) {
        UB ub2;
        if (abstractC3913ek == null) {
            ub2 = ub;
        } else if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = list.get(i3).intValue();
                if (abstractC3913ek.mo5598a(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    ub = m5419a(i, intValue, ub, abstractC3978gv);
                }
            }
            ub2 = ub;
            if (i2 != size) {
                list.subList(i2, size).clear();
                ub2 = ub;
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = it.next().intValue();
                if (!abstractC3913ek.mo5598a(intValue2)) {
                    ub = m5419a(i, intValue2, ub, abstractC3978gv);
                    it.remove();
                }
            }
            ub2 = ub;
        }
        return ub2;
    }

    /* renamed from: a */
    public static void m5414a(int i, List<String> list, AbstractC4005hr abstractC4005hr) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5199a(i, list);
    }

    /* renamed from: a */
    public static void m5413a(int i, List<?> list, AbstractC4005hr abstractC4005hr, AbstractC3960gd abstractC3960gd) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5198a(i, list, abstractC3960gd);
    }

    /* renamed from: a */
    public static void m5412a(int i, List<Double> list, AbstractC4005hr abstractC4005hr, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5177g(i, list, z);
    }

    /* renamed from: a */
    public static <T, FT extends AbstractC3894dy<FT>> void m5410a(AbstractC3887dr<FT> abstractC3887dr, T t, T t2) {
        C3892dw<FT> mo5682a = abstractC3887dr.mo5682a(t2);
        if (!mo5682a.f18013a.isEmpty()) {
            abstractC3887dr.mo5680b(t).m5676a(mo5682a);
        }
    }

    /* renamed from: a */
    public static <T> void m5409a(AbstractC3936fg abstractC3936fg, T t, T t2, long j) {
        C3984ha.m5290a(t, j, abstractC3936fg.mo5556a(C3984ha.m5267f(t, j), C3984ha.m5267f(t2, j)));
    }

    /* renamed from: a */
    public static <T, UT, UB> void m5408a(AbstractC3978gv<UT, UB> abstractC3978gv, T t, T t2) {
        abstractC3978gv.mo5325a(t, abstractC3978gv.mo5319c(abstractC3978gv.mo5324b(t), abstractC3978gv.mo5324b(t2)));
    }

    /* renamed from: a */
    public static void m5407a(Class<?> cls) {
        if (AbstractC3900ed.class.isAssignableFrom(cls) || f18203a == null || f18203a.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    /* renamed from: a */
    public static boolean m5406a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: b */
    public static int m5402b(int i, List<AbstractC3859ct> list) {
        int m4903e;
        int size = list.size();
        if (size == 0) {
            m4903e = 0;
        } else {
            m4903e = zzes.m4903e(i) * size;
            for (int i2 = 0; i2 < list.size(); i2++) {
                m4903e += zzes.m4917b(list.get(i2));
            }
        }
        return m4903e;
    }

    /* renamed from: b */
    public static int m5401b(int i, List<AbstractC3943fn> list, AbstractC3960gd abstractC3960gd) {
        int i2 = 0;
        int size = list.size();
        if (size != 0) {
            i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += zzes.m4909c(i, list.get(i3), abstractC3960gd);
            }
        }
        return i2;
    }

    /* renamed from: b */
    public static int m5397b(int i, List<Long> list, boolean z) {
        int m4903e;
        int size = list.size();
        if (size == 0) {
            m4903e = 0;
        } else {
            m4903e = (size * zzes.m4903e(i)) + m5396b(list);
        }
        return m4903e;
    }

    /* renamed from: b */
    public static int m5396b(List<Long> list) {
        int i;
        int size = list.size();
        if (size == 0) {
            i = 0;
        } else if (list instanceof C3931fb) {
            C3931fb c3931fb = (C3931fb) list;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                i3 += zzes.m4901e(c3931fb.mo5575b(i2));
                i2++;
            }
        } else {
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                i4 += zzes.m4901e(list.get(i5).longValue());
            }
            i = i4;
        }
        return i;
    }

    /* renamed from: b */
    public static AbstractC3978gv<?, ?> m5403b() {
        return f18205c;
    }

    /* renamed from: b */
    public static void m5400b(int i, List<AbstractC3859ct> list, AbstractC4005hr abstractC4005hr) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5191b(i, list);
    }

    /* renamed from: b */
    public static void m5399b(int i, List<?> list, AbstractC4005hr abstractC4005hr, AbstractC3960gd abstractC3960gd) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5190b(i, list, abstractC3960gd);
    }

    /* renamed from: b */
    public static void m5398b(int i, List<Float> list, AbstractC4005hr abstractC4005hr, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5178f(i, list, z);
    }

    /* renamed from: c */
    public static int m5393c(int i, List<Long> list, boolean z) {
        int m4903e;
        int size = list.size();
        if (size == 0) {
            m4903e = 0;
        } else {
            m4903e = (size * zzes.m4903e(i)) + m5392c(list);
        }
        return m4903e;
    }

    /* renamed from: c */
    public static int m5392c(List<Long> list) {
        int i;
        int size = list.size();
        if (size == 0) {
            i = 0;
        } else if (list instanceof C3931fb) {
            C3931fb c3931fb = (C3931fb) list;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                i3 += zzes.m4897f(c3931fb.mo5575b(i2));
                i2++;
            }
        } else {
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                i4 += zzes.m4897f(list.get(i5).longValue());
            }
            i = i4;
        }
        return i;
    }

    /* renamed from: c */
    public static AbstractC3978gv<?, ?> m5395c() {
        return f18206d;
    }

    /* renamed from: c */
    public static void m5394c(int i, List<Long> list, AbstractC4005hr abstractC4005hr, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5186c(i, list, z);
    }

    /* renamed from: d */
    public static int m5389d(int i, List<Integer> list, boolean z) {
        int m4903e;
        int size = list.size();
        if (size == 0) {
            m4903e = 0;
        } else {
            m4903e = (size * zzes.m4903e(i)) + m5388d(list);
        }
        return m4903e;
    }

    /* renamed from: d */
    public static int m5388d(List<Integer> list) {
        int i;
        int size = list.size();
        if (size == 0) {
            i = 0;
        } else if (list instanceof C3909eg) {
            C3909eg c3909eg = (C3909eg) list;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                i3 += zzes.m4883k(c3909eg.m5605c(i2));
                i2++;
            }
        } else {
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                i4 += zzes.m4883k(list.get(i5).intValue());
            }
            i = i4;
        }
        return i;
    }

    /* renamed from: d */
    private static Class<?> m5391d() {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            cls = null;
        }
        return cls;
    }

    /* renamed from: d */
    public static void m5390d(int i, List<Long> list, AbstractC4005hr abstractC4005hr, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5183d(i, list, z);
    }

    /* renamed from: e */
    public static int m5385e(int i, List<Integer> list, boolean z) {
        int m4903e;
        int size = list.size();
        if (size == 0) {
            m4903e = 0;
        } else {
            m4903e = (size * zzes.m4903e(i)) + m5384e(list);
        }
        return m4903e;
    }

    /* renamed from: e */
    public static int m5384e(List<Integer> list) {
        int i;
        int size = list.size();
        if (size == 0) {
            i = 0;
        } else if (list instanceof C3909eg) {
            C3909eg c3909eg = (C3909eg) list;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                i3 += zzes.m4900f(c3909eg.m5605c(i2));
                i2++;
            }
        } else {
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                i4 += zzes.m4900f(list.get(i5).intValue());
            }
            i = i4;
        }
        return i;
    }

    /* renamed from: e */
    private static Class<?> m5387e() {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            cls = null;
        }
        return cls;
    }

    /* renamed from: e */
    public static void m5386e(int i, List<Long> list, AbstractC4005hr abstractC4005hr, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5170n(i, list, z);
    }

    /* renamed from: f */
    public static int m5382f(int i, List<Integer> list, boolean z) {
        int m4903e;
        int size = list.size();
        if (size == 0) {
            m4903e = 0;
        } else {
            m4903e = (size * zzes.m4903e(i)) + m5381f(list);
        }
        return m4903e;
    }

    /* renamed from: f */
    public static int m5381f(List<Integer> list) {
        int i;
        int size = list.size();
        if (size == 0) {
            i = 0;
        } else if (list instanceof C3909eg) {
            C3909eg c3909eg = (C3909eg) list;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                i3 += zzes.m4896g(c3909eg.m5605c(i2));
                i2++;
            }
        } else {
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                i4 += zzes.m4896g(list.get(i5).intValue());
            }
            i = i4;
        }
        return i;
    }

    /* renamed from: f */
    public static void m5383f(int i, List<Long> list, AbstractC4005hr abstractC4005hr, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5180e(i, list, z);
    }

    /* renamed from: g */
    public static int m5379g(int i, List<Integer> list, boolean z) {
        int m4903e;
        int size = list.size();
        if (size == 0) {
            m4903e = 0;
        } else {
            m4903e = (size * zzes.m4903e(i)) + m5378g(list);
        }
        return m4903e;
    }

    /* renamed from: g */
    public static int m5378g(List<Integer> list) {
        int i;
        int size = list.size();
        if (size == 0) {
            i = 0;
        } else if (list instanceof C3909eg) {
            C3909eg c3909eg = (C3909eg) list;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                i3 += zzes.m4892h(c3909eg.m5605c(i2));
                i2++;
            }
        } else {
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                i4 += zzes.m4892h(list.get(i5).intValue());
            }
            i = i4;
        }
        return i;
    }

    /* renamed from: g */
    public static void m5380g(int i, List<Long> list, AbstractC4005hr abstractC4005hr, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5172l(i, list, z);
    }

    /* renamed from: h */
    public static int m5376h(int i, List<?> list, boolean z) {
        int size = list.size();
        return size == 0 ? 0 : zzes.m4887i(i, 0) * size;
    }

    /* renamed from: h */
    public static int m5375h(List<?> list) {
        return list.size() << 2;
    }

    /* renamed from: h */
    public static void m5377h(int i, List<Integer> list, AbstractC4005hr abstractC4005hr, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5197a(i, list, z);
    }

    /* renamed from: i */
    public static int m5373i(int i, List<?> list, boolean z) {
        int size = list.size();
        return size == 0 ? 0 : size * zzes.m4894g(i, 0L);
    }

    /* renamed from: i */
    public static int m5372i(List<?> list) {
        return list.size() << 3;
    }

    /* renamed from: i */
    public static void m5374i(int i, List<Integer> list, AbstractC4005hr abstractC4005hr, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5174j(i, list, z);
    }

    /* renamed from: j */
    public static int m5370j(int i, List<?> list, boolean z) {
        int size = list.size();
        return size == 0 ? 0 : size * zzes.m4919b(i, true);
    }

    /* renamed from: j */
    public static int m5369j(List<?> list) {
        return list.size();
    }

    /* renamed from: j */
    public static void m5371j(int i, List<Integer> list, AbstractC4005hr abstractC4005hr, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5171m(i, list, z);
    }

    /* renamed from: k */
    public static void m5368k(int i, List<Integer> list, AbstractC4005hr abstractC4005hr, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5189b(i, list, z);
    }

    /* renamed from: l */
    public static void m5367l(int i, List<Integer> list, AbstractC4005hr abstractC4005hr, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5173k(i, list, z);
    }

    /* renamed from: m */
    public static void m5366m(int i, List<Integer> list, AbstractC4005hr abstractC4005hr, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5176h(i, list, z);
    }

    /* renamed from: n */
    public static void m5365n(int i, List<Boolean> list, AbstractC4005hr abstractC4005hr, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        abstractC4005hr.mo5175i(i, list, z);
    }
}
