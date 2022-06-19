package com.google.android.gms.measurement.internal;

import androidx.p013b.C0373a;
import com.google.android.gms.internal.measurement.AbstractC3900ed;
import com.google.android.gms.internal.measurement.C3776ao;
import com.google.android.gms.internal.measurement.C4040iz;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.kh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/kh.class */
public final class C4436kh {

    /* renamed from: a */
    private String f19335a;

    /* renamed from: b */
    private boolean f19336b;

    /* renamed from: c */
    private C3776ao.C3794i f19337c;

    /* renamed from: d */
    private BitSet f19338d;

    /* renamed from: e */
    private BitSet f19339e;

    /* renamed from: f */
    private Map<Integer, Long> f19340f;

    /* renamed from: g */
    private Map<Integer, List<Long>> f19341g;

    /* renamed from: h */
    private final /* synthetic */ C4434kf f19342h;

    private C4436kh(C4434kf c4434kf, String str) {
        this.f19342h = c4434kf;
        this.f19335a = str;
        this.f19336b = true;
        this.f19338d = new BitSet();
        this.f19339e = new BitSet();
        this.f19340f = new C0373a();
        this.f19341g = new C0373a();
    }

    private C4436kh(C4434kf c4434kf, String str, C3776ao.C3794i c3794i, BitSet bitSet, BitSet bitSet2, Map<Integer, Long> map, Map<Integer, Long> map2) {
        this.f19342h = c4434kf;
        this.f19335a = str;
        this.f19338d = bitSet;
        this.f19339e = bitSet2;
        this.f19340f = map;
        this.f19341g = new C0373a();
        if (map2 != null) {
            for (Integer num : map2.keySet()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(map2.get(num));
                this.f19341g.put(num, arrayList);
            }
        }
        this.f19336b = false;
        this.f19337c = c3794i;
    }

    public /* synthetic */ C4436kh(C4434kf c4434kf, String str, C3776ao.C3794i c3794i, BitSet bitSet, BitSet bitSet2, Map map, Map map2, C4433ke c4433ke) {
        this(c4434kf, str, c3794i, bitSet, bitSet2, map, map2);
    }

    public /* synthetic */ C4436kh(C4434kf c4434kf, String str, C4433ke c4433ke) {
        this(c4434kf, str);
    }

    /* renamed from: a */
    public static /* synthetic */ BitSet m4062a(C4436kh c4436kh) {
        return c4436kh.f19338d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v59, types: [java.util.List] */
    /* renamed from: a */
    public final C3776ao.C3777a m4063a(int i) {
        ArrayList arrayList;
        ArrayList arrayList2;
        C3776ao.C3777a.C3778a m6354h = C3776ao.C3777a.m6354h();
        m6354h.m6352a(i);
        m6354h.m6349a(this.f19336b);
        if (this.f19337c != null) {
            m6354h.m6350a(this.f19337c);
        }
        C3776ao.C3794i.C3795a m5959a = C3776ao.C3794i.m5968i().m5956b(C4420js.m4163a(this.f19338d)).m5959a(C4420js.m4163a(this.f19339e));
        if (this.f19340f == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(this.f19340f.size());
            for (Integer num : this.f19340f.keySet()) {
                int intValue = num.intValue();
                arrayList.add((C3776ao.C3779b) ((AbstractC3900ed) C3776ao.C3779b.m6340e().m6338a(intValue).m6337a(this.f19340f.get(Integer.valueOf(intValue)).longValue()).mo5544u()));
            }
        }
        m5959a.m5955c(arrayList);
        if (this.f19341g == null) {
            arrayList2 = Collections.emptyList();
        } else {
            arrayList2 = new ArrayList(this.f19341g.size());
            for (Integer num2 : this.f19341g.keySet()) {
                C3776ao.C3796j.C3797a m5942a = C3776ao.C3796j.m5944e().m5942a(num2.intValue());
                List<Long> list = this.f19341g.get(num2);
                if (list != null) {
                    Collections.sort(list);
                    m5942a.m5941a(list);
                }
                arrayList2.add((C3776ao.C3796j) ((AbstractC3900ed) m5942a.mo5544u()));
            }
        }
        m5959a.m5954d(arrayList2);
        m6354h.m6351a(m5959a);
        return (C3776ao.C3777a) ((AbstractC3900ed) m6354h.mo5544u());
    }

    /* renamed from: a */
    public final void m4061a(AbstractC4437ki abstractC4437ki) {
        int mo4051a = abstractC4437ki.mo4051a();
        if (abstractC4437ki.f19345c != null) {
            this.f19339e.set(mo4051a, abstractC4437ki.f19345c.booleanValue());
        }
        if (abstractC4437ki.f19346d != null) {
            this.f19338d.set(mo4051a, abstractC4437ki.f19346d.booleanValue());
        }
        if (abstractC4437ki.f19347e != null) {
            Long l = this.f19340f.get(Integer.valueOf(mo4051a));
            long longValue = abstractC4437ki.f19347e.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                this.f19340f.put(Integer.valueOf(mo4051a), Long.valueOf(longValue));
            }
        }
        if (abstractC4437ki.f19348f != null) {
            List<Long> list = this.f19341g.get(Integer.valueOf(mo4051a));
            ArrayList arrayList = list;
            if (list == null) {
                arrayList = new ArrayList();
                this.f19341g.put(Integer.valueOf(mo4051a), arrayList);
            }
            if (abstractC4437ki.mo4049b()) {
                arrayList.clear();
            }
            if (C4040iz.m5062b() && this.f19342h.mo4027x().m4790d(this.f19335a, C4452t.f19446ag) && abstractC4437ki.mo4048c()) {
                arrayList.clear();
            }
            if (!C4040iz.m5062b() || !this.f19342h.mo4027x().m4790d(this.f19335a, C4452t.f19446ag)) {
                arrayList.add(Long.valueOf(abstractC4437ki.f19348f.longValue() / 1000));
                return;
            }
            long longValue2 = abstractC4437ki.f19348f.longValue() / 1000;
            if (arrayList.contains(Long.valueOf(longValue2))) {
                return;
            }
            arrayList.add(Long.valueOf(longValue2));
        }
    }
}
