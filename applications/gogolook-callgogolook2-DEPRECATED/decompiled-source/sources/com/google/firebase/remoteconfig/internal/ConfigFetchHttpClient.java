package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import androidx.annotation.Keep;
import com.aotter.net.trek.model.Device;
import com.aotter.net.volley.toolbox.JsonRequest;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p204a.p224e.p235d.p249s.C7069a;
import p081h.p203i.p204a.p224e.p235d.p249s.C7079k;
import p081h.p203i.p325c.p327b0.C9401g;
import p081h.p203i.p325c.p327b0.C9402h;
import p081h.p203i.p325c.p327b0.C9404j;
import p081h.p203i.p325c.p327b0.p328p.C9419f;
import p081h.p203i.p325c.p327b0.p328p.C9426k;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/ConfigFetchHttpClient.class */
public class ConfigFetchHttpClient {

    /* renamed from: h */
    public static final Pattern f7800h = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");

    /* renamed from: a */
    public final Context f7801a;

    /* renamed from: b */
    public final String f7802b;

    /* renamed from: c */
    public final String f7803c;

    /* renamed from: d */
    public final String f7804d;

    /* renamed from: e */
    public final String f7805e;

    /* renamed from: f */
    public final long f7806f;

    /* renamed from: g */
    public final long f7807g;

    public ConfigFetchHttpClient(Context context, String str, String str2, String str3, long j, long j2) {
        this.f7801a = context;
        this.f7802b = str;
        this.f7803c = str2;
        this.f7804d = m31018a(str);
        this.f7805e = str3;
        this.f7806f = j;
        this.f7807g = j2;
    }

    /* renamed from: a */
    public static C9419f m31009a(JSONObject jSONObject, Date date) throws C9401g {
        JSONObject jSONObject2;
        JSONArray jSONArray;
        try {
            C9419f.C9421b f = C9419f.m15250f();
            f.m15248a(date);
            JSONObject jSONObject3 = null;
            try {
                jSONObject2 = jSONObject.getJSONObject("entries");
            } catch (JSONException e) {
                jSONObject2 = null;
            }
            if (jSONObject2 != null) {
                f.m15245a(jSONObject2);
            }
            try {
                jSONArray = jSONObject.getJSONArray("experimentDescriptions");
            } catch (JSONException e2) {
                jSONArray = null;
            }
            if (jSONArray != null) {
                f.m15246a(jSONArray);
            }
            try {
                jSONObject3 = jSONObject.getJSONObject("personalizationMetadata");
            } catch (JSONException e3) {
            }
            if (jSONObject3 != null) {
                f.m15244b(jSONObject3);
            }
            return f.m15249a();
        } catch (JSONException e4) {
            throw new C9401g("Fetch failed: fetch response could not be parsed.", e4);
        }
    }

    /* renamed from: a */
    public static String m31018a(String str) {
        Matcher matcher = f7800h.matcher(str);
        return matcher.matches() ? matcher.group(1) : null;
    }

    /* renamed from: a */
    public final String m31017a(String str, String str2) {
        return String.format("https://firebaseremoteconfig.googleapis.com/v1/projects/%s/namespaces/%s:fetch", str, str2);
    }

    /* renamed from: a */
    public HttpURLConnection m31019a() throws C9402h {
        try {
            return (HttpURLConnection) new URL(m31017a(this.f7804d, this.f7805e)).openConnection();
        } catch (IOException e) {
            throw new C9402h(e.getMessage());
        }
    }

