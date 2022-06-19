package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.ic */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ic.class */
public final class C13571ic {

    /* renamed from: a */
    private static final Class<?> f50829a;

    /* renamed from: b */
    private static final AbstractC13581im<?, ?> f50830b;

    /* renamed from: c */
    private static final AbstractC13581im<?, ?> f50831c;

    /* renamed from: d */
    private static final AbstractC13581im<?, ?> f50832d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            cls = null;
        }
        f50829a = cls;
        f50830b = m12632a(false);
        f50831c = m12632a(true);
        f50832d = new C13583io();
    }

    /* renamed from: a */
    public static int m12644a(int i, Object obj, AbstractC13569ia abstractC13569ia) {
        if (obj instanceof C13538gx) {
            int m12821f = AbstractC13506fs.m12821f(i << 3);
            int m12739a = ((C13538gx) obj).m12739a();
            return m12821f + AbstractC13506fs.m12821f(m12739a) + m12739a;
        }
        return AbstractC13506fs.m12821f(i << 3) + AbstractC13506fs.m12838a((AbstractC13556ho) obj, abstractC13569ia);
    }

    /* renamed from: a */
    public static int m12643a(int i, List<Long> list) {
        if (list.size() == 0) {
            return 0;
        }
        return m12633a(list) + (list.size() * AbstractC13506fs.m12824d(i));
    }

    /* renamed from: a */
    public static int m12638a(int i, List<?> list, AbstractC13569ia abstractC13569ia) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m12824d = AbstractC13506fs.m12824d(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            m12824d += obj instanceof C13538gx ? AbstractC13506fs.m12839a((C13538gx) obj) : AbstractC13506fs.m12838a((AbstractC13556ho) obj, abstractC13569ia);
        }
        return m12824d;
    }

    /* renamed from: a */
    public static int m12633a(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C13546he)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += AbstractC13506fs.m12825c(list.get(i4).longValue());
                i4++;
            }
        } else {
            C13546he c13546he = (C13546he) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += AbstractC13506fs.m12825c(c13546he.mo12729b(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: a */
    public static AbstractC13581im<?, ?> m12646a() {
        return f50830b;
    }

    /* renamed from: a */
    private static AbstractC13581im<?, ?> m12632a(boolean z) {
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
            return (AbstractC13581im) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th2) {
            return null;
        }
    }

    /* renamed from: a */
    private static <UT, UB> UB m12645a(int i, int i2, UB ub, AbstractC13581im<UT, UB> abstractC13581im) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = abstractC13581im.mo12566a();
        }
        abstractC13581im.mo12564a(ub2, i, i2);
        return ub2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <UT, UB> UB m12639a(int i, List<Integer> list, AbstractC13530gp abstractC13530gp, UB ub, AbstractC13581im<UT, UB> abstractC13581im) {
        UB ub2;
        if (abstractC13530gp == null) {
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
                if (!abstractC13530gp.mo12752a(intValue)) {
                    ub = m12645a(i, intValue, ub, abstractC13581im);
                    it2.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (abstractC13530gp.mo12752a(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = m12645a(i, intValue2, ub, abstractC13581im);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return ub;
            }
            ub2 = ub;
        }
        return ub2;
    }

    /* renamed from: a */
    public static void m12642a(int i, List<String> list, C13507ft c13507ft) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!(list instanceof AbstractC13540gz)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c13507ft.f50730a.mo12843a(i, list.get(i2));
            }
            return;
        }
        AbstractC13540gz abstractC13540gz = (AbstractC13540gz) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object mo12554c = abstractC13540gz.mo12554c(i3);
            if (mo12554c instanceof String) {
                c13507ft.f50730a.mo12843a(i, (String) mo12554c);
            } else {
                c13507ft.f50730a.mo12845a(i, (AbstractC13500fm) mo12554c);
            }
        }
    }

    /* renamed from: a */
    public static void m12641a(int i, List<?> list, C13507ft c13507ft, AbstractC13569ia abstractC13569ia) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            c13507ft.m12815a(i, list.get(i2), abstractC13569ia);
        }
    }

    /* renamed from: a */
    public static void m12640a(int i, List<Double> list, C13507ft c13507ft, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c13507ft.f50730a.mo12831b(i, Double.doubleToRawLongBits(list.get(i2).doubleValue()));
            }
            return;
        }
        c13507ft.f50730a.mo12847a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).doubleValue();
            i3 += 8;
        }
        c13507ft.f50730a.mo12833b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c13507ft.f50730a.mo12830b(Double.doubleToRawLongBits(list.get(i5).doubleValue()));
        }
    }

    /* renamed from: a */
    public static <T, UT, UB> void m12637a(AbstractC13581im<UT, UB> abstractC13581im, T t, T t2) {
        abstractC13581im.mo12562a(t, abstractC13581im.mo12560b(abstractC13581im.mo12565a(t), abstractC13581im.mo12565a(t2)));
    }

    /* renamed from: a */
    public static void m12636a(Class<?> cls) {
        Class<?> cls2;
        if (AbstractC13526gl.class.isAssignableFrom(cls) || (cls2 = f50829a) == null || cls2.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    /* renamed from: a */
    public static <T> void m12634a(T t, T t2, long j) {
        C13592ix.m12531a(t, j, C13551hj.m12718a(C13592ix.m12512f(t, j), C13592ix.m12512f(t2, j)));
    }

    /* renamed from: a */
    public static boolean m12635a(Object obj, Object obj2) {
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

    /* renamed from: b */
    public static int m12630b(int i, List<Long> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m12625b(list) + (size * AbstractC13506fs.m12824d(i));
    }

    /* renamed from: b */
    public static int m12626b(int i, List<AbstractC13556ho> list, AbstractC13569ia abstractC13569ia) {
        int size = list.size();
        if (size != 0) {
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += AbstractC13506fs.m12844a(i, list.get(i3), abstractC13569ia);
            }
            return i2;
        }
        return 0;
    }

    /* renamed from: b */
    public static int m12625b(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C13546he)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += AbstractC13506fs.m12825c(list.get(i4).longValue());
                i4++;
            }
        } else {
            C13546he c13546he = (C13546he) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += AbstractC13506fs.m12825c(c13546he.mo12729b(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: b */
    public static AbstractC13581im<?, ?> m12631b() {
        return f50831c;
    }

    /* renamed from: b */
    public static void m12629b(int i, List<AbstractC13500fm> list, C13507ft c13507ft) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            c13507ft.f50730a.mo12845a(i, list.get(i2));
        }
    }

    /* renamed from: b */
    public static void m12628b(int i, List<?> list, C13507ft c13507ft, AbstractC13569ia abstractC13569ia) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            c13507ft.m12810b(i, list.get(i2), abstractC13569ia);
        }
    }

    /* renamed from: b */
    public static void m12627b(int i, List<Float> list, C13507ft c13507ft, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c13507ft.f50730a.mo12823d(i, Float.floatToRawIntBits(list.get(i2).floatValue()));
            }
            return;
        }
        c13507ft.f50730a.mo12847a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).floatValue();
            i3 += 4;
        }
        c13507ft.f50730a.mo12833b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c13507ft.f50730a.mo12827c(Float.floatToRawIntBits(list.get(i5).floatValue()));
        }
    }

    /* renamed from: c */
    public static int m12623c(int i, List<Long> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m12621c(list) + (size * AbstractC13506fs.m12824d(i));
    }

    /* renamed from: c */
    public static int m12621c(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C13546he)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                long longValue = list.get(i4).longValue();
                i3 += AbstractC13506fs.m12825c((longValue >> 63) ^ (longValue + longValue));
                i4++;
            }
        } else {
            C13546he c13546he = (C13546he) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                long mo12729b = c13546he.mo12729b(i2);
                i5 += AbstractC13506fs.m12825c((mo12729b >> 63) ^ (mo12729b + mo12729b));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: c */
    public static AbstractC13581im<?, ?> m12624c() {
        return f50832d;
    }

    /* renamed from: c */
    public static void m12622c(int i, List<Long> list, C13507ft c13507ft, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c13507ft.f50730a.mo12846a(i, list.get(i2).longValue());
            }
            return;
        }
        c13507ft.f50730a.mo12847a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC13506fs.m12825c(list.get(i4).longValue());
        }
        c13507ft.f50730a.mo12833b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c13507ft.f50730a.mo12841a(list.get(i5).longValue());
        }
    }

    /* renamed from: d */
    public static int m12619d(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m12617d(list) + (size * AbstractC13506fs.m12824d(i));
    }

    /* renamed from: d */
    public static int m12617d(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C13527gm)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += AbstractC13506fs.m12822e(list.get(i4).intValue());
                i4++;
            }
        } else {
            C13527gm c13527gm = (C13527gm) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += AbstractC13506fs.m12822e(c13527gm.m12757c(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: d */
    public static <T, FT extends AbstractC13517gc<FT>> void m12620d() {
        throw null;
    }

    /* renamed from: d */
    public static void m12618d(int i, List<Long> list, C13507ft c13507ft, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c13507ft.f50730a.mo12846a(i, list.get(i2).longValue());
            }
            return;
        }
        c13507ft.f50730a.mo12847a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC13506fs.m12825c(list.get(i4).longValue());
        }
        c13507ft.f50730a.mo12833b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c13507ft.f50730a.mo12841a(list.get(i5).longValue());
        }
    }

    /* renamed from: e */
    public static int m12616e(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m12614e(list) + (size * AbstractC13506fs.m12824d(i));
    }

    /* renamed from: e */
    public static int m12614e(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C13527gm)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += AbstractC13506fs.m12822e(list.get(i4).intValue());
                i4++;
            }
        } else {
            C13527gm c13527gm = (C13527gm) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += AbstractC13506fs.m12822e(c13527gm.m12757c(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: e */
    public static void m12615e(int i, List<Long> list, C13507ft c13507ft, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                AbstractC13506fs abstractC13506fs = c13507ft.f50730a;
                long longValue = list.get(i2).longValue();
                abstractC13506fs.mo12846a(i, (longValue >> 63) ^ (longValue + longValue));
            }
            return;
        }
        c13507ft.f50730a.mo12847a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = list.get(i4).longValue();
            i3 += AbstractC13506fs.m12825c((longValue2 >> 63) ^ (longValue2 + longValue2));
        }
        c13507ft.f50730a.mo12833b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            AbstractC13506fs abstractC13506fs2 = c13507ft.f50730a;
            long longValue3 = list.get(i5).longValue();
            abstractC13506fs2.mo12841a((longValue3 >> 63) ^ (longValue3 + longValue3));
        }
    }

    /* renamed from: f */
    public static int m12613f(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m12611f(list) + (size * AbstractC13506fs.m12824d(i));
    }

    /* renamed from: f */
    public static int m12611f(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C13527gm)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += AbstractC13506fs.m12821f(list.get(i4).intValue());
                i4++;
            }
        } else {
            C13527gm c13527gm = (C13527gm) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += AbstractC13506fs.m12821f(c13527gm.m12757c(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: f */
    public static void m12612f(int i, List<Long> list, C13507ft c13507ft, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c13507ft.f50730a.mo12831b(i, list.get(i2).longValue());
            }
            return;
        }
        c13507ft.f50730a.mo12847a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        c13507ft.f50730a.mo12833b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c13507ft.f50730a.mo12830b(list.get(i5).longValue());
        }
    }

    /* renamed from: g */
    public static int m12610g(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m12608g(list) + (size * AbstractC13506fs.m12824d(i));
    }

    /* renamed from: g */
    public static int m12608g(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C13527gm)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                int intValue = list.get(i4).intValue();
                i3 += AbstractC13506fs.m12821f((intValue >> 31) ^ (intValue + intValue));
                i4++;
            }
        } else {
            C13527gm c13527gm = (C13527gm) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                int m12757c = c13527gm.m12757c(i2);
                i5 += AbstractC13506fs.m12821f((m12757c >> 31) ^ (m12757c + m12757c));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: g */
    public static void m12609g(int i, List<Long> list, C13507ft c13507ft, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c13507ft.f50730a.mo12831b(i, list.get(i2).longValue());
            }
            return;
        }
        c13507ft.f50730a.mo12847a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        c13507ft.f50730a.mo12833b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c13507ft.f50730a.mo12830b(list.get(i5).longValue());
        }
    }

    /* renamed from: h */
    public static int m12607h(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (AbstractC13506fs.m12821f(i << 3) + 4);
    }

    /* renamed from: h */
    public static int m12605h(List<?> list) {
        return list.size() * 4;
    }

    /* renamed from: h */
    public static void m12606h(int i, List<Integer> list, C13507ft c13507ft, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c13507ft.f50730a.mo12832b(i, list.get(i2).intValue());
            }
            return;
        }
        c13507ft.f50730a.mo12847a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC13506fs.m12822e(list.get(i4).intValue());
        }
        c13507ft.f50730a.mo12833b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c13507ft.f50730a.mo12848a(list.get(i5).intValue());
        }
    }

    /* renamed from: i */
    public static int m12604i(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (AbstractC13506fs.m12821f(i << 3) + 8);
    }

    /* renamed from: i */
    public static int m12602i(List<?> list) {
        return list.size() * 8;
    }

    /* renamed from: i */
    public static void m12603i(int i, List<Integer> list, C13507ft c13507ft, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c13507ft.f50730a.mo12826c(i, list.get(i2).intValue());
            }
            return;
        }
        c13507ft.f50730a.mo12847a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC13506fs.m12821f(list.get(i4).intValue());
        }
        c13507ft.f50730a.mo12833b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c13507ft.f50730a.mo12833b(list.get(i5).intValue());
        }
    }

    /* renamed from: j */
    public static int m12601j(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (AbstractC13506fs.m12821f(i << 3) + 1);
    }

    /* renamed from: j */
    public static int m12599j(List<?> list) {
        return list.size();
    }

    /* renamed from: j */
    public static void m12600j(int i, List<Integer> list, C13507ft c13507ft, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                AbstractC13506fs abstractC13506fs = c13507ft.f50730a;
                int intValue = list.get(i2).intValue();
                abstractC13506fs.mo12826c(i, (intValue >> 31) ^ (intValue + intValue));
            }
            return;
        }
        c13507ft.f50730a.mo12847a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int intValue2 = list.get(i4).intValue();
            i3 += AbstractC13506fs.m12821f((intValue2 >> 31) ^ (intValue2 + intValue2));
        }
        c13507ft.f50730a.mo12833b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            AbstractC13506fs abstractC13506fs2 = c13507ft.f50730a;
            int intValue3 = list.get(i5).intValue();
            abstractC13506fs2.mo12833b((intValue3 >> 31) ^ (intValue3 + intValue3));
        }
    }

    /* renamed from: k */
    public static int m12598k(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int m12824d = AbstractC13506fs.m12824d(i) * size;
        int i4 = m12824d;
        if (!(list instanceof AbstractC13540gz)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 += obj instanceof AbstractC13500fm ? AbstractC13506fs.m12840a((AbstractC13500fm) obj) : AbstractC13506fs.m12837a((String) obj);
                i3++;
            }
        } else {
            AbstractC13540gz abstractC13540gz = (AbstractC13540gz) list;
            int i5 = m12824d;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object mo12554c = abstractC13540gz.mo12554c(i6);
                i5 += mo12554c instanceof AbstractC13500fm ? AbstractC13506fs.m12840a((AbstractC13500fm) mo12554c) : AbstractC13506fs.m12837a((String) mo12554c);
                i6++;
            }
        }
        return i2;
    }

    /* renamed from: k */
    public static void m12597k(int i, List<Integer> list, C13507ft c13507ft, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c13507ft.f50730a.mo12823d(i, list.get(i2).intValue());
            }
            return;
        }
        c13507ft.f50730a.mo12847a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        c13507ft.f50730a.mo12833b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c13507ft.f50730a.mo12827c(list.get(i5).intValue());
        }
    }

    /* renamed from: l */
    public static int m12596l(int i, List<AbstractC13500fm> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m12824d = size * AbstractC13506fs.m12824d(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            m12824d += AbstractC13506fs.m12840a(list.get(i2));
        }
        return m12824d;
    }

    /* renamed from: l */
    public static void m12595l(int i, List<Integer> list, C13507ft c13507ft, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c13507ft.f50730a.mo12823d(i, list.get(i2).intValue());
            }
            return;
        }
        c13507ft.f50730a.mo12847a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        c13507ft.f50730a.mo12833b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c13507ft.f50730a.mo12827c(list.get(i5).intValue());
        }
    }

    /* renamed from: m */
    public static void m12594m(int i, List<Integer> list, C13507ft c13507ft, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c13507ft.f50730a.mo12832b(i, list.get(i2).intValue());
            }
            return;
        }
        c13507ft.f50730a.mo12847a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC13506fs.m12822e(list.get(i4).intValue());
        }
        c13507ft.f50730a.mo12833b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c13507ft.f50730a.mo12848a(list.get(i5).intValue());
        }
    }

    /* renamed from: n */
    public static void m12593n(int i, List<Boolean> list, C13507ft c13507ft, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c13507ft.f50730a.mo12842a(i, list.get(i2).booleanValue());
            }
            return;
        }
        c13507ft.f50730a.mo12847a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).booleanValue();
            i3++;
        }
        c13507ft.f50730a.mo12833b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c13507ft.f50730a.mo12849a(list.get(i5).booleanValue() ? (byte) 1 : (byte) 0);
        }
    }
}
