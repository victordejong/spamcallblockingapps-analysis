package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dff.class */
public final class dff {

    /* renamed from: a */
    private static final Class<?> f14202a = m9791d();

    /* renamed from: b */
    private static final dfv<?, ?> f14203b = m9804a(false);

    /* renamed from: c */
    private static final dfv<?, ?> f14204c = m9804a(true);

    /* renamed from: d */
    private static final dfv<?, ?> f14205d = new dfx();

    /* renamed from: a */
    public static int m9818a(int i, Object obj, dfd dfdVar) {
        return obj instanceof ddk ? zzebk.m6632a(i, (ddk) obj) : zzebk.m6618b(i, (deg) obj, dfdVar);
    }

    /* renamed from: a */
    public static int m9817a(int i, List<?> list) {
        int m6600e;
        int size = list.size();
        if (size == 0) {
            m6600e = 0;
        } else {
            m6600e = zzebk.m6600e(i) * size;
            if (list instanceof ddm) {
                ddm ddmVar = (ddm) list;
                for (int i2 = 0; i2 < size; i2++) {
                    Object mo9738b = ddmVar.mo9738b(i2);
                    m6600e = (mo9738b instanceof dbi ? zzebk.m6614b((dbi) mo9738b) : zzebk.m6612b((String) mo9738b)) + m6600e;
                }
            } else {
                for (int i3 = 0; i3 < size; i3++) {
                    Object obj = list.get(i3);
                    m6600e = (obj instanceof dbi ? zzebk.m6614b((dbi) obj) : zzebk.m6612b((String) obj)) + m6600e;
                }
            }
        }
        return m6600e;
    }

    /* renamed from: a */
    public static int m9815a(int i, List<?> list, dfd dfdVar) {
        int m6600e;
        int size = list.size();
        if (size == 0) {
            m6600e = 0;
        } else {
            m6600e = zzebk.m6600e(i) * size;
            for (int i2 = 0; i2 < size; i2++) {
                Object obj = list.get(i2);
                m6600e = (obj instanceof ddk ? zzebk.m6631a((ddk) obj) : zzebk.m6630a((deg) obj, dfdVar)) + m6600e;
            }
        }
        return m6600e;
    }

    /* renamed from: a */
    public static int m9811a(int i, List<Long> list, boolean z) {
        return list.size() == 0 ? 0 : m9805a(list) + (list.size() * zzebk.m6600e(i));
    }

