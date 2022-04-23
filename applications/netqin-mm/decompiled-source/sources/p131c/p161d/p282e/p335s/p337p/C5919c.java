package p131c.p161d.p282e.p335s.p337p;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import com.android.volley.Request;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
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
import p131c.p161d.p282e.p334r.AbstractC5887a;
import p131c.p161d.p282e.p351v.AbstractC6063i;
/* renamed from: c.d.e.s.p.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/s/p/c.class */
public class C5919c {

    /* renamed from: e */
    public static final Pattern f19261e = Pattern.compile("[0-9]+s");

    /* renamed from: f */
    public static final Charset f19262f = Charset.forName(Request.DEFAULT_PARAMS_ENCODING);

    /* renamed from: a */
    public final Context f19263a;

    /* renamed from: b */
    public final AbstractC5887a<AbstractC6063i> f19264b;

    /* renamed from: c */
    public final AbstractC5887a<HeartBeatInfo> f19265c;

    /* renamed from: d */
    public final C5920d f19266d = new C5920d();

    public C5919c(Context context, AbstractC5887a<AbstractC6063i> aVar, AbstractC5887a<HeartBeatInfo> aVar2) {
        this.f19263a = context;
        this.f19264b = aVar;
        this.f19265c = aVar2;
    }

    /* renamed from: a */
    public static String m22719a(String str, String str2, String str3) {
        String str4;
        if (TextUtils.isEmpty(str)) {
            str4 = "";
        } else {
            str4 = ", " + str;
        }
        return String.format("Firebase options used while communicating with Firebase server APIs: %s, %s%s", str2, str3, str4);
    }

