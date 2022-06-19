package com.google.firebase.installations.remote;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.util.C6223a;
import com.google.android.gms.common.util.C6232j;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
import com.google.firebase.p313k.AbstractC9247b;
import com.google.firebase.p315m.AbstractC9258i;
import com.yanzhenjie.nohttp.Headers;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.installations.remote.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/c.class */
public class C9240c {

    /* renamed from: a */
    private static final Pattern f39669a = Pattern.compile("[0-9]+s");

    /* renamed from: b */
    private static final Charset f39670b = Charset.forName("UTF-8");

    /* renamed from: c */
    private final Context f39671c;

    /* renamed from: d */
    private final AbstractC9247b<AbstractC9258i> f39672d;

    /* renamed from: e */
    private final AbstractC9247b<HeartBeatInfo> f39673e;

    /* renamed from: f */
    private final C9241d f39674f = new C9241d();

    public C9240c(Context context, AbstractC9247b<AbstractC9258i> abstractC9247b, AbstractC9247b<HeartBeatInfo> abstractC9247b2) {
        this.f39671c = context;
        this.f39672d = abstractC9247b;
        this.f39673e = abstractC9247b2;
    }

    /* renamed from: a */
    private static String m1445a(String str, String str2, String str3) {
        String str4;
        if (TextUtils.isEmpty(str)) {
            str4 = "";
        } else {
            str4 = ", " + str;
        }
        return String.format("Firebase options used while communicating with Firebase server APIs: %s, %s%s", str2, str3, str4);
    }

