package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpr.class */
public final class dpr {

    /* renamed from: a */
    private static final Class<?> f47386a = m16083d();

    /* renamed from: b */
    private static final dqh<?, ?> f47387b = m16095a(false);

    /* renamed from: c */
    private static final dqh<?, ?> f47388c = m16095a(true);

    /* renamed from: d */
    private static final dqh<?, ?> f47389d = new dqi();

    /* renamed from: a */
    public static int m16108a(int i, Object obj, dpp dppVar) {
        return obj instanceof dnx ? zzemk.m13715a(i, (dnx) obj) : zzemk.m13705b(i, (dot) obj, dppVar);
    }

    /* renamed from: a */
    public static int m16107a(int i, List<Long> list) {
        if (list.size() == 0) {
            return 0;
        }
        return m16096a(list) + (list.size() * zzemk.m13667l(i));
    }

    /* renamed from: a */
    public static int m16105a(int i, List<?> list, dpp dppVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m13667l = zzemk.m13667l(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            m13667l += obj instanceof dnx ? zzemk.m13714a((dnx) obj) : zzemk.m13713a((dot) obj, dppVar);
        }
        return m13667l;
    }

    /* renamed from: a */
    public static int m16096a(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof doh)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzemk.m13689d(list.get(i4).longValue());
                i4++;
            }
        } else {
            doh dohVar = (doh) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzemk.m13689d(dohVar.m16284c(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: a */
    public static dqh<?, ?> m16110a() {
        return f47387b;
    }

    /* renamed from: a */
    private static dqh<?, ?> m16095a(boolean z) {
        try {
            Class<?> m16079e = m16079e();
            if (m16079e != null) {
                return (dqh) m16079e.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static <UT, UB> UB m16109a(int i, int i2, UB ub, dqh<UT, UB> dqhVar) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = dqhVar.mo16027a();
        }
        dqhVar.mo16024a((dqh<UT, UB>) ub2, i, i2);
        return ub2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <UT, UB> UB m16106a(int i, List<Integer> list, dno dnoVar, UB ub, dqh<UT, UB> dqhVar) {
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
                if (!dnoVar.mo14867a(intValue)) {
                    ub = m16109a(i, intValue, ub, dqhVar);
                    it2.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (dnoVar.mo14867a(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = m16109a(i, intValue2, ub, dqhVar);
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
    public static void m16104a(int i, List<String> list, drd drdVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15911a(i, list);
    }

    /* renamed from: a */
    public static void m16103a(int i, List<?> list, drd drdVar, dpp dppVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15910a(i, list, dppVar);
    }

    /* renamed from: a */
    public static void m16102a(int i, List<Double> list, drd drdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15889g(i, list, z);
    }

    /* renamed from: a */
    public static <T, FT extends dnb<FT>> void m16101a(dmv<FT> dmvVar, T t, T t2) {
        dmz<FT> mo16387a = dmvVar.mo16387a(t2);
        if (!mo16387a.f47260a.isEmpty()) {
            dmz<FT> mo16384b = dmvVar.mo16384b(t);
            for (int i = 0; i < mo16387a.f47260a.m16044c(); i++) {
                mo16384b.m16373a(mo16387a.f47260a.m16046b(i));
            }
            for (Map.Entry<FT, Object> entry : mo16387a.f47260a.m16041d()) {
                mo16384b.m16373a(entry);
            }
        }
    }

    /* renamed from: a */
    public static <T> void m16100a(dom domVar, T t, T t2, long j) {
        dqm.m15987a(t, j, domVar.mo16269a(dqm.m15966f(t, j), dqm.m15966f(t2, j)));
    }

    /* renamed from: a */
    public static <T, UT, UB> void m16099a(dqh<UT, UB> dqhVar, T t, T t2) {
        dqhVar.mo16019a(t, dqhVar.mo16013c(dqhVar.mo16018b(t), dqhVar.mo16018b(t2)));
    }

    /* renamed from: a */
    public static void m16098a(Class<?> cls) {
        Class<?> cls2;
        if (dnh.class.isAssignableFrom(cls) || (cls2 = f47386a) == null || cls2.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    /* renamed from: a */
    public static boolean m16097a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: b */
    public static int m16093b(int i, List<Long> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m16088b(list) + (size * zzemk.m13667l(i));
    }

    /* renamed from: b */
    public static int m16092b(int i, List<dot> list, dpp dppVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzemk.m13695c(i, list.get(i3), dppVar);
        }
        return i2;
    }

    /* renamed from: b */
    public static int m16088b(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof doh)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzemk.m13685e(list.get(i4).longValue());
                i4++;
            }
        } else {
            doh dohVar = (doh) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzemk.m13685e(dohVar.m16284c(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: b */
    public static dqh<?, ?> m16094b() {
        return f47388c;
    }

    /* renamed from: b */
    public static void m16091b(int i, List<dlw> list, drd drdVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15903b(i, list);
    }

    /* renamed from: b */
    public static void m16090b(int i, List<?> list, drd drdVar, dpp dppVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15902b(i, list, dppVar);
    }

    /* renamed from: b */
    public static void m16089b(int i, List<Float> list, drd drdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15890f(i, list, z);
    }

    /* renamed from: c */
    public static int m16086c(int i, List<Long> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m16084c(list) + (size * zzemk.m13667l(i));
    }

    /* renamed from: c */
    public static int m16084c(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof doh)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzemk.m13680f(list.get(i4).longValue());
                i4++;
            }
        } else {
            doh dohVar = (doh) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzemk.m13680f(dohVar.m16284c(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: c */
    public static dqh<?, ?> m16087c() {
        return f47389d;
    }

    /* renamed from: c */
    public static void m16085c(int i, List<Long> list, drd drdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15898c(i, list, z);
    }

    /* renamed from: d */
    public static int m16082d(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m16080d(list) + (size * zzemk.m13667l(i));
    }

    /* renamed from: d */
    public static int m16080d(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof dnk)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzemk.m13663p(list.get(i4).intValue());
                i4++;
            }
        } else {
            dnk dnkVar = (dnk) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzemk.m13663p(dnkVar.m16309c(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: d */
    private static Class<?> m16083d() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    public static void m16081d(int i, List<Long> list, drd drdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15895d(i, list, z);
    }

    /* renamed from: e */
    public static int m16078e(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m16076e(list) + (size * zzemk.m13667l(i));
    }

    /* renamed from: e */
    public static int m16076e(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof dnk)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzemk.m13666m(list.get(i4).intValue());
                i4++;
            }
        } else {
            dnk dnkVar = (dnk) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzemk.m13666m(dnkVar.m16309c(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: e */
    private static Class<?> m16079e() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: e */
    public static void m16077e(int i, List<Long> list, drd drdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15882n(i, list, z);
    }

    /* renamed from: f */
    public static int m16075f(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m16073f(list) + (size * zzemk.m13667l(i));
    }

    /* renamed from: f */
    public static int m16073f(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof dnk)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzemk.m13665n(list.get(i4).intValue());
                i4++;
            }
        } else {
            dnk dnkVar = (dnk) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzemk.m13665n(dnkVar.m16309c(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: f */
    public static void m16074f(int i, List<Long> list, drd drdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15892e(i, list, z);
    }

    /* renamed from: g */
    public static int m16072g(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m16070g(list) + (size * zzemk.m13667l(i));
    }

    /* renamed from: g */
    public static int m16070g(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof dnk)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzemk.m13664o(list.get(i4).intValue());
                i4++;
            }
        } else {
            dnk dnkVar = (dnk) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzemk.m13664o(dnkVar.m16309c(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: g */
    public static void m16071g(int i, List<Long> list, drd drdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15884l(i, list, z);
    }

    /* renamed from: h */
    public static int m16069h(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzemk.m13687e(i);
    }

    /* renamed from: h */
    public static int m16067h(List<?> list) {
        return list.size() << 2;
    }

    /* renamed from: h */
    public static void m16068h(int i, List<Integer> list, drd drdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15909a(i, list, z);
    }

    /* renamed from: i */
    public static int m16066i(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzemk.m13678g(i);
    }

    /* renamed from: i */
    public static int m16064i(List<?> list) {
        return list.size() << 3;
    }

    /* renamed from: i */
    public static void m16065i(int i, List<Integer> list, drd drdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15886j(i, list, z);
    }

    /* renamed from: j */
    public static int m16063j(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzemk.m13668k(i);
    }

    /* renamed from: j */
    public static int m16061j(List<?> list) {
        return list.size();
    }

    /* renamed from: j */
    public static void m16062j(int i, List<Integer> list, drd drdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15883m(i, list, z);
    }

    /* renamed from: k */
    public static int m16060k(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int m13667l = zzemk.m13667l(i) * size;
        int i4 = m13667l;
        if (!(list instanceof dnz)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 += obj instanceof dlw ? zzemk.m13702b((dlw) obj) : zzemk.m13700b((String) obj);
                i3++;
            }
        } else {
            dnz dnzVar = (dnz) list;
            int i5 = m13667l;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object mo15997b = dnzVar.mo15997b(i6);
                i5 += mo15997b instanceof dlw ? zzemk.m13702b((dlw) mo15997b) : zzemk.m13700b((String) mo15997b);
                i6++;
            }
        }
        return i2;
    }

    /* renamed from: k */
    public static void m16059k(int i, List<Integer> list, drd drdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15901b(i, list, z);
    }

    /* renamed from: l */
    public static int m16058l(int i, List<dlw> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m13667l = size * zzemk.m13667l(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            m13667l += zzemk.m13702b(list.get(i2));
        }
        return m13667l;
    }

    /* renamed from: l */
    public static void m16057l(int i, List<Integer> list, drd drdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15885k(i, list, z);
    }

    /* renamed from: m */
    public static void m16056m(int i, List<Integer> list, drd drdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15888h(i, list, z);
    }

    /* renamed from: n */
    public static void m16055n(int i, List<Boolean> list, drd drdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        drdVar.mo15887i(i, list, z);
    }
}
