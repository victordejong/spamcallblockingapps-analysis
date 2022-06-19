package p000;

import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mopub.network.ImpressionData;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONException;
import org.json.JSONObject;
import p000.r71;
/* renamed from: k61 */
/* loaded from: classes3-dex2jar.jar:k61.class */
public class k61 {

    /* renamed from: a */
    public static final String f6841a = "k61";

    /* renamed from: b */
    public static final String f6842b = "Call Control/" + fa1.m1838l() + " (" + fa1.m1837m() + "); " + Locale.getDefault().toString() + "; Android " + Build.VERSION.RELEASE + "; Model " + Build.MODEL + "; Build " + Build.ID + "; SIMs:" + b91.m5724j() + ";";

    /* renamed from: k61$a */
    /* loaded from: classes3-dex2jar.jar:k61$a.class */
    public static final class C1456a extends Exception {
        private static final long serialVersionUID = 1179430813865602234L;

        /* renamed from: a */
        public int f6843a;

        /* renamed from: b */
        public String f6844b;

        public C1456a(String str, int i) {
            this.f6844b = str;
            this.f6843a = i;
        }

        /* renamed from: a */
        public String m1435a() {
            return this.f6844b;
        }

        /* renamed from: b */
        public int m1434b() {
            return this.f6843a;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            String str;
            String message = super.getMessage();
            if (message == null) {
                str = "";
            } else {
                str = message + " ; ";
            }
            return str + this.f6844b;
        }
    }

    /* renamed from: A */
    public static void m1468A(String str) {
        x61 x61Var = new x61();
        x61Var.f8607b = str;
        m1459c("migrate", x61Var.mo73a());
    }

    /* renamed from: B */
    public static boolean m1467B(t61 t61Var) {
        JSONObject mo73a = t61Var.mo73a();
        boolean z = true;
        if (mo73a == null) {
            j91.m1505k(f6841a, "We haven't any entries, so just skip them");
            return true;
        }
        try {
            m1459c("ctl", mo73a);
            return true;
        } catch (C1456a e) {
            int m1434b = e.m1434b();
            if (m1434b == 500 || m1434b == -500) {
                z = false;
            }
            j91.m1505k(f6841a, "Error sending contacts with code " + e.m1434b() + ". Considering " + z);
            return z;
        } catch (Throwable th) {
            j91.m1504l(f6841a, "Error sending contacts", th);
            return false;
        }
    }

    /* renamed from: C */
    public static boolean m1466C(String str) {
        return m1465D(str, null);
    }

    /* renamed from: D */
    public static boolean m1465D(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        g71 g71Var = new g71();
        g71Var.f6689a = str;
        g71Var.f6690b = jSONObject;
        JSONObject mo73a = g71Var.mo73a();
        if (mo73a == null) {
            return false;
        }
        try {
            m1459c("push_register", mo73a);
            return true;
        } catch (C1456a e) {
            return false;
        }
    }

    /* renamed from: E */
    public static void m1464E(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a71 a71Var = new a71();
        a71Var.f176a = str;
        JSONObject mo73a = a71Var.mo73a();
        if (mo73a == null) {
            throw new C1456a("Cannot build request", 400);
        }
        m1459c("coupon_code", mo73a);
    }

    /* renamed from: F */
    public static void m1463F(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        h71 h71Var = new h71();
        h71Var.f6713a = str;
        JSONObject mo73a = h71Var.mo73a();
        if (mo73a == null) {
            throw new C1456a("Cannot build request", 400);
        }
        m1459c("feedback", mo73a);
    }

    /* renamed from: G */
    public static void m1462G(HttpsURLConnection httpsURLConnection) {
        httpsURLConnection.setSSLSocketFactory((SSLSocketFactory) SSLSocketFactory.getDefault());
    }

    /* renamed from: a */
    public static o61 m1461a() {
        o61 o61Var = new o61();
        JSONObject mo73a = o61Var.mo73a();
        if (mo73a != null) {
            o61Var.m1159b(m1459c("frw", mo73a));
            return o61Var;
        }
        throw new C1456a("Can't build request", 400);
    }

    /* renamed from: b */
    public static r61 m1460b(r61 r61Var) {
        JSONObject mo73a = r61Var.mo73a();
        if (mo73a != null) {
            r61Var.m737b(m1459c("connect", mo73a));
            return r61Var;
        }
        throw new C1456a("Cannot build request", 400);
    }