    /* renamed from: a */
    public final JSONObject m31016a(String str, String str2, Map<String, String> map) throws C9401g {
        HashMap hashMap = new HashMap();
        if (str != null) {
            hashMap.put("appInstanceId", str);
            hashMap.put("appInstanceIdToken", str2);
            hashMap.put("appId", this.f7802b);
            Locale locale = this.f7801a.getResources().getConfiguration().locale;
            hashMap.put("countryCode", locale.getCountry());
            hashMap.put("languageCode", Build.VERSION.SDK_INT >= 21 ? locale.toLanguageTag() : locale.toString());
            hashMap.put("platformVersion", Integer.toString(Build.VERSION.SDK_INT));
            hashMap.put("timeZone", TimeZone.getDefault().getID());
            try {
                PackageInfo packageInfo = this.f7801a.getPackageManager().getPackageInfo(this.f7801a.getPackageName(), 0);
                if (packageInfo != null) {
                    hashMap.put(Device.DEVICE_APP_VERSION_KEY, packageInfo.versionName);
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
            hashMap.put("packageName", this.f7801a.getPackageName());
            hashMap.put("sdkVersion", "20.0.1");
            hashMap.put("analyticsUserProperties", new JSONObject(map));
            return new JSONObject(hashMap);
        }
        throw new C9401g("Fetch failed: Firebase installation id is null.");
    }

    /* renamed from: a */
    public final JSONObject m31011a(URLConnection uRLConnection) throws IOException, JSONException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(uRLConnection.getInputStream(), JsonRequest.PROTOCOL_CHARSET));
        StringBuilder sb = new StringBuilder();
        while (true) {
            int read = bufferedReader.read();
            if (read == -1) {
                return new JSONObject(sb.toString());
            }
            sb.append((char) read);
        }
    }

    /* renamed from: a */
    public final void m31015a(HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setRequestProperty("X-Goog-Api-Key", this.f7803c);
        httpURLConnection.setRequestProperty("X-Android-Package", this.f7801a.getPackageName());
        httpURLConnection.setRequestProperty("X-Android-Cert", m31008b());
        httpURLConnection.setRequestProperty("X-Google-GFE-Can-Retry", "yes");
        httpURLConnection.setRequestProperty("X-Goog-Firebase-Installations-Auth", str);
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept", "application/json");
    }

    /* renamed from: a */
    public final void m31014a(HttpURLConnection httpURLConnection, String str, String str2, Map<String, String> map) {
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setConnectTimeout((int) TimeUnit.SECONDS.toMillis(this.f7806f));
        httpURLConnection.setReadTimeout((int) TimeUnit.SECONDS.toMillis(this.f7807g));
        httpURLConnection.setRequestProperty("If-None-Match", str);
        m31015a(httpURLConnection, str2);
        m31013a(httpURLConnection, map);
    }

    /* renamed from: a */
    public final void m31013a(HttpURLConnection httpURLConnection, Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }

    /* renamed from: a */
    public final void m31012a(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        bufferedOutputStream.write(bArr);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    /* renamed from: a */
    public final boolean m31010a(JSONObject jSONObject) {
        try {
            return !jSONObject.get(IapProductRealmObject.STATE).equals("NO_CHANGE");
        } catch (JSONException e) {
            return true;
        }
    }

    /* renamed from: b */
    public final String m31008b() {
        try {
            byte[] a = C7069a.m21172a(this.f7801a, this.f7801a.getPackageName());
            if (a != null) {
                return C7079k.m21139a(a, false);
            }
            Log.e("FirebaseRemoteConfig", "Could not get fingerprint hash for package: " + this.f7801a.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("FirebaseRemoteConfig", "No such package: " + this.f7801a.getPackageName(), e);
            return null;
        }
    }

    @Keep
    public C9426k.C9427a fetch(HttpURLConnection httpURLConnection, String str, String str2, Map<String, String> map, String str3, Map<String, String> map2, Date date) throws C9402h {
        m31014a(httpURLConnection, str3, str2, map2);
        try {
            try {
                m31012a(httpURLConnection, m31016a(str, str2, map).toString().getBytes(JsonRequest.PROTOCOL_CHARSET));
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    String headerField = httpURLConnection.getHeaderField("ETag");
                    JSONObject a = m31011a(httpURLConnection);
                    httpURLConnection.disconnect();
                    try {
                        httpURLConnection.getInputStream().close();
                    } catch (IOException e) {
                    }
                    return !m31010a(a) ? C9426k.C9427a.m15218a(date) : C9426k.C9427a.m15219a(m31009a(a, date), headerField);
                }
                throw new C9404j(responseCode, httpURLConnection.getResponseMessage());
            } catch (Throwable th) {
                httpURLConnection.disconnect();
                try {
                    httpURLConnection.getInputStream().close();
                } catch (IOException e2) {
                }
                throw th;
            }
        } catch (IOException | JSONException e3) {
            throw new C9401g("The client had an error while calling the backend!", e3);
        }
    }
}
