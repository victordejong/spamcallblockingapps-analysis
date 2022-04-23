package com.google.android.gms.measurement.internal;

import androidx.b.a;
import com.google.android.gms.internal.measurement.cl;
import com.google.android.gms.internal.measurement.kk;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ke.class */
public final class ke {

    /* renamed from: a  reason: collision with root package name */
    BitSet f29934a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ kj f29935b;

    /* renamed from: c  reason: collision with root package name */
    private String f29936c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f29937d;
    private cl e;
    private BitSet f;
    private Map<Integer, Long> g;
    private Map<Integer, List<Long>> h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ke(kj kjVar, String str, cl clVar, BitSet bitSet, BitSet bitSet2, Map map, Map map2, kd kdVar) {
        this.f29935b = kjVar;
        this.f29936c = str;
        this.f29934a = bitSet;
        this.f = bitSet2;
        this.g = map;
        this.h = new a();
        for (Integer num : map2.keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) map2.get(num));
            this.h.put(num, arrayList);
        }
        this.f29937d = false;
        this.e = clVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ke(kj kjVar, String str, kd kdVar) {
        this.f29935b = kjVar;
        this.f29936c = str;
        this.f29937d = true;
        this.f29934a = new BitSet();
        this.f = new BitSet();
        this.g = new a();
        this.h = new a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.measurement.bq, com.google.android.gms.internal.measurement.gi] */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.measurement.ck] */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.util.List] */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.br a(int r5) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.ke.a(int):com.google.android.gms.internal.measurement.br");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(kh khVar) {
        int a2 = khVar.a();
        Boolean bool = khVar.f29945d;
        if (bool != null) {
            this.f.set(a2, bool.booleanValue());
        }
        Boolean bool2 = khVar.e;
        if (bool2 != null) {
            this.f29934a.set(a2, bool2.booleanValue());
        }
        if (khVar.f != null) {
            Map<Integer, Long> map = this.g;
            Integer valueOf = Integer.valueOf(a2);
            Long l = map.get(valueOf);
            long longValue = khVar.f.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                this.g.put(valueOf, Long.valueOf(longValue));
            }
        }
        if (khVar.g != null) {
            Map<Integer, List<Long>> map2 = this.h;
            Integer valueOf2 = Integer.valueOf(a2);
            List<Long> list = map2.get(valueOf2);
            List<Long> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
                this.h.put(valueOf2, list2);
            }
            if (khVar.b()) {
                list2.clear();
            }
            kk.b();
            if (this.f29935b.t.g.d(this.f29936c, dc.Z) && khVar.c()) {
                list2.clear();
            }
            kk.b();
            if (this.f29935b.t.g.d(this.f29936c, dc.Z)) {
                Long valueOf3 = Long.valueOf(khVar.g.longValue() / 1000);
                if (!list2.contains(valueOf3)) {
                    list2.add(valueOf3);
                    return;
                }
                return;
            }
            list2.add(Long.valueOf(khVar.g.longValue() / 1000));
        }
    }
}
