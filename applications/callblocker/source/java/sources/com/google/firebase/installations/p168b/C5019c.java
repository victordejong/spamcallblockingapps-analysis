package com.google.firebase.installations.p168b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.JsonReader;
import android.util.Log;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.util.C2701a;
import com.google.android.gms.common.util.C2713j;
import com.google.firebase.installations.p168b.AbstractC5020d;
import com.google.firebase.installations.p168b.AbstractC5023e;
import com.google.firebase.p162b.AbstractC4873c;
import com.google.firebase.p165e.AbstractC4935h;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.installations.b.c */
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/b/c.class */
public class C5019c {

    /* renamed from: a */
    private static final Pattern f21254a = Pattern.compile("[0-9]+s");

    /* renamed from: b */
    private static final Charset f21255b = Charset.forName("UTF-8");

    /* renamed from: c */
    private final Context f21256c;

    /* renamed from: d */
    private final AbstractC4935h f21257d;

    /* renamed from: e */
    private final AbstractC4873c f21258e;

    public C5019c(Context context, AbstractC4935h abstractC4935h, AbstractC4873c abstractC4873c) {
        this.f21256c = context;
        this.f21257d = abstractC4935h;
        this.f21258e = abstractC4873c;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: a */
    static long m1837a(String str) {
        C2662s.m13972b(f21254a.matcher(str).matches(), "Invalid Expiration Timestamp.");
        return (str == null || str.length() == 0) ? (char) 0 : Long.parseLong(str.substring(0, str.length() - 1));
    }

    /* renamed from: a */
    private HttpURLConnection m1831a(URL url, String str) {
        AbstractC4873c.EnumC4874a mo2133a;
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(10000);
        httpURLConnection.addRequestProperty("Content-Type", "application/json");
        httpURLConnection.addRequestProperty("Accept", "application/json");
        httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.addRequestProperty("X-Android-Package", this.f21256c.getPackageName());
        if (this.f21258e != null && this.f21257d != null && (mo2133a = this.f21258e.mo2133a("fire-installations-id")) != AbstractC4873c.EnumC4874a.NONE) {
            httpURLConnection.addRequestProperty("x-firebase-client", this.f21257d.mo2009a());
            httpURLConnection.addRequestProperty("x-firebase-client-log-type", Integer.toString(mo2133a.m2132a()));
        }
        httpURLConnection.addRequestProperty("X-Android-Cert", m1830b());
        httpURLConnection.addRequestProperty("x-goog-api-key", str);
        return httpURLConnection;
    }

    /* renamed from: a */
    private static JSONObject m1838a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("sdkVersion", "a:16.2.1");
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("installation", jSONObject);
        return jSONObject2;
    }

    /* renamed from: a */
    private static JSONObject m1836a(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("fid", str);
        jSONObject.put("appId", str2);
        jSONObject.put("authVersion", "FIS_v2");
        jSONObject.put("sdkVersion", "a:16.2.1");
        return jSONObject;
    }

    /* renamed from: a */
    private void m1833a(HttpURLConnection httpURLConnection) {
        OutputStream outputStream = httpURLConnection.getOutputStream();
        if (outputStream == null) {
            throw new IOException("Cannot send GenerateAuthToken request to FIS. No OutputStream available.");
        }
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
        try {
            try {
                gZIPOutputStream.write(m1838a().toString().getBytes("UTF-8"));
            } catch (JSONException e) {
                throw new IllegalStateException(e);
            }
        } finally {
            gZIPOutputStream.close();
        }
    }

    /* renamed from: a */
    private void m1832a(HttpURLConnection httpURLConnection, String str, String str2) {
        OutputStream outputStream = httpURLConnection.getOutputStream();
        if (outputStream == null) {
            throw new IOException("Cannot send CreateInstallation request to FIS. No OutputStream available.");
        }
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
        try {
            try {
                gZIPOutputStream.write(m1836a(str, str2).toString().getBytes("UTF-8"));
            } catch (JSONException e) {
                throw new IllegalStateException(e);
            }
        } finally {
            gZIPOutputStream.close();
        }
    }

