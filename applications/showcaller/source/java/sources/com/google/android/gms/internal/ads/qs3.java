package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qs3.class */
final class qs3 extends rs3 {

    /* renamed from: b */
    private long f28624b = -9223372036854775807L;

    /* renamed from: c */
    private long[] f28625c = new long[0];

    /* renamed from: d */
    private long[] f28626d = new long[0];

    public qs3() {
        super(new tq3());
    }

    /* renamed from: g */
    private static Double m11803g(C6694la c6694la) {
        return Double.valueOf(Double.longBitsToDouble(c6694la.m13653F()));
    }

    /* renamed from: h */
    private static String m11802h(C6694la c6694la) {
        int m13628w = c6694la.m13628w();
        int m13636o = c6694la.m13636o();
        c6694la.m13632s(m13628w);
        return new String(c6694la.m13634q(), m13636o, m13628w);
    }

    /* renamed from: i */
    private static HashMap<String, Object> m11801i(C6694la c6694la) {
        int m13649b = c6694la.m13649b();
        HashMap<String, Object> hashMap = new HashMap<>(m13649b);
        for (int i = 0; i < m13649b; i++) {
            String m11802h = m11802h(c6694la);
            Object m11800j = m11800j(c6694la, c6694la.m13629v());
            if (m11800j != null) {
                hashMap.put(m11802h, m11800j);
            }
        }
        return hashMap;
    }

    /* renamed from: j */
    private static Object m11800j(C6694la c6694la, int i) {
        if (i != 0) {
            boolean z = false;
            if (i == 1) {
                if (c6694la.m13629v() == 1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            } else if (i == 2) {
                return m11802h(c6694la);
            } else {
                if (i != 3) {
                    if (i == 8) {
                        return m11801i(c6694la);
                    }
                    if (i != 10) {
                        if (i != 11) {
                            return null;
                        }
                        Date date = new Date((long) m11803g(c6694la).doubleValue());
                        c6694la.m13632s(2);
                        return date;
                    }
                    int m13649b = c6694la.m13649b();
                    ArrayList arrayList = new ArrayList(m13649b);
                    for (int i2 = 0; i2 < m13649b; i2++) {
                        Object m11800j = m11800j(c6694la, c6694la.m13629v());
                        if (m11800j != null) {
                            arrayList.add(m11800j);
                        }
                    }
                    return arrayList;
                }
                HashMap hashMap = new HashMap();
                while (true) {
                    String m11802h = m11802h(c6694la);
                    int m13629v = c6694la.m13629v();
                    if (m13629v == 9) {
                        return hashMap;
                    }
                    Object m11800j2 = m11800j(c6694la, m13629v);
                    if (m11800j2 != null) {
                        hashMap.put(m11802h, m11800j2);
                    }
                }
            }
        } else {
            return m11803g(c6694la);
        }
    }

    @Override // com.google.android.gms.internal.ads.rs3
    /* renamed from: a */
    protected final boolean mo10915a(C6694la c6694la) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.rs3
    /* renamed from: b */
    protected final boolean mo10914b(C6694la c6694la, long j) {
        if (c6694la.m13629v() == 2 && "onMetaData".equals(m11802h(c6694la)) && c6694la.m13629v() == 8) {
            HashMap<String, Object> m11801i = m11801i(c6694la);
            Object obj = m11801i.get("duration");
            if (obj instanceof Double) {
                double doubleValue = ((Double) obj).doubleValue();
                if (doubleValue > 0.0d) {
                    this.f28624b = (long) (doubleValue * 1000000.0d);
                }
            }
            Object obj2 = m11801i.get("keyframes");
            if (!(obj2 instanceof Map)) {
                return false;
            }
            Map map = (Map) obj2;
            Object obj3 = map.get("filepositions");
            Object obj4 = map.get("times");
            if (!(obj3 instanceof List) || !(obj4 instanceof List)) {
                return false;
            }
            List list = (List) obj3;
            List list2 = (List) obj4;
            int size = list2.size();
            this.f28625c = new long[size];
            this.f28626d = new long[size];
            for (int i = 0; i < size; i++) {
                Object obj5 = list.get(i);
                Object obj6 = list2.get(i);
                if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                    this.f28625c = new long[0];
                    this.f28626d = new long[0];
                    return false;
                }
                this.f28625c[i] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                this.f28626d[i] = ((Double) obj5).longValue();
            }
            return false;
        }
        return false;
    }

    /* renamed from: d */
    public final long m11806d() {
        return this.f28624b;
    }

    /* renamed from: e */
    public final long[] m11805e() {
        return this.f28625c;
    }

    /* renamed from: f */
    public final long[] m11804f() {
        return this.f28626d;
    }
}
