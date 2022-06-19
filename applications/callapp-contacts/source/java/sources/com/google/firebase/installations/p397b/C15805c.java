package com.google.firebase.installations.p397b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.util.C12094a;
import com.google.android.gms.common.util.C12107k;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.google.firebase.installations.p397b.AbstractC15806d;
import com.google.firebase.installations.p397b.AbstractC15810f;
import com.google.firebase.installations.p397b.C15799a;
import com.google.firebase.p390c.AbstractC15616f;
import com.google.firebase.p391d.AbstractC15728b;
import com.google.firebase.p394f.AbstractC15754i;
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
/* renamed from: com.google.firebase.installations.b.c */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/b/c.class */
public final class C15805c {

    /* renamed from: a */
    private static final Pattern f56219a = Pattern.compile("[0-9]+s");

    /* renamed from: b */
    private static final Charset f56220b = Charset.forName("UTF-8");

    /* renamed from: c */
    private final Context f56221c;

    /* renamed from: d */
    private final AbstractC15728b<AbstractC15754i> f56222d;

    /* renamed from: e */
    private final AbstractC15728b<AbstractC15616f> f56223e;

    /* renamed from: f */
    private final C15809e f56224f = new C15809e();

    public C15805c(Context context, AbstractC15728b<AbstractC15754i> abstractC15728b, AbstractC15728b<AbstractC15616f> abstractC15728b2) {
        this.f56221c = context;
        this.f56222d = abstractC15728b;
        this.f56223e = abstractC15728b2;
    }

