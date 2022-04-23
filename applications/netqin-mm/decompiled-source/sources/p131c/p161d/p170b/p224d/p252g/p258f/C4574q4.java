package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzgp;
import com.google.android.gms.internal.measurement.zzhi;
import com.google.android.gms.internal.measurement.zzht;
import com.google.android.gms.internal.measurement.zzhy;
import com.google.android.gms.internal.measurement.zzif;
import com.google.android.gms.internal.measurement.zzio;
import com.google.android.gms.internal.measurement.zziq;
import com.google.android.gms.internal.measurement.zzjj;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.f.q4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/q4.class */
public final class C4574q4 {

    /* renamed from: a */
    public static final Class<?> f16852a = m25282d();

    /* renamed from: b */
    public static final AbstractC4487e5<?, ?> f16853b = m25295a(false);

    /* renamed from: c */
    public static final AbstractC4487e5<?, ?> f16854c = m25295a(true);

    /* renamed from: d */
    public static final AbstractC4487e5<?, ?> f16855d = new C4494f5();

    /* renamed from: a */
    public static int m25309a(int i, Object obj, AbstractC4560o4 o4Var) {
        return obj instanceof zzio ? zzhi.m9757a(i, (zzio) obj) : zzhi.m9743b(i, (zzjj) obj, o4Var);
    }

