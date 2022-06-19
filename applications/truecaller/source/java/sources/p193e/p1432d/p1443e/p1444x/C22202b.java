package p193e.p1432d.p1443e.p1444x;

import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeSet;
import p193e.p1432d.p1443e.AbstractC22169b;
import p193e.p1432d.p1443e.AbstractC22179i;
import p193e.p1432d.p1443e.AbstractC22184o;
import p193e.p1432d.p1443e.AbstractC22194s;
import p193e.p1432d.p1443e.C22174f;
import p193e.p1432d.p1443e.C22178h;
import p193e.p1432d.p1443e.C22195t;
import p193e.p1432d.p1443e.C22197v;
import p193e.p1432d.p1443e.C22198w;
/* renamed from: e.d.e.x.b */
/* loaded from: classes-dex2jar.jar:e/d/e/x/b.class */
public class C22202b implements AbstractC22179i {

    /* renamed from: c */
    public static final boolean f61667c = C22198w.f61659a;

    /* renamed from: a */
    public final AbstractC22201a f61668a;

    /* renamed from: b */
    public final C22203c f61669b;

    public C22202b(AbstractC22201a abstractC22201a) {
        C22203c c22203c = new C22203c(4096);
        this.f61668a = abstractC22201a;
        this.f61669b = c22203c;
    }

    /* renamed from: a */
    public static void m8480a(String str, AbstractC22184o<?> abstractC22184o, C22197v c22197v) throws C22197v {
        AbstractC22194s retryPolicy = abstractC22184o.getRetryPolicy();
        int timeoutMs = abstractC22184o.getTimeoutMs();
        try {
            C22174f c22174f = (C22174f) retryPolicy;
            int i = c22174f.f61616b + 1;
            c22174f.f61616b = i;
            int i2 = c22174f.f61615a;
            c22174f.f61615a = i2 + ((int) (i2 * c22174f.f61618d));
            if (!(i <= c22174f.f61617c)) {
                throw c22197v;
            }
            abstractC22184o.addMarker(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(timeoutMs)));
        } catch (C22197v e) {
            abstractC22184o.addMarker(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(timeoutMs)));
            throw e;
        }
    }

    /* renamed from: b */
    public static List<C22178h> m8479b(List<C22178h> list, AbstractC22169b.C22170a c22170a) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            for (C22178h c22178h : list) {
                treeSet.add(c22178h.f61624a);
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List<C22178h> list2 = c22170a.f61603h;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (C22178h c22178h2 : c22170a.f61603h) {
                    if (!treeSet.contains(c22178h2.f61624a)) {
                        arrayList.add(c22178h2);
                    }
                }
            }
        } else if (!c22170a.f61602g.isEmpty()) {
            for (Map.Entry<String, String> entry : c22170a.f61602g.entrySet()) {
                if (!treeSet.contains(entry.getKey())) {
                    arrayList.add(new C22178h(entry.getKey(), entry.getValue()));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public final Map<String, String> m8478c(AbstractC22169b.C22170a c22170a) {
        if (c22170a == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        String str = c22170a.f61597b;
        if (str != null) {
            hashMap.put("If-None-Match", str);
        }
        long j = c22170a.f61599d;
        if (j > 0) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            hashMap.put("If-Modified-Since", simpleDateFormat.format(new Date(j)));
        }
        return hashMap;
    }

    /* renamed from: d */
    public final byte[] m8477d(InputStream inputStream, int i) throws IOException, C22195t {
        C22213j c22213j = new C22213j(this.f61669b, i);
        byte[] bArr = null;
        try {
            byte[] m8474a = this.f61669b.m8474a(1024);
            while (true) {
                int read = inputStream.read(m8474a);
                if (read == -1) {
                    break;
                }
                c22213j.write(m8474a, 0, read);
            }
            bArr = m8474a;
            byte[] byteArray = c22213j.toByteArray();
            try {
                inputStream.close();
            } catch (IOException e) {
                C22198w.m8483b("Error occurred when closing InputStream", new Object[0]);
            }
            this.f61669b.m8473b(m8474a);
            c22213j.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                C22198w.m8483b("Error occurred when closing InputStream", new Object[0]);
            }
            this.f61669b.m8473b(bArr);
            c22213j.close();
            throw th;
        }
    }

    /* renamed from: e */
    public final void m8476e(long j, AbstractC22184o<?> abstractC22184o, byte[] bArr, int i) {
        if (f61667c || j > 3000) {
            C22198w.m8484a("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", abstractC22184o, Long.valueOf(j), bArr != null ? Integer.valueOf(bArr.length) : AnalyticsConstants.NULL, Integer.valueOf(i), Integer.valueOf(((C22174f) abstractC22184o.getRetryPolicy()).f61616b));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0101, code lost:
        throw new java.io.IOException();
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0224 A[SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1432d.p1443e.C22182l m8475f(p193e.p1432d.p1443e.AbstractC22184o<?> r11) throws p193e.p1432d.p1443e.C22197v {
        /*
            Method dump skipped, instructions count: 612
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1432d.p1443e.p1444x.C22202b.m8475f(e.d.e.o):e.d.e.l");
    }
}
