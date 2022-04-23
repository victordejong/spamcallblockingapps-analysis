package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import androidx.annotation.Keep;
import com.android.volley.toolbox.JsonRequest;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import com.squareup.picasso.Dispatcher;
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
import p131c.p161d.p282e.p352w.p353o.C6087f;
import p131c.p161d.p282e.p352w.p353o.C6094k;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/ConfigFetchHttpClient.class */
public class ConfigFetchHttpClient {

    /* renamed from: h */
    public static final Pattern f31050h = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");

    /* renamed from: a */
    public final Context f31051a;

    /* renamed from: b */
    public final String f31052b;

    /* renamed from: c */
    public final String f31053c;

    /* renamed from: d */
    public final String f31054d;

    /* renamed from: e */
    public final String f31055e;

    /* renamed from: f */
    public final long f31056f;

    /* renamed from: g */
    public final long f31057g;

    public ConfigFetchHttpClient(Context context, String str, String str2, String str3, long j, long j2) {
        this.f31051a = context;
        this.f31052b = str;
        this.f31053c = str2;
        this.f31054d = m7144a(str);
        this.f31055e = str3;
        this.f31056f = j;
        this.f31057g = j2;
    }

    /* renamed from: a */
    public static C6087f m7135a(JSONObject jSONObject, Date date) throws FirebaseRemoteConfigClientException {
        JSONObject jSONObject2;
        JSONArray jSONArray;
        try {
            C6087f.C6089b f = C6087f.m22087f();
            f.m22085a(date);
            JSONObject jSONObject3 = null;
            try {
                jSONObject2 = jSONObject.getJSONObject("entries");
            } catch (JSONException e) {
                jSONObject2 = null;
            }
            if (jSONObject2 != null) {
                f.m22082a(jSONObject2);
            }
            try {
                jSONArray = jSONObject.getJSONArray("experimentDescriptions");
            } catch (JSONException e2) {
                jSONArray = null;
            }
            if (jSONArray != null) {
                f.m22083a(jSONArray);
            }
            try {
                jSONObject3 = jSONObject.getJSONObject("personalizationMetadata");
            } catch (JSONException e3) {
            }
            if (jSONObject3 != null) {
                f.m22081b(jSONObject3);
            }
            return f.m22086a();
        } catch (JSONException e4) {
            throw new FirebaseRemoteConfigClientException("Fetch failed: fetch response could not be parsed.", e4);
        }
    }

    /* renamed from: a */
    public static String m7144a(String str) {
        Matcher matcher = f31050h.matcher(str);
        return matcher.matches() ? matcher.group(1) : null;
    }

    /* renamed from: a */
    public final String m7143a(String str, String str2) {
        return String.format("https://firebaseremoteconfig.googleapis.com/v1/projects/%s/namespaces/%s:fetch", str, str2);
    }

    /* renamed from: a */
    public HttpURLConnection m7145a() throws FirebaseRemoteConfigException {
        try {
            return (HttpURLConnection) new URL(m7143a(this.f31054d, this.f31055e)).openConnection();
        } catch (IOException e) {
            throw new FirebaseRemoteConfigException(e.getMessage());
        }
    }

