package p131c.p135b.p136a.p148e.p152q;

import com.applovin.sdk.AppLovinErrorCodes;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.xml.sax.SAXException;
import p131c.p135b.p136a.p143d.p147e.C2167b;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p151e.C2267f;
import p131c.p135b.p136a.p148e.p151e.C2268g;
import p131c.p135b.p136a.p148e.p153y.C2389h;
import p131c.p135b.p136a.p148e.p153y.C2420m;
import p131c.p135b.p136a.p148e.p153y.C2422o;
import p131c.p135b.p136a.p148e.p153y.C2429t;
import p131c.p135b.p136a.p148e.p153y.C2430u;
/* renamed from: c.b.a.e.q.a */
/* loaded from: classes-dex2jar.jar:c/b/a/e/q/a.class */
public class C2356a {

    /* renamed from: a */
    public final C2341l f9156a;

    /* renamed from: b */
    public final C2374t f9157b;

    /* renamed from: c */
    public C2358b f9158c;

    /* renamed from: c.b.a.e.q.a$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/q/a$a.class */
    public static class C2357a {

        /* renamed from: a */
        public long f9159a;

        /* renamed from: b */
        public long f9160b;

        /* renamed from: a */
        public long m30186a() {
            return this.f9159a;
        }

        /* renamed from: a */
        public final void m30185a(long j) {
            this.f9159a = j;
        }

        /* renamed from: b */
        public long m30183b() {
            return this.f9160b;
        }

        /* renamed from: b */
        public final void m30182b(long j) {
            this.f9160b = j;
        }
    }

    /* renamed from: c.b.a.e.q.a$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/q/a$b.class */
    public static class C2358b {

        /* renamed from: a */
        public final long f9161a = System.currentTimeMillis();

        /* renamed from: b */
        public final String f9162b;

        /* renamed from: c */
        public final long f9163c;

        /* renamed from: d */
        public final long f9164d;

        public C2358b(String str, long j, long j2) {
            this.f9162b = str;
            this.f9163c = j;
            this.f9164d = j2;
        }

        /* renamed from: a */
        public long m30180a() {
            return this.f9161a;
        }

        /* renamed from: b */
        public String m30179b() {
            return this.f9162b;
        }

        /* renamed from: c */
        public long m30178c() {
            return this.f9163c;
        }

        /* renamed from: d */
        public long m30177d() {
            return this.f9164d;
        }

        public String toString() {
            return "RequestMeasurement{timestampMillis=" + this.f9161a + ", urlHostAndPathString='" + this.f9162b + "', responseSize=" + this.f9163c + ", connectionTimeMillis=" + this.f9164d + '}';
        }
    }

    /* renamed from: c.b.a.e.q.a$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/q/a$c.class */
    public interface AbstractC2359c<T> {
        /* renamed from: a */
        void mo18839a(int i);

        /* renamed from: a */
        void mo18838a(T t, int i);
    }

    public C2356a(C2341l lVar) {
        this.f9156a = lVar;
        this.f9157b = lVar.m30262d0();
    }

    /* renamed from: a */
    public final int m30187a(Throwable th) {
        if (th instanceof UnknownHostException) {
            return AppLovinErrorCodes.NO_NETWORK;
        }
        if (th instanceof SocketTimeoutException) {
            return AppLovinErrorCodes.FETCH_AD_TIMEOUT;
        }
        if (th instanceof IOException) {
            return -100;
        }
        return th instanceof JSONException ? -104 : -1;
    }

    /* renamed from: a */
    public C2358b m30196a() {
        return this.f9158c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final <T> T m30191a(String str, T t) throws JSONException, SAXException, ClassCastException {
        if (t == null) {
            return str;
        }
        if (str != 0 && str.length() >= 3) {
            if (t instanceof JSONObject) {
                return (T) new JSONObject(str);
            }
            if (t instanceof C2429t) {
                return (T) C2430u.m29754a(str, this.f9156a);
            }
            if (t instanceof String) {
                return str;
            }
            C2374t tVar = this.f9157b;
            tVar.m30039e("ConnectionManager", "Failed to process response of type '" + t.getClass().getName() + "'");
        }
        return t;
    }

    /* renamed from: a */
    public final HttpURLConnection m30188a(String str, String str2, Map<String, String> map, int i) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod(str2);
        httpURLConnection.setConnectTimeout(i < 0 ? ((Integer) this.f9156a.m30291a(C2251d.C2256e.f8750t2)).intValue() : i);
        int i2 = i;
        if (i < 0) {
            i2 = ((Integer) this.f9156a.m30291a(C2251d.C2256e.f8755u2)).intValue();
        }
        httpURLConnection.setReadTimeout(i2);
        httpURLConnection.setDefaultUseCaches(false);
        httpURLConnection.setAllowUserInteraction(false);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setDoInput(true);
        if (map != null && map.size() > 0) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        return httpURLConnection;
    }

