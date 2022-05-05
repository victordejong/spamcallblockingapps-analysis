package p081h.p203i.p325c.p367v.p369r;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import gogolook.callgogolook2.gson.UserProfile;
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
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p249s.C7069a;
import p081h.p203i.p204a.p224e.p235d.p249s.C7079k;
import p081h.p203i.p325c.p326a0.AbstractC9393i;
import p081h.p203i.p325c.p363s.AbstractC9861d;
import p081h.p203i.p325c.p366u.AbstractC9929a;
import p081h.p203i.p325c.p367v.C9942i;
import p081h.p203i.p325c.p367v.p369r.AbstractC9967d;
import p081h.p203i.p325c.p367v.p369r.AbstractC9971f;
/* renamed from: h.i.c.v.r.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/v/r/c.class */
public class C9966c {

    /* renamed from: e */
    public static final Pattern f22553e = Pattern.compile("[0-9]+s");

    /* renamed from: f */
    public static final Charset f22554f = Charset.forName("UTF-8");

    /* renamed from: a */
    public final Context f22555a;

    /* renamed from: b */
    public final AbstractC9929a<AbstractC9393i> f22556b;

    /* renamed from: c */
    public final AbstractC9929a<AbstractC9861d> f22557c;

    /* renamed from: d */
    public final C9970e f22558d = new C9970e();

    public C9966c(@NonNull Context context, @NonNull AbstractC9929a<AbstractC9393i> aVar, @NonNull AbstractC9929a<AbstractC9861d> aVar2) {
        this.f22555a = context;
        this.f22556b = aVar;
        this.f22557c = aVar2;
    }

    /* renamed from: a */
    public static String m13831a(@Nullable String str, @NonNull String str2, @NonNull String str3) {
        String str4;
        if (TextUtils.isEmpty(str)) {
            str4 = "";
        } else {
            str4 = UserProfile.CARD_CATE_SEPARATOR + str;
        }
        return String.format("Firebase options used while communicating with Firebase server APIs: %s, %s%s", str2, str3, str4);
    }

