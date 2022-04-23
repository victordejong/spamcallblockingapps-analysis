package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import androidx.annotation.Keep;
import com.google.android.gms.common.util.C1605a;
import com.google.android.gms.common.util.C1614k;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import com.google.firebase.remoteconfig.internal.C2517f;
import com.google.firebase.remoteconfig.internal.C2524k;
import com.lidroid.xutils.http.client.multipart.MIME;
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
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/ConfigFetchHttpClient.class */
public class ConfigFetchHttpClient {

    /* renamed from: h */
    private static final Pattern f10779h = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");

    /* renamed from: a */
    private final Context f10780a;

    /* renamed from: b */
    private final String f10781b;

    /* renamed from: c */
    private final String f10782c;

    /* renamed from: d */
    private final String f10783d;

    /* renamed from: e */
    private final String f10784e;

    /* renamed from: f */
    private final long f10785f;

    /* renamed from: g */
    private final long f10786g;

    public ConfigFetchHttpClient(Context context, String str, String str2, String str3, long j, long j2) {
        this.f10780a = context;
        this.f10781b = str;
        this.f10782c = str2;
        this.f10783d = m3287e(str);
        this.f10784e = str3;
        this.f10785f = j;
        this.f10786g = j2;
    }

    /* renamed from: a */
    private boolean m3291a(JSONObject jSONObject) {
        try {
            return !jSONObject.get("state").equals("NO_CHANGE");
        } catch (JSONException e) {
            return true;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Throwable, com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException] */
    /* renamed from: b */
    private JSONObject m3290b(String str, String str2, Map<String, String> map) {
        HashMap hashMap = new HashMap();
        if (str != null) {
            hashMap.put("appInstanceId", str);
            hashMap.put("appInstanceIdToken", str2);
            hashMap.put("appId", this.f10781b);
            Locale locale = this.f10780a.getResources().getConfiguration().locale;
            hashMap.put("countryCode", locale.getCountry());
            int i = Build.VERSION.SDK_INT;
            hashMap.put("languageCode", i >= 21 ? locale.toLanguageTag() : locale.toString());
            hashMap.put("platformVersion", Integer.toString(i));
            hashMap.put("timeZone", TimeZone.getDefault().getID());
            try {
                PackageInfo packageInfo = this.f10780a.getPackageManager().getPackageInfo(this.f10780a.getPackageName(), 0);
                if (packageInfo != null) {
                    hashMap.put("appVersion", packageInfo.versionName);
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
            hashMap.put("packageName", this.f10780a.getPackageName());
            hashMap.put("sdkVersion", "20.0.2");
            hashMap.put("analyticsUserProperties", new JSONObject(map));
            return new JSONObject(hashMap);
        }
        throw new FirebaseRemoteConfigClientException("Fetch failed: Firebase installation id is null.");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Throwable, com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException] */
    /* renamed from: d */
    private static C2517f m3288d(JSONObject jSONObject, Date date) {
        JSONObject jSONObject2;
        JSONArray jSONArray;
        try {
            C2517f.C2519b g = C2517f.m3254g();
            g.m3250d(date);
            JSONObject jSONObject3 = null;
            try {
                jSONObject2 = jSONObject.getJSONObject("entries");
            } catch (JSONException e) {
                jSONObject2 = null;
            }
            if (jSONObject2 != null) {
                g.m3252b(jSONObject2);
            }
            try {
                jSONArray = jSONObject.getJSONArray("experimentDescriptions");
            } catch (JSONException e2) {
                jSONArray = null;
            }
            if (jSONArray != null) {
                g.m3251c(jSONArray);
            }
            try {
                jSONObject3 = jSONObject.getJSONObject("personalizationMetadata");
            } catch (JSONException e3) {
            }
            if (jSONObject3 != null) {
                g.m3249e(jSONObject3);
            }
            return g.m3253a();
        } catch (JSONException e4) {
            throw new FirebaseRemoteConfigClientException("Fetch failed: fetch response could not be parsed.", e4);
        }
    }

    /* renamed from: e */
    private static String m3287e(String str) {
        Matcher matcher = f10779h.matcher(str);
        return matcher.matches() ? matcher.group(1) : null;
    }

    /* renamed from: f */
    private JSONObject m3286f(URLConnection uRLConnection) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(uRLConnection.getInputStream(), "utf-8"));
        StringBuilder sb = new StringBuilder();
        while (true) {
            int read = bufferedReader.read();
            if (read == -1) {
                return new JSONObject(sb.toString());
            }
            sb.append((char) read);
        }
    }

    /* renamed from: g */
    private String m3285g(String str, String str2) {
        return String.format("https://firebaseremoteconfig.googleapis.com/v1/projects/%s/namespaces/%s:fetch", str, str2);
    }

    /* renamed from: h */
    private String m3284h() {
        try {
            Context context = this.f10780a;
            byte[] a = C1605a.m8254a(context, context.getPackageName());
            if (a != null) {
                return C1614k.m8224b(a, false);
            }
            Log.e("FirebaseRemoteConfig", "Could not get fingerprint hash for package: " + this.f10780a.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("FirebaseRemoteConfig", "No such package: " + this.f10780a.getPackageName(), e);
            return null;
        }
    }

    /* renamed from: i */
    private void m3283i(HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setRequestProperty("X-Goog-Api-Key", this.f10782c);
        httpURLConnection.setRequestProperty("X-Android-Package", this.f10780a.getPackageName());
        httpURLConnection.setRequestProperty("X-Android-Cert", m3284h());
        httpURLConnection.setRequestProperty("X-Google-GFE-Can-Retry", "yes");
        httpURLConnection.setRequestProperty("X-Goog-Firebase-Installations-Auth", str);
        httpURLConnection.setRequestProperty(MIME.CONTENT_TYPE, "application/json");
        httpURLConnection.setRequestProperty("Accept", "application/json");
    }

    /* renamed from: j */
    private void m3282j(HttpURLConnection httpURLConnection, Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }

    /* renamed from: k */
    private void m3281k(HttpURLConnection httpURLConnection, byte[] bArr) {
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        bufferedOutputStream.write(bArr);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    /* renamed from: l */
    private void m3280l(HttpURLConnection httpURLConnection, String str, String str2, Map<String, String> map) {
        httpURLConnection.setDoOutput(true);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        httpURLConnection.setConnectTimeout((int) timeUnit.toMillis(this.f10785f));
        httpURLConnection.setReadTimeout((int) timeUnit.toMillis(this.f10786g));
        httpURLConnection.setRequestProperty("If-None-Match", str);
        m3283i(httpURLConnection, str2);
        m3282j(httpURLConnection, map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Throwable, com.google.firebase.remoteconfig.FirebaseRemoteConfigException] */
    /* renamed from: c */
    public HttpURLConnection m3289c() {
        try {
            return (HttpURLConnection) new URL(m3285g(this.f10783d, this.f10784e)).openConnection();
        } catch (IOException e) {
            throw new FirebaseRemoteConfigException(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Throwable, com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException] */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.lang.Throwable, com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException] */
    @Keep
    public C2524k.C2525a fetch(HttpURLConnection httpURLConnection, String str, String str2, Map<String, String> map, String str3, Map<String, String> map2, Date date) {
        m3280l(httpURLConnection, str3, str2, map2);
        try {
            try {
                m3281k(httpURLConnection, m3290b(str, str2, map).toString().getBytes("utf-8"));
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    String headerField = httpURLConnection.getHeaderField("ETag");
                    JSONObject f = m3286f(httpURLConnection);
                    httpURLConnection.disconnect();
                    try {
                        httpURLConnection.getInputStream().close();
                    } catch (IOException e) {
                    }
                    return !m3291a(f) ? C2524k.C2525a.m3222a(date) : C2524k.C2525a.m3221b(m3288d(f, date), headerField);
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
