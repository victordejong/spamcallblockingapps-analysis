package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.extractor.C11054g;
import com.google.android.exoplayer2.util.C11628u;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.extractor.flv.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/c.class */
final class C11052c extends TagPayloadReader {

    /* renamed from: a */
    long f35992a = -9223372036854775807L;

    /* renamed from: b */
    long[] f35993b = new long[0];

    /* renamed from: c */
    long[] f35994c = new long[0];

    public C11052c() {
        super(new C11054g());
    }

    /* renamed from: a */
    private static Object m21584a(C11628u c11628u, int i) {
        if (i != 0) {
            if (i == 1) {
                return m21583b(c11628u);
            }
            if (i == 2) {
                return m21581d(c11628u);
            }
            if (i == 3) {
                return m21579f(c11628u);
            }
            if (i == 8) {
                return m21578g(c11628u);
            }
            if (i == 10) {
                return m21580e(c11628u);
            }
            if (i == 11) {
                return m21577h(c11628u);
            }
            return null;
        }
        return m21582c(c11628u);
    }

    /* renamed from: b */
    private static Boolean m21583b(C11628u c11628u) {
        boolean z = true;
        if (c11628u.m19804c() != 1) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: c */
    private static Double m21582c(C11628u c11628u) {
        return Double.valueOf(Double.longBitsToDouble(c11628u.m19790l()));
    }

    /* renamed from: d */
    private static String m21581d(C11628u c11628u) {
        int m19802d = c11628u.m19802d();
        int i = c11628u.f38734b;
        c11628u.m19799e(m19802d);
        return new String(c11628u.f38733a, i, m19802d);
    }

    /* renamed from: e */
    private static ArrayList<Object> m21580e(C11628u c11628u) {
        int m19787o = c11628u.m19787o();
        ArrayList<Object> arrayList = new ArrayList<>(m19787o);
        for (int i = 0; i < m19787o; i++) {
            Object m21584a = m21584a(c11628u, c11628u.m19804c());
            if (m21584a != null) {
                arrayList.add(m21584a);
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    private static HashMap<String, Object> m21579f(C11628u c11628u) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String m21581d = m21581d(c11628u);
            int m19804c = c11628u.m19804c();
            if (m19804c != 9) {
                Object m21584a = m21584a(c11628u, m19804c);
                if (m21584a != null) {
                    hashMap.put(m21581d, m21584a);
                }
            } else {
                return hashMap;
            }
        }
    }

    /* renamed from: g */
    private static HashMap<String, Object> m21578g(C11628u c11628u) {
        int m19787o = c11628u.m19787o();
        HashMap<String, Object> hashMap = new HashMap<>(m19787o);
        for (int i = 0; i < m19787o; i++) {
            String m21581d = m21581d(c11628u);
            Object m21584a = m21584a(c11628u, c11628u.m19804c());
            if (m21584a != null) {
                hashMap.put(m21581d, m21584a);
            }
        }
        return hashMap;
    }

    /* renamed from: h */
    private static Date m21577h(C11628u c11628u) {
        Date date = new Date((long) m21582c(c11628u).doubleValue());
        c11628u.m19799e(2);
        return date;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: a */
    protected final boolean mo21576a(C11628u c11628u) {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: a */
    protected final boolean mo21575a(C11628u c11628u, long j) {
        if (c11628u.m19804c() == 2 && "onMetaData".equals(m21581d(c11628u)) && c11628u.m19804c() == 8) {
            HashMap<String, Object> m21578g = m21578g(c11628u);
            Object obj = m21578g.get(VastIconXmlManager.DURATION);
            if (obj instanceof Double) {
                double doubleValue = ((Double) obj).doubleValue();
                if (doubleValue > 0.0d) {
                    this.f35992a = (long) (doubleValue * 1000000.0d);
                }
            }
            Object obj2 = m21578g.get("keyframes");
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
            this.f35993b = new long[size];
            this.f35994c = new long[size];
            for (int i = 0; i < size; i++) {
                Object obj5 = list.get(i);
                Object obj6 = list2.get(i);
                if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                    this.f35993b = new long[0];
                    this.f35994c = new long[0];
                    return false;
                }
                this.f35993b[i] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                this.f35994c[i] = ((Double) obj5).longValue();
            }
            return false;
        }
        return false;
    }
}
