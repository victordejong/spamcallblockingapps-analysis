package com.google.android.gms.measurement.internal;

import androidx.p023b.C0428a;
import com.google.android.gms.internal.measurement.C13396bq;
import com.google.android.gms.internal.measurement.C13397br;
import com.google.android.gms.internal.measurement.C13398bs;
import com.google.android.gms.internal.measurement.C13400bu;
import com.google.android.gms.internal.measurement.C13417ck;
import com.google.android.gms.internal.measurement.C13418cl;
import com.google.android.gms.internal.measurement.C13419cm;
import com.google.android.gms.internal.measurement.C13420cn;
import com.google.android.gms.internal.measurement.C13633kk;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.ke */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ke.class */
public final class C14127ke {

    /* renamed from: a */
    BitSet f52019a;

    /* renamed from: b */
    final /* synthetic */ C14132kj f52020b;

    /* renamed from: c */
    private String f52021c;

    /* renamed from: d */
    private boolean f52022d;

    /* renamed from: e */
    private C13418cl f52023e;

    /* renamed from: f */
    private BitSet f52024f;

    /* renamed from: g */
    private Map<Integer, Long> f52025g;

    /* renamed from: h */
    private Map<Integer, List<Long>> f52026h;

    public /* synthetic */ C14127ke(C14132kj c14132kj, String str, C13418cl c13418cl, BitSet bitSet, BitSet bitSet2, Map map, Map map2, C14126kd c14126kd) {
        this.f52020b = c14132kj;
        this.f52021c = str;
        this.f52019a = bitSet;
        this.f52024f = bitSet2;
        this.f52025g = map;
        this.f52026h = new C0428a();
        for (Integer num : map2.keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) map2.get(num));
            this.f52026h.put(num, arrayList);
        }
        this.f52022d = false;
        this.f52023e = c13418cl;
    }

    public /* synthetic */ C14127ke(C14132kj c14132kj, String str, C14126kd c14126kd) {
        this.f52020b = c14132kj;
        this.f52021c = str;
        this.f52022d = true;
        this.f52019a = new BitSet();
        this.f52024f = new BitSet();
        this.f52025g = new C0428a();
        this.f52026h = new C0428a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v50, types: [java.util.List] */
    /* renamed from: a */
    public final C13397br m11546a(int i) {
        ArrayList arrayList;
        ArrayList arrayList2;
        C13396bq m13196b = C13397br.m13196b();
        m13196b.m13204a(i);
        m13196b.m13201a(this.f52022d);
        C13418cl c13418cl = this.f52023e;
        if (c13418cl != null) {
            m13196b.m13202a(c13418cl);
        }
        C13417ck m12965d = C13418cl.m12965d();
        m12965d.m12978b(C14112jq.m11622a(this.f52019a));
        m12965d.m12981a(C14112jq.m11622a(this.f52024f));
        Map<Integer, Long> map = this.f52025g;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(map.size());
            for (Integer num : this.f52025g.keySet()) {
                int intValue = num.intValue();
                Long l = this.f52025g.get(Integer.valueOf(intValue));
                if (l != null) {
                    C13398bs m13187c = C13400bu.m13187c();
                    m13187c.m13193a(intValue);
                    m13187c.m13192a(l.longValue());
                    arrayList.add(m13187c.m12779A());
                }
            }
        }
        if (arrayList != null) {
            m12965d.m12977c(arrayList);
        }
        Map<Integer, List<Long>> map2 = this.f52026h;
        if (map2 == null) {
            arrayList2 = Collections.emptyList();
        } else {
            arrayList2 = new ArrayList(map2.size());
            for (Integer num2 : this.f52026h.keySet()) {
                C13419cm m12953c = C13420cn.m12953c();
                m12953c.m12959a(num2.intValue());
                List<Long> list = this.f52026h.get(num2);
                if (list != null) {
                    Collections.sort(list);
                    m12953c.m12958a(list);
                }
                arrayList2.add((C13420cn) m12953c.m12779A());
            }
        }
        m12965d.m12976d(arrayList2);
        m13196b.m13203a(m12965d);
        return m13196b.m12779A();
    }

    /* renamed from: a */
    public final void m11545a(AbstractC14130kh abstractC14130kh) {
        int mo11535a = abstractC14130kh.mo11535a();
        Boolean bool = abstractC14130kh.f52035d;
        if (bool != null) {
            this.f52024f.set(mo11535a, bool.booleanValue());
        }
        Boolean bool2 = abstractC14130kh.f52036e;
        if (bool2 != null) {
            this.f52019a.set(mo11535a, bool2.booleanValue());
        }
        if (abstractC14130kh.f52037f != null) {
            Map<Integer, Long> map = this.f52025g;
            Integer valueOf = Integer.valueOf(mo11535a);
            Long l = map.get(valueOf);
            long longValue = abstractC14130kh.f52037f.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                this.f52025g.put(valueOf, Long.valueOf(longValue));
            }
        }
        if (abstractC14130kh.f52038g != null) {
            Map<Integer, List<Long>> map2 = this.f52026h;
            Integer valueOf2 = Integer.valueOf(mo11535a);
            List<Long> list = map2.get(valueOf2);
            ArrayList arrayList = list;
            if (list == null) {
                arrayList = new ArrayList();
                this.f52026h.put(valueOf2, arrayList);
            }
            if (abstractC14130kh.mo11533b()) {
                arrayList.clear();
            }
            C13633kk.m12390b();
            if (this.f52020b.f51637t.f51529g.m12061d(this.f52021c, C13935dc.f51303Z) && abstractC14130kh.mo11532c()) {
                arrayList.clear();
            }
            C13633kk.m12390b();
            if (!this.f52020b.f51637t.f51529g.m12061d(this.f52021c, C13935dc.f51303Z)) {
                arrayList.add(Long.valueOf(abstractC14130kh.f52038g.longValue() / 1000));
                return;
            }
            Long valueOf3 = Long.valueOf(abstractC14130kh.f52038g.longValue() / 1000);
            if (arrayList.contains(valueOf3)) {
                return;
            }
            arrayList.add(valueOf3);
        }
    }
}
