package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpr.class */
public final class dpr {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f27079a = d();

    /* renamed from: b  reason: collision with root package name */
    private static final dqh<?, ?> f27080b = a(false);

    /* renamed from: c  reason: collision with root package name */
    private static final dqh<?, ?> f27081c = a(true);

    /* renamed from: d  reason: collision with root package name */
    private static final dqh<?, ?> f27082d = new dqi();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, Object obj, dpp dppVar) {
        return obj instanceof dnx ? zzemk.a(i, (dnx) obj) : zzemk.b(i, (dot) obj, dppVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, List<Long> list) {
        if (list.size() == 0) {
            return 0;
        }
        return a(list) + (list.size() * zzemk.l(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, List<?> list, dpp dppVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int l = zzemk.l(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            l += obj instanceof dnx ? zzemk.a((dnx) obj) : zzemk.a((dot) obj, dppVar);
        }
        return l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof doh)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzemk.d(list.get(i2).longValue());
                i2++;
            }
        } else {
            doh dohVar = (doh) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzemk.d(dohVar.c(i3));
                i3++;
            }
        }
        return i;
    }

    public static dqh<?, ?> a() {
        return f27080b;
    }

    private static dqh<?, ?> a(boolean z) {
        try {
            Class<?> e = e();
            if (e == null) {
                return null;
            }
            return (dqh) e.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB a(int i, int i2, UB ub, dqh<UT, UB> dqhVar) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = dqhVar.a();
        }
        dqhVar.a((dqh<UT, UB>) ub2, i, i2);
        return ub2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB a(int i, List<Integer> list, dno dnoVar, UB ub, dqh<UT, UB> dqhVar) {
        UB ub2;
        if (dnoVar == null) {
            return ub;
        }
        if (!(list instanceof RandomAccess)) {
            Iterator<Integer> it2 = list.iterator();
            while (true) {
                ub2 = ub;
                if (!it2.hasNext()) {
                    break;
                }
                int intValue = it2.next().intValue();
                if (!dnoVar.a(intValue)) {
                    ub = (UB) a(i, intValue, ub, dqhVar);
                    it2.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (dnoVar.a(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) a(i, intValue2, ub, dqhVar);
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

    public static void a(int i, List<String> list, drd drdVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.a(i, list);
        }
    }

    public static void a(int i, List<?> list, drd drdVar, dpp dppVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.a(i, list, dppVar);
        }
    }

    public static void a(int i, List<Double> list, drd drdVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.g(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, FT extends dnb<FT>> void a(dmv<FT> dmvVar, T t, T t2) {
        dmz<FT> a2 = dmvVar.a(t2);
        if (!a2.f26980a.isEmpty()) {
            dmz<FT> b2 = dmvVar.b(t);
            for (int i = 0; i < a2.f26980a.c(); i++) {
                b2.a(a2.f26980a.b(i));
            }
            for (Map.Entry<FT, Object> entry : a2.f26980a.d()) {
                b2.a(entry);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void a(dom domVar, T t, T t2, long j) {
        dqm.a(t, j, domVar.a(dqm.f(t, j), dqm.f(t2, j)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, UT, UB> void a(dqh<UT, UB> dqhVar, T t, T t2) {
        dqhVar.a(t, dqhVar.c(dqhVar.b(t), dqhVar.b(t2)));
    }

    public static void a(Class<?> cls) {
        Class<?> cls2;
        if (!dnh.class.isAssignableFrom(cls) && (cls2 = f27079a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i, List<Long> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return b(list) + (size * zzemk.l(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i, List<dot> list, dpp dppVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzemk.c(i, list.get(i3), dppVar);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof doh)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzemk.e(list.get(i2).longValue());
                i2++;
            }
        } else {
            doh dohVar = (doh) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzemk.e(dohVar.c(i3));
                i3++;
            }
        }
        return i;
    }

    public static dqh<?, ?> b() {
        return f27081c;
    }

    public static void b(int i, List<dlw> list, drd drdVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.b(i, list);
        }
    }

    public static void b(int i, List<?> list, drd drdVar, dpp dppVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.b(i, list, dppVar);
        }
    }

    public static void b(int i, List<Float> list, drd drdVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.f(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i, List<Long> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return c(list) + (size * zzemk.l(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof doh)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzemk.f(list.get(i2).longValue());
                i2++;
            }
        } else {
            doh dohVar = (doh) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzemk.f(dohVar.c(i3));
                i3++;
            }
        }
        return i;
    }

    public static dqh<?, ?> c() {
        return f27082d;
    }

    public static void c(int i, List<Long> list, drd drdVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.c(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return d(list) + (size * zzemk.l(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof dnk)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzemk.p(list.get(i2).intValue());
                i2++;
            }
        } else {
            dnk dnkVar = (dnk) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzemk.p(dnkVar.c(i3));
                i3++;
            }
        }
        return i;
    }

    private static Class<?> d() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    public static void d(int i, List<Long> list, drd drdVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.d(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return e(list) + (size * zzemk.l(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof dnk)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzemk.m(list.get(i2).intValue());
                i2++;
            }
        } else {
            dnk dnkVar = (dnk) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzemk.m(dnkVar.c(i3));
                i3++;
            }
        }
        return i;
    }

    private static Class<?> e() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    public static void e(int i, List<Long> list, drd drdVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.n(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return f(list) + (size * zzemk.l(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof dnk)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzemk.n(list.get(i2).intValue());
                i2++;
            }
        } else {
            dnk dnkVar = (dnk) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzemk.n(dnkVar.c(i3));
                i3++;
            }
        }
        return i;
    }

    public static void f(int i, List<Long> list, drd drdVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.e(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return g(list) + (size * zzemk.l(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof dnk)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzemk.o(list.get(i2).intValue());
                i2++;
            }
        } else {
            dnk dnkVar = (dnk) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzemk.o(dnkVar.c(i3));
                i3++;
            }
        }
        return i;
    }

    public static void g(int i, List<Long> list, drd drdVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.l(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzemk.e(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(List<?> list) {
        return list.size() << 2;
    }

    public static void h(int i, List<Integer> list, drd drdVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.a(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzemk.g(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(List<?> list) {
        return list.size() << 3;
    }

    public static void i(int i, List<Integer> list, drd drdVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.j(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzemk.k(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(List<?> list) {
        return list.size();
    }

    public static void j(int i, List<Integer> list, drd drdVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.m(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int l = zzemk.l(i) * size;
        int i5 = l;
        if (!(list instanceof dnz)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof dlw ? zzemk.b((dlw) obj) : zzemk.b((String) obj);
                i3++;
            }
        } else {
            dnz dnzVar = (dnz) list;
            int i6 = l;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object b2 = dnzVar.b(i4);
                i6 += b2 instanceof dlw ? zzemk.b((dlw) b2) : zzemk.b((String) b2);
                i4++;
            }
        }
        return i2;
    }

    public static void k(int i, List<Integer> list, drd drdVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.b(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(int i, List<dlw> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int l = size * zzemk.l(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            l += zzemk.b(list.get(i2));
        }
        return l;
    }

    public static void l(int i, List<Integer> list, drd drdVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.k(i, list, z);
        }
    }

    public static void m(int i, List<Integer> list, drd drdVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.h(i, list, z);
        }
    }

    public static void n(int i, List<Boolean> list, drd drdVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            drdVar.i(i, list, z);
        }
    }
}
