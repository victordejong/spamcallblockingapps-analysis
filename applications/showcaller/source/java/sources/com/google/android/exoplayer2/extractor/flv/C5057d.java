package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p243c1.C4977g;
import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
/* renamed from: com.google.android.exoplayer2.extractor.flv.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/d.class */
final class C5057d extends TagPayloadReader {

    /* renamed from: b */
    private long f15750b = -9223372036854775807L;

    public C5057d() {
        super(new C4977g());
    }

    /* renamed from: e */
    private static Boolean m20734e(C5536v c5536v) {
        boolean z = true;
        if (c5536v.m18653z() != 1) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: f */
    private static Object m20733f(C5536v c5536v, int i) {
        if (i != 0) {
            if (i == 1) {
                return m20734e(c5536v);
            }
            if (i == 2) {
                return m20727l(c5536v);
            }
            if (i == 3) {
                return m20729j(c5536v);
            }
            if (i == 8) {
                return m20730i(c5536v);
            }
            if (i == 10) {
                return m20728k(c5536v);
            }
            if (i == 11) {
                return m20732g(c5536v);
            }
            return null;
        }
        return m20731h(c5536v);
    }

    /* renamed from: g */
    private static Date m20732g(C5536v c5536v) {
        Date date = new Date((long) m20731h(c5536v).doubleValue());
        c5536v.m18679N(2);
        return date;
    }

    /* renamed from: h */
    private static Double m20731h(C5536v c5536v) {
        return Double.valueOf(Double.longBitsToDouble(c5536v.m18660s()));
    }

    /* renamed from: i */
    private static HashMap<String, Object> m20730i(C5536v c5536v) {
        int m18689D = c5536v.m18689D();
        HashMap<String, Object> hashMap = new HashMap<>(m18689D);
        for (int i = 0; i < m18689D; i++) {
            String m20727l = m20727l(c5536v);
            Object m20733f = m20733f(c5536v, m20726m(c5536v));
            if (m20733f != null) {
                hashMap.put(m20727l, m20733f);
            }
        }
        return hashMap;
    }

    /* renamed from: j */
    private static HashMap<String, Object> m20729j(C5536v c5536v) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String m20727l = m20727l(c5536v);
            int m20726m = m20726m(c5536v);
            if (m20726m == 9) {
                return hashMap;
            }
            Object m20733f = m20733f(c5536v, m20726m);
            if (m20733f != null) {
                hashMap.put(m20727l, m20733f);
            }
        }
    }

    /* renamed from: k */
    private static ArrayList<Object> m20728k(C5536v c5536v) {
        int m18689D = c5536v.m18689D();
        ArrayList<Object> arrayList = new ArrayList<>(m18689D);
        for (int i = 0; i < m18689D; i++) {
            Object m20733f = m20733f(c5536v, m20726m(c5536v));
            if (m20733f != null) {
                arrayList.add(m20733f);
            }
        }
        return arrayList;
    }

    /* renamed from: l */
    private static String m20727l(C5536v c5536v) {
        int m18687F = c5536v.m18687F();
        int m18676c = c5536v.m18676c();
        c5536v.m18679N(m18687F);
        return new String(c5536v.f17941a, m18676c, m18687F);
    }

    /* renamed from: m */
    private static int m20726m(C5536v c5536v) {
        return c5536v.m18653z();
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: b */
    protected boolean mo20725b(C5536v c5536v) {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: c */
    protected boolean mo20724c(C5536v c5536v, long j) {
        if (m20726m(c5536v) == 2) {
            if (!"onMetaData".equals(m20727l(c5536v)) || m20726m(c5536v) != 8) {
                return false;
            }
            HashMap<String, Object> m20730i = m20730i(c5536v);
            if (!m20730i.containsKey("duration")) {
                return false;
            }
            double doubleValue = ((Double) m20730i.get("duration")).doubleValue();
            if (doubleValue <= 0.0d) {
                return false;
            }
            this.f15750b = (long) (doubleValue * 1000000.0d);
            return false;
        }
        throw new ParserException();
    }

    /* renamed from: d */
    public long m20735d() {
        return this.f15750b;
    }
}