    /* renamed from: a */
    public static JSONObject m13832a(@Nullable String str, @NonNull String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("fid", str);
            jSONObject.put("appId", str2);
            jSONObject.put("authVersion", "FIS_v2");
            jSONObject.put("sdkVersion", "a:16.3.4");
            return jSONObject;
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: a */
    public static void m13826a(HttpURLConnection httpURLConnection, @Nullable String str, @NonNull String str2, @NonNull String str3) {
        if (!TextUtils.isEmpty(m13816d(httpURLConnection))) {
            m13831a(str, str2, str3);
        }
    }

    /* renamed from: a */
    public static void m13824a(URLConnection uRLConnection, byte[] bArr) throws IOException {
        OutputStream outputStream = uRLConnection.getOutputStream();
        if (outputStream != null) {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
            try {
                gZIPOutputStream.write(bArr);
                try {
                    gZIPOutputStream.close();
                    outputStream.close();
                } catch (IOException e) {
                }
            } catch (Throwable th) {
                try {
                    gZIPOutputStream.close();
                    outputStream.close();
                } catch (IOException e2) {
                }
                throw th;
            }
        } else {
            throw new IOException("Cannot send request to FIS servers. No OutputStream available.");
        }
    }

    /* renamed from: a */
    public static boolean m13834a(int i) {
        return i >= 200 && i < 300;
    }

    /* renamed from: a */
    public static byte[] m13823a(JSONObject jSONObject) throws IOException {
        return jSONObject.toString().getBytes("UTF-8");
    }

    /* renamed from: b */
    public static long m13821b(String str) {
        C7021t.m21285a(f22553e.matcher(str).matches(), "Invalid Expiration Timestamp.");
        return (str == null || str.length() == 0) ? 0L : Long.parseLong(str.substring(0, str.length() - 1));
    }

    /* renamed from: b */
    public static JSONObject m13822b() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sdkVersion", "a:16.3.4");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("installation", jSONObject);
            return jSONObject2;
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: c */
    public static void m13818c() {
        Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
    }

    @Nullable
    /* renamed from: d */
    public static String m13816d(HttpURLConnection httpURLConnection) {
        InputStream errorStream = httpURLConnection.getErrorStream();
        if (errorStream == null) {
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f22554f));
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

    @NonNull
    /* renamed from: a */
    public AbstractC9967d m13829a(@NonNull String str, @Nullable String str2, @NonNull String str3, @NonNull String str4, @Nullable String str5) throws C9942i {
        int responseCode;
        if (this.f22558d.m13803a()) {
            URL a = m13833a(String.format("projects/%s/installations", str3));
            for (int i = 0; i <= 1; i++) {
                HttpURLConnection a2 = m13825a(a, str);
                try {
                    a2.setRequestMethod("POST");
                    a2.setDoOutput(true);
                    if (str5 != null) {
                        a2.addRequestProperty("x-goog-fis-android-iid-migration-auth", str5);
                    }
                    m13827a(a2, str2, str4);
                    responseCode = a2.getResponseCode();
                    this.f22558d.m13800b(responseCode);
                } catch (IOException | AssertionError e) {
                } catch (Throwable th) {
                    a2.disconnect();
                    throw th;
                }
                if (m13834a(responseCode)) {
                    AbstractC9967d a3 = m13828a(a2);
                    a2.disconnect();
                    return a3;
                }
                m13826a(a2, str4, str, str3);
                if (responseCode == 429) {
                    throw new C9942i("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", C9942i.EnumC9943a.TOO_MANY_REQUESTS);
                } else if (responseCode < 500 || responseCode >= 600) {
                    m13818c();
                    AbstractC9967d.AbstractC9968a f = AbstractC9967d.m13810f();
                    f.mo13808a(AbstractC9967d.EnumC9969b.BAD_CONFIG);
                    AbstractC9967d a4 = f.mo13809a();
                    a2.disconnect();
                    return a4;
                } else {
                    a2.disconnect();
                }
            }
            throw new C9942i("Firebase Installations Service is unavailable. Please try again later.", C9942i.EnumC9943a.UNAVAILABLE);
        }
        throw new C9942i("Firebase Installations Service is unavailable. Please try again later.", C9942i.EnumC9943a.UNAVAILABLE);
    }

    /* renamed from: a */
    public final AbstractC9967d m13828a(HttpURLConnection httpURLConnection) throws AssertionError, IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f22554f));
        AbstractC9971f.AbstractC9972a d = AbstractC9971f.m13794d();
        AbstractC9967d.AbstractC9968a f = AbstractC9967d.m13810f();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("name")) {
                f.mo13804c(jsonReader.nextString());
            } else if (nextName.equals("fid")) {
                f.mo13806a(jsonReader.nextString());
            } else if (nextName.equals("refreshToken")) {
                f.mo13805b(jsonReader.nextString());
            } else if (nextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if (nextName2.equals("token")) {
                        d.mo13790a(jsonReader.nextString());
                    } else if (nextName2.equals("expiresIn")) {
                        d.mo13792a(m13821b(jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
                f.mo13807a(d.mo13793a());
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        f.mo13808a(AbstractC9967d.EnumC9969b.OK);
        return f.mo13809a();
    }

    /* renamed from: a */
    public final String m13835a() {
        try {
            byte[] a = C7069a.m21172a(this.f22555a, this.f22555a.getPackageName());
            if (a != null) {
                return C7079k.m21139a(a, false);
            }
            Log.e("ContentValues", "Could not get fingerprint hash for package: " + this.f22555a.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("ContentValues", "No such package: " + this.f22555a.getPackageName(), e);
            return null;
        }
    }

    /* renamed from: a */
    public final HttpURLConnection m13825a(URL url, String str) throws C9942i {
        AbstractC9861d.EnumC9862a a;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.addRequestProperty("Content-Type", "application/json");
            httpURLConnection.addRequestProperty("Accept", "application/json");
            httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
            httpURLConnection.addRequestProperty("Cache-Control", "no-cache");
            httpURLConnection.addRequestProperty("X-Android-Package", this.f22555a.getPackageName());
            if (!(this.f22557c.get() == null || this.f22556b.get() == null || (a = this.f22557c.get().mo14070a("fire-installations-id")) == AbstractC9861d.EnumC9862a.NONE)) {
                httpURLConnection.addRequestProperty("x-firebase-client", this.f22556b.get().mo15322a());
                httpURLConnection.addRequestProperty("x-firebase-client-log-type", Integer.toString(a.m14069a()));
            }
            httpURLConnection.addRequestProperty("X-Android-Cert", m13835a());
            httpURLConnection.addRequestProperty("x-goog-api-key", str);
            return httpURLConnection;
        } catch (IOException e) {
            throw new C9942i("Firebase Installations Service is unavailable. Please try again later.", C9942i.EnumC9943a.UNAVAILABLE);
        }
    }

    /* renamed from: a */
    public final URL m13833a(String str) throws C9942i {
        try {
            return new URL(String.format("https://%s/%s/%s", "firebaseinstallations.googleapis.com", "v1", str));
        } catch (MalformedURLException e) {
            throw new C9942i(e.getMessage(), C9942i.EnumC9943a.UNAVAILABLE);
        }
    }

    @NonNull
    /* renamed from: a */
    public void m13830a(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4) throws C9942i {
        int responseCode;
        int i = 0;
        URL a = m13833a(String.format("projects/%s/installations/%s", str3, str2));
        while (i <= 1) {
            HttpURLConnection a2 = m13825a(a, str);
            try {
                a2.setRequestMethod("DELETE");
                a2.addRequestProperty("Authorization", "FIS_v2 " + str4);
                responseCode = a2.getResponseCode();
            } catch (IOException e) {
            } catch (Throwable th) {
                a2.disconnect();
                throw th;
            }
            if (responseCode == 200 || responseCode == 401 || responseCode == 404) {
                a2.disconnect();
                return;
            }
            m13826a(a2, (String) null, str, str3);
            if (responseCode != 429 && (responseCode < 500 || responseCode >= 600)) {
                m13818c();
                throw new C9942i("Bad config while trying to delete FID", C9942i.EnumC9943a.BAD_CONFIG);
                break;
            }
            i++;
            a2.disconnect();
        }
        throw new C9942i("Firebase Installations Service is unavailable. Please try again later.", C9942i.EnumC9943a.UNAVAILABLE);
    }

    /* renamed from: a */
    public final void m13827a(HttpURLConnection httpURLConnection, @Nullable String str, @NonNull String str2) throws IOException {
        m13824a(httpURLConnection, m13823a(m13832a(str, str2)));
    }

    @NonNull
    /* renamed from: b */
    public AbstractC9971f m13820b(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4) throws C9942i {
        int responseCode;
        if (this.f22558d.m13803a()) {
            URL a = m13833a(String.format("projects/%s/installations/%s/authTokens:generate", str3, str2));
            for (int i = 0; i <= 1; i++) {
                HttpURLConnection a2 = m13825a(a, str);
                try {
                    a2.setRequestMethod("POST");
                    a2.addRequestProperty("Authorization", "FIS_v2 " + str4);
                    a2.setDoOutput(true);
                    m13817c(a2);
                    responseCode = a2.getResponseCode();
                    this.f22558d.m13800b(responseCode);
                } catch (IOException | AssertionError e) {
                } catch (Throwable th) {
                    a2.disconnect();
                    throw th;
                }
                if (m13834a(responseCode)) {
                    AbstractC9971f b = m13819b(a2);
                    a2.disconnect();
                    return b;
                }
                m13826a(a2, (String) null, str, str3);
                if (responseCode == 401 || responseCode == 404) {
                    AbstractC9971f.AbstractC9972a d = AbstractC9971f.m13794d();
                    d.mo13791a(AbstractC9971f.EnumC9973b.AUTH_ERROR);
                    AbstractC9971f a3 = d.mo13793a();
                    a2.disconnect();
                    return a3;
                } else if (responseCode == 429) {
                    throw new C9942i("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", C9942i.EnumC9943a.TOO_MANY_REQUESTS);
                } else if (responseCode < 500 || responseCode >= 600) {
                    m13818c();
                    AbstractC9971f.AbstractC9972a d2 = AbstractC9971f.m13794d();
                    d2.mo13791a(AbstractC9971f.EnumC9973b.BAD_CONFIG);
                    AbstractC9971f a4 = d2.mo13793a();
                    a2.disconnect();
                    return a4;
                } else {
                    a2.disconnect();
                }
            }
            throw new C9942i("Firebase Installations Service is unavailable. Please try again later.", C9942i.EnumC9943a.UNAVAILABLE);
        }
        throw new C9942i("Firebase Installations Service is unavailable. Please try again later.", C9942i.EnumC9943a.UNAVAILABLE);
    }

    /* renamed from: b */
    public final AbstractC9971f m13819b(HttpURLConnection httpURLConnection) throws AssertionError, IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f22554f));
        AbstractC9971f.AbstractC9972a d = AbstractC9971f.m13794d();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("token")) {
                d.mo13790a(jsonReader.nextString());
            } else if (nextName.equals("expiresIn")) {
                d.mo13792a(m13821b(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        d.mo13791a(AbstractC9971f.EnumC9973b.OK);
        return d.mo13793a();
    }

    /* renamed from: c */
    public final void m13817c(HttpURLConnection httpURLConnection) throws IOException {
        m13824a(httpURLConnection, m13823a(m13822b()));
    }
}
