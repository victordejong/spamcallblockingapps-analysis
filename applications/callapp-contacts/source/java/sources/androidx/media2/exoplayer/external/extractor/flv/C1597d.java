package androidx.media2.exoplayer.external.extractor.flv;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.C1588f;
import androidx.media2.exoplayer.external.util.C2018p;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
/* renamed from: androidx.media2.exoplayer.external.extractor.flv.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/d.class */
final class C1597d extends TagPayloadReader {

    /* renamed from: a */
    long f6308a = -9223372036854775807L;

    public C1597d() {
        super(new C1588f());
    }

    /* renamed from: a */
    private static Object m42622a(C2018p c2018p, int i) {
        if (i != 0) {
            if (i == 1) {
                return m42621b(c2018p);
            }
            if (i == 2) {
                return m42619d(c2018p);
            }
            if (i == 3) {
                return m42617f(c2018p);
            }
            if (i == 8) {
                return m42616g(c2018p);
            }
            if (i == 10) {
                return m42618e(c2018p);
            }
            if (i == 11) {
                return m42615h(c2018p);
            }
            return null;
        }
        return m42620c(c2018p);
    }

    /* renamed from: b */
    private static Boolean m42621b(C2018p c2018p) {
        boolean z = true;
        if (c2018p.m41534c() != 1) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: c */
    private static Double m42620c(C2018p c2018p) {
        return Double.valueOf(Double.longBitsToDouble(c2018p.m41522k()));
    }

    /* renamed from: d */
    private static String m42619d(C2018p c2018p) {
        int m41532d = c2018p.m41532d();
        int i = c2018p.f8132b;
        c2018p.m41531d(m41532d);
        return new String(c2018p.f8131a, i, m41532d);
    }

    /* renamed from: e */
    private static ArrayList<Object> m42618e(C2018p c2018p) {
        int m41519n = c2018p.m41519n();
        ArrayList<Object> arrayList = new ArrayList<>(m41519n);
        for (int i = 0; i < m41519n; i++) {
            Object m42622a = m42622a(c2018p, c2018p.m41534c());
            if (m42622a != null) {
                arrayList.add(m42622a);
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    private static HashMap<String, Object> m42617f(C2018p c2018p) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String m42619d = m42619d(c2018p);
            int m41534c = c2018p.m41534c();
            if (m41534c != 9) {
                Object m42622a = m42622a(c2018p, m41534c);
                if (m42622a != null) {
                    hashMap.put(m42619d, m42622a);
                }
            } else {
                return hashMap;
            }
        }
    }

    /* renamed from: g */
    private static HashMap<String, Object> m42616g(C2018p c2018p) {
        int m41519n = c2018p.m41519n();
        HashMap<String, Object> hashMap = new HashMap<>(m41519n);
        for (int i = 0; i < m41519n; i++) {
            String m42619d = m42619d(c2018p);
            Object m42622a = m42622a(c2018p, c2018p.m41534c());
            if (m42622a != null) {
                hashMap.put(m42619d, m42622a);
            }
        }
        return hashMap;
    }

    /* renamed from: h */
    private static Date m42615h(C2018p c2018p) {
        Date date = new Date((long) m42620c(c2018p).doubleValue());
        c2018p.m41531d(2);
        return date;
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    /* renamed from: a */
    protected final boolean mo42614a(C2018p c2018p) {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    /* renamed from: a */
    protected final boolean mo42613a(C2018p c2018p, long j) throws ParserException {
        if (c2018p.m41534c() == 2) {
            if (!"onMetaData".equals(m42619d(c2018p)) || c2018p.m41534c() != 8) {
                return false;
            }
            HashMap<String, Object> m42616g = m42616g(c2018p);
            if (!m42616g.containsKey(VastIconXmlManager.DURATION)) {
                return false;
            }
            double doubleValue = ((Double) m42616g.get(VastIconXmlManager.DURATION)).doubleValue();
            if (doubleValue <= 0.0d) {
                return false;
            }
            this.f6308a = (long) (doubleValue * 1000000.0d);
            return false;
        }
        throw new ParserException();
    }
}
