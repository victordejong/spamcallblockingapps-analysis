package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzejj;
import com.google.android.gms.internal.ads.zzeju;
import com.google.android.gms.internal.ads.zzejz;
import com.google.android.gms.internal.ads.zzekg;
import com.google.android.gms.internal.ads.zzeks;
import com.google.android.gms.internal.ads.zzeku;
import com.google.android.gms.internal.ads.zzelj;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.a.h90 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/h90.class */
public final class h90 {

    /* renamed from: a */
    public static final Class<?> f13258a = m26889d();

    /* renamed from: b */
    public static final x90<?, ?> f13259b = m26902a(false);

    /* renamed from: c */
    public static final x90<?, ?> f13260c = m26902a(true);

    /* renamed from: d */
    public static final x90<?, ?> f13261d = new y90();

    /* renamed from: a */
    public static int m26916a(int i, Object obj, f90 f90Var) {
        return obj instanceof zzeks ? zzejj.m12500a(i, (zzeks) obj) : zzejj.m12486b(i, (zzelj) obj, f90Var);
    }

    /* renamed from: a */
    public static int m26915a(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int e = zzejj.m12468e(i) * size;
        int i5 = e;
        if (!(list instanceof zzeku)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof zzeip ? zzejj.m12482b((zzeip) obj) : zzejj.m12480b((String) obj);
                i3++;
            }
        } else {
            zzeku zzekuVar = (zzeku) list;
            int i6 = e;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object i7 = zzekuVar.mo12326i(i4);
                i6 += i7 instanceof zzeip ? zzejj.m12482b((zzeip) i7) : zzejj.m12480b((String) i7);
                i4++;
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static int m26914a(int i, List<?> list, f90 f90Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e = zzejj.m12468e(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            e += obj instanceof zzeks ? zzejj.m12499a((zzeks) obj) : zzejj.m12498a((zzelj) obj, f90Var);
        }
        return e;
    }

    /* renamed from: a */
    public static int m26909a(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m26903a(list) + (list.size() * zzejj.m12468e(i));
    }

    /* renamed from: a */
    public static int m26903a(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof d80)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzejj.m12469d(list.get(i2).longValue());
                i2++;
            }
        } else {
            d80 d80Var = (d80) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzejj.m12469d(d80Var.m27075a(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: a */
    public static x90<?, ?> m26918a() {
        return f13259b;
    }

    /* renamed from: a */
    public static x90<?, ?> m26902a(boolean z) {
        try {
            Class<?> e = m26885e();
            if (e == null) {
                return null;
            }
            return (x90) e.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static <UT, UB> UB m26917a(int i, int i2, UB ub, x90<UT, UB> x90Var) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = x90Var.mo26135a();
        }
        x90Var.mo26131a((x90<UT, UB>) ub2, i, i2);
        return ub2;
    }

    /* renamed from: a */
    public static <UT, UB> UB m26910a(int i, List<Integer> list, zzekg zzekgVar, UB ub, x90<UT, UB> x90Var) {
        UB ub2;
        if (zzekgVar == null) {
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
                if (!zzekgVar.mo12363c(intValue)) {
                    ub = (UB) m26917a(i, intValue, ub, x90Var);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (zzekgVar.mo12363c(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) m26917a(i, intValue2, ub, x90Var);
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
    public static void m26913a(int i, List<String> list, ka0 ka0Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26669b(i, list);
        }
    }

    /* renamed from: a */
    public static void m26912a(int i, List<?> list, ka0 ka0Var, f90 f90Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26677a(i, list, f90Var);
        }
    }

    /* renamed from: a */
    public static void m26911a(int i, List<Double> list, ka0 ka0Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26648m(i, list, z);
        }
    }

    /* renamed from: a */
    public static <T> void m26908a(l80 l80Var, T t, T t2, long j) {
        ba0.m27167a(t, j, l80Var.mo26699a(ba0.m27144f(t, j), ba0.m27144f(t2, j)));
    }

    /* renamed from: a */
    public static <T, FT extends zzeju<FT>> void m26907a(n70<FT> n70Var, T t, T t2) {
        r70<FT> a = n70Var.mo26589a(t2);
        if (!a.f14877a.isEmpty()) {
            n70Var.mo26587b(t).m26443a(a);
        }
    }

    /* renamed from: a */
    public static <T, UT, UB> void m26906a(x90<UT, UB> x90Var, T t, T t2) {
        x90Var.mo26126a(t, x90Var.mo26120c(x90Var.mo26119d(t), x90Var.mo26119d(t2)));
    }

    /* renamed from: a */
    public static void m26905a(Class<?> cls) {
        Class<?> cls2;
        if (!zzejz.class.isAssignableFrom(cls) && (cls2 = f13258a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* renamed from: a */
    public static boolean m26904a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: b */
    public static int m26900b(int i, List<zzeip> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e = size * zzejj.m12468e(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            e += zzejj.m12482b(list.get(i2));
        }
        return e;
    }

    /* renamed from: b */
    public static int m26899b(int i, List<zzelj> list, f90 f90Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzejj.m12474c(i, list.get(i3), f90Var);
        }
        return i2;
    }

    /* renamed from: b */
    public static int m26895b(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m26894b(list) + (size * zzejj.m12468e(i));
    }

    /* renamed from: b */
    public static int m26894b(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof d80)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzejj.m12466e(list.get(i2).longValue());
                i2++;
            }
        } else {
            d80 d80Var = (d80) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzejj.m12466e(d80Var.m27075a(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: b */
    public static x90<?, ?> m26901b() {
        return f13260c;
    }

    /* renamed from: b */
    public static void m26898b(int i, List<zzeip> list, ka0 ka0Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26678a(i, list);
        }
    }

    /* renamed from: b */
    public static void m26897b(int i, List<?> list, ka0 ka0Var, f90 f90Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26668b(i, list, f90Var);
        }
    }

    /* renamed from: b */
    public static void m26896b(int i, List<Float> list, ka0 ka0Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26647n(i, list, z);
        }
    }

    /* renamed from: c */
    public static int m26891c(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m26890c(list) + (size * zzejj.m12468e(i));
    }

    /* renamed from: c */
    public static int m26890c(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof d80)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzejj.m12462f(list.get(i2).longValue());
                i2++;
            }
        } else {
            d80 d80Var = (d80) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzejj.m12462f(d80Var.m27075a(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: c */
    public static x90<?, ?> m26893c() {
        return f13261d;
    }

    /* renamed from: c */
    public static void m26892c(int i, List<Long> list, ka0 ka0Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26662d(i, list, z);
        }
    }

    /* renamed from: d */
    public static int m26887d(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m26886d(list) + (size * zzejj.m12468e(i));
    }

    /* renamed from: d */
    public static int m26886d(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof w70)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzejj.m12448k(list.get(i2).intValue());
                i2++;
            }
        } else {
            w70 w70Var = (w70) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzejj.m12448k(w70Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: d */
    public static Class<?> m26889d() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    public static void m26888d(int i, List<Long> list, ka0 ka0Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26650k(i, list, z);
        }
    }

    /* renamed from: e */
    public static int m26883e(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m26882e(list) + (size * zzejj.m12468e(i));
    }

    /* renamed from: e */
    public static int m26882e(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof w70)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzejj.m12465f(list.get(i2).intValue());
                i2++;
            }
        } else {
            w70 w70Var = (w70) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzejj.m12465f(w70Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: e */
    public static Class<?> m26885e() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: e */
    public static void m26884e(int i, List<Long> list, ka0 ka0Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26651j(i, list, z);
        }
    }

    /* renamed from: f */
    public static int m26880f(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m26879f(list) + (size * zzejj.m12468e(i));
    }

    /* renamed from: f */
    public static int m26879f(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof w70)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzejj.m12461g(list.get(i2).intValue());
                i2++;
            }
        } else {
            w70 w70Var = (w70) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzejj.m12461g(w70Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: f */
    public static void m26881f(int i, List<Long> list, ka0 ka0Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26652i(i, list, z);
        }
    }

    /* renamed from: g */
    public static int m26877g(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m26876g(list) + (size * zzejj.m12468e(i));
    }

    /* renamed from: g */
    public static int m26876g(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof w70)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzejj.m12457h(list.get(i2).intValue());
                i2++;
            }
        } else {
            w70 w70Var = (w70) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzejj.m12457h(w70Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: g */
    public static void m26878g(int i, List<Long> list, ka0 ka0Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26659e(i, list, z);
        }
    }

    /* renamed from: h */
    public static int m26874h(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzejj.m12452i(i, 0);
    }

    /* renamed from: h */
    public static int m26873h(List<?> list) {
        return list.size() << 2;
    }

    /* renamed from: h */
    public static void m26875h(int i, List<Integer> list, ka0 ka0Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26667b(i, list, z);
        }
    }

    /* renamed from: i */
    public static int m26871i(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzejj.m12459g(i, 0L);
    }

    /* renamed from: i */
    public static int m26870i(List<?> list) {
        return list.size() << 3;
    }

    /* renamed from: i */
    public static void m26872i(int i, List<Integer> list, ka0 ka0Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26654g(i, list, z);
        }
    }

    /* renamed from: j */
    public static int m26868j(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzejj.m12484b(i, true);
    }

    /* renamed from: j */
    public static int m26867j(List<?> list) {
        return list.size();
    }

    /* renamed from: j */
    public static void m26869j(int i, List<Integer> list, ka0 ka0Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26649l(i, list, z);
        }
    }

    /* renamed from: k */
    public static void m26866k(int i, List<Integer> list, ka0 ka0Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26656f(i, list, z);
        }
    }

    /* renamed from: l */
    public static void m26865l(int i, List<Integer> list, ka0 ka0Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26653h(i, list, z);
        }
    }

    /* renamed from: m */
    public static void m26864m(int i, List<Integer> list, ka0 ka0Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26665c(i, list, z);
        }
    }

    /* renamed from: n */
    public static void m26863n(int i, List<Boolean> list, ka0 ka0Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            ka0Var.mo26676a(i, list, z);
        }
    }
}
