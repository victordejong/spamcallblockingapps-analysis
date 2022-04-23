package com.criteo.publisher.j0;

import com.criteo.publisher.logging.RemoteLogRecords;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.m0.l;
import com.criteo.publisher.m0.s;
import com.criteo.publisher.model.o;
import com.criteo.publisher.model.r;
import com.criteo.publisher.model.w;
import com.criteo.publisher.model.y;
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
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/g.class */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.logging.g f17384a = h.a(getClass());

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.m0.g f17385b;

    /* renamed from: c  reason: collision with root package name */
    private final l f17386c;

    public g(com.criteo.publisher.m0.g gVar, l lVar) {
        this.f17385b = gVar;
        this.f17386c = lVar;
    }

    private static InputStream a(HttpURLConnection httpURLConnection) throws IOException {
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 200 || responseCode == 204) {
            return httpURLConnection.getInputStream();
        }
        throw new d(responseCode);
    }

    private String a(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb.append(URLEncoder.encode(entry.getKey(), Charset.forName("UTF-8").name()));
                sb.append("=");
                sb.append(URLEncoder.encode(entry.getValue(), Charset.forName("UTF-8").name()));
                sb.append("&");
            }
        } catch (Exception e) {
            this.f17384a.a("Impossible to encode params string", e);
        }
        return sb.length() > 0 ? sb.substring(0, sb.length() - 1) : sb.toString();
    }

    private static HttpURLConnection a(URL url, String str, String str2) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestMethod(str2);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setRequestProperty("Content-Type", "text/plain");
        if (!s.a((CharSequence) str)) {
            httpURLConnection.setRequestProperty("User-Agent", str);
        }
        return httpURLConnection;
    }

    private static JSONObject a(String str) throws JSONException {
        return s.a((CharSequence) str) ? new JSONObject() : new JSONObject(str);
    }

    private void a(String str, Object obj) throws IOException {
        HttpURLConnection a2 = a(new URL(com.criteo.publisher.m0.g.b() + str), null, "POST");
        a(a2, obj);
        a(a2).close();
    }

    private void a(HttpURLConnection httpURLConnection, Object obj) throws IOException {
        httpURLConnection.setDoOutput(true);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        try {
            this.f17386c.a(obj, outputStream);
            if (outputStream != null) {
                outputStream.close();
            }
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

    public final r a(o oVar, String str) throws Exception {
        HttpURLConnection a2 = a(new URL(com.criteo.publisher.m0.g.b() + "/inapp/v2"), str, "POST");
        a2.setDoOutput(true);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            this.f17386c.a(oVar, byteArrayOutputStream);
            this.f17384a.a(f.a(byteArrayOutputStream.toString("UTF-8")));
            a2.getOutputStream().write(byteArrayOutputStream.toByteArray());
            byteArrayOutputStream.close();
            InputStream a3 = a(a2);
            try {
                String a4 = com.criteo.publisher.m0.r.a(a3);
                this.f17384a.a(f.b(a4));
                r a5 = r.a(a(a4));
                if (a3 != null) {
                    a3.close();
                }
                return a5;
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                    if (a3 != null) {
                        try {
                            a3.close();
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

    public final y a(w wVar) throws IOException {
        HttpURLConnection a2 = a(new URL(com.criteo.publisher.m0.g.b() + "/config/app"), null, "POST");
        a(a2, wVar);
        InputStream a3 = a(a2);
        try {
            y yVar = (y) this.f17386c.a(y.class, a3);
            if (a3 != null) {
                a3.close();
            }
            return yVar;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (a3 != null) {
                    try {
                        a3.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public final InputStream a(URL url, String str) throws IOException {
        return a(a(url, str, "GET"));
    }

    public final JSONObject a(String str, String str2, String str3, int i, String str4, String str5) throws Exception {
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
        InputStream a2 = a(new URL(com.criteo.publisher.m0.g.c() + ("/appevent/v1/2379?" + a(hashMap))), str4);
        try {
            JSONObject a3 = a(com.criteo.publisher.m0.r.a(a2));
            if (a2 != null) {
                a2.close();
            }
            return a3;
        } finally {
            try {
                throw th;
            } catch (Throwable th) {
            }
        }
    }

    public final void a(com.criteo.publisher.f.y yVar) throws IOException {
        a("/csm", yVar);
    }

    public final void a(List<RemoteLogRecords> list) throws IOException {
        a("/inapp/logs", list);
    }
}