    /* renamed from: a */
    public static JSONObject m22720a(String str, String str2) {
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
    public static void m22714a(HttpURLConnection httpURLConnection, String str, String str2, String str3) {
        String d = m22705d(httpURLConnection);
        if (!TextUtils.isEmpty(d)) {
            Log.w("Firebase-Installations", d);
            Log.w("Firebase-Installations", m22719a(str, str2, str3));
        }
    }

    /* renamed from: a */
    public static void m22712a(URLConnection uRLConnection, byte[] bArr) throws IOException {
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
    public static boolean m22722a(int i) {
        return i >= 200 && i < 300;
    }

    /* renamed from: a */
    public static byte[] m22711a(JSONObject jSONObject) throws IOException {
        return jSONObject.toString().getBytes(Request.DEFAULT_PARAMS_ENCODING);
    }

    @VisibleForTesting
    /* renamed from: b */
    public static long m22709b(String str) {
        Preconditions.m17283a(f19261e.matcher(str).matches(), "Invalid Expiration Timestamp.");
        return (str == null || str.length() == 0) ? 0L : Long.parseLong(str.substring(0, str.length() - 1));
    }

    /* renamed from: b */
    public static JSONObject m22710b() {
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
    public static void m22707c() {
        Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
    }

    /* renamed from: d */
    public static String m22705d(HttpURLConnection httpURLConnection) {
        InputStream errorStream = httpURLConnection.getErrorStream();
        if (errorStream == null) {
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f19262f));
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

    /* renamed from: a */
    public InstallationResponse m22717a(String str, String str2, String str3, String str4, String str5) throws FirebaseInstallationsException {
        int responseCode;
        if (this.f19266d.m22704a()) {
            URL a = m22721a(String.format("projects/%s/installations", str3));
            for (int i = 0; i <= 1; i++) {
                HttpURLConnection a2 = m22713a(a, str);
                try {
                    a2.setRequestMethod("POST");
                    a2.setDoOutput(true);
                    if (str5 != null) {
                        a2.addRequestProperty("x-goog-fis-android-iid-migration-auth", str5);
                    }
                    m22715a(a2, str2, str4);
                    responseCode = a2.getResponseCode();
                    this.f19266d.m22701b(responseCode);
                } catch (IOException | AssertionError e) {
                } catch (Throwable th) {
                    a2.disconnect();
                    throw th;
                }
                if (m22722a(responseCode)) {
                    InstallationResponse a3 = m22716a(a2);
                    a2.disconnect();
                    return a3;
                }
                m22714a(a2, str4, str, str3);
                if (responseCode == 429) {
                    throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", FirebaseInstallationsException.Status.TOO_MANY_REQUESTS);
                } else if (responseCode < 500 || responseCode >= 600) {
                    m22707c();
                    InstallationResponse.AbstractC7846a f = InstallationResponse.m7287f();
                    f.mo7285a(InstallationResponse.ResponseCode.BAD_CONFIG);
                    InstallationResponse a4 = f.mo7286a();
                    a2.disconnect();
                    return a4;
                } else {
                    a2.disconnect();
                }
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
    }

    /* renamed from: a */
    public final InstallationResponse m22716a(HttpURLConnection httpURLConnection) throws AssertionError, IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f19262f));
        TokenResult.AbstractC7847a d = TokenResult.m7277d();
        InstallationResponse.AbstractC7846a f = InstallationResponse.m7287f();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("name")) {
                f.mo7281c(jsonReader.nextString());
            } else if (nextName.equals("fid")) {
                f.mo7283a(jsonReader.nextString());
            } else if (nextName.equals("refreshToken")) {
                f.mo7282b(jsonReader.nextString());
            } else if (nextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if (nextName2.equals("token")) {
                        d.mo7273a(jsonReader.nextString());
                    } else if (nextName2.equals("expiresIn")) {
                        d.mo7275a(m22709b(jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
                f.mo7284a(d.mo7276a());
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        f.mo7285a(InstallationResponse.ResponseCode.OK);
        return f.mo7286a();
    }

    /* renamed from: a */
    public TokenResult m22718a(String str, String str2, String str3, String str4) throws FirebaseInstallationsException {
        int responseCode;
        if (this.f19266d.m22704a()) {
            URL a = m22721a(String.format("projects/%s/installations/%s/authTokens:generate", str3, str2));
            for (int i = 0; i <= 1; i++) {
                HttpURLConnection a2 = m22713a(a, str);
                try {
                    a2.setRequestMethod("POST");
                    a2.addRequestProperty("Authorization", "FIS_v2 " + str4);
                    a2.setDoOutput(true);
                    m22706c(a2);
                    responseCode = a2.getResponseCode();
                    this.f19266d.m22701b(responseCode);
                } catch (IOException | AssertionError e) {
                } catch (Throwable th) {
                    a2.disconnect();
                    throw th;
                }
                if (m22722a(responseCode)) {
                    TokenResult b = m22708b(a2);
                    a2.disconnect();
                    return b;
                }
                m22714a(a2, (String) null, str, str3);
                if (responseCode == 401 || responseCode == 404) {
                    TokenResult.AbstractC7847a d = TokenResult.m7277d();
                    d.mo7274a(TokenResult.ResponseCode.AUTH_ERROR);
                    TokenResult a3 = d.mo7276a();
                    a2.disconnect();
                    return a3;
                } else if (responseCode == 429) {
                    throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", FirebaseInstallationsException.Status.TOO_MANY_REQUESTS);
                } else if (responseCode < 500 || responseCode >= 600) {
                    m22707c();
                    TokenResult.AbstractC7847a d2 = TokenResult.m7277d();
                    d2.mo7274a(TokenResult.ResponseCode.BAD_CONFIG);
                    TokenResult a4 = d2.mo7276a();
                    a2.disconnect();
                    return a4;
                } else {
                    a2.disconnect();
                }
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
    }

    /* renamed from: a */
    public final String m22723a() {
        try {
            byte[] a = AndroidUtilsLight.m17122a(this.f19263a, this.f19263a.getPackageName());
            if (a != null) {
                return Hex.m17076a(a, false);
            }
            Log.e("ContentValues", "Could not get fingerprint hash for package: " + this.f19263a.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("ContentValues", "No such package: " + this.f19263a.getPackageName(), e);
            return null;
        }
    }

    /* renamed from: a */
    public final HttpURLConnection m22713a(URL url, String str) throws FirebaseInstallationsException {
        HeartBeatInfo.HeartBeat a;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.addRequestProperty("Content-Type", "application/json");
            httpURLConnection.addRequestProperty("Accept", "application/json");
            httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
            httpURLConnection.addRequestProperty("Cache-Control", "no-cache");
            httpURLConnection.addRequestProperty("X-Android-Package", this.f19263a.getPackageName());
            if (!(this.f19265c.get() == null || this.f19264b.get() == null || (a = this.f19265c.get().mo7360a("fire-installations-id")) == HeartBeatInfo.HeartBeat.NONE)) {
                httpURLConnection.addRequestProperty("x-firebase-client", this.f19264b.get().mo22161a());
                httpURLConnection.addRequestProperty("x-firebase-client-log-type", Integer.toString(a.getCode()));
            }
            httpURLConnection.addRequestProperty("X-Android-Cert", m22723a());
            httpURLConnection.addRequestProperty("x-goog-api-key", str);
            return httpURLConnection;
        } catch (IOException e) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
    }

    /* renamed from: a */
    public final URL m22721a(String str) throws FirebaseInstallationsException {
        try {
            return new URL(String.format("https://%s/%s/%s", "firebaseinstallations.googleapis.com", "v1", str));
        } catch (MalformedURLException e) {
            throw new FirebaseInstallationsException(e.getMessage(), FirebaseInstallationsException.Status.UNAVAILABLE);
        }
    }

    /* renamed from: a */
    public final void m22715a(HttpURLConnection httpURLConnection, String str, String str2) throws IOException {
        m22712a(httpURLConnection, m22711a(m22720a(str, str2)));
    }

    /* renamed from: b */
    public final TokenResult m22708b(HttpURLConnection httpURLConnection) throws AssertionError, IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f19262f));
        TokenResult.AbstractC7847a d = TokenResult.m7277d();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("token")) {
                d.mo7273a(jsonReader.nextString());
            } else if (nextName.equals("expiresIn")) {
                d.mo7275a(m22709b(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        d.mo7274a(TokenResult.ResponseCode.OK);
        return d.mo7276a();
    }

    /* renamed from: c */
    public final void m22706c(HttpURLConnection httpURLConnection) throws IOException {
        m22712a(httpURLConnection, m22711a(m22710b()));
    }
}