    /* renamed from: b */
    private static JSONObject m1444b(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("fid", str);
            jSONObject.put("appId", str2);
            jSONObject.put("authVersion", "FIS_v2");
            jSONObject.put("sdkVersion", "a:16.3.5");
            return jSONObject;
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: c */
    private static JSONObject m1443c() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sdkVersion", "a:16.3.5");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("installation", jSONObject);
            return jSONObject2;
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: f */
    private String m1440f() {
        try {
            Context context = this.f39671c;
            byte[] m16833a = C6223a.m16833a(context, context.getPackageName());
            if (m16833a != null) {
                return C6232j.m16792b(m16833a, false);
            }
            Log.e("ContentValues", "Could not get fingerprint hash for package: " + this.f39671c.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("ContentValues", "No such package: " + this.f39671c.getPackageName(), e);
            return null;
        }
    }

    /* renamed from: g */
    private URL m1439g(String str) {
        try {
            return new URL(String.format("https://%s/%s/%s", "firebaseinstallations.googleapis.com", "v1", str));
        } catch (MalformedURLException e) {
            throw new FirebaseInstallationsException(e.getMessage(), FirebaseInstallationsException.Status.UNAVAILABLE);
        }
    }

    /* renamed from: h */
    private static byte[] m1438h(JSONObject jSONObject) {
        return jSONObject.toString().getBytes("UTF-8");
    }

    /* renamed from: i */
    private static boolean m1437i(int i) {
        return i >= 200 && i < 300;
    }

    /* renamed from: j */
    private static void m1436j() {
        Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
    }

    /* renamed from: k */
    private static void m1435k(HttpURLConnection httpURLConnection, String str, String str2, String str3) {
        String m1431o = m1431o(httpURLConnection);
        if (!TextUtils.isEmpty(m1431o)) {
            Log.w("Firebase-Installations", m1431o);
            Log.w("Firebase-Installations", m1445a(str, str2, str3));
        }
    }

    /* renamed from: l */
    private HttpURLConnection m1434l(URL url, String str) {
        HeartBeatInfo.HeartBeat mo1654a;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.addRequestProperty(Headers.HEAD_KEY_CONTENT_TYPE, Headers.HEAD_VALUE_CONTENT_TYPE_JSON);
            httpURLConnection.addRequestProperty(Headers.HEAD_KEY_ACCEPT, Headers.HEAD_VALUE_CONTENT_TYPE_JSON);
            httpURLConnection.addRequestProperty(Headers.HEAD_KEY_CONTENT_ENCODING, "gzip");
            httpURLConnection.addRequestProperty(Headers.HEAD_KEY_CACHE_CONTROL, "no-cache");
            httpURLConnection.addRequestProperty("X-Android-Package", this.f39671c.getPackageName());
            if (this.f39673e.get() != null && this.f39672d.get() != null && (mo1654a = this.f39673e.get().mo1654a("fire-installations-id")) != HeartBeatInfo.HeartBeat.NONE) {
                httpURLConnection.addRequestProperty("x-firebase-client", this.f39672d.get().mo1396a());
                httpURLConnection.addRequestProperty("x-firebase-client-log-type", Integer.toString(mo1654a.getCode()));
            }
            httpURLConnection.addRequestProperty("X-Android-Cert", m1440f());
            httpURLConnection.addRequestProperty("x-goog-api-key", str);
            return httpURLConnection;
        } catch (IOException e) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: m */
    static long m1433m(String str) {
        C6155o.m17026b(f39669a.matcher(str).matches(), "Invalid Expiration Timestamp.");
        return (str == null || str.length() == 0) ? (char) 0 : Long.parseLong(str.substring(0, str.length() - 1));
    }

    /* renamed from: n */
    private InstallationResponse m1432n(HttpURLConnection httpURLConnection) {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f39670b));
        TokenResult.AbstractC9233a m1464a = TokenResult.m1464a();
        InstallationResponse.AbstractC9232a m1465a = InstallationResponse.m1465a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(ShortCut.NAME)) {
                m1465a.mo1453f(jsonReader.nextString());
            } else if (nextName.equals("fid")) {
                m1465a.mo1456c(jsonReader.nextString());
            } else if (nextName.equals("refreshToken")) {
                m1465a.mo1455d(jsonReader.nextString());
            } else if (nextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if (nextName2.equals("token")) {
                        m1464a.mo1447c(jsonReader.nextString());
                    } else if (nextName2.equals("expiresIn")) {
                        m1464a.mo1446d(m1433m(jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
                m1465a.mo1457b(m1464a.mo1449a());
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return m1465a.mo1454e(InstallationResponse.ResponseCode.OK).mo1458a();
    }

    /* renamed from: o */
    private static String m1431o(HttpURLConnection httpURLConnection) {
        InputStream errorStream = httpURLConnection.getErrorStream();
        if (errorStream == null) {
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f39670b));
        try {
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
                sb.append('\n');
            }
            String format = String.format("Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]", Integer.valueOf(httpURLConnection.getResponseCode()), httpURLConnection.getResponseMessage(), sb);
            try {
                bufferedReader.close();
            } catch (IOException e) {
            }
            return format;
        } catch (IOException e2) {
            try {
                bufferedReader.close();
                return null;
            } catch (IOException e3) {
                return null;
            }
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (IOException e4) {
            }
            throw th;
        }
    }

    /* renamed from: p */
    private TokenResult m1430p(HttpURLConnection httpURLConnection) {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f39670b));
        TokenResult.AbstractC9233a m1464a = TokenResult.m1464a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("token")) {
                m1464a.mo1447c(jsonReader.nextString());
            } else if (nextName.equals("expiresIn")) {
                m1464a.mo1446d(m1433m(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return m1464a.mo1448b(TokenResult.ResponseCode.OK).mo1449a();
    }

    /* renamed from: q */
    private void m1429q(HttpURLConnection httpURLConnection, String str, String str2) {
        m1427s(httpURLConnection, m1438h(m1444b(str, str2)));
    }

    /* renamed from: r */
    private void m1428r(HttpURLConnection httpURLConnection) {
        m1427s(httpURLConnection, m1438h(m1443c()));
    }

    /* renamed from: s */
    private static void m1427s(URLConnection uRLConnection, byte[] bArr) {
        OutputStream outputStream = uRLConnection.getOutputStream();
        if (outputStream != null) {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
            try {
                gZIPOutputStream.write(bArr);
                try {
                    gZIPOutputStream.close();
                    outputStream.close();
                    return;
                } catch (IOException e) {
                    return;
                }
            } catch (Throwable th) {
                try {
                    gZIPOutputStream.close();
                    outputStream.close();
                } catch (IOException e2) {
                }
                throw th;
            }
        }
        throw new IOException("Cannot send request to FIS servers. No OutputStream available.");
    }

    /* renamed from: d */
    public InstallationResponse m1442d(String str, String str2, String str3, String str4, String str5) {
        int responseCode;
        if (this.f39674f.m1425b()) {
            URL m1439g = m1439g(String.format("projects/%s/installations", str3));
            for (int i = 0; i <= 1; i++) {
                HttpURLConnection m1434l = m1434l(m1439g, str);
                try {
                    m1434l.setRequestMethod("POST");
                    m1434l.setDoOutput(true);
                    if (str5 != null) {
                        m1434l.addRequestProperty("x-goog-fis-android-iid-migration-auth", str5);
                    }
                    m1429q(m1434l, str2, str4);
                    responseCode = m1434l.getResponseCode();
                    this.f39674f.m1421f(responseCode);
                } catch (IOException | AssertionError e) {
                } catch (Throwable th) {
                    m1434l.disconnect();
                    throw th;
                }
                if (m1437i(responseCode)) {
                    InstallationResponse m1432n = m1432n(m1434l);
                    m1434l.disconnect();
                    return m1432n;
                }
                m1435k(m1434l, str4, str, str3);
                if (responseCode == 429) {
                    throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", FirebaseInstallationsException.Status.TOO_MANY_REQUESTS);
                }
                if (responseCode < 500 || responseCode >= 600) {
                    m1436j();
                    InstallationResponse mo1458a = InstallationResponse.m1465a().mo1454e(InstallationResponse.ResponseCode.BAD_CONFIG).mo1458a();
                    m1434l.disconnect();
                    return mo1458a;
                }
                m1434l.disconnect();
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
    }

    /* renamed from: e */
    public TokenResult m1441e(String str, String str2, String str3, String str4) {
        int responseCode;
        if (this.f39674f.m1425b()) {
            URL m1439g = m1439g(String.format("projects/%s/installations/%s/authTokens:generate", str3, str2));
            for (int i = 0; i <= 1; i++) {
                HttpURLConnection m1434l = m1434l(m1439g, str);
                try {
                    m1434l.setRequestMethod("POST");
                    m1434l.addRequestProperty("Authorization", "FIS_v2 " + str4);
                    m1434l.setDoOutput(true);
                    m1428r(m1434l);
                    responseCode = m1434l.getResponseCode();
                    this.f39674f.m1421f(responseCode);
                } catch (IOException | AssertionError e) {
                } catch (Throwable th) {
                    m1434l.disconnect();
                    throw th;
                }
                if (m1437i(responseCode)) {
                    TokenResult m1430p = m1430p(m1434l);
                    m1434l.disconnect();
                    return m1430p;
                }
                m1435k(m1434l, null, str, str3);
                if (responseCode == 401 || responseCode == 404) {
                    TokenResult mo1449a = TokenResult.m1464a().mo1448b(TokenResult.ResponseCode.AUTH_ERROR).mo1449a();
                    m1434l.disconnect();
                    return mo1449a;
                } else if (responseCode == 429) {
                    throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", FirebaseInstallationsException.Status.TOO_MANY_REQUESTS);
                } else {
                    if (responseCode < 500 || responseCode >= 600) {
                        m1436j();
                        TokenResult mo1449a2 = TokenResult.m1464a().mo1448b(TokenResult.ResponseCode.BAD_CONFIG).mo1449a();
                        m1434l.disconnect();
                        return mo1449a2;
                    }
                    m1434l.disconnect();
                }
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
    }
}