    /* renamed from: a */
    public static int m9805a(List<Long> list) {
        int i;
        int size = list.size();
        if (size == 0) {
            i = 0;
        } else if (list instanceof ddu) {
            ddu dduVar = (ddu) list;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                i3 += zzebk.m6601d(dduVar.m10016c(i2));
                i2++;
            }
        } else {
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                i4 += zzebk.m6601d(list.get(i5).longValue());
            }
            i = i4;
        }
        return i;
    }

    /* renamed from: a */
    public static dfv<?, ?> m9820a() {
        return f14203b;
    }

    /* renamed from: a */
    private static dfv<?, ?> m9804a(boolean z) {
        dfv<?, ?> dfvVar;
        try {
            Class<?> m9787e = m9787e();
            dfvVar = m9787e == null ? null : (dfv) m9787e.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            dfvVar = null;
        }
        return dfvVar;
    }

    /* renamed from: a */
    public static <UT, UB> UB m9819a(int i, int i2, UB ub, dfv<UT, UB> dfvVar) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = dfvVar.mo9735a();
        }
        dfvVar.mo9731a((dfv<UT, UB>) ub2, i, i2);
        return ub2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <UT, UB> UB m9816a(int i, List<Integer> list, dda ddaVar, UB ub, dfv<UT, UB> dfvVar) {
        UB ub2;
        if (ddaVar == null) {
            ub2 = ub;
        } else if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = list.get(i3).intValue();
                if (ddaVar.mo8205a(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    ub = m9819a(i, intValue, ub, dfvVar);
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
                if (!ddaVar.mo8205a(intValue2)) {
                    ub = m9819a(i, intValue2, ub, dfvVar);
                    it.remove();
                }
            }
            ub2 = ub;
        }
        return ub2;
    }

    /* renamed from: a */
    public static void m9814a(int i, List<String> list, dgo dgoVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9616a(i, list);
    }

    /* renamed from: a */
    public static void m9813a(int i, List<?> list, dgo dgoVar, dfd dfdVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9615a(i, list, dfdVar);
    }

    /* renamed from: a */
    public static void m9812a(int i, List<Double> list, dgo dgoVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9594g(i, list, z);
    }

    /* renamed from: a */
    public static <T, FT extends dcn<FT>> void m9810a(dck<FT> dckVar, T t, T t2) {
        dcl<FT> mo10129a = dckVar.mo10129a(t2);
        if (!mo10129a.f13991a.isEmpty()) {
            dckVar.mo10127b(t).m10124a(mo10129a);
        }
    }

    /* renamed from: a */
    public static <T> void m9809a(ddz ddzVar, T t, T t2, long j) {
        dgb.m9707a(t, j, ddzVar.mo9997a(dgb.m9684f(t, j), dgb.m9684f(t2, j)));
    }

    /* renamed from: a */
    public static <T, UT, UB> void m9808a(dfv<UT, UB> dfvVar, T t, T t2) {
        dfvVar.mo9726a(t, dfvVar.mo9720c(dfvVar.mo9725b(t), dfvVar.mo9725b(t2)));
    }

    /* renamed from: a */
    public static void m9807a(Class<?> cls) {
        if (dcw.class.isAssignableFrom(cls) || f14202a == null || f14202a.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    /* renamed from: a */
    public static boolean m9806a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: b */
    public static int m9802b(int i, List<dbi> list) {
        int m6600e;
        int size = list.size();
        if (size == 0) {
            m6600e = 0;
        } else {
            m6600e = zzebk.m6600e(i) * size;
            for (int i2 = 0; i2 < list.size(); i2++) {
                m6600e += zzebk.m6614b(list.get(i2));
            }
        }
        return m6600e;
    }

    /* renamed from: b */
    public static int m9801b(int i, List<deg> list, dfd dfdVar) {
        int i2 = 0;
        int size = list.size();
        if (size != 0) {
            i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += zzebk.m6606c(i, list.get(i3), dfdVar);
            }
        }
        return i2;
    }

    /* renamed from: b */
    public static int m9797b(int i, List<Long> list, boolean z) {
        int m6600e;
        int size = list.size();
        if (size == 0) {
            m6600e = 0;
        } else {
            m6600e = (size * zzebk.m6600e(i)) + m9796b(list);
        }
        return m6600e;
    }

    /* renamed from: b */
    public static int m9796b(List<Long> list) {
        int i;
        int size = list.size();
        if (size == 0) {
            i = 0;
        } else if (list instanceof ddu) {
            ddu dduVar = (ddu) list;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                i3 += zzebk.m6598e(dduVar.m10016c(i2));
                i2++;
            }
        } else {
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                i4 += zzebk.m6598e(list.get(i5).longValue());
            }
            i = i4;
        }
        return i;
    }

    /* renamed from: b */
    public static dfv<?, ?> m9803b() {
        return f14204c;
    }

    /* renamed from: b */
    public static void m9800b(int i, List<dbi> list, dgo dgoVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9608b(i, list);
    }

    /* renamed from: b */
    public static void m9799b(int i, List<?> list, dgo dgoVar, dfd dfdVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9607b(i, list, dfdVar);
    }

    /* renamed from: b */
    public static void m9798b(int i, List<Float> list, dgo dgoVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9595f(i, list, z);
    }

    /* renamed from: c */
    public static int m9793c(int i, List<Long> list, boolean z) {
        int m6600e;
        int size = list.size();
        if (size == 0) {
            m6600e = 0;
        } else {
            m6600e = (size * zzebk.m6600e(i)) + m9792c(list);
        }
        return m6600e;
    }

    /* renamed from: c */
    public static int m9792c(List<Long> list) {
        int i;
        int size = list.size();
        if (size == 0) {
            i = 0;
        } else if (list instanceof ddu) {
            ddu dduVar = (ddu) list;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                i3 += zzebk.m6594f(dduVar.m10016c(i2));
                i2++;
            }
        } else {
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                i4 += zzebk.m6594f(list.get(i5).longValue());
            }
            i = i4;
        }
        return i;
    }

    /* renamed from: c */
    public static dfv<?, ?> m9795c() {
        return f14205d;
    }

    /* renamed from: c */
    public static void m9794c(int i, List<Long> list, dgo dgoVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9603c(i, list, z);
    }

    /* renamed from: d */
    public static int m9789d(int i, List<Integer> list, boolean z) {
        int m6600e;
        int size = list.size();
        if (size == 0) {
            m6600e = 0;
        } else {
            m6600e = (size * zzebk.m6600e(i)) + m9788d(list);
        }
        return m6600e;
    }

    /* renamed from: d */
    public static int m9788d(List<Integer> list) {
        int i;
        int size = list.size();
        if (size == 0) {
            i = 0;
        } else if (list instanceof dcx) {
            dcx dcxVar = (dcx) list;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                i3 += zzebk.m6580k(dcxVar.m10054c(i2));
                i2++;
            }
        } else {
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                i4 += zzebk.m6580k(list.get(i5).intValue());
            }
            i = i4;
        }
        return i;
    }

    /* renamed from: d */
    private static Class<?> m9791d() {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            cls = null;
        }
        return cls;
    }

    /* renamed from: d */
    public static void m9790d(int i, List<Long> list, dgo dgoVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9600d(i, list, z);
    }

    /* renamed from: e */
    public static int m9785e(int i, List<Integer> list, boolean z) {
        int m6600e;
        int size = list.size();
        if (size == 0) {
            m6600e = 0;
        } else {
            m6600e = (size * zzebk.m6600e(i)) + m9784e(list);
        }
        return m6600e;
    }

    /* renamed from: e */
    public static int m9784e(List<Integer> list) {
        int i;
        int size = list.size();
        if (size == 0) {
            i = 0;
        } else if (list instanceof dcx) {
            dcx dcxVar = (dcx) list;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                i3 += zzebk.m6597f(dcxVar.m10054c(i2));
                i2++;
            }
        } else {
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                i4 += zzebk.m6597f(list.get(i5).intValue());
            }
            i = i4;
        }
        return i;
    }

    /* renamed from: e */
    private static Class<?> m9787e() {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            cls = null;
        }
        return cls;
    }

    /* renamed from: e */
    public static void m9786e(int i, List<Long> list, dgo dgoVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9587n(i, list, z);
    }

    /* renamed from: f */
    public static int m9782f(int i, List<Integer> list, boolean z) {
        int m6600e;
        int size = list.size();
        if (size == 0) {
            m6600e = 0;
        } else {
            m6600e = (size * zzebk.m6600e(i)) + m9781f(list);
        }
        return m6600e;
    }

    /* renamed from: f */
    public static int m9781f(List<Integer> list) {
        int i;
        int size = list.size();
        if (size == 0) {
            i = 0;
        } else if (list instanceof dcx) {
            dcx dcxVar = (dcx) list;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                i3 += zzebk.m6593g(dcxVar.m10054c(i2));
                i2++;
            }
        } else {
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                i4 += zzebk.m6593g(list.get(i5).intValue());
            }
            i = i4;
        }
        return i;
    }

    /* renamed from: f */
    public static void m9783f(int i, List<Long> list, dgo dgoVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9597e(i, list, z);
    }

    /* renamed from: g */
    public static int m9779g(int i, List<Integer> list, boolean z) {
        int m6600e;
        int size = list.size();
        if (size == 0) {
            m6600e = 0;
        } else {
            m6600e = (size * zzebk.m6600e(i)) + m9778g(list);
        }
        return m6600e;
    }

    /* renamed from: g */
    public static int m9778g(List<Integer> list) {
        int i;
        int size = list.size();
        if (size == 0) {
            i = 0;
        } else if (list instanceof dcx) {
            dcx dcxVar = (dcx) list;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                i3 += zzebk.m6589h(dcxVar.m10054c(i2));
                i2++;
            }
        } else {
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                i4 += zzebk.m6589h(list.get(i5).intValue());
            }
            i = i4;
        }
        return i;
    }

    /* renamed from: g */
    public static void m9780g(int i, List<Long> list, dgo dgoVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9589l(i, list, z);
    }

    /* renamed from: h */
    public static int m9776h(int i, List<?> list, boolean z) {
        int size = list.size();
        return size == 0 ? 0 : zzebk.m6584i(i, 0) * size;
    }

    /* renamed from: h */
    public static int m9775h(List<?> list) {
        return list.size() << 2;
    }

    /* renamed from: h */
    public static void m9777h(int i, List<Integer> list, dgo dgoVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9614a(i, list, z);
    }

    /* renamed from: i */
    public static int m9773i(int i, List<?> list, boolean z) {
        int size = list.size();
        return size == 0 ? 0 : size * zzebk.m6591g(i, 0L);
    }

    /* renamed from: i */
    public static int m9772i(List<?> list) {
        return list.size() << 3;
    }

    /* renamed from: i */
    public static void m9774i(int i, List<Integer> list, dgo dgoVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9591j(i, list, z);
    }

    /* renamed from: j */
    public static int m9770j(int i, List<?> list, boolean z) {
        int size = list.size();
        return size == 0 ? 0 : size * zzebk.m6616b(i, true);
    }

    /* renamed from: j */
    public static int m9769j(List<?> list) {
        return list.size();
    }

    /* renamed from: j */
    public static void m9771j(int i, List<Integer> list, dgo dgoVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9588m(i, list, z);
    }

    /* renamed from: k */
    public static void m9768k(int i, List<Integer> list, dgo dgoVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9606b(i, list, z);
    }

    /* renamed from: l */
    public static void m9767l(int i, List<Integer> list, dgo dgoVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9590k(i, list, z);
    }

    /* renamed from: m */
    public static void m9766m(int i, List<Integer> list, dgo dgoVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9593h(i, list, z);
    }

    /* renamed from: n */
    public static void m9765n(int i, List<Boolean> list, dgo dgoVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        dgoVar.mo9592i(i, list, z);
    }
}