    /* renamed from: a */
    private static AbstractC15810f m8345a(HttpURLConnection httpURLConnection) throws AssertionError, IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f56220b));
        AbstractC15810f.AbstractC15811a m8318d = AbstractC15810f.m8318d();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("token")) {
                m8318d.mo8314a(jsonReader.nextString());
            } else if (nextName.equals("expiresIn")) {
                m8318d.mo8316a(m8339b(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return m8318d.mo8315a(AbstractC15810f.EnumC15812b.OK).mo8317a();
    }

    /* renamed from: a */
    private static String m8348a(String str, String str2, String str3) {
        return String.format("Firebase options used while communicating with Firebase server APIs: %s, %s%s", str2, str3, TextUtils.isEmpty(str) ? "" : ", ".concat(String.valueOf(str)));
    }

    /* renamed from: a */
    public static URL m8350a(String str) throws FirebaseInstallationsException {
        try {
            return new URL(String.format("https://%s/%s/%s", "firebaseinstallations.googleapis.com", "v1", str));
        } catch (MalformedURLException e) {
            throw new FirebaseInstallationsException(e.getMessage(), FirebaseInstallationsException.EnumC15786a.UNAVAILABLE);
        }
    }

    /* renamed from: a */
    private static JSONObject m8349a(String str, String str2) {
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

    /* renamed from: a */
    public static void m8352a() {
        Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
    }

    /* renamed from: a */
    public static void m8344a(HttpURLConnection httpURLConnection, String str, String str2, String str3) {
        String m8338b = m8338b(httpURLConnection);
        if (!TextUtils.isEmpty(m8338b)) {
            Log.w("Firebase-Installations", m8338b);
            Log.w("Firebase-Installations", m8348a(str, str2, str3));
        }
    }

    /* renamed from: a */
    private static void m8342a(URLConnection uRLConnection, byte[] bArr) throws IOException {
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

    /* renamed from: a */
    private static boolean m8351a(int i) {
        return i >= 200 && i < 300;
    }

    /* renamed from: a */
    private static byte[] m8341a(JSONObject jSONObject) throws IOException {
        return jSONObject.toString().getBytes("UTF-8");
    }

    /* renamed from: b */
    private static long m8339b(String str) {
        C12045o.m19153b(f56219a.matcher(str).matches(), "Invalid Expiration Timestamp.");
        if (str == null || str.length() == 0) {
            return 0L;
        }
        return Long.parseLong(str.substring(0, str.length() - 1));
    }

    /* renamed from: b */
    private static String m8338b(HttpURLConnection httpURLConnection) {
        InputStream errorStream = httpURLConnection.getErrorStream();
        if (errorStream == null) {
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f56220b));
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

    /* renamed from: b */
    private static JSONObject m8340b() {
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

    /* renamed from: c */
    private String m8337c() {
        try {
            Context context = this.f56221c;
            byte[] m19058a = C12094a.m19058a(context, context.getPackageName());
            if (m19058a != null) {
                return C12107k.m19027a(m19058a);
            }
            Log.e("ContentValues", "Could not get fingerprint hash for package: " + this.f56221c.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("ContentValues", "No such package: " + this.f56221c.getPackageName(), e);
            return null;
        }
    }

    /* renamed from: a */
    public final AbstractC15806d m8346a(String str, String str2, String str3, String str4, String str5) throws FirebaseInstallationsException {
        int responseCode;
        if (this.f56224f.m8325a()) {
            URL m8350a = m8350a(String.format("projects/%s/installations", str3));
            for (int i = 0; i <= 1; i++) {
                HttpURLConnection m8343a = m8343a(m8350a, str);
                try {
                    try {
                        m8343a.setRequestMethod("POST");
                        m8343a.setDoOutput(true);
                        if (str5 != null) {
                            m8343a.addRequestProperty("x-goog-fis-android-iid-migration-auth", str5);
                        }
                        try {
                            m8342a(m8343a, m8341a(m8349a(str2, str4)));
                            responseCode = m8343a.getResponseCode();
                            this.f56224f.m8324a(responseCode);
                        } catch (IOException | AssertionError e) {
                        }
                    } finally {
                        m8343a.disconnect();
                    }
                } catch (IOException | AssertionError e2) {
                }
                if (m8351a(responseCode)) {
                    InputStream inputStream = m8343a.getInputStream();
                    JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f56220b));
                    AbstractC15810f.AbstractC15811a m8318d = AbstractC15810f.m8318d();
                    C15799a.C15801a c15801a = new C15799a.C15801a();
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName = jsonReader.nextName();
                        if (nextName.equals("name")) {
                            c15801a.mo8328a(jsonReader.nextString());
                        } else if (nextName.equals("fid")) {
                            c15801a.mo8327b(jsonReader.nextString());
                        } else if (nextName.equals("refreshToken")) {
                            c15801a.mo8326c(jsonReader.nextString());
                        } else if (nextName.equals("authToken")) {
                            jsonReader.beginObject();
                            while (jsonReader.hasNext()) {
                                String nextName2 = jsonReader.nextName();
                                if (nextName2.equals("token")) {
                                    m8318d.mo8314a(jsonReader.nextString());
                                } else if (nextName2.equals("expiresIn")) {
                                    m8318d.mo8316a(m8339b(jsonReader.nextString()));
                                } else {
                                    jsonReader.skipValue();
                                }
                            }
                            c15801a.mo8329a(m8318d.mo8317a());
                            jsonReader.endObject();
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    jsonReader.close();
                    inputStream.close();
                    return c15801a.mo8330a(AbstractC15806d.EnumC15808b.OK).mo8331a();
                }
                m8344a(m8343a, str4, str, str3);
                if (responseCode == 429) {
                    throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", FirebaseInstallationsException.EnumC15786a.TOO_MANY_REQUESTS);
                }
                if (responseCode < 500 || responseCode >= 600) {
                    m8352a();
                    return new C15799a.C15801a().mo8330a(AbstractC15806d.EnumC15808b.BAD_CONFIG).mo8331a();
                }
                m8343a.disconnect();
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.EnumC15786a.UNAVAILABLE);
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.EnumC15786a.UNAVAILABLE);
    }

    /* renamed from: a */
    public final AbstractC15810f m8347a(String str, String str2, String str3, String str4) throws FirebaseInstallationsException {
        int responseCode;
        if (this.f56224f.m8325a()) {
            URL m8350a = m8350a(String.format("projects/%s/installations/%s/authTokens:generate", str3, str2));
            for (int i = 0; i <= 1; i++) {
                HttpURLConnection m8343a = m8343a(m8350a, str);
                try {
                    m8343a.setRequestMethod("POST");
                    m8343a.addRequestProperty("Authorization", "FIS_v2 ".concat(String.valueOf(str4)));
                    m8343a.setDoOutput(true);
                    m8342a(m8343a, m8341a(m8340b()));
                    responseCode = m8343a.getResponseCode();
                    this.f56224f.m8324a(responseCode);
                } catch (IOException | AssertionError e) {
                } catch (Throwable th) {
                    m8343a.disconnect();
                    throw th;
                }
                if (m8351a(responseCode)) {
                    AbstractC15810f m8345a = m8345a(m8343a);
                    m8343a.disconnect();
                    return m8345a;
                }
                m8344a(m8343a, (String) null, str, str3);
                if (responseCode == 401 || responseCode == 404) {
                    AbstractC15810f mo8317a = AbstractC15810f.m8318d().mo8315a(AbstractC15810f.EnumC15812b.AUTH_ERROR).mo8317a();
                    m8343a.disconnect();
                    return mo8317a;
                } else if (responseCode == 429) {
                    throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", FirebaseInstallationsException.EnumC15786a.TOO_MANY_REQUESTS);
                } else {
                    if (responseCode < 500 || responseCode >= 600) {
                        m8352a();
                        AbstractC15810f mo8317a2 = AbstractC15810f.m8318d().mo8315a(AbstractC15810f.EnumC15812b.BAD_CONFIG).mo8317a();
                        m8343a.disconnect();
                        return mo8317a2;
                    }
                    m8343a.disconnect();
                }
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.EnumC15786a.UNAVAILABLE);
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.EnumC15786a.UNAVAILABLE);
    }

    /* renamed from: a */
    public final HttpURLConnection m8343a(URL url, String str) throws FirebaseInstallationsException {
        AbstractC15616f.EnumC15617a mo8557a;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.addRequestProperty("Content-Type", "application/json");
            httpURLConnection.addRequestProperty("Accept", "application/json");
            httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
            httpURLConnection.addRequestProperty("Cache-Control", "no-cache");
            httpURLConnection.addRequestProperty("X-Android-Package", this.f56221c.getPackageName());
            if (this.f56223e.mo8476a() != null && this.f56222d.mo8476a() != null && (mo8557a = this.f56223e.mo8476a().mo8557a("fire-installations-id")) != AbstractC15616f.EnumC15617a.NONE) {
                httpURLConnection.addRequestProperty("x-firebase-client", this.f56222d.mo8476a().mo8455a());
                httpURLConnection.addRequestProperty("x-firebase-client-log-type", Integer.toString(mo8557a.getCode()));
            }
            httpURLConnection.addRequestProperty("X-Android-Cert", m8337c());
            httpURLConnection.addRequestProperty("x-goog-api-key", str);
            return httpURLConnection;
        } catch (IOException e) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.EnumC15786a.UNAVAILABLE);
        }
    }
}