    /* renamed from: b */
    private AbstractC5020d m1829b(HttpURLConnection httpURLConnection) {
        JsonReader jsonReader = new JsonReader(new InputStreamReader(httpURLConnection.getInputStream(), f21255b));
        AbstractC5023e.AbstractC5024a m1812d = AbstractC5023e.m1812d();
        AbstractC5020d.AbstractC5021a m1822f = AbstractC5020d.m1822f();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("name")) {
                m1822f.mo1818a(jsonReader.nextString());
            } else if (nextName.equals("fid")) {
                m1822f.mo1817b(jsonReader.nextString());
            } else if (nextName.equals("refreshToken")) {
                m1822f.mo1816c(jsonReader.nextString());
            } else if (nextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if (nextName2.equals("token")) {
                        m1812d.mo1808a(jsonReader.nextString());
                    } else if (nextName2.equals("expiresIn")) {
                        m1812d.mo1810a(m1837a(jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
                m1822f.mo1819a(m1812d.mo1811a());
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        return m1822f.mo1820a(AbstractC5020d.EnumC5022b.OK).mo1821a();
    }

    /* renamed from: b */
    private String m1830b() {
        String str = null;
        try {
            byte[] m13881a = C2701a.m13881a(this.f21256c, this.f21256c.getPackageName());
            if (m13881a == null) {
                Log.e("ContentValues", "Could not get fingerprint hash for package: " + this.f21256c.getPackageName());
            } else {
                str = C2713j.m13849a(m13881a, false);
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("ContentValues", "No such package: " + this.f21256c.getPackageName(), e);
        }
        return str;
    }

    /* renamed from: c */
    private AbstractC5023e m1828c(HttpURLConnection httpURLConnection) {
        JsonReader jsonReader = new JsonReader(new InputStreamReader(httpURLConnection.getInputStream(), f21255b));
        AbstractC5023e.AbstractC5024a m1812d = AbstractC5023e.m1812d();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("token")) {
                m1812d.mo1808a(jsonReader.nextString());
            } else if (nextName.equals("expiresIn")) {
                m1812d.mo1810a(m1837a(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        return m1812d.mo1809a(AbstractC5023e.EnumC5025b.OK).mo1811a();
    }

    /* renamed from: a */
    public AbstractC5020d m1834a(String str, String str2, String str3, String str4, String str5) {
        AbstractC5020d m1829b;
        int i = 0;
        URL url = new URL(String.format("https://%s/%s/%s", "firebaseinstallations.googleapis.com", "v1", String.format("projects/%s/installations", str3)));
        while (i <= 1) {
            HttpURLConnection m1831a = m1831a(url, str);
            try {
                m1831a.setRequestMethod("POST");
                m1831a.setDoOutput(true);
                if (str5 != null) {
                    m1831a.addRequestProperty("x-goog-fis-android-iid-migration-auth", str5);
                }
                m1832a(m1831a, str2, str4);
                int responseCode = m1831a.getResponseCode();
                if (responseCode == 200) {
                    m1829b = m1829b(m1831a);
                } else if (responseCode == 429 || (responseCode >= 500 && responseCode < 600)) {
                    i++;
                } else {
                    m1829b = AbstractC5020d.m1822f().mo1820a(AbstractC5020d.EnumC5022b.BAD_CONFIG).mo1821a();
                    m1831a.disconnect();
                }
                return m1829b;
            } finally {
                m1831a.disconnect();
            }
        }
        throw new IOException();
    }

    /* renamed from: a */
    public AbstractC5023e m1835a(String str, String str2, String str3, String str4) {
        AbstractC5023e m1828c;
        int i = 0;
        URL url = new URL(String.format("https://%s/%s/%s", "firebaseinstallations.googleapis.com", "v1", String.format("projects/%s/installations/%s/authTokens:generate", str3, str2)));
        while (i <= 1) {
            HttpURLConnection m1831a = m1831a(url, str);
            try {
                m1831a.setRequestMethod("POST");
                m1831a.addRequestProperty("Authorization", "FIS_v2 " + str4);
                m1833a(m1831a);
                int responseCode = m1831a.getResponseCode();
                if (responseCode == 200) {
                    m1828c = m1828c(m1831a);
                } else if (responseCode == 401 || responseCode == 404) {
                    m1828c = AbstractC5023e.m1812d().mo1809a(AbstractC5023e.EnumC5025b.AUTH_ERROR).mo1811a();
                    m1831a.disconnect();
                } else if (responseCode == 429 || (responseCode >= 500 && responseCode < 600)) {
                    i++;
                } else {
                    m1828c = AbstractC5023e.m1812d().mo1809a(AbstractC5023e.EnumC5025b.BAD_CONFIG).mo1811a();
                    m1831a.disconnect();
                }
                return m1828c;
            } finally {
                m1831a.disconnect();
            }
        }
        throw new IOException();
    }
}
