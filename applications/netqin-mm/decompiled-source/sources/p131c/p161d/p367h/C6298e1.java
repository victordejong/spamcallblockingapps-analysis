package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Writer;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import p131c.p161d.p367h.C6371u;
import p131c.p161d.p367h.C6381y;
/* renamed from: c.d.h.e1 */
/* loaded from: classes2-dex2jar.jar:c/d/h/e1.class */
public final class C6298e1 {

    /* renamed from: a */
    public static final Class<?> f19876a = m21620a();

    /* renamed from: b */
    public static final AbstractC6326i1<?, ?> f19877b = m21603a(false);

    /* renamed from: c */
    public static final AbstractC6326i1<?, ?> f19878c = m21603a(true);

    /* renamed from: d */
    public static final AbstractC6326i1<?, ?> f19879d = new C6338k1();

    /* renamed from: a */
    public static int m21618a(int i, Object obj, AbstractC6287c1 c1Var) {
        return obj instanceof C6283b0 ? CodedOutputStream.m7062b(i, (C6283b0) obj) : CodedOutputStream.m7039d(i, (AbstractC6354n0) obj, c1Var);
    }

    /* renamed from: a */
    public static int m21617a(int i, List<ByteString> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int o = size * CodedOutputStream.m7007o(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            o += CodedOutputStream.m7057b(list.get(i2));
        }
        return o;
    }