    /* renamed from: a */
    public final void m30195a(int i, String str) {
        if (((Boolean) this.f9156a.m30291a(C2251d.C2256e.f8729q)).booleanValue()) {
            try {
                C2362c.m30157a(i, str, this.f9156a.m30264d());
            } catch (Throwable th) {
                C2374t d0 = this.f9156a.m30262d0();
                d0.m30043b("ConnectionManager", "Failed to track response code for URL: " + str, th);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c4, code lost:
        if (r9.m30164i() >= 0) goto L_0x00c7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 23, insn: 0x063b: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r23 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:194:0x063b */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0625  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x06d2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v296, types: [java.io.Writer, java.io.OutputStreamWriter] */
    /* JADX WARN: Type inference failed for: r11v0, types: [c.b.a.e.q.a$c, c.b.a.e.q.a$c<T>] */
    /* JADX WARN: Type inference failed for: r22v38, types: [java.io.PrintWriter] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> void m30194a(p131c.p135b.p136a.p148e.p152q.C2360b<T> r9, p131c.p135b.p136a.p148e.p152q.C2356a.C2357a r10, p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c<T> r11) {
        /*
            Method dump skipped, instructions count: 1864
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p148e.p152q.C2356a.m30194a(c.b.a.e.q.b, c.b.a.e.q.a$a, c.b.a.e.q.a$c):void");
    }

    /* renamed from: a */
    public final void m30193a(String str) {
        C2268g gVar;
        C2267f fVar;
        if (C2422o.m29856a(str, C2389h.m29951c(this.f9156a)) || C2422o.m29856a(str, C2389h.m29949d(this.f9156a))) {
            gVar = this.f9156a.m30248k();
            fVar = C2267f.f8887k;
        } else if (C2422o.m29856a(str, C2167b.m30814g(this.f9156a)) || C2422o.m29856a(str, C2167b.m30812h(this.f9156a))) {
            gVar = this.f9156a.m30248k();
            fVar = C2267f.f8894r;
        } else {
            gVar = this.f9156a.m30248k();
            fVar = C2267f.f8888l;
        }
        gVar.m30522a(fVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v7, types: [c.b.a.e.y.t] */
    /* JADX WARN: Type inference failed for: r6v11, types: [org.json.JSONObject] */
    /* renamed from: a */
    public final <T> void m30192a(String str, int i, String str2, T t, boolean z, AbstractC2359c<T> cVar) {
        String str3;
        StringBuilder sb;
        Throwable e;
        C2374t tVar;
        C2374t tVar2 = this.f9157b;
        tVar2.m30044b("ConnectionManager", i + " received from \"" + str2);
        this.f9157b.m30047a("ConnectionManager", str);
        if (i < 200 || i >= 300) {
            C2374t tVar3 = this.f9157b;
            tVar3.m30039e("ConnectionManager", i + " error received from \"" + str2 + "\"");
            cVar.mo18839a(i);
            return;
        }
        String str4 = str;
        if (z) {
            str4 = C2420m.m29872a(str, this.f9156a.m30269b0());
        }
        boolean z2 = str4 != null && str4.length() > 2;
        T t2 = t;
        if (i != 204) {
            t2 = t;
            if (z2) {
                try {
                    String str5 = str4;
                    if (!(t instanceof String)) {
                        if (t instanceof C2429t) {
                            str5 = C2430u.m29754a(str4, this.f9156a);
                        } else if (t instanceof JSONObject) {
                            t2 = new JSONObject(str4);
                        } else {
                            C2374t tVar4 = this.f9157b;
                            tVar4.m30039e("ConnectionManager", "Unable to handle '" + t.getClass().getName() + "'");
                            t2 = t;
                        }
                    }
                    t2 = str5;
                } catch (JSONException e2) {
                    e = e2;
                    m30193a(str2);
                    tVar = this.f9157b;
                    sb = new StringBuilder();
                    str3 = "Invalid JSON returned from \"";
                    sb.append(str3);
                    sb.append(str2);
                    sb.append("\"");
                    tVar.m30043b("ConnectionManager", sb.toString(), e);
                    t2 = t;
                    cVar.mo18838a(t2, i);
                } catch (SAXException e3) {
                    e = e3;
                    m30193a(str2);
                    tVar = this.f9157b;
                    sb = new StringBuilder();
                    str3 = "Invalid XML returned from \"";
                    sb.append(str3);
                    sb.append(str2);
                    sb.append("\"");
                    tVar.m30043b("ConnectionManager", sb.toString(), e);
                    t2 = t;
                    cVar.mo18838a(t2, i);
                }
            }
        }
        cVar.mo18838a(t2, i);
    }

    /* renamed from: a */
    public final void m30190a(String str, String str2, int i, long j) {
        C2374t tVar = this.f9157b;
        tVar.m30042c("ConnectionManager", "Successful " + str + " returned " + i + " in " + (((float) (System.currentTimeMillis() - j)) / 1000.0f) + " s over " + C2389h.m29954b(this.f9156a) + " to \"" + str2 + "\"");
    }

    /* renamed from: a */
    public final void m30189a(String str, String str2, int i, long j, Throwable th) {
        C2374t tVar = this.f9157b;
        tVar.m30043b("ConnectionManager", "Failed " + str + " returned " + i + " in " + (((float) (System.currentTimeMillis() - j)) / 1000.0f) + " s over " + C2389h.m29954b(this.f9156a) + " to \"" + str2 + "\"", th);
    }
}
