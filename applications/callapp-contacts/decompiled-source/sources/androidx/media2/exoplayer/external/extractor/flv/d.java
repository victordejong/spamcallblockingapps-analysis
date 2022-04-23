package androidx.media2.exoplayer.external.extractor.flv;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.f;
import androidx.media2.exoplayer.external.util.p;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/d.class */
final class d extends TagPayloadReader {

    /* renamed from: a  reason: collision with root package name */
    long f3301a = -9223372036854775807L;

    public d() {
        super(new f());
    }

    private static Object a(p pVar, int i) {
        if (i == 0) {
            return c(pVar);
        }
        if (i == 1) {
            return b(pVar);
        }
        if (i == 2) {
            return d(pVar);
        }
        if (i == 3) {
            return f(pVar);
        }
        if (i == 8) {
            return g(pVar);
        }
        if (i == 10) {
            return e(pVar);
        }
        if (i != 11) {
            return null;
        }
        return h(pVar);
    }

    private static Boolean b(p pVar) {
        boolean z = true;
        if (pVar.c() != 1) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    private static Double c(p pVar) {
        return Double.valueOf(Double.longBitsToDouble(pVar.k()));
    }

    private static String d(p pVar) {
        int d2 = pVar.d();
        int i = pVar.f4167b;
        pVar.d(d2);
        return new String(pVar.f4166a, i, d2);
    }

    private static ArrayList<Object> e(p pVar) {
        int n = pVar.n();
        ArrayList<Object> arrayList = new ArrayList<>(n);
        for (int i = 0; i < n; i++) {
            Object a2 = a(pVar, pVar.c());
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        return arrayList;
    }

    private static HashMap<String, Object> f(p pVar) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String d2 = d(pVar);
            int c2 = pVar.c();
            if (c2 == 9) {
                return hashMap;
            }
            Object a2 = a(pVar, c2);
            if (a2 != null) {
                hashMap.put(d2, a2);
            }
        }
    }

    private static HashMap<String, Object> g(p pVar) {
        int n = pVar.n();
        HashMap<String, Object> hashMap = new HashMap<>(n);
        for (int i = 0; i < n; i++) {
            String d2 = d(pVar);
            Object a2 = a(pVar, pVar.c());
            if (a2 != null) {
                hashMap.put(d2, a2);
            }
        }
        return hashMap;
    }

    private static Date h(p pVar) {
        Date date = new Date((long) c(pVar).doubleValue());
        pVar.d(2);
        return date;
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    protected final boolean a(p pVar) {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    protected final boolean a(p pVar, long j) throws ParserException {
        if (pVar.c() != 2) {
            throw new ParserException();
        } else if (!"onMetaData".equals(d(pVar)) || pVar.c() != 8) {
            return false;
        } else {
            HashMap<String, Object> g = g(pVar);
            if (!g.containsKey(VastIconXmlManager.DURATION)) {
                return false;
            }
            double doubleValue = ((Double) g.get(VastIconXmlManager.DURATION)).doubleValue();
            if (doubleValue <= 0.0d) {
                return false;
            }
            this.f3301a = (long) (doubleValue * 1000000.0d);
            return false;
        }
    }
}
