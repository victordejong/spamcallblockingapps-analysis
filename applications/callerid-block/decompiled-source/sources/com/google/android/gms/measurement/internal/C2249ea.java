package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.c2;
import com.google.android.gms.internal.measurement.k9;
import d.e.a;
import java.util.ArrayList;
import java.util.BitSet;
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

    /* synthetic */ C2249ea(ja jaVar, String str, c2 c2Var, BitSet bitSet, BitSet bitSet2, Map map, Map map2, C2244da daVar) {
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

    /* synthetic */ C2249ea(ja jaVar, String str, C2244da daVar) {
        this.f10176h = jaVar;
        this.f10169a = str;
        this.f10170b = true;
        this.f10172d = new BitSet();
        this.f10173e = new BitSet();
        this.f10174f = new a();
        this.f10175g = new a();
    }

    /* renamed from: a */
    final void m3940a(AbstractC2273ha haVar) {
        int a = haVar.m3899a();
        Boolean bool = haVar.f10231c;
        if (bool != null) {
            this.f10173e.set(a, bool.booleanValue());
        }
        Boolean bool2 = haVar.f10232d;
        if (bool2 != null) {
            this.f10172d.set(a, bool2.booleanValue());
        }
        if (haVar.f10233e != null) {
            Map<Integer, Long> map = this.f10174f;
            Integer valueOf = Integer.valueOf(a);
            Long l = map.get(valueOf);
            long longValue = haVar.f10233e.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                this.f10174f.put(valueOf, Long.valueOf(longValue));
            }
        }
        if (haVar.f10234f != null) {
            Map<Integer, List<Long>> map2 = this.f10175g;
            Integer valueOf2 = Integer.valueOf(a);
            List<Long> list = map2.get(valueOf2);
            List<Long> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
                this.f10175g.put(valueOf2, list2);
            }
            if (haVar.m3898b()) {
                list2.clear();
            }
            k9.a();
            e z = ((m5) this.f10176h).a.z();
            String str = this.f10169a;
            C2219a3<Boolean> a3Var = C2232c3.f10039a0;
            if (z.w(str, a3Var) && haVar.m3897c()) {
                list2.clear();
            }
            k9.a();
            boolean w = ((m5) this.f10176h).a.z().w(this.f10169a, a3Var);
            Long valueOf3 = Long.valueOf(haVar.f10234f.longValue() / 1000);
            if (!w) {
                list2.add(valueOf3);
            } else if (!list2.contains(valueOf3)) {
                list2.add(valueOf3);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.util.List] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final com.google.android.gms.internal.measurement.k1 m3939b(int r5) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2249ea.m3939b(int):com.google.android.gms.internal.measurement.k1");
    }
}