    /* renamed from: a */
    public static int m21616a(int i, List<AbstractC6354n0> list, AbstractC6287c1 c1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += CodedOutputStream.m7050c(i, list.get(i3), c1Var);
        }
        return i2;
    }

    /* renamed from: a */
    public static int m21610a(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z ? CodedOutputStream.m7007o(i) + CodedOutputStream.m7019j(size) : size * CodedOutputStream.m7060b(i, true);
    }

    /* renamed from: a */
    public static int m21604a(List<?> list) {
        return list.size();
    }

    /* renamed from: a */
    public static AbstractC6326i1<?, ?> m21603a(boolean z) {
        try {
            Class<?> b = m21602b();
            if (b == null) {
                return null;
            }
            return (AbstractC6326i1) b.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static Class<?> m21620a() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static <UT, UB> UB m21619a(int i, int i2, UB ub, AbstractC6326i1<UT, UB> i1Var) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = i1Var.mo21306a();
        }
        i1Var.mo21285b(ub2, i, i2);
        return ub2;
    }

    /* renamed from: a */
    public static <UT, UB> UB m21615a(int i, List<Integer> list, C6381y.AbstractC6385d<?> dVar, UB ub, AbstractC6326i1<UT, UB> i1Var) {
        UB ub2;
        if (dVar == null) {
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
                if (dVar.mo6797a(intValue) == null) {
                    ub = (UB) m21619a(i, intValue, ub, i1Var);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (dVar.mo6797a(intValue2) != null) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) m21619a(i, intValue2, ub, i1Var);
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
    public static <UT, UB> UB m21614a(int i, List<Integer> list, C6381y.AbstractC6386e eVar, UB ub, AbstractC6326i1<UT, UB> i1Var) {
        UB ub2;
        if (eVar == null) {
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
                if (!eVar.mo6796a(intValue)) {
                    ub = (UB) m21619a(i, intValue, ub, i1Var);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (eVar.mo6796a(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) m21619a(i, intValue2, ub, i1Var);
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
    public static void m21613a(int i, List<ByteString> list, Writer writer) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6819b(i, list);
        }
    }

    /* renamed from: a */
    public static void m21612a(int i, List<?> list, Writer writer, AbstractC6287c1 c1Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6818b(i, list, c1Var);
        }
    }

    /* renamed from: a */
    public static void m21611a(int i, List<Boolean> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6804h(i, list, z);
        }
    }

    /* renamed from: a */
    public static <T> void m21609a(AbstractC6325i0 i0Var, T t, T t2, long j) {
        C6347m1.m21238a(t, j, i0Var.mo21382b(C6347m1.m21202n(t, j), C6347m1.m21202n(t2, j)));
    }

    /* renamed from: a */
    public static <T, UT, UB> void m21608a(AbstractC6326i1<UT, UB> i1Var, T t, T t2) {
        i1Var.mo21279c(t, i1Var.mo21290a(i1Var.mo21286b(t), i1Var.mo21286b(t2)));
    }

    /* renamed from: a */
    public static <T, FT extends C6371u.AbstractC6373b<FT>> void m21607a(AbstractC6361q<FT> qVar, T t, T t2) {
        C6371u<FT> a = qVar.mo21093a(t2);
        if (!a.m21049d()) {
            qVar.mo21091b(t).m21065a(a);
        }
    }

    /* renamed from: a */
    public static void m21606a(Class<?> cls) {
        Class<?> cls2;
        if (!GeneratedMessageLite.class.isAssignableFrom(cls) && (cls2 = f19876a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* renamed from: a */
    public static boolean m21605a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: b */
    public static int m21601b(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int o = CodedOutputStream.m7007o(i) * size;
        int i5 = o;
        if (!(list instanceof AbstractC6289d0)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof ByteString ? CodedOutputStream.m7057b((ByteString) obj) : CodedOutputStream.m7056b((String) obj);
                i3++;
            }
        } else {
            AbstractC6289d0 d0Var = (AbstractC6289d0) list;
            int i6 = o;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object d = d0Var.mo21262d(i4);
                i6 += d instanceof ByteString ? CodedOutputStream.m7057b((ByteString) d) : CodedOutputStream.m7056b((String) d);
                i4++;
            }
        }
        return i2;
    }

    /* renamed from: b */
    public static int m21600b(int i, List<?> list, AbstractC6287c1 c1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int o = CodedOutputStream.m7007o(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            o += obj instanceof C6283b0 ? CodedOutputStream.m7074a((C6283b0) obj) : CodedOutputStream.m7046c((AbstractC6354n0) obj, c1Var);
        }
        return o;
    }

    /* renamed from: b */
    public static int m21596b(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int b = m21595b(list);
        return z ? CodedOutputStream.m7007o(i) + CodedOutputStream.m7019j(b) : b + (size * CodedOutputStream.m7007o(i));
    }

    /* renamed from: b */
    public static int m21595b(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C6379x)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.m7030g(list.get(i2).intValue());
                i2++;
            }
        } else {
            C6379x xVar = (C6379x) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m7030g(xVar.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: b */
    public static Class<?> m21602b() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    public static void m21599b(int i, List<String> list, Writer writer) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6827a(i, list);
        }
    }

    /* renamed from: b */
    public static void m21598b(int i, List<?> list, Writer writer, AbstractC6287c1 c1Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6826a(i, list, c1Var);
        }
    }

    /* renamed from: b */
    public static void m21597b(int i, List<Double> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6798n(i, list, z);
        }
    }

    /* renamed from: c */
    public static int m21592c(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z ? CodedOutputStream.m7007o(i) + CodedOutputStream.m7019j(size * 4) : size * CodedOutputStream.m7022i(i, 0);
    }

    /* renamed from: c */
    public static int m21591c(List<?> list) {
        return list.size() * 4;
    }

    /* renamed from: c */
    public static AbstractC6326i1<?, ?> m21594c() {
        return f19877b;
    }

    /* renamed from: c */
    public static void m21593c(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6799m(i, list, z);
        }
    }

    /* renamed from: d */
    public static int m21588d(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z ? CodedOutputStream.m7007o(i) + CodedOutputStream.m7019j(size * 8) : size * CodedOutputStream.m7032f(i, 0L);
    }

    /* renamed from: d */
    public static int m21587d(List<?> list) {
        return list.size() * 8;
    }

    /* renamed from: d */
    public static AbstractC6326i1<?, ?> m21590d() {
        return f19878c;
    }

    /* renamed from: d */
    public static void m21589d(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6805g(i, list, z);
        }
    }

    /* renamed from: e */
    public static int m21584e(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e = m21583e(list);
        return z ? CodedOutputStream.m7007o(i) + CodedOutputStream.m7019j(e) : e + (size * CodedOutputStream.m7007o(i));
    }

    /* renamed from: e */
    public static int m21583e(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C6379x)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.m7023i(list.get(i2).intValue());
                i2++;
            }
        } else {
            C6379x xVar = (C6379x) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m7023i(xVar.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: e */
    public static AbstractC6326i1<?, ?> m21586e() {
        return f19879d;
    }

    /* renamed from: e */
    public static void m21585e(int i, List<Long> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6808e(i, list, z);
        }
    }

    /* renamed from: f */
    public static int m21581f(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        int f = m21580f(list);
        return z ? CodedOutputStream.m7007o(i) + CodedOutputStream.m7019j(f) : f + (list.size() * CodedOutputStream.m7007o(i));
    }

    /* renamed from: f */
    public static int m21580f(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C6302f0)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.m7028g(list.get(i2).longValue());
                i2++;
            }
        } else {
            C6302f0 f0Var = (C6302f0) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m7028g(f0Var.m21532f(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: f */
    public static void m21582f(int i, List<Float> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6825a(i, list, z);
        }
    }

    /* renamed from: g */
    public static int m21578g(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int g = m21577g(list);
        return z ? CodedOutputStream.m7007o(i) + CodedOutputStream.m7019j(g) : g + (size * CodedOutputStream.m7007o(i));
    }

    /* renamed from: g */
    public static int m21577g(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C6379x)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.m7008n(list.get(i2).intValue());
                i2++;
            }
        } else {
            C6379x xVar = (C6379x) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m7008n(xVar.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: g */
    public static void m21579g(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6811d(i, list, z);
        }
    }

    /* renamed from: h */
    public static int m21575h(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int h = m21574h(list);
        return z ? CodedOutputStream.m7007o(i) + CodedOutputStream.m7019j(h) : h + (size * CodedOutputStream.m7007o(i));
    }

    /* renamed from: h */
    public static int m21574h(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C6302f0)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.m7020i(list.get(i2).longValue());
                i2++;
            }
        } else {
            C6302f0 f0Var = (C6302f0) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m7020i(f0Var.m21532f(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: h */
    public static void m21576h(int i, List<Long> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6800l(i, list, z);
        }
    }

    /* renamed from: i */
    public static int m21572i(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = m21571i(list);
        return z ? CodedOutputStream.m7007o(i) + CodedOutputStream.m7019j(i2) : i2 + (size * CodedOutputStream.m7007o(i));
    }

    /* renamed from: i */
    public static int m21571i(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C6379x)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.m7006p(list.get(i2).intValue());
                i2++;
            }
        } else {
            C6379x xVar = (C6379x) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m7006p(xVar.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: i */
    public static void m21573i(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6806f(i, list, z);
        }
    }

    /* renamed from: j */
    public static int m21569j(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int j = m21568j(list);
        return z ? CodedOutputStream.m7007o(i) + CodedOutputStream.m7019j(j) : j + (size * CodedOutputStream.m7007o(i));
    }

    /* renamed from: j */
    public static int m21568j(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C6302f0)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.m7016j(list.get(i2).longValue());
                i2++;
            }
        } else {
            C6302f0 f0Var = (C6302f0) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m7016j(f0Var.m21532f(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: j */
    public static void m21570j(int i, List<Long> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6817b(i, list, z);
        }
    }

    /* renamed from: k */
    public static void m21567k(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6801k(i, list, z);
        }
    }

    /* renamed from: l */
    public static void m21566l(int i, List<Long> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6802j(i, list, z);
        }
    }

    /* renamed from: m */
    public static void m21565m(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6803i(i, list, z);
        }
    }

    /* renamed from: n */
    public static void m21564n(int i, List<Long> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.mo6814c(i, list, z);
        }
    }
}
