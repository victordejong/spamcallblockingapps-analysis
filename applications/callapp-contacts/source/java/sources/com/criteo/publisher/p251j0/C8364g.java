package com.criteo.publisher.p251j0;

import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.logging.RemoteLogRecords;
import com.criteo.publisher.model.AbstractC8499o;
import com.criteo.publisher.model.AbstractC8513w;
import com.criteo.publisher.model.AbstractC8515y;
import com.criteo.publisher.model.C8502r;
import com.criteo.publisher.p246f.AbstractC8329y;
import com.criteo.publisher.p256m0.C8433g;
import com.criteo.publisher.p256m0.C8441l;
import com.criteo.publisher.p256m0.C8447r;
import com.criteo.publisher.p256m0.C8448s;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.criteo.publisher.j0.g */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/g.class */
public class C8364g {

    /* renamed from: a */
    private final C8402g f30045a = C8404h.m25741a(getClass());

    /* renamed from: b */
    private final C8433g f30046b;

    /* renamed from: c */
    private final C8441l f30047c;

    public C8364g(C8433g c8433g, C8441l c8441l) {
        this.f30046b = c8433g;
        this.f30047c = c8441l;
    }

    /* renamed from: a */
    private static InputStream m25784a(HttpURLConnection httpURLConnection) throws IOException {
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 200 || responseCode == 204) {
            return httpURLConnection.getInputStream();
        }
        throw new C8360d(responseCode);
    }

    /* renamed from: a */
    private String m25779a(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb.append(URLEncoder.encode(entry.getKey(), Charset.forName("UTF-8").name()));
                sb.append("=");
                sb.append(URLEncoder.encode(entry.getValue(), Charset.forName("UTF-8").name()));
                sb.append("&");
            }
        } catch (Exception e) {
            this.f30045a.m25743a("Impossible to encode params string", e);
        }
        return sb.length() > 0 ? sb.substring(0, sb.length() - 1) : sb.toString();
    }

    /* renamed from: a */
    private static HttpURLConnection m25781a(URL url, String str, String str2) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestMethod(str2);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setRequestProperty("Content-Type", "text/plain");
        if (!C8448s.m25669a((CharSequence) str)) {
            httpURLConnection.setRequestProperty("User-Agent", str);
        }
        return httpURLConnection;
    }

    /* renamed from: a */
    private static JSONObject m25787a(String str) throws JSONException {
        return C8448s.m25669a((CharSequence) str) ? new JSONObject() : new JSONObject(str);
    }

    /* renamed from: a */
    private void m25786a(String str, Object obj) throws IOException {
        HttpURLConnection m25781a = m25781a(new URL(C8433g.m25693b() + str), null, "POST");
        m25783a(m25781a, obj);
        m25784a(m25781a).close();
    }

    /* renamed from: a */
    private void m25783a(HttpURLConnection httpURLConnection, Object obj) throws IOException {
        httpURLConnection.setDoOutput(true);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        try {
            this.f30047c.m25680a(obj, outputStream);
            if (outputStream == null) {
                return;
            }
            outputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public final C8502r m25789a(AbstractC8499o abstractC8499o, String str) throws Exception {
        HttpURLConnection m25781a = m25781a(new URL(C8433g.m25693b() + "/inapp/v2"), str, "POST");
        m25781a.setDoOutput(true);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            this.f30047c.m25680a(abstractC8499o, byteArrayOutputStream);
            this.f30045a.m25744a(C8363f.m25792a(byteArrayOutputStream.toString("UTF-8")));
            m25781a.getOutputStream().write(byteArrayOutputStream.toByteArray());
            byteArrayOutputStream.close();
            InputStream m25784a = m25784a(m25781a);
            try {
                String m25670a = C8447r.m25670a(m25784a);
                this.f30045a.m25744a(C8363f.m25791b(m25670a));
                C8502r m25557a = C8502r.m25557a(m25787a(m25670a));
                if (m25784a != null) {
                    m25784a.close();
                }
                return m25557a;
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                    if (m25784a != null) {
                        try {
                            m25784a.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                }
            }
        } finally {
            try {
                throw th;
            } catch (Throwable th3) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th4) {
                    th.addSuppressed(th4);
                }
            }
        }
    }

    /* renamed from: a */
    public final AbstractC8515y m25788a(AbstractC8513w abstractC8513w) throws IOException {
        HttpURLConnection m25781a = m25781a(new URL(C8433g.m25693b() + "/config/app"), null, "POST");
        m25783a(m25781a, abstractC8513w);
        InputStream m25784a = m25784a(m25781a);
        try {
            AbstractC8515y abstractC8515y = (AbstractC8515y) this.f30047c.m25681a(AbstractC8515y.class, m25784a);
            if (m25784a != null) {
                m25784a.close();
            }
            return abstractC8515y;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (m25784a != null) {
                    try {
                        m25784a.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public final InputStream m25782a(URL url, String str) throws IOException {
        return m25784a(m25781a(url, str, "GET"));
    }

    /* renamed from: a */
    public final JSONObject m25785a(String str, String str2, String str3, int i, String str4, String str5) throws Exception {
        HashMap hashMap = new HashMap();
        hashMap.put("appId", str);
        if (str2 != null) {
            hashMap.put("gaid", str2);
        }
        hashMap.put("eventType", str3);
        hashMap.put("limitedAdTracking", String.valueOf(i));
        if (str5 != null) {
            hashMap.put("gdpr_consent", str5);
        }
        InputStream m25782a = m25782a(new URL(C8433g.m25692c() + ("/appevent/v1/2379?" + m25779a(hashMap))), str4);
        try {
            JSONObject m25787a = m25787a(C8447r.m25670a(m25782a));
            if (m25782a != null) {
                m25782a.close();
            }
            return m25787a;
        } finally {
            try {
                throw th;
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public final void m25790a(AbstractC8329y abstractC8329y) throws IOException {
        m25786a("/csm", abstractC8329y);
    }

    /* renamed from: a */
    public final void m25780a(List<RemoteLogRecords> list) throws IOException {
        m25786a("/inapp/logs", list);
    }
}
