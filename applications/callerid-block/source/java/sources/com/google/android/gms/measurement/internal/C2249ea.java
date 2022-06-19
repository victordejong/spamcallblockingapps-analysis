package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.b2;
import com.google.android.gms.internal.measurement.c2;
import com.google.android.gms.internal.measurement.d2;
import com.google.android.gms.internal.measurement.e2;
import com.google.android.gms.internal.measurement.j1;
import com.google.android.gms.internal.measurement.k1;
import com.google.android.gms.internal.measurement.k9;
import com.google.android.gms.internal.measurement.l1;
import com.google.android.gms.internal.measurement.n1;
import d.e.a;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.ea */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ea.class */
final class C2249ea {

    /* renamed from: a */
    private String f10169a;

    /* renamed from: b */
    private boolean f10170b;

    /* renamed from: c */
    private c2 f10171c;

    /* renamed from: d */
    private BitSet f10172d;

    /* renamed from: e */
    private BitSet f10173e;

    /* renamed from: f */
    private Map<Integer, Long> f10174f;

    /* renamed from: g */
    private Map<Integer, List<Long>> f10175g;

    /* renamed from: h */
    final /* synthetic */ ja f10176h;

    /* synthetic */ C2249ea(ja jaVar, String str, c2 c2Var, BitSet bitSet, BitSet bitSet2, Map map, Map map2, C2244da c2244da) {
        this.f10176h = jaVar;
        this.f10169a = str;
        this.f10172d = bitSet;
        this.f10173e = bitSet2;
        this.f10174f = map;
        this.f10175g = new a();
        for (Integer num : map2.keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) map2.get(num));
            this.f10175g.put(num, arrayList);
        }
        this.f10170b = false;
        this.f10171c = c2Var;
    }

    /* synthetic */ C2249ea(ja jaVar, String str, C2244da c2244da) {
        this.f10176h = jaVar;
        this.f10169a = str;
        this.f10170b = true;
        this.f10172d = new BitSet();
        this.f10173e = new BitSet();
        this.f10174f = new a();
        this.f10175g = new a();
    }

    /* renamed from: a */
    final void m3940a(AbstractC2273ha abstractC2273ha) {
        int m3899a = abstractC2273ha.m3899a();
        Boolean bool = abstractC2273ha.f10231c;
        if (bool != null) {
            this.f10173e.set(m3899a, bool.booleanValue());
        }
        Boolean bool2 = abstractC2273ha.f10232d;
        if (bool2 != null) {
            this.f10172d.set(m3899a, bool2.booleanValue());
        }
        if (abstractC2273ha.f10233e != null) {
            Map<Integer, Long> map = this.f10174f;
            Integer valueOf = Integer.valueOf(m3899a);
            Long l = map.get(valueOf);
            long longValue = abstractC2273ha.f10233e.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                this.f10174f.put(valueOf, Long.valueOf(longValue));
            }
        }
        if (abstractC2273ha.f10234f != null) {
            Map<Integer, List<Long>> map2 = this.f10175g;
            Integer valueOf2 = Integer.valueOf(m3899a);
            List<Long> list = map2.get(valueOf2);
            ArrayList arrayList = list;
            if (list == null) {
                arrayList = new ArrayList();
                this.f10175g.put(valueOf2, arrayList);
            }
            if (abstractC2273ha.m3898b()) {
                arrayList.clear();
            }
            k9.a();
            e z = ((m5) this.f10176h).a.z();
            String str = this.f10169a;
            C2219a3<Boolean> c2219a3 = C2232c3.f10039a0;
            if (z.w(str, c2219a3) && abstractC2273ha.m3897c()) {
                arrayList.clear();
            }
            k9.a();
            boolean w = ((m5) this.f10176h).a.z().w(this.f10169a, c2219a3);
            Long valueOf3 = Long.valueOf(abstractC2273ha.f10234f.longValue() / 1000);
            if (!w) {
                arrayList.add(valueOf3);
            } else if (arrayList.contains(valueOf3)) {
            } else {
                arrayList.add(valueOf3);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v50, types: [java.util.List] */
    /* renamed from: b */
    final k1 m3939b(int i) {
        ArrayList arrayList;
        ArrayList arrayList2;
        j1 D = k1.D();
        D.r(i);
        D.u(this.f10170b);
        c2 c2Var = this.f10171c;
        if (c2Var != null) {
            D.t(c2Var);
        }
        b2 H = c2.H();
        H.t(q9.D(this.f10172d));
        H.r(q9.D(this.f10173e));
        Map<Integer, Long> map = this.f10174f;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(map.size());
            for (Integer num : this.f10174f.keySet()) {
                int intValue = num.intValue();
                Long l = this.f10174f.get(Integer.valueOf(intValue));
                if (l != null) {
                    l1 z = n1.z();
                    z.r(intValue);
                    z.s(l.longValue());
                    arrayList.add(z.k());
                }
            }
        }
        if (arrayList != null) {
            H.v(arrayList);
        }
        Map<Integer, List<Long>> map2 = this.f10175g;
        if (map2 == null) {
            arrayList2 = Collections.emptyList();
        } else {
            arrayList2 = new ArrayList(map2.size());
            for (Integer num2 : this.f10175g.keySet()) {
                d2 A = e2.A();
                A.r(num2.intValue());
                List<Long> list = this.f10175g.get(num2);
                if (list != null) {
                    Collections.sort(list);
                    A.s(list);
                }
                arrayList2.add(A.k());
            }
        }
        H.y(arrayList2);
        D.s(H);
        return D.k();
    }
}
