package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ic.class */
public final class ic {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f29114a;

    /* renamed from: b  reason: collision with root package name */
    private static final im<?, ?> f29115b;

    /* renamed from: c  reason: collision with root package name */
    private static final im<?, ?> f29116c;

    /* renamed from: d  reason: collision with root package name */
    private static final im<?, ?> f29117d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            cls = null;
        }
        f29114a = cls;
        f29115b = a(false);
        f29116c = a(true);
        f29117d = new io();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, Object obj, ia iaVar) {
        if (!(obj instanceof gx)) {
            return fs.f(i << 3) + fs.a((ho) obj, iaVar);
        }
        int f = fs.f(i << 3);
        int a2 = ((gx) obj).a();
        return f + fs.f(a2) + a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, List<Long> list) {
        if (list.size() == 0) {
            return 0;
        }
        return a(list) + (list.size() * fs.d(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, List<?> list, ia iaVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int d2 = fs.d(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            d2 += obj instanceof gx ? fs.a((gx) obj) : fs.a((ho) obj, iaVar);
        }
        return d2;
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
        if (!(list instanceof he)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += fs.c(list.get(i2).longValue());
                i2++;
            }
        } else {
            he heVar = (he) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += fs.c(heVar.b(i3));
                i3++;
            }
        }
        return i;
    }

    public static im<?, ?> a() {
        return f29115b;
    }

    private static im<?, ?> a(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (im) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th2) {
            return null;
        }
    }

    private static <UT, UB> UB a(int i, int i2, UB ub, im<UT, UB> imVar) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = imVar.a();
        }
        imVar.a(ub2, i, i2);
        return ub2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB a(int i, List<Integer> list, gp gpVar, UB ub, im<UT, UB> imVar) {
        UB ub2;
        if (gpVar == null) {
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
                if (!gpVar.a(intValue)) {
                    ub = (UB) a(i, intValue, ub, imVar);
                    it2.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (gpVar.a(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) a(i, intValue2, ub, imVar);
                }
            }
            if (i2 == size) {
                ub2 = ub;
            } else {
                list.subList(i2, size).clear();
                return ub;
            }
        }
        return ub2;
    }

    public static void a(int i, List<String> list, ft ftVar) throws IOException {
        if (!(list == null || list.isEmpty())) {
            if (list instanceof gz) {
                gz gzVar = (gz) list;
                for (int i2 = 0; i2 < list.size(); i2++) {
                    Object c2 = gzVar.c(i2);
                    if (c2 instanceof String) {
                        ftVar.f29031a.a(i, (String) c2);
                    } else {
                        ftVar.f29031a.a(i, (fm) c2);
                    }
                }
                return;
            }
            for (int i3 = 0; i3 < list.size(); i3++) {
                ftVar.f29031a.a(i, list.get(i3));
            }
        }
    }

    public static void a(int i, List<?> list, ft ftVar, ia iaVar) throws IOException {
        if (!(list == null || list.isEmpty())) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                ftVar.a(i, list.get(i2), iaVar);
            }
        }
    }

    public static void a(int i, List<Double> list, ft ftVar, boolean z) throws IOException {
        if (!(list == null || list.isEmpty())) {
            if (z) {
                ftVar.f29031a.a(i, 2);
                int i2 = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    list.get(i3).doubleValue();
                    i2 += 8;
                }
                ftVar.f29031a.b(i2);
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ftVar.f29031a.b(Double.doubleToRawLongBits(list.get(i4).doubleValue()));
                }
                return;
            }
            for (int i5 = 0; i5 < list.size(); i5++) {
                ftVar.f29031a.b(i, Double.doubleToRawLongBits(list.get(i5).doubleValue()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, UT, UB> void a(im<UT, UB> imVar, T t, T t2) {
        imVar.a(t, imVar.b(imVar.a(t), imVar.a(t2)));
    }

    public static void a(Class<?> cls) {
        Class<?> cls2;
        if (!gl.class.isAssignableFrom(cls) && (cls2 = f29114a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void a(T t, T t2, long j) {
        ix.a(t, j, hj.a(ix.f(t, j), ix.f(t2, j)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Object obj, Object obj2) {
        boolean z = false;
        if (obj != obj2) {
            if (obj != null) {
                if (!obj.equals(obj2)) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i, List<Long> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return b(list) + (size * fs.d(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i, List<ho> list, ia iaVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += fs.a(i, list.get(i3), iaVar);
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
        if (!(list instanceof he)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += fs.c(list.get(i2).longValue());
                i2++;
            }
        } else {
            he heVar = (he) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += fs.c(heVar.b(i3));
                i3++;
            }
        }
        return i;
    }

    public static im<?, ?> b() {
        return f29116c;
    }

    public static void b(int i, List<fm> list, ft ftVar) throws IOException {
        if (!(list == null || list.isEmpty())) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                ftVar.f29031a.a(i, list.get(i2));
            }
        }
    }

    public static void b(int i, List<?> list, ft ftVar, ia iaVar) throws IOException {
        if (!(list == null || list.isEmpty())) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                ftVar.b(i, list.get(i2), iaVar);
            }
        }
    }

    public static void b(int i, List<Float> list, ft ftVar, boolean z) throws IOException {
        if (!(list == null || list.isEmpty())) {
            if (z) {
                ftVar.f29031a.a(i, 2);
                int i2 = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    list.get(i3).floatValue();
                    i2 += 4;
                }
                ftVar.f29031a.b(i2);
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ftVar.f29031a.c(Float.floatToRawIntBits(list.get(i4).floatValue()));
                }
                return;
            }
            for (int i5 = 0; i5 < list.size(); i5++) {
                ftVar.f29031a.d(i, Float.floatToRawIntBits(list.get(i5).floatValue()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i, List<Long> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return c(list) + (size * fs.d(i));
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
        if (!(list instanceof he)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                long longValue = list.get(i2).longValue();
                i4 += fs.c((longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
        } else {
            he heVar = (he) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                long b2 = heVar.b(i3);
                i5 += fs.c((b2 >> 63) ^ (b2 + b2));
                i3++;
            }
        }
        return i;
    }

    public static im<?, ?> c() {
        return f29117d;
    }

    public static void c(int i, List<Long> list, ft ftVar, boolean z) throws IOException {
        if (!(list == null || list.isEmpty())) {
            if (z) {
                ftVar.f29031a.a(i, 2);
                int i2 = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    i2 += fs.c(list.get(i3).longValue());
                }
                ftVar.f29031a.b(i2);
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ftVar.f29031a.a(list.get(i4).longValue());
                }
                return;
            }
            for (int i5 = 0; i5 < list.size(); i5++) {
                ftVar.f29031a.a(i, list.get(i5).longValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return d(list) + (size * fs.d(i));
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
        if (!(list instanceof gm)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += fs.e(list.get(i2).intValue());
                i2++;
            }
        } else {
            gm gmVar = (gm) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += fs.e(gmVar.c(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, FT extends gc<FT>> void d() {
        throw null;
    }

    public static void d(int i, List<Long> list, ft ftVar, boolean z) throws IOException {
        if (!(list == null || list.isEmpty())) {
            if (z) {
                ftVar.f29031a.a(i, 2);
                int i2 = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    i2 += fs.c(list.get(i3).longValue());
                }
                ftVar.f29031a.b(i2);
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ftVar.f29031a.a(list.get(i4).longValue());
                }
                return;
            }
            for (int i5 = 0; i5 < list.size(); i5++) {
                ftVar.f29031a.a(i, list.get(i5).longValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return e(list) + (size * fs.d(i));
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
        if (!(list instanceof gm)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += fs.e(list.get(i2).intValue());
                i2++;
            }
        } else {
            gm gmVar = (gm) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += fs.e(gmVar.c(i3));
                i3++;
            }
        }
        return i;
    }

    public static void e(int i, List<Long> list, ft ftVar, boolean z) throws IOException {
        if (!(list == null || list.isEmpty())) {
            if (z) {
                ftVar.f29031a.a(i, 2);
                int i2 = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    long longValue = list.get(i3).longValue();
                    i2 += fs.c((longValue >> 63) ^ (longValue + longValue));
                }
                ftVar.f29031a.b(i2);
                for (int i4 = 0; i4 < list.size(); i4++) {
                    fs fsVar = ftVar.f29031a;
                    long longValue2 = list.get(i4).longValue();
                    fsVar.a((longValue2 >> 63) ^ (longValue2 + longValue2));
                }
                return;
            }
            for (int i5 = 0; i5 < list.size(); i5++) {
                fs fsVar2 = ftVar.f29031a;
                long longValue3 = list.get(i5).longValue();
                fsVar2.a(i, (longValue3 >> 63) ^ (longValue3 + longValue3));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return f(list) + (size * fs.d(i));
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
        if (!(list instanceof gm)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += fs.f(list.get(i2).intValue());
                i2++;
            }
        } else {
            gm gmVar = (gm) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += fs.f(gmVar.c(i3));
                i3++;
            }
        }
        return i;
    }

    public static void f(int i, List<Long> list, ft ftVar, boolean z) throws IOException {
        if (!(list == null || list.isEmpty())) {
            if (z) {
                ftVar.f29031a.a(i, 2);
                int i2 = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    list.get(i3).longValue();
                    i2 += 8;
                }
                ftVar.f29031a.b(i2);
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ftVar.f29031a.b(list.get(i4).longValue());
                }
                return;
            }
            for (int i5 = 0; i5 < list.size(); i5++) {
                ftVar.f29031a.b(i, list.get(i5).longValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return g(list) + (size * fs.d(i));
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
        if (!(list instanceof gm)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                int intValue = list.get(i2).intValue();
                i4 += fs.f((intValue >> 31) ^ (intValue + intValue));
                i2++;
            }
        } else {
            gm gmVar = (gm) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                int c2 = gmVar.c(i3);
                i5 += fs.f((c2 >> 31) ^ (c2 + c2));
                i3++;
            }
        }
        return i;
    }

    public static void g(int i, List<Long> list, ft ftVar, boolean z) throws IOException {
        if (!(list == null || list.isEmpty())) {
            if (z) {
                ftVar.f29031a.a(i, 2);
                int i2 = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    list.get(i3).longValue();
                    i2 += 8;
                }
                ftVar.f29031a.b(i2);
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ftVar.f29031a.b(list.get(i4).longValue());
                }
                return;
            }
            for (int i5 = 0; i5 < list.size(); i5++) {
                ftVar.f29031a.b(i, list.get(i5).longValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (fs.f(i << 3) + 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(List<?> list) {
        return list.size() * 4;
    }

    public static void h(int i, List<Integer> list, ft ftVar, boolean z) throws IOException {
        if (!(list == null || list.isEmpty())) {
            if (z) {
                ftVar.f29031a.a(i, 2);
                int i2 = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    i2 += fs.e(list.get(i3).intValue());
                }
                ftVar.f29031a.b(i2);
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ftVar.f29031a.a(list.get(i4).intValue());
                }
                return;
            }
            for (int i5 = 0; i5 < list.size(); i5++) {
                ftVar.f29031a.b(i, list.get(i5).intValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (fs.f(i << 3) + 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(List<?> list) {
        return list.size() * 8;
    }

    public static void i(int i, List<Integer> list, ft ftVar, boolean z) throws IOException {
        if (!(list == null || list.isEmpty())) {
            if (z) {
                ftVar.f29031a.a(i, 2);
                int i2 = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    i2 += fs.f(list.get(i3).intValue());
                }
                ftVar.f29031a.b(i2);
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ftVar.f29031a.b(list.get(i4).intValue());
                }
                return;
            }
            for (int i5 = 0; i5 < list.size(); i5++) {
                ftVar.f29031a.c(i, list.get(i5).intValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (fs.f(i << 3) + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(List<?> list) {
        return list.size();
    }

    public static void j(int i, List<Integer> list, ft ftVar, boolean z) throws IOException {
        if (!(list == null || list.isEmpty())) {
            if (z) {
                ftVar.f29031a.a(i, 2);
                int i2 = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    int intValue = list.get(i3).intValue();
                    i2 += fs.f((intValue >> 31) ^ (intValue + intValue));
                }
                ftVar.f29031a.b(i2);
                for (int i4 = 0; i4 < list.size(); i4++) {
                    fs fsVar = ftVar.f29031a;
                    int intValue2 = list.get(i4).intValue();
                    fsVar.b((intValue2 >> 31) ^ (intValue2 + intValue2));
                }
                return;
            }
            for (int i5 = 0; i5 < list.size(); i5++) {
                fs fsVar2 = ftVar.f29031a;
                int intValue3 = list.get(i5).intValue();
                fsVar2.c(i, (intValue3 >> 31) ^ (intValue3 + intValue3));
            }
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
        int d2 = fs.d(i) * size;
        int i5 = d2;
        if (!(list instanceof gz)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof fm ? fs.a((fm) obj) : fs.a((String) obj);
                i3++;
            }
        } else {
            gz gzVar = (gz) list;
            int i6 = d2;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object c2 = gzVar.c(i4);
                i6 += c2 instanceof fm ? fs.a((fm) c2) : fs.a((String) c2);
                i4++;
            }
        }
        return i2;
    }

    public static void k(int i, List<Integer> list, ft ftVar, boolean z) throws IOException {
        if (!(list == null || list.isEmpty())) {
            if (z) {
                ftVar.f29031a.a(i, 2);
                int i2 = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    list.get(i3).intValue();
                    i2 += 4;
                }
                ftVar.f29031a.b(i2);
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ftVar.f29031a.c(list.get(i4).intValue());
                }
                return;
            }
            for (int i5 = 0; i5 < list.size(); i5++) {
                ftVar.f29031a.d(i, list.get(i5).intValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(int i, List<fm> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int d2 = size * fs.d(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            d2 += fs.a(list.get(i2));
        }
        return d2;
    }

    public static void l(int i, List<Integer> list, ft ftVar, boolean z) throws IOException {
        if (!(list == null || list.isEmpty())) {
            if (z) {
                ftVar.f29031a.a(i, 2);
                int i2 = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    list.get(i3).intValue();
                    i2 += 4;
                }
                ftVar.f29031a.b(i2);
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ftVar.f29031a.c(list.get(i4).intValue());
                }
                return;
            }
            for (int i5 = 0; i5 < list.size(); i5++) {
                ftVar.f29031a.d(i, list.get(i5).intValue());
            }
        }
    }

    public static void m(int i, List<Integer> list, ft ftVar, boolean z) throws IOException {
        if (!(list == null || list.isEmpty())) {
            if (z) {
                ftVar.f29031a.a(i, 2);
                int i2 = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    i2 += fs.e(list.get(i3).intValue());
                }
                ftVar.f29031a.b(i2);
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ftVar.f29031a.a(list.get(i4).intValue());
                }
                return;
            }
            for (int i5 = 0; i5 < list.size(); i5++) {
                ftVar.f29031a.b(i, list.get(i5).intValue());
            }
        }
    }

    public static void n(int i, List<Boolean> list, ft ftVar, boolean z) throws IOException {
        if (!(list == null || list.isEmpty())) {
            if (z) {
                ftVar.f29031a.a(i, 2);
                int i2 = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    list.get(i3).booleanValue();
                    i2++;
                }
                ftVar.f29031a.b(i2);
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ftVar.f29031a.a(list.get(i4).booleanValue() ? (byte) 1 : (byte) 0);
                }
                return;
            }
            for (int i5 = 0; i5 < list.size(); i5++) {
                ftVar.f29031a.a(i, list.get(i5).booleanValue());
            }
        }
    }
}
