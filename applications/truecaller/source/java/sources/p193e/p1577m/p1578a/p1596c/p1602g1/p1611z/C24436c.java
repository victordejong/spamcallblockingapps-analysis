package p193e.p1577m.p1578a.p1596c.p1602g1.p1611z;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24407g;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.z.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/z/c.class */
public final class C24436c extends AbstractC24437d {

    /* renamed from: b */
    public long f68196b = -9223372036854775807L;

    public C24436c() {
        super(new C24407g());
    }

    /* renamed from: d */
    public static Object m5125d(C24798t c24798t, int i) {
        if (i != 0) {
            boolean z = false;
            if (i == 1) {
                if (c24798t.m4529q() == 1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            } else if (i == 2) {
                return m5123f(c24798t);
            } else {
                if (i != 3) {
                    if (i == 8) {
                        return m5124e(c24798t);
                    }
                    if (i != 10) {
                        if (i != 11) {
                            return null;
                        }
                        Date date = new Date((long) Double.valueOf(Double.longBitsToDouble(c24798t.m4535k())).doubleValue());
                        c24798t.m4546D(2);
                        return date;
                    }
                    int m4526t = c24798t.m4526t();
                    ArrayList arrayList = new ArrayList(m4526t);
                    for (int i2 = 0; i2 < m4526t; i2++) {
                        Object m5125d = m5125d(c24798t, c24798t.m4529q());
                        if (m5125d != null) {
                            arrayList.add(m5125d);
                        }
                    }
                    return arrayList;
                }
                HashMap hashMap = new HashMap();
                while (true) {
                    String m5123f = m5123f(c24798t);
                    int m4529q = c24798t.m4529q();
                    if (m4529q == 9) {
                        return hashMap;
                    }
                    Object m5125d2 = m5125d(c24798t, m4529q);
                    if (m5125d2 != null) {
                        hashMap.put(m5123f, m5125d2);
                    }
                }
            }
        } else {
            return Double.valueOf(Double.longBitsToDouble(c24798t.m4535k()));
        }
    }

    /* renamed from: e */
    public static HashMap<String, Object> m5124e(C24798t c24798t) {
        int m4526t = c24798t.m4526t();
        HashMap<String, Object> hashMap = new HashMap<>(m4526t);
        for (int i = 0; i < m4526t; i++) {
            String m5123f = m5123f(c24798t);
            Object m5125d = m5125d(c24798t, c24798t.m4529q());
            if (m5125d != null) {
                hashMap.put(m5123f, m5125d);
            }
        }
        return hashMap;
    }

    /* renamed from: f */
    public static String m5123f(C24798t c24798t) {
        int m4524v = c24798t.m4524v();
        int i = c24798t.f69505b;
        c24798t.m4546D(m4524v);
        return new String(c24798t.f69504a, i, m4524v);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1611z.AbstractC24437d
    /* renamed from: b */
    public boolean mo5121b(C24798t c24798t) {
        return true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1611z.AbstractC24437d
    /* renamed from: c */
    public boolean mo5120c(C24798t c24798t, long j) throws C24560m0 {
        if (c24798t.m4529q() == 2) {
            if (!"onMetaData".equals(m5123f(c24798t)) || c24798t.m4529q() != 8) {
                return false;
            }
            HashMap<String, Object> m5124e = m5124e(c24798t);
            if (!m5124e.containsKey(VastIconXmlManager.DURATION)) {
                return false;
            }
            double doubleValue = ((Double) m5124e.get(VastIconXmlManager.DURATION)).doubleValue();
            if (doubleValue <= PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
                return false;
            }
            this.f68196b = (long) (doubleValue * 1000000.0d);
            return false;
        }
        throw new C24560m0();
    }
}
