package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1884r;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27178f;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.r.c */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/r/c.class */
public final class C27195c extends AbstractC27196d {

    /* renamed from: b */
    public long f76106b = -9223372036854775807L;

    public C27195c() {
        super(new C27178f());
    }

    /* renamed from: d */
    public static Object m734d(C27434m c27434m, int i) {
        if (i != 0) {
            boolean z = false;
            if (i == 1) {
                if (c27434m.m326o() == 1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            } else if (i == 2) {
                return m732f(c27434m);
            } else {
                if (i != 3) {
                    if (i == 8) {
                        return m733e(c27434m);
                    }
                    if (i != 10) {
                        if (i != 11) {
                            return null;
                        }
                        Date date = new Date((long) Double.valueOf(Double.longBitsToDouble(c27434m.m331j())).doubleValue());
                        c27434m.m341A(2);
                        return date;
                    }
                    int m323r = c27434m.m323r();
                    ArrayList arrayList = new ArrayList(m323r);
                    for (int i2 = 0; i2 < m323r; i2++) {
                        Object m734d = m734d(c27434m, c27434m.m326o());
                        if (m734d != null) {
                            arrayList.add(m734d);
                        }
                    }
                    return arrayList;
                }
                HashMap hashMap = new HashMap();
                while (true) {
                    String m732f = m732f(c27434m);
                    int m326o = c27434m.m326o();
                    if (m326o == 9) {
                        return hashMap;
                    }
                    Object m734d2 = m734d(c27434m, m326o);
                    if (m734d2 != null) {
                        hashMap.put(m732f, m734d2);
                    }
                }
            }
        } else {
            return Double.valueOf(Double.longBitsToDouble(c27434m.m331j()));
        }
    }

    /* renamed from: e */
    public static HashMap<String, Object> m733e(C27434m c27434m) {
        int m323r = c27434m.m323r();
        HashMap<String, Object> hashMap = new HashMap<>(m323r);
        for (int i = 0; i < m323r; i++) {
            String m732f = m732f(c27434m);
            Object m734d = m734d(c27434m, c27434m.m326o());
            if (m734d != null) {
                hashMap.put(m732f, m734d);
            }
        }
        return hashMap;
    }

    /* renamed from: f */
    public static String m732f(C27434m c27434m) {
        int m321t = c27434m.m321t();
        int i = c27434m.f77201b;
        c27434m.m341A(m321t);
        return new String(c27434m.f77200a, i, m321t);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1884r.AbstractC27196d
    /* renamed from: b */
    public boolean mo730b(C27434m c27434m) {
        return true;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1884r.AbstractC27196d
    /* renamed from: c */
    public boolean mo729c(C27434m c27434m, long j) throws C27074c0 {
        if (c27434m.m326o() == 2) {
            if (!"onMetaData".equals(m732f(c27434m)) || c27434m.m326o() != 8) {
                return false;
            }
            HashMap<String, Object> m733e = m733e(c27434m);
            if (!m733e.containsKey(VastIconXmlManager.DURATION)) {
                return false;
            }
            double doubleValue = ((Double) m733e.get(VastIconXmlManager.DURATION)).doubleValue();
            if (doubleValue <= PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
                return false;
            }
            this.f76106b = (long) (doubleValue * 1000000.0d);
            return false;
        }
        throw new C27074c0();
    }
}