    /* renamed from: a */
    public final JSONObject m7142a(String str, String str2, Map<String, String> map) throws FirebaseRemoteConfigClientException {
        HashMap hashMap = new HashMap();
        if (str != null) {
            hashMap.put("appInstanceId", str);
            hashMap.put("appInstanceIdToken", str2);
            hashMap.put("appId", this.f31052b);
            Locale locale = this.f31051a.getResources().getConfiguration().locale;
            hashMap.put("countryCode", locale.getCountry());
            hashMap.put("languageCode", Build.VERSION.SDK_INT >= 21 ? locale.toLanguageTag() : locale.toString());
            hashMap.put("platformVersion", Integer.toString(Build.VERSION.SDK_INT));
            hashMap.put("timeZone", TimeZone.getDefault().getID());
            try {
                PackageInfo packageInfo = this.f31051a.getPackageManager().getPackageInfo(this.f31051a.getPackageName(), 0);
                if (packageInfo != null) {
                    hashMap.put("appVersion", packageInfo.versionName);
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
            hashMap.put("packageName", this.f31051a.getPackageName());
            hashMap.put("sdkVersion", "20.0.1");
            hashMap.put("analyticsUserProperties", new JSONObject(map));
            return new JSONObject(hashMap);
        }
        throw new FirebaseRemoteConfigClientException("Fetch failed: Firebase installation id is null.");
    }

    /* renamed from: a */
    public final JSONObject m7137a(URLConnection uRLConnection) throws IOException, JSONException {
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
    public final void m7141a(HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setRequestProperty("X-Goog-Api-Key", this.f31053c);
        httpURLConnection.setRequestProperty("X-Android-Package", this.f31051a.getPackageName());
        httpURLConnection.setRequestProperty("X-Android-Cert", m7134b());
        httpURLConnection.setRequestProperty("X-Google-GFE-Can-Retry", "yes");
        httpURLConnection.setRequestProperty("X-Goog-Firebase-Installations-Auth", str);
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept", "application/json");
    }

    /* renamed from: a */
    public final void m7140a(HttpURLConnection httpURLConnection, String str, String str2, Map<String, String> map) {
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setConnectTimeout((int) TimeUnit.SECONDS.toMillis(this.f31056f));
        httpURLConnection.setReadTimeout((int) TimeUnit.SECONDS.toMillis(this.f31057g));
        httpURLConnection.setRequestProperty("If-None-Match", str);
        m7141a(httpURLConnection, str2);
        m7139a(httpURLConnection, map);
    }

    /* renamed from: a */
    public final void m7139a(HttpURLConnection httpURLConnection, Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }

    /* renamed from: a */
    public final void m7138a(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        bufferedOutputStream.write(bArr);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    /* renamed from: a */
    public final boolean m7136a(JSONObject jSONObject) {
        try {
            return !jSONObject.get(Dispatcher.NetworkBroadcastReceiver.EXTRA_AIRPLANE_STATE).equals("NO_CHANGE");
        } catch (JSONException e) {
            return true;
        }
    }

    /* renamed from: b */
    public final String m7134b() {
        try {
            byte[] a = AndroidUtilsLight.m17122a(this.f31051a, this.f31051a.getPackageName());
            if (a != null) {
                return Hex.m17076a(a, false);
            }
            Log.e("FirebaseRemoteConfig", "Could not get fingerprint hash for package: " + this.f31051a.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("FirebaseRemoteConfig", "No such package: " + this.f31051a.getPackageName(), e);
            return null;
        }
    }

    @Keep
    public C6094k.C6095a fetch(HttpURLConnection httpURLConnection, String str, String str2, Map<String, String> map, String str3, Map<String, String> map2, Date date) throws FirebaseRemoteConfigException {
        m7140a(httpURLConnection, str3, str2, map2);
        try {
            try {
                m7138a(httpURLConnection, m7142a(str, str2, map).toString().getBytes(JsonRequest.PROTOCOL_CHARSET));
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    String headerField = httpURLConnection.getHeaderField("ETag");
                    JSONObject a = m7137a(httpURLConnection);
                    httpURLConnection.disconnect();
                    try {
                        httpURLConnection.getInputStream().close();
                    } catch (IOException e) {
                    }
                    return !m7136a(a) ? C6094k.C6095a.m22054a(date) : C6094k.C6095a.m22055a(m7135a(a, date), headerField);
                }
                throw new FirebaseRemoteConfigServerException(responseCode, httpURLConnection.getResponseMessage());
            } catch (Throwable th) {
                httpURLConnection.disconnect();
                try {
                    httpURLConnection.getInputStream().close();
                } catch (IOException e2) {
                }
                throw th;
            }
        } catch (IOException | JSONException e3) {
            throw new FirebaseRemoteConfigClientException("The client had an error while calling the backend!", e3);
        }
    }
}
