package p007a6;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.installations.FirebaseInstallationsException;
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
import p007a6.AbstractC0031g;
import p007a6.C0024b;
import p201p6.AbstractC4023g;
import p237t.C4350g;
import p264v5.AbstractC4648f;
import p275w5.AbstractC4739b;
/* renamed from: a6.c */
/* loaded from: classes-dex2jar.jar:a6/c.class */
public class C0027c {

    /* renamed from: e */
    public static final Pattern f37e = Pattern.compile("[0-9]+s");

    /* renamed from: f */
    public static final Charset f38f = Charset.forName("UTF-8");

    /* renamed from: a */
    public final Context f39a;

    /* renamed from: b */
    public final AbstractC4739b<AbstractC4023g> f40b;

    /* renamed from: c */
    public final AbstractC4739b<AbstractC4648f> f41c;

    /* renamed from: d */
    public final C0030f f42d = new C0030f();

    public C0027c(Context context, AbstractC4739b<AbstractC4023g> abstractC4739b, AbstractC4739b<AbstractC4648f> abstractC4739b2) {
        this.f39a = context;
        this.f40b = abstractC4739b;
        this.f41c = abstractC4739b2;
    }

    /* renamed from: b */
    public static void m8926b(HttpURLConnection httpURLConnection, String str, String str2, String str3) {
        String str4;
        InputStream errorStream = httpURLConnection.getErrorStream();
        if (errorStream == null) {
            str4 = null;
        } else {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f38f));
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
                str4 = String.format("Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]", Integer.valueOf(httpURLConnection.getResponseCode()), httpURLConnection.getResponseMessage(), sb);
            } catch (IOException e) {
                str4 = null;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (IOException e2) {
                }
                throw th;
            }
            try {
                bufferedReader.close();
            } catch (IOException e3) {
            }
        }
        if (!TextUtils.isEmpty(str4)) {
            Log.w("Firebase-Installations", str4);
            Log.w("Firebase-Installations", String.format("Firebase options used while communicating with Firebase server APIs: %s, %s%s", str2, str3, TextUtils.isEmpty(str) ? "" : C1676a.m4789h(", ", str)));
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    @VisibleForTesting
    /* renamed from: d */
    public static long m8924d(String str) {
        Preconditions.checkArgument(f37e.matcher(str).matches(), "Invalid Expiration Timestamp.");
        return (str == null || str.length() == 0) ? (char) 0 : Long.parseLong(str.substring(0, str.length() - 1));
    }

    /* renamed from: i */
    public static void m8919i(URLConnection uRLConnection, byte[] bArr) throws IOException {
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
    public final URL m8927a(String str) throws FirebaseInstallationsException {
        try {
            return new URL(String.format("https://%s/%s/%s", "firebaseinstallations.googleapis.com", "v1", str));
        } catch (MalformedURLException e) {
            throw new FirebaseInstallationsException(e.getMessage(), 2);
        }
    }

    /* renamed from: c */
    public final HttpURLConnection m8925c(URL url, String str) throws FirebaseInstallationsException {
        int mo682a;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.addRequestProperty("Content-Type", "application/json");
            httpURLConnection.addRequestProperty("Accept", "application/json");
            httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
            httpURLConnection.addRequestProperty("Cache-Control", "no-cache");
            httpURLConnection.addRequestProperty("X-Android-Package", this.f39a.getPackageName());
            if (this.f41c.get() != null && this.f40b.get() != null && (mo682a = this.f41c.get().mo682a("fire-installations-id")) != 1) {
                httpURLConnection.addRequestProperty("x-firebase-client", this.f40b.get().mo1500a());
                httpURLConnection.addRequestProperty("x-firebase-client-log-type", Integer.toString(C4350g.m1021c(mo682a)));
            }
            String str2 = null;
            try {
                Context context = this.f39a;
                byte[] packageCertificateHashBytes = AndroidUtilsLight.getPackageCertificateHashBytes(context, context.getPackageName());
                if (packageCertificateHashBytes == null) {
                    this.f39a.getPackageName();
                } else {
                    str2 = Hex.bytesToStringUppercase(packageCertificateHashBytes, false);
                }
            } catch (PackageManager.NameNotFoundException e) {
                this.f39a.getPackageName();
            }
            httpURLConnection.addRequestProperty("X-Android-Cert", str2);
            httpURLConnection.addRequestProperty("x-goog-api-key", str);
            return httpURLConnection;
        } catch (IOException e2) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", 2);
        }
    }

    /* renamed from: e */
    public final AbstractC0029e m8923e(HttpURLConnection httpURLConnection) throws AssertionError, IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f38f));
        AbstractC0031g.AbstractC0032a m8902a = AbstractC0031g.m8902a();
        jsonReader.beginObject();
        String str = null;
        String str2 = null;
        String str3 = null;
        AbstractC0031g abstractC0031g = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(AppMeasurementSdk.ConditionalUserProperty.NAME)) {
                str = jsonReader.nextString();
            } else if (nextName.equals("fid")) {
                str2 = jsonReader.nextString();
            } else if (nextName.equals("refreshToken")) {
                str3 = jsonReader.nextString();
            } else if (nextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if (nextName2.equals("token")) {
                        ((C0024b.C0026b) m8902a).f34a = jsonReader.nextString();
                    } else if (nextName2.equals("expiresIn")) {
                        m8902a.mo8897b(m8924d(jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
                abstractC0031g = m8902a.mo8898a();
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return new C0022a(str, str2, str3, abstractC0031g, 1, null);
    }

    /* renamed from: f */
    public final AbstractC0031g m8922f(HttpURLConnection httpURLConnection) throws AssertionError, IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f38f));
        AbstractC0031g.AbstractC0032a m8902a = AbstractC0031g.m8902a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("token")) {
                ((C0024b.C0026b) m8902a).f34a = jsonReader.nextString();
            } else if (nextName.equals("expiresIn")) {
                m8902a.mo8897b(m8924d(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        C0024b.C0026b c0026b = (C0024b.C0026b) m8902a;
        c0026b.f36c = 1;
        return c0026b.mo8898a();
    }

    /* renamed from: g */
    public final void m8921g(HttpURLConnection httpURLConnection, String str, String str2) throws IOException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("fid", str);
            jSONObject.put("appId", str2);
            jSONObject.put("authVersion", "FIS_v2");
            jSONObject.put("sdkVersion", "a:17.0.0");
            m8919i(httpURLConnection, jSONObject.toString().getBytes("UTF-8"));
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: h */
    public final void m8920h(HttpURLConnection httpURLConnection) throws IOException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sdkVersion", "a:17.0.0");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("installation", jSONObject);
            m8919i(httpURLConnection, jSONObject2.toString().getBytes("UTF-8"));
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }
}