    /* renamed from: c */
    public static String m1459c(String str, JSONObject jSONObject) {
        return m1458d(str, jSONObject, 3);
    }

    /* renamed from: d */
    public static String m1458d(String str, JSONObject jSONObject, int i) {
        String str2;
        InputStream inputStream;
        String m1418f;
        String str3 = "Requesting " + str + ". Retry " + ((3 - i) + 1) + " of 3";
        if (!fa1.m1827w()) {
            j91.m1505k(k61.class.getSimpleName(), "no internet");
            throw new C1456a("no internet", -500);
        } else if (!ta1.GROUP_PHONE.m531d()) {
            j91.m1505k(k61.class.getSimpleName(), "no permissions");
            throw new C1456a("no permissions", -500);
        } else if (r71.EnumC1638a.f7901I0.m695a() && !str.equals("frw")) {
            j91.m1505k(k61.class.getSimpleName(), "frw should be called first");
            throw new C1456a("frw should be called first", -500);
        } else {
            try {
                JSONObject m1457e = m1457e();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    m1457e.put(next, jSONObject.get(next));
                }
                k91.m1424a();
                try {
                    URL url = new URL("https://www.everycaller.com/api/android/41/" + Locale.getDefault().toString() + "/" + str + "/");
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
                    m1462G(httpsURLConnection);
                    httpsURLConnection.setRequestMethod("POST");
                    httpsURLConnection.setDoOutput(true);
                    httpsURLConnection.setDoInput(true);
                    httpsURLConnection.setConnectTimeout(25000);
                    httpsURLConnection.setReadTimeout(25000);
                    httpsURLConnection.setRequestProperty("Content-Type", "application/json; charset=utf-8");
                    httpsURLConnection.setRequestProperty("User-Agent", f6842b);
                    httpsURLConnection.setRequestProperty("Accept", "application/json");
                    PrintWriter printWriter = new PrintWriter(httpsURLConnection.getOutputStream());
                    printWriter.print(ka1.m1415i(m1457e.toString()));
                    printWriter.flush();
                    printWriter.close();
                    httpsURLConnection.connect();
                    InputStream inputStream2 = null;
                    try {
                        inputStream = httpsURLConnection.getInputStream();
                        StringBuilder sb = new StringBuilder();
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            sb.append(new String(bArr, 0, read));
                        }
                        inputStream2 = inputStream;
                        m1418f = ka1.m1418f(sb.toString());
                        str2 = m1418f;
                    } catch (Throwable th) {
                        str2 = "";
                        if (inputStream2 != null) {
                            str2 = "";
                        }
                    }
                    if (inputStream != null) {
                        inputStream2 = inputStream;
                        str2 = m1418f;
                        inputStream2.close();
                    }
                    int responseCode = httpsURLConnection.getResponseCode();
                    String str4 = "doPost : Request: " + url + ":\n response status code:" + responseCode;
                    httpsURLConnection.disconnect();
                    if (responseCode == 200) {
                        return str2;
                    }
                    throw new C1456a(httpsURLConnection.getResponseMessage(), responseCode);
                } catch (Throwable th2) {
                    j91.m1516H(f6841a, "doPost: IOException when executing request ", th2);
                    if (th2 instanceof C1456a) {
                        throw th2;
                    }
                    int i2 = i - 1;
                    if (i2 <= 0) {
                        throw new C1456a(th2.getMessage(), 500);
                    }
                    try {
                        Thread.sleep(3000L);
                    } catch (Throwable th3) {
                    }
                    return m1458d(str, m1457e, i2);
                }
            } catch (JSONException e) {
                j91.m1505k(k61.class.getSimpleName(), e.getMessage());
                throw new C1456a("error building json", 500);
            }
        }
    }

    /* renamed from: e */
    public static JSONObject m1457e() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("identification", m1439w());
            return jSONObject;
        } catch (JSONException e) {
            j91.m1505k(k61.class.getSimpleName(), e.getMessage());
            throw new C1456a("error building json", 500);
        }
    }

    /* renamed from: f */
    public static void m1456f() {
        try {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL("https://www.everycaller.com/static/common/blocked_apps").openConnection()));
            m1462G(httpsURLConnection);
            httpsURLConnection.setConnectTimeout(25000);
            httpsURLConnection.setReadTimeout(25000);
            httpsURLConnection.connect();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpsURLConnection.getInputStream()));
            r71.m712j();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    bufferedReader.close();
                    httpsURLConnection.disconnect();
                    r71.EnumC1638a.f7937a1.m682n(Long.valueOf(System.currentTimeMillis()));
                    return;
                }
                String trim = readLine.trim();
                r71.m717e(trim);
                r81.m672I(trim);
            }
        } catch (Exception e) {
            String str = f6841a;
            j91.m1505k(str, "Can't check blocked apps" + e.getMessage());
        }
    }

    /* renamed from: g */
    public static n61 m1455g(n61 n61Var, boolean z) {
        JSONObject mo73a = n61Var.mo73a();
        if (mo73a != null) {
            Object m1374c = z ? null : l61.m1374c(n61Var);
            if (m1374c != null) {
                return (n61) m1374c;
            }
            n61Var.m1227c(m1459c("get_caller", mo73a));
            l61.m1372e(n61Var);
            return n61Var;
        }
        throw new C1456a("Cannot build request", 400);
    }

    /* renamed from: h */
    public static void m1454h() {
        if (r71.EnumC1638a.f8002x1.m691e() != 1 || System.currentTimeMillis() - r71.EnumC1638a.f7931X0.m689g() > 86400000) {
            new p61().m949b(m1459c("gcl", new JSONObject()));
        } else {
            m1453i();
        }
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:146:0x04e2 -> B:130:0x0471). Please submit an issue!!! */
    /* renamed from: i */
    public static void m1453i() {
        int i;
        String str;
        String str2;
        boolean z;
        C1456a th;
        String str3;
        InputStream inputStream;
        InputStream inputStream2;
        String m1418f;
        int m691e = r71.EnumC1638a.f8005y1.m691e();
        String m687i = r71.EnumC1638a.f7996v1.m687i();
        String str4 = m687i;
        if (!m687i.substring(m687i.length() - 1).equals("/")) {
            str4 = m687i + "/";
        }
        String str5 = "";
        String str6 = str5;
        int i2 = 3;
        int i3 = -1;
        boolean z2 = false;
        while (true) {
            i = i3;
            str = str5;
            str2 = str6;
            z = z2;
            if (i2 <= 0) {
                break;
            }
            String str7 = "Requesting community. Retry " + ((3 - i2) + 1) + " of 3";
            if (!fa1.m1827w()) {
                j91.m1505k(k61.class.getSimpleName(), "no internet");
                throw new C1456a("no internet", -500);
            }
            int i4 = i3;
            String str8 = str5;
            String str9 = str6;
            boolean z3 = z2;
            try {
                int i5 = i3;
                int i6 = i3;
                StringBuilder sb = new StringBuilder();
                int i7 = i3;
                sb.append(str4);
                int i8 = i3;
                sb.append("db.");
                int i9 = i3;
                sb.append(m691e + 1);
                int i10 = i3;
                URL url = new URL(sb.toString());
                int i11 = i3;
                HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
                int i12 = i3;
                httpURLConnection.setRequestMethod("GET");
                int i13 = i3;
                httpURLConnection.setDoInput(true);
                int i14 = i3;
                httpURLConnection.setRequestProperty("X-CC-D", String.valueOf(m691e));
                int i15 = i3;
                httpURLConnection.setConnectTimeout(25000);
                int i16 = i3;
                httpURLConnection.setReadTimeout(25000);
                int i17 = i3;
                httpURLConnection.connect();
                int i18 = i3;
                String headerField = httpURLConnection.getHeaderField("X-CC-V");
                int i19 = i3;
                String headerField2 = httpURLConnection.getHeaderField("X-CC-U");
                int i20 = i3;
                if (!TextUtils.isEmpty(headerField)) {
                    try {
                        i = Integer.valueOf(headerField).intValue();
                        z = true;
                    } catch (Throwable th2) {
                        th = th2;
                        z2 = true;
                        j91.m1516H(f6841a, "doPost: IOException when executing request ", th);
                        if (th instanceof C1456a) {
                            throw th;
                        }
                        if (i2 <= 1) {
                            throw new C1456a(th.getMessage(), 500);
                        }
                        try {
                            Thread.sleep(3000L);
                        } catch (Throwable th3) {
                        }
                        i2--;
                    }
                } else {
                    i = i3;
                    z = z2;
                    if (!TextUtils.isEmpty(headerField2)) {
                        int i21 = i3;
                        i = Integer.valueOf(headerField2).intValue();
                        z = z2;
                    }
                }
                String headerField3 = httpURLConnection.getHeaderField("X-CC-Protocol");
                str2 = headerField3;
                if (headerField3 == null) {
                    str2 = "";
                }
                if (m691e != i) {
                    try {
                        inputStream2 = httpURLConnection.getInputStream();
                        StringBuilder sb2 = new StringBuilder();
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int read = inputStream2.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            sb2.append(new String(bArr, 0, read));
                        }
                        m1418f = ka1.m1418f(sb2.toString());
                        str3 = m1418f;
                    } catch (Throwable th4) {
                        str3 = str5;
                        if (0 != 0) {
                            inputStream = null;
                        }
                    }
                    if (inputStream2 != null) {
                        inputStream = inputStream2;
                        str5 = m1418f;
                        inputStream.close();
                        str3 = str5;
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    int i22 = i;
                    int i23 = i;
                    StringBuilder sb3 = new StringBuilder();
                    int i24 = i;
                    sb3.append("doPost : Request: ");
                    int i25 = i;
                    sb3.append(url);
                    int i26 = i;
                    sb3.append(":\n response status code:");
                    int i27 = i;
                    sb3.append(responseCode);
                    int i28 = i;
                    sb3.toString();
                    int i29 = i;
                    httpURLConnection.disconnect();
                    if (responseCode != 200) {
                        int i30 = i;
                        i4 = i;
                        str8 = str3;
                        str9 = str2;
                        z3 = z;
                        throw new C1456a(httpURLConnection.getResponseMessage(), responseCode);
                        break;
                    }
                    str = str3;
                    break;
                }
                str = str5;
                break;
            } catch (Throwable th5) {
                th = th5;
                z2 = z3;
                str6 = str9;
                str5 = str8;
                i3 = i4;
            }
            i2--;
        }
        if (m691e != i) {
            new p61().m948c(str, z, i, str2);
            return;
        }
        char currentTimeMillis = System.currentTimeMillis();
        if (i <= 0) {
            currentTimeMillis = System.currentTimeMillis() - r71.EnumC1638a.f7999w1.m689g();
        }
        r71.EnumC1638a.f7931X0.m682n(Long.valueOf(currentTimeMillis));
    }

    /* renamed from: j */
    public static q61 m1452j() {
        q61 q61Var = new q61();
        JSONObject mo73a = q61Var.mo73a();
        if (mo73a != null) {
            q61Var.m916b(m1459c("get_stats", mo73a));
            return q61Var;
        }
        throw new C1456a("Can't build request", 400);
    }

    /* renamed from: k */
    public static String m1451k() {
        s61 s61Var = new s61();
        s61Var.m624b(m1459c("get_connect_token", new JSONObject()));
        return s61Var.m623c();
    }

    /* renamed from: l */
    public static x61 m1450l() {
        x61 x61Var = new x61();
        x61Var.m171b(m1459c("migrate", x61Var.mo73a()));
        return x61Var;
    }

    /* renamed from: m */
    public static v61 m1449m(v61 v61Var) {
        JSONObject mo73a = v61Var.mo73a();
        if (mo73a != null) {
            u61 m1374c = l61.m1374c(v61Var);
            if (m1374c != null) {
                return (v61) m1374c;
            }
            v61Var.m2787c(m1459c("lookup_reverse_instant", mo73a));
            l61.m1372e(v61Var);
            return v61Var;
        }
        throw new C1456a("Cannot build request", 400);
    }

    /* renamed from: n */
    public static byte[] m1448n() {
        ArrayList arrayList = new ArrayList();
        for (byte b : q71.f7711b) {
            arrayList.add(Byte.valueOf(b));
        }
        arrayList.addAll(Arrays.asList((byte) -78, (byte) 51));
        for (byte b2 : q71.f7710a) {
            arrayList.add(Byte.valueOf(b2));
        }
        for (int i = 31; i >= 0; i--) {
            arrayList.add(arrayList.get(i));
        }
        Collections.reverse(arrayList);
        byte[] bArr = new byte[32];
        for (int i2 = 31; i2 >= 0; i2--) {
            bArr[i2] = ((Byte) arrayList.get(i2 + 32)).byteValue();
        }
        return bArr;
    }

    /* renamed from: o */
    public static w61 m1447o(w61 w61Var) {
        return m1446p(w61Var, false);
    }

    /* renamed from: p */
    public static w61 m1446p(w61 w61Var, boolean z) {
        JSONObject mo73a = w61Var.mo73a();
        if (mo73a != null) {
            Object m1374c = z ? null : l61.m1374c(w61Var);
            if (m1374c != null) {
                return (w61) m1374c;
            }
            w61Var.m294d(m1459c("lookup", mo73a));
            l61.m1372e(w61Var);
            return w61Var;
        }
        throw new C1456a("Cannot build request", 400);
    }

    /* renamed from: q */
    public static long m1445q() {
        try {
            return m1457e().toString().getBytes().length;
        } catch (Throwable th) {
            j91.m1504l(f6841a, "Unable to build a bare minimum request", th);
            return 0L;
        }
    }

    /* renamed from: r */
    public static void m1444r() {
        z61 z61Var = new z61();
        JSONObject mo73a = z61Var.mo73a();
        if (mo73a != null) {
            z61Var.m72b(m1459c("get_reports_activity", mo73a));
            return;
        }
        throw new C1456a("Can't build request", 400);
    }

    /* renamed from: s */
    public static c71 m1443s(c71 c71Var) {
        JSONObject mo73a = c71Var.mo73a();
        if (mo73a != null) {
            c71Var.m5439b(m1459c("reports", mo73a));
            return c71Var;
        }
        throw new C1456a("Cannot build request", 400);
    }

    /* renamed from: t */
    public static d71 m1442t(d71 d71Var) {
        JSONObject mo73a = d71Var.mo73a();
        if (mo73a != null) {
            u61 m1374c = l61.m1374c(d71Var);
            if (m1374c != null) {
                return (d71) m1374c;
            }
            d71Var.m2787c(m1459c("lookup_reverse", mo73a));
            l61.m1372e(d71Var);
            return d71Var;
        }
        throw new C1456a("Cannot build request", 400);
    }

    /* renamed from: u */
    public static void m1441u() {
        e71 e71Var = new e71();
        JSONObject mo73a = e71Var.mo73a();
        if (mo73a != null) {
            e71Var.m2206b(m1459c("get_carrier_spam_list", mo73a));
            return;
        }
        throw new C1456a("Can't build request", 400);
    }

    /* renamed from: v */
    public static void m1440v() {
        m61 m61Var = new m61();
        JSONObject mo73a = m61Var.mo73a();
        if (mo73a == null) {
            return;
        }
        m61Var.m1290b(m1459c("get_area_codes", mo73a));
    }

    /* renamed from: w */
    public static JSONObject m1439w() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", b91.m5727g());
            jSONObject.put("imei", b91.m5725i());
            jSONObject.put("name", b91.m5728f());
            jSONObject.put("vendor", "android_market");
            jSONObject.put(ImpressionData.APP_VERSION, fa1.m1838l());
            jSONObject.put("build", fa1.m1837m());
            jSONObject.put("timestamp", new Date().getTime());
        } catch (JSONException e) {
            j91.m1505k(k61.class.getSimpleName(), e.getMessage());
        }
        return jSONObject;
    }

    /* renamed from: x */
    public static void m1438x(y61 y61Var) {
        JSONObject mo73a = y61Var.mo73a();
        if (mo73a != null) {
            y61Var.m99b(m1459c(ProductAction.ACTION_PURCHASE, mo73a));
            return;
        }
        throw new C1456a("Cannot build request", 400);
    }

    /* renamed from: y */
    public static boolean m1437y(b71 b71Var) {
        JSONObject mo73a = b71Var.mo73a();
        if (mo73a != null) {
            b71Var.m5762b(m1459c("report", mo73a));
            return b71Var.f1820g;
        }
        throw new C1456a("Cannot build request", 400);
    }

    /* renamed from: z */
    public static void m1436z() {
        f71 f71Var = new f71();
        f71Var.m1928b(m1459c("synchronize", f71Var.mo73a()));
    }
}
