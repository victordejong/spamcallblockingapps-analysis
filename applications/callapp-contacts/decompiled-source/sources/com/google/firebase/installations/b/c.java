package com.google.firebase.installations.b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.util.a;
import com.google.android.gms.common.util.k;
import com.google.firebase.c.f;
import com.google.firebase.d.b;
import com.google.firebase.f.i;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.google.firebase.installations.b.a;
import com.google.firebase.installations.b.d;
import com.google.firebase.installations.b.f;
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
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/b/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f32410a = Pattern.compile("[0-9]+s");

    /* renamed from: b  reason: collision with root package name */
    private static final Charset f32411b = Charset.forName("UTF-8");

    /* renamed from: c  reason: collision with root package name */
    private final Context f32412c;

    /* renamed from: d  reason: collision with root package name */
    private final b<i> f32413d;
    private final b<f> e;
    private final e f = new e();

    public c(Context context, b<i> bVar, b<f> bVar2) {
        this.f32412c = context;
        this.f32413d = bVar;
        this.e = bVar2;
    }

    private static f a(HttpURLConnection httpURLConnection) throws AssertionError, IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f32411b));
        f.a d2 = f.d();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("token")) {
                d2.a(jsonReader.nextString());
            } else if (nextName.equals("expiresIn")) {
                d2.a(b(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return d2.a(f.b.OK).a();
    }

    private static String a(String str, String str2, String str3) {
        return String.format("Firebase options used while communicating with Firebase server APIs: %s, %s%s", str2, str3, TextUtils.isEmpty(str) ? "" : ", ".concat(String.valueOf(str)));
    }

    public static URL a(String str) throws FirebaseInstallationsException {
        try {
            return new URL(String.format("https://%s/%s/%s", "firebaseinstallations.googleapis.com", "v1", str));
        } catch (MalformedURLException e) {
            throw new FirebaseInstallationsException(e.getMessage(), FirebaseInstallationsException.a.UNAVAILABLE);
        }
    }

    private static JSONObject a(String str, String str2) {
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

    public static void a() {
        Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
    }

    public static void a(HttpURLConnection httpURLConnection, String str, String str2, String str3) {
        String b2 = b(httpURLConnection);
        if (!TextUtils.isEmpty(b2)) {
            Log.w("Firebase-Installations", b2);
            Log.w("Firebase-Installations", a(str, str2, str3));
        }
    }

    private static void a(URLConnection uRLConnection, byte[] bArr) throws IOException {
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

    private static boolean a(int i) {
        return i >= 200 && i < 300;
    }

    private static byte[] a(JSONObject jSONObject) throws IOException {
        return jSONObject.toString().getBytes("UTF-8");
    }

    private static long b(String str) {
        o.b(f32410a.matcher(str).matches(), "Invalid Expiration Timestamp.");
        if (str == null || str.length() == 0) {
            return 0L;
        }
        return Long.parseLong(str.substring(0, str.length() - 1));
    }

    private static String b(HttpURLConnection httpURLConnection) {
        InputStream errorStream = httpURLConnection.getErrorStream();
        if (errorStream == null) {
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f32411b));
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

    private static JSONObject b() {
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

    private String c() {
        try {
            Context context = this.f32412c;
            byte[] a2 = a.a(context, context.getPackageName());
            if (a2 != null) {
                return k.a(a2);
            }
            Log.e("ContentValues", "Could not get fingerprint hash for package: " + this.f32412c.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("ContentValues", "No such package: " + this.f32412c.getPackageName(), e);
            return null;
        }
    }

    public final d a(String str, String str2, String str3, String str4, String str5) throws FirebaseInstallationsException {
        int responseCode;
        if (this.f.a()) {
            URL a2 = a(String.format("projects/%s/installations", str3));
            for (int i = 0; i <= 1; i++) {
                HttpURLConnection a3 = a(a2, str);
                try {
                    try {
                        a3.setRequestMethod("POST");
                        a3.setDoOutput(true);
                        if (str5 != null) {
                            a3.addRequestProperty("x-goog-fis-android-iid-migration-auth", str5);
                        }
                        try {
                            a(a3, a(a(str2, str4)));
                            responseCode = a3.getResponseCode();
                            this.f.a(responseCode);
                        } catch (IOException | AssertionError e) {
                        }
                    } finally {
                        a3.disconnect();
                    }
                } catch (IOException | AssertionError e2) {
                }
                if (a(responseCode)) {
                    InputStream inputStream = a3.getInputStream();
                    JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f32411b));
                    f.a d2 = f.d();
                    a.C0521a aVar = new a.C0521a();
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName = jsonReader.nextName();
                        if (nextName.equals("name")) {
                            aVar.a(jsonReader.nextString());
                        } else if (nextName.equals("fid")) {
                            aVar.b(jsonReader.nextString());
                        } else if (nextName.equals("refreshToken")) {
                            aVar.c(jsonReader.nextString());
                        } else if (nextName.equals("authToken")) {
                            jsonReader.beginObject();
                            while (jsonReader.hasNext()) {
                                String nextName2 = jsonReader.nextName();
                                if (nextName2.equals("token")) {
                                    d2.a(jsonReader.nextString());
                                } else if (nextName2.equals("expiresIn")) {
                                    d2.a(b(jsonReader.nextString()));
                                } else {
                                    jsonReader.skipValue();
                                }
                            }
                            aVar.a(d2.a());
                            jsonReader.endObject();
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    jsonReader.close();
                    inputStream.close();
                    return aVar.a(d.b.OK).a();
                }
                a(a3, str4, str, str3);
                if (responseCode == 429) {
                    throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", FirebaseInstallationsException.a.TOO_MANY_REQUESTS);
                } else if (responseCode < 500 || responseCode >= 600) {
                    a();
                    return new a.C0521a().a(d.b.BAD_CONFIG).a();
                } else {
                    a3.disconnect();
                }
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.a.UNAVAILABLE);
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.a.UNAVAILABLE);
    }

    public final f a(String str, String str2, String str3, String str4) throws FirebaseInstallationsException {
        int responseCode;
        if (this.f.a()) {
            URL a2 = a(String.format("projects/%s/installations/%s/authTokens:generate", str3, str2));
            for (int i = 0; i <= 1; i++) {
                HttpURLConnection a3 = a(a2, str);
                try {
                    a3.setRequestMethod("POST");
                    a3.addRequestProperty("Authorization", "FIS_v2 ".concat(String.valueOf(str4)));
                    a3.setDoOutput(true);
                    a(a3, a(b()));
                    responseCode = a3.getResponseCode();
                    this.f.a(responseCode);
                } catch (IOException | AssertionError e) {
                } catch (Throwable th) {
                    a3.disconnect();
                    throw th;
                }
                if (a(responseCode)) {
                    f a4 = a(a3);
                    a3.disconnect();
                    return a4;
                }
                a(a3, (String) null, str, str3);
                if (responseCode == 401 || responseCode == 404) {
                    f a5 = f.d().a(f.b.AUTH_ERROR).a();
                    a3.disconnect();
                    return a5;
                } else if (responseCode == 429) {
                    throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", FirebaseInstallationsException.a.TOO_MANY_REQUESTS);
                } else if (responseCode < 500 || responseCode >= 600) {
                    a();
                    f a6 = f.d().a(f.b.BAD_CONFIG).a();
                    a3.disconnect();
                    return a6;
                } else {
                    a3.disconnect();
                }
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.a.UNAVAILABLE);
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.a.UNAVAILABLE);
    }

    public final HttpURLConnection a(URL url, String str) throws FirebaseInstallationsException {
        f.a a2;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.addRequestProperty("Content-Type", "application/json");
            httpURLConnection.addRequestProperty("Accept", "application/json");
            httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
            httpURLConnection.addRequestProperty("Cache-Control", "no-cache");
            httpURLConnection.addRequestProperty("X-Android-Package", this.f32412c.getPackageName());
            if (!(this.e.a() == null || this.f32413d.a() == null || (a2 = this.e.a().a("fire-installations-id")) == f.a.NONE)) {
                httpURLConnection.addRequestProperty("x-firebase-client", this.f32413d.a().a());
                httpURLConnection.addRequestProperty("x-firebase-client-log-type", Integer.toString(a2.getCode()));
            }
            httpURLConnection.addRequestProperty("X-Android-Cert", c());
            httpURLConnection.addRequestProperty("x-goog-api-key", str);
            return httpURLConnection;
        } catch (IOException e) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.a.UNAVAILABLE);
        }
    }
}
