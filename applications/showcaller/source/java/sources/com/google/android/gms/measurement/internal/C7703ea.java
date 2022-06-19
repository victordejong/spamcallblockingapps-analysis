package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.C7361f2;
import com.google.android.gms.internal.measurement.C7375g2;
import com.google.android.gms.internal.measurement.C7389h2;
import com.google.android.gms.internal.measurement.C7403i2;
import com.google.android.gms.internal.measurement.C7458m1;
import com.google.android.gms.internal.measurement.C7472n1;
import com.google.android.gms.internal.measurement.C7486o1;
import com.google.android.gms.internal.measurement.C7514q1;
import com.google.android.gms.internal.measurement.C7548s9;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p020b.p036e.C1489a;
/* renamed from: com.google.android.gms.measurement.internal.ea */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ea.class */
public final class C7703ea {

    /* renamed from: a */
    private String f35230a;

    /* renamed from: b */
    private boolean f35231b;

    /* renamed from: c */
    private C7375g2 f35232c;

    /* renamed from: d */
    private BitSet f35233d;

    /* renamed from: e */
    private BitSet f35234e;

    /* renamed from: f */
    private Map<Integer, Long> f35235f;

    /* renamed from: g */
    private Map<Integer, List<Long>> f35236g;

    /* renamed from: h */
    final /* synthetic */ C7763ja f35237h;

    public /* synthetic */ C7703ea(C7763ja c7763ja, String str, C7375g2 c7375g2, BitSet bitSet, BitSet bitSet2, Map map, Map map2, C7691da c7691da) {
        this.f35237h = c7763ja;
        this.f35230a = str;
        this.f35233d = bitSet;
        this.f35234e = bitSet2;
        this.f35235f = map;
        this.f35236g = new C1489a();
        for (Integer num : map2.keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) map2.get(num));
            this.f35236g.put(num, arrayList);
        }
        this.f35231b = false;
        this.f35232c = c7375g2;
    }

    public /* synthetic */ C7703ea(C7763ja c7763ja, String str, C7691da c7691da) {
        this.f35237h = c7763ja;
        this.f35230a = str;
        this.f35231b = true;
        this.f35233d = new BitSet();
        this.f35234e = new BitSet();
        this.f35235f = new C1489a();
        this.f35236g = new C1489a();
    }

    /* renamed from: c */
    public static /* synthetic */ BitSet m6451c(C7703ea c7703ea) {
        return c7703ea.f35233d;
    }

    /* renamed from: a */
    public final void m6453a(AbstractC7739ha abstractC7739ha) {
        int mo6352a = abstractC7739ha.mo6352a();
        Boolean bool = abstractC7739ha.f35315c;
        if (bool != null) {
            this.f35234e.set(mo6352a, bool.booleanValue());
        }
        Boolean bool2 = abstractC7739ha.f35316d;
        if (bool2 != null) {
            this.f35233d.set(mo6352a, bool2.booleanValue());
        }
        if (abstractC7739ha.f35317e != null) {
            Map<Integer, Long> map = this.f35235f;
            Integer valueOf = Integer.valueOf(mo6352a);
            Long l = map.get(valueOf);
            long longValue = abstractC7739ha.f35317e.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                this.f35235f.put(valueOf, Long.valueOf(longValue));
            }
        }
        if (abstractC7739ha.f35318f != null) {
            Map<Integer, List<Long>> map2 = this.f35236g;
            Integer valueOf2 = Integer.valueOf(mo6352a);
            List<Long> list = map2.get(valueOf2);
            ArrayList arrayList = list;
            if (list == null) {
                arrayList = new ArrayList();
                this.f35236g.put(valueOf2, arrayList);
            }
            if (abstractC7739ha.mo6351b()) {
                arrayList.clear();
            }
            C7548s9.m6915a();
            C7692e m6006y = this.f35237h.f35460a.m6006y();
            String str = this.f35230a;
            C7648a3<Boolean> c7648a3 = C7672c3.f35065b0;
            if (m6006y.m6471u(str, c7648a3) && abstractC7739ha.mo6350c()) {
                arrayList.clear();
            }
            C7548s9.m6915a();
            if (!this.f35237h.f35460a.m6006y().m6471u(this.f35230a, c7648a3)) {
                arrayList.add(Long.valueOf(abstractC7739ha.f35318f.longValue() / 1000));
                return;
            }
            Long valueOf3 = Long.valueOf(abstractC7739ha.f35318f.longValue() / 1000);
            if (arrayList.contains(valueOf3)) {
                return;
            }
            arrayList.add(valueOf3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v50, types: [java.util.List] */
    /* renamed from: b */
    public final C7472n1 m6452b(int i) {
        ArrayList arrayList;
        ArrayList arrayList2;
        C7458m1 m7087H = C7472n1.m7087H();
        m7087H.m7168t(i);
        m7087H.m7165x(this.f35231b);
        C7375g2 c7375g2 = this.f35232c;
        if (c7375g2 != null) {
            m7087H.m7166w(c7375g2);
        }
        C7361f2 m7436K = C7375g2.m7436K();
        m7436K.m7537w(C7841q9.m6078D(this.f35233d));
        m7436K.m7539t(C7841q9.m6078D(this.f35234e));
        Map<Integer, Long> map = this.f35235f;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(map.size());
            for (Integer num : this.f35235f.keySet()) {
                int intValue = num.intValue();
                Long l = this.f35235f.get(Integer.valueOf(intValue));
                if (l != null) {
                    C7486o1 m7006E = C7514q1.m7006E();
                    m7006E.m7047t(intValue);
                    m7006E.m7046v(l.longValue());
                    arrayList.add(m7006E.m6886n());
                }
            }
        }
        if (arrayList != null) {
            m7436K.m7535y(arrayList);
        }
        Map<Integer, List<Long>> map2 = this.f35236g;
        if (map2 == null) {
            arrayList2 = Collections.emptyList();
        } else {
            arrayList2 = new ArrayList(map2.size());
            for (Integer num2 : this.f35236g.keySet()) {
                C7389h2 m7340F = C7403i2.m7340F();
                m7340F.m7375t(num2.intValue());
                List<Long> list = this.f35236g.get(num2);
                if (list != null) {
                    Collections.sort(list);
                    m7340F.m7374v(list);
                }
                arrayList2.add((C7403i2) m7340F.m6886n());
            }
        }
        m7436K.m7541B(arrayList2);
        m7087H.m7167v(m7436K);
        return m7087H.m6886n();
    }
}
