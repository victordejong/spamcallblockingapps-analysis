package p131c.p161d.p170b.p188c.p210w0.p212s;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.C3041f;
/* renamed from: c.d.b.c.w0.s.d */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/s/d.class */
public final class C3061d extends TagPayloadReader {

    /* renamed from: b */
    public long f11043b = -9223372036854775807L;

    public C3061d() {
        super(new C3041f());
    }

    /* renamed from: a */
    public static Object m28011a(C2904v vVar, int i) {
        if (i == 0) {
            return m28008d(vVar);
        }
        if (i == 1) {
            return m28010b(vVar);
        }
        if (i == 2) {
            return m28004h(vVar);
        }
        if (i == 3) {
            return m28006f(vVar);
        }
        if (i == 8) {
            return m28007e(vVar);
        }
        if (i == 10) {
            return m28005g(vVar);
        }
        if (i != 11) {
            return null;
        }
        return m28009c(vVar);
    }

    /* renamed from: b */
    public static Boolean m28010b(C2904v vVar) {
        boolean z = true;
        if (vVar.m28524r() != 1) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: c */
    public static Date m28009c(C2904v vVar) {
        Date date = new Date((long) m28008d(vVar).doubleValue());
        vVar.m28536f(2);
        return date;
    }

    /* renamed from: d */
    public static Double m28008d(C2904v vVar) {
        return Double.valueOf(Double.longBitsToDouble(vVar.m28528n()));
    }

    /* renamed from: e */
    public static HashMap<String, Object> m28007e(C2904v vVar) {
        int v = vVar.m28520v();
        HashMap<String, Object> hashMap = new HashMap<>(v);
        for (int i = 0; i < v; i++) {
            String h = m28004h(vVar);
            Object a = m28011a(vVar, m28003i(vVar));
            if (a != null) {
                hashMap.put(h, a);
            }
        }
        return hashMap;
    }

    /* renamed from: f */
    public static HashMap<String, Object> m28006f(C2904v vVar) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String h = m28004h(vVar);
            int i = m28003i(vVar);
            if (i == 9) {
                return hashMap;
            }
            Object a = m28011a(vVar, i);
            if (a != null) {
                hashMap.put(h, a);
            }
        }
    }

    /* renamed from: g */
    public static ArrayList<Object> m28005g(C2904v vVar) {
        int v = vVar.m28520v();
        ArrayList<Object> arrayList = new ArrayList<>(v);
        for (int i = 0; i < v; i++) {
            Object a = m28011a(vVar, m28003i(vVar));
            if (a != null) {
                arrayList.add(a);
            }
        }
        return arrayList;
    }

    /* renamed from: h */
    public static String m28004h(C2904v vVar) {
        int x = vVar.m28518x();
        int c = vVar.m28543c();
        vVar.m28536f(x);
        return new String(vVar.f10530a, c, x);
    }

    /* renamed from: i */
    public static int m28003i(C2904v vVar) {
        return vVar.m28524r();
    }

    /* renamed from: a */
    public long m28012a() {
        return this.f11043b;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: a */
    public boolean mo18610a(C2904v vVar) {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: b */
    public boolean mo18608b(C2904v vVar, long j) throws ParserException {
        if (m28003i(vVar) != 2) {
            throw new ParserException();
        } else if (!"onMetaData".equals(m28004h(vVar)) || m28003i(vVar) != 8) {
            return false;
        } else {
            HashMap<String, Object> e = m28007e(vVar);
            if (!e.containsKey(VastIconXmlManager.DURATION)) {
                return false;
            }
            double doubleValue = ((Double) e.get(VastIconXmlManager.DURATION)).doubleValue();
            if (doubleValue <= 0.0d) {
                return false;
            }
            this.f11043b = (long) (doubleValue * 1000000.0d);
            return false;
        }
    }
}
