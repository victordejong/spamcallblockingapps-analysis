package com.criteo.publisher.p031x;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.model.AbstractC2049t;
import com.criteo.publisher.model.AbstractC2051v;
import com.criteo.publisher.model.C2038l;
import com.criteo.publisher.model.C2041o;
import com.criteo.publisher.p020a0.C1914g;
import com.criteo.publisher.p020a0.C1917h;
import com.criteo.publisher.p020a0.C1926n;
import com.criteo.publisher.p020a0.C1931s;
import com.criteo.publisher.p020a0.C1932t;
import com.criteo.publisher.p027t.AbstractC2138t;
import com.criteo.publisher.p032y.p033b.AbstractC2171c;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.criteo.publisher.x.d */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/x/d.class */
public class C2166d {

    /* renamed from: c */
    public static final String f2487c = "d";
    @NonNull

    /* renamed from: a */
    public final C1917h f2488a;
    @NonNull

    /* renamed from: b */
    public final C1926n f2489b;

    public C2166d(@NonNull C1917h hVar, @NonNull C1926n nVar) {
        this.f2488a = hVar;
        this.f2489b = nVar;
    }

    @NonNull
    /* renamed from: a */
    public static InputStream m35556a(@NonNull HttpURLConnection httpURLConnection) throws IOException {
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 200 || responseCode == 204) {
            return httpURLConnection.getInputStream();
        }
        throw new C2165c(responseCode);
    }

    /* renamed from: a */
    public static String m35549a(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb.append(URLEncoder.encode(entry.getKey(), Charset.forName("UTF-8").name()));
                sb.append("=");
                sb.append(URLEncoder.encode(entry.getValue(), Charset.forName("UTF-8").name()));
                sb.append(PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR);
            }
        } catch (Exception e) {
            Log.e(f2487c, e.getMessage());
        }
        return sb.length() > 0 ? sb.substring(0, sb.length() - 1) : sb.toString();
    }

    @NonNull
    /* renamed from: a */
    private HttpURLConnection m35551a(@NonNull URL url, @Nullable String str, String str2) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) FirebasePerfUrlConnection.instrument(url.openConnection());
        httpURLConnection.setRequestMethod(str2);
        httpURLConnection.setReadTimeout(this.f2488a.m36026k());
        httpURLConnection.setConnectTimeout(this.f2488a.m36026k());
        httpURLConnection.setRequestProperty("Content-Type", "text/plain");
        if (!C1932t.m35993a((CharSequence) str)) {
            httpURLConnection.setRequestProperty("User-Agent", str);
        }
        return httpURLConnection;
    }

    @NonNull
    /* renamed from: a */
    public static JSONObject m35557a(@NonNull InputStream inputStream) throws IOException, JSONException {
        String a = C1931s.m35994a(inputStream);
        return !C1932t.m35993a((CharSequence) a) ? new JSONObject(a) : new JSONObject();
    }

    /* renamed from: a */
    private JSONObject m35552a(URL url, @Nullable String str) throws IOException, JSONException {
        InputStream b = m35548b(url, str);
        try {
            JSONObject a = m35557a(b);
            if (b != null) {
                b.close();
            }
            return a;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (b != null) {
                    try {
                        b.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @NonNull
    /* renamed from: a */
    private JSONObject m35550a(@NonNull URL url, @NonNull JSONObject jSONObject, @NonNull String str) throws IOException, JSONException {
        HttpURLConnection a = m35551a(url, str, "POST");
        m35554a(a, jSONObject);
        InputStream a2 = m35556a(a);
        try {
            JSONObject a3 = m35557a(a2);
            if (a2 != null) {
                a2.close();
            }
            return a3;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (a2 != null) {
                    try {
                        a2.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: a */
    private void m35555a(@NonNull HttpURLConnection httpURLConnection, @NonNull Object obj) throws IOException {
        httpURLConnection.setDoOutput(true);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        try {
            this.f2489b.m36006a(obj, outputStream);
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

    /* renamed from: a */
    public static void m35554a(@NonNull HttpURLConnection httpURLConnection, @NonNull JSONObject jSONObject) throws IOException {
        byte[] bytes = jSONObject.toString().getBytes(Charset.forName("UTF-8"));
        httpURLConnection.setDoOutput(true);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        try {
            outputStream.write(bytes);
            outputStream.flush();
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

    @NonNull
    /* renamed from: b */
    private InputStream m35548b(URL url, @Nullable String str) throws IOException {
        return m35556a(m35551a(url, str, "GET"));
    }

    @NonNull
    /* renamed from: a */
    public C2041o m35561a(@NonNull C2038l lVar, @NonNull String str) throws Exception {
        return C2041o.m35844a(m35550a(new URL(this.f2488a.m36034c() + "/inapp/v2"), lVar.m35859b(), str));
    }

    @NonNull
    /* renamed from: a */
    public AbstractC2051v m35560a(@NonNull AbstractC2049t tVar) throws IOException {
        HttpURLConnection a = m35551a(new URL(this.f2488a.m36034c() + "/config/app"), (String) null, "POST");
        m35555a(a, tVar);
        InputStream a2 = m35556a(a);
        try {
            AbstractC2051v vVar = (AbstractC2051v) this.f2489b.m36007a(AbstractC2051v.class, a2);
            if (a2 != null) {
                a2.close();
            }
            return vVar;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (a2 != null) {
                    try {
                        a2.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Nullable
    /* renamed from: a */
    public InputStream m35553a(URL url) throws IOException {
        return m35548b(url, null);
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: a */
    public String m35558a(@NonNull AbstractC2171c cVar) {
        String str;
        String str2 = null;
        try {
            str = cVar.m35532c().toString();
        } catch (JSONException e) {
            String str3 = "Unable to convert gdprString to JSONObject when sending to GUM:" + e.getMessage();
            str = null;
        }
        if (str == null) {
            return null;
        }
        try {
            str2 = C1914g.m36038b(str.getBytes("UTF-8"), 2);
        } catch (UnsupportedEncodingException e2) {
            String str4 = "Unable to encode gdprString to base64:" + e2.getMessage();
        }
        return str2;
    }

    @Nullable
    /* renamed from: a */
    public JSONObject m35562a(int i, @NonNull String str, @Nullable String str2, @NonNull String str3, int i2, @NonNull String str4, @Nullable AbstractC2171c cVar) {
        String a;
        HashMap hashMap = new HashMap();
        hashMap.put("appId", str);
        if (str2 != null) {
            hashMap.put("gaid", str2);
        }
        hashMap.put("eventType", str3);
        hashMap.put("limitedAdTracking", String.valueOf(i2));
        if (!(cVar == null || (a = m35558a(cVar)) == null || a.isEmpty())) {
            hashMap.put("gdprString", a);
        }
        try {
            return m35552a(new URL(this.f2488a.m36030g() + "/appevent/v1/" + i + "?" + m35549a(hashMap)), str4);
        } catch (IOException | JSONException e) {
            String str5 = "Unable to process request to post app event:" + e.getMessage();
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public void m35559a(@NonNull AbstractC2138t tVar) throws IOException {
        HttpURLConnection a = m35551a(new URL(this.f2488a.m36034c() + "/csm"), (String) null, "POST");
        m35555a(a, tVar);
        m35556a(a).close();
    }
}