    /* renamed from: a */
    public static int m25308a(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int e = zzhi.m9725e(i) * size;
        int i5 = e;
        if (!(list instanceof zziq)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof zzgp ? zzhi.m9739b((zzgp) obj) : zzhi.m9737b((String) obj);
                i3++;
            }
        } else {
            zziq zziqVar = (zziq) list;
            int i6 = e;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object zzb = zziqVar.zzb(i4);
                i6 += zzb instanceof zzgp ? zzhi.m9739b((zzgp) zzb) : zzhi.m9737b((String) zzb);
                i4++;
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static int m25307a(int i, List<?> list, AbstractC4560o4 o4Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e = zzhi.m9725e(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            e += obj instanceof zzio ? zzhi.m9756a((zzio) obj) : zzhi.m9755a((zzjj) obj, o4Var);
        }
        return e;
    }

    /* renamed from: a */
    public static int m25302a(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m25296a(list) + (list.size() * zzhi.m9725e(i));
    }

    /* renamed from: a */
    public static int m25296a(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C4580r3)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzhi.m9726d(list.get(i2).longValue());
                i2++;
            }
        } else {
            C4580r3 r3Var = (C4580r3) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzhi.m9726d(r3Var.zzb(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: a */
    public static AbstractC4487e5<?, ?> m25311a() {
        return f16853b;
    }

    /* renamed from: a */
    public static AbstractC4487e5<?, ?> m25295a(boolean z) {
        try {
            Class<?> e = m25278e();
            if (e == null) {
                return null;
            }
            return (AbstractC4487e5) e.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static <UT, UB> UB m25310a(int i, int i2, UB ub, AbstractC4487e5<UT, UB> e5Var) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = e5Var.mo25494a();
        }
        e5Var.mo25490a((AbstractC4487e5<UT, UB>) ub2, i, i2);
        return ub2;
    }

    /* renamed from: a */
    public static <UT, UB> UB m25303a(int i, List<Integer> list, zzif zzifVar, UB ub, AbstractC4487e5<UT, UB> e5Var) {
        UB ub2;
        if (zzifVar == null) {
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
                if (!zzifVar.zza(intValue)) {
                    ub = (UB) m25310a(i, intValue, ub, e5Var);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (zzifVar.zza(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) m25310a(i, intValue2, ub, e5Var);
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
    public static void m25306a(int i, List<String> list, AbstractC4582r5 r5Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25146b(i, list);
        }
    }

    /* renamed from: a */
    public static void m25305a(int i, List<?> list, AbstractC4582r5 r5Var, AbstractC4560o4 o4Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25153a(i, list, o4Var);
        }
    }

    /* renamed from: a */
    public static void m25304a(int i, List<Double> list, AbstractC4582r5 r5Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25126m(i, list, z);
        }
    }

    /* renamed from: a */
    public static <T, UT, UB> void m25301a(AbstractC4487e5<UT, UB> e5Var, T t, T t2) {
        e5Var.mo25485a(t, e5Var.mo25479c(e5Var.mo25484b(t), e5Var.mo25484b(t2)));
    }

    /* renamed from: a */
    public static <T> void m25300a(AbstractC4606v3 v3Var, T t, T t2, long j) {
        C4522j5.m25430a(t, j, v3Var.mo25170a(C4522j5.m25407f(t, j), C4522j5.m25407f(t2, j)));
    }

    /* renamed from: a */
    public static <T, FT extends zzht<FT>> void m25299a(AbstractC4629z2<FT> z2Var, T t, T t2) {
        C4478d3<FT> a = z2Var.mo25114a(t2);
        if (!a.f16727a.isEmpty()) {
            z2Var.mo25112b(t).m25517a(a);
        }
    }

    /* renamed from: a */
    public static void m25298a(Class<?> cls) {
        Class<?> cls2;
        if (!zzhy.class.isAssignableFrom(cls) && (cls2 = f16852a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* renamed from: a */
    public static boolean m25297a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: b */
    public static int m25293b(int i, List<zzgp> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e = size * zzhi.m9725e(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            e += zzhi.m9739b(list.get(i2));
        }
        return e;
    }

    /* renamed from: b */
    public static int m25292b(int i, List<zzjj> list, AbstractC4560o4 o4Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzhi.m9731c(i, list.get(i3), o4Var);
        }
        return i2;
    }

    /* renamed from: b */
    public static int m25288b(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25287b(list) + (size * zzhi.m9725e(i));
    }

    /* renamed from: b */
    public static int m25287b(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C4580r3)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzhi.m9723e(list.get(i2).longValue());
                i2++;
            }
        } else {
            C4580r3 r3Var = (C4580r3) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzhi.m9723e(r3Var.zzb(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: b */
    public static AbstractC4487e5<?, ?> m25294b() {
        return f16854c;
    }

    /* renamed from: b */
    public static void m25291b(int i, List<zzgp> list, AbstractC4582r5 r5Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25154a(i, list);
        }
    }

    /* renamed from: b */
    public static void m25290b(int i, List<?> list, AbstractC4582r5 r5Var, AbstractC4560o4 o4Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25145b(i, list, o4Var);
        }
    }

    /* renamed from: b */
    public static void m25289b(int i, List<Float> list, AbstractC4582r5 r5Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25125n(i, list, z);
        }
    }

    /* renamed from: c */
    public static int m25284c(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25283c(list) + (size * zzhi.m9725e(i));
    }

    /* renamed from: c */
    public static int m25283c(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C4580r3)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzhi.m9719f(list.get(i2).longValue());
                i2++;
            }
        } else {
            C4580r3 r3Var = (C4580r3) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzhi.m9719f(r3Var.zzb(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: c */
    public static AbstractC4487e5<?, ?> m25286c() {
        return f16855d;
    }

    /* renamed from: c */
    public static void m25285c(int i, List<Long> list, AbstractC4582r5 r5Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25138d(i, list, z);
        }
    }

    /* renamed from: d */
    public static int m25280d(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25279d(list) + (size * zzhi.m9725e(i));
    }

    /* renamed from: d */
    public static int m25279d(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C4513i3)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzhi.m9705k(list.get(i2).intValue());
                i2++;
            }
        } else {
            C4513i3 i3Var = (C4513i3) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzhi.m9705k(i3Var.zzc(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: d */
    public static Class<?> m25282d() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    public static void m25281d(int i, List<Long> list, AbstractC4582r5 r5Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25128k(i, list, z);
        }
    }

    /* renamed from: e */
    public static int m25276e(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25275e(list) + (size * zzhi.m9725e(i));
    }

    /* renamed from: e */
    public static int m25275e(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C4513i3)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzhi.m9722f(list.get(i2).intValue());
                i2++;
            }
        } else {
            C4513i3 i3Var = (C4513i3) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzhi.m9722f(i3Var.zzc(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: e */
    public static Class<?> m25278e() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: e */
    public static void m25277e(int i, List<Long> list, AbstractC4582r5 r5Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25129j(i, list, z);
        }
    }

    /* renamed from: f */
    public static int m25273f(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25272f(list) + (size * zzhi.m9725e(i));
    }

    /* renamed from: f */
    public static int m25272f(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C4513i3)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzhi.m9718g(list.get(i2).intValue());
                i2++;
            }
        } else {
            C4513i3 i3Var = (C4513i3) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzhi.m9718g(i3Var.zzc(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: f */
    public static void m25274f(int i, List<Long> list, AbstractC4582r5 r5Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25130i(i, list, z);
        }
    }

    /* renamed from: g */
    public static int m25270g(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25269g(list) + (size * zzhi.m9725e(i));
    }

    /* renamed from: g */
    public static int m25269g(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C4513i3)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzhi.m9714h(list.get(i2).intValue());
                i2++;
            }
        } else {
            C4513i3 i3Var = (C4513i3) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzhi.m9714h(i3Var.zzc(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: g */
    public static void m25271g(int i, List<Long> list, AbstractC4582r5 r5Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25135e(i, list, z);
        }
    }

    /* renamed from: h */
    public static int m25267h(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzhi.m9709i(i, 0);
    }

    /* renamed from: h */
    public static int m25266h(List<?> list) {
        return list.size() << 2;
    }

    /* renamed from: h */
    public static void m25268h(int i, List<Integer> list, AbstractC4582r5 r5Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25144b(i, list, z);
        }
    }

    /* renamed from: i */
    public static int m25264i(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzhi.m9716g(i, 0L);
    }

    /* renamed from: i */
    public static int m25263i(List<?> list) {
        return list.size() << 3;
    }

    /* renamed from: i */
    public static void m25265i(int i, List<Integer> list, AbstractC4582r5 r5Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25132g(i, list, z);
        }
    }

    /* renamed from: j */
    public static int m25261j(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzhi.m9741b(i, true);
    }

    /* renamed from: j */
    public static int m25260j(List<?> list) {
        return list.size();
    }

    /* renamed from: j */
    public static void m25262j(int i, List<Integer> list, AbstractC4582r5 r5Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25127l(i, list, z);
        }
    }

    /* renamed from: k */
    public static void m25259k(int i, List<Integer> list, AbstractC4582r5 r5Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25133f(i, list, z);
        }
    }

    /* renamed from: l */
    public static void m25258l(int i, List<Integer> list, AbstractC4582r5 r5Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25131h(i, list, z);
        }
    }

    /* renamed from: m */
    public static void m25257m(int i, List<Integer> list, AbstractC4582r5 r5Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25141c(i, list, z);
        }
    }

    /* renamed from: n */
    public static void m25256n(int i, List<Boolean> list, AbstractC4582r5 r5Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            r5Var.mo25152a(i, list, z);
        }
    }
}
