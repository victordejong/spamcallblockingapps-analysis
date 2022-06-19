package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import androidx.core.content.p034a.C0789a;
import com.google.android.gms.common.util.C12094a;
import com.google.android.gms.common.util.C12107k;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import com.google.firebase.remoteconfig.internal.C15918f;
import com.google.firebase.remoteconfig.internal.C15921g;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
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
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/ConfigFetchHttpClient.class */
public class ConfigFetchHttpClient {

    /* renamed from: h */
    private static final Pattern f56488h = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");

    /* renamed from: a */
    private final Context f56489a;

    /* renamed from: b */
    private final String f56490b;

    /* renamed from: c */
    private final String f56491c;

    /* renamed from: d */
    private final String f56492d;

    /* renamed from: e */
    private final String f56493e;

    /* renamed from: f */
    private final long f56494f;

    /* renamed from: g */
    private final long f56495g;

    public ConfigFetchHttpClient(Context context, String str, String str2, String str3, long j, long j2) {
        this.f56489a = context;
        this.f56490b = str;
        this.f56491c = str2;
        Matcher matcher = f56488h.matcher(str);
        this.f56492d = matcher.matches() ? matcher.group(1) : null;
        this.f56493e = str3;
        this.f56494f = j;
        this.f56495g = j2;
    }

    /* renamed from: a */
    private static C15918f m8083a(JSONObject jSONObject, Date date) throws FirebaseRemoteConfigClientException {
        JSONObject jSONObject2;
        JSONArray jSONArray;
        JSONObject jSONObject3;
        try {
            C15918f.C15920a m8069a = C15918f.m8069a();
            m8069a.f56516b = date;
            try {
                jSONObject2 = jSONObject.getJSONObject("entries");
            } catch (JSONException e) {
                jSONObject2 = null;
            }
            if (jSONObject2 != null) {
                m8069a.m8064a(jSONObject2);
            }
            try {
                jSONArray = jSONObject.getJSONArray("experimentDescriptions");
            } catch (JSONException e2) {
                jSONArray = null;
            }
            if (jSONArray != null) {
                m8069a.m8065a(jSONArray);
            }
            try {
                jSONObject3 = jSONObject.getJSONObject("personalizationMetadata");
            } catch (JSONException e3) {
                jSONObject3 = null;
            }
            if (jSONObject3 != null) {
                m8069a.m8063b(jSONObject3);
            }
            return m8069a.m8066a();
        } catch (JSONException e4) {
            throw new FirebaseRemoteConfigClientException("Fetch failed: fetch response could not be parsed.", e4);
        }
    }

    /* renamed from: a */
    private JSONObject m8086a(String str, String str2, Map<String, String> map) throws FirebaseRemoteConfigClientException {
        HashMap hashMap = new HashMap();
        if (str != null) {
            hashMap.put("appInstanceId", str);
            hashMap.put("appInstanceIdToken", str2);
            hashMap.put("appId", this.f56490b);
            Locale locale = this.f56489a.getResources().getConfiguration().locale;
            hashMap.put("countryCode", locale.getCountry());
            hashMap.put("languageCode", Build.VERSION.SDK_INT >= 21 ? locale.toLanguageTag() : locale.toString());
            hashMap.put("platformVersion", Integer.toString(Build.VERSION.SDK_INT));
            hashMap.put("timeZone", TimeZone.getDefault().getID());
            try {
                PackageInfo packageInfo = this.f56489a.getPackageManager().getPackageInfo(this.f56489a.getPackageName(), 0);
                if (packageInfo != null) {
                    hashMap.put("appVersion", packageInfo.versionName);
                    hashMap.put("appBuild", Long.toString(C0789a.m44504a(packageInfo)));
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
            hashMap.put("packageName", this.f56489a.getPackageName());
            hashMap.put("sdkVersion", "20.0.4");
            hashMap.put("analyticsUserProperties", new JSONObject(map));
            return new JSONObject(hashMap);
        }
        throw new FirebaseRemoteConfigClientException("Fetch failed: Firebase installation id is null.");
    }

    /* renamed from: a */
    private static JSONObject m8085a(URLConnection uRLConnection) throws IOException, JSONException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(uRLConnection.getInputStream(), "utf-8"));
        StringBuilder sb = new StringBuilder();
        while (true) {
            int read = bufferedReader.read();
            if (read != -1) {
                sb.append((char) read);
            } else {
                return new JSONObject(sb.toString());
            }
        }
    }

    /* renamed from: a */
    private static boolean m8084a(JSONObject jSONObject) {
        try {
            return !jSONObject.get(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY).equals("NO_CHANGE");
        } catch (JSONException e) {
            return true;
        }
    }

    /* renamed from: b */
    private String m8082b() {
        try {
            Context context = this.f56489a;
            byte[] m19058a = C12094a.m19058a(context, context.getPackageName());
            if (m19058a != null) {
                return C12107k.m19027a(m19058a);
            }
            Log.e("FirebaseRemoteConfig", "Could not get fingerprint hash for package: " + this.f56489a.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("FirebaseRemoteConfig", "No such package: " + this.f56489a.getPackageName(), e);
            return null;
        }
    }

    /* renamed from: a */
    public final HttpURLConnection m8087a() throws FirebaseRemoteConfigException {
        try {
            return (HttpURLConnection) new URL(String.format("https://firebaseremoteconfig.googleapis.com/v1/projects/%s/namespaces/%s:fetch", this.f56492d, this.f56493e)).openConnection();
        } catch (IOException e) {
            throw new FirebaseRemoteConfigException(e.getMessage());
        }
    }

    public C15921g.C15922a fetch(HttpURLConnection httpURLConnection, String str, String str2, Map<String, String> map, String str3, Map<String, String> map2, Date date) throws FirebaseRemoteConfigException {
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setConnectTimeout((int) TimeUnit.SECONDS.toMillis(this.f56494f));
        httpURLConnection.setReadTimeout((int) TimeUnit.SECONDS.toMillis(this.f56495g));
        httpURLConnection.setRequestProperty("If-None-Match", str3);
        httpURLConnection.setRequestProperty("X-Goog-Api-Key", this.f56491c);
        httpURLConnection.setRequestProperty("X-Android-Package", this.f56489a.getPackageName());
        httpURLConnection.setRequestProperty("X-Android-Cert", m8082b());
        httpURLConnection.setRequestProperty("X-Google-GFE-Can-Retry", "yes");
        httpURLConnection.setRequestProperty("X-Goog-Firebase-Installations-Auth", str2);
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept", "application/json");
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            try {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            } catch (Throwable th) {
                httpURLConnection.disconnect();
                try {
                    httpURLConnection.getInputStream().close();
                } catch (IOException e) {
                }
                throw th;
            }
        }
        try {
            byte[] bytes = m8086a(str, str2, map).toString().getBytes("utf-8");
            httpURLConnection.setFixedLengthStreamingMode(bytes.length);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
            bufferedOutputStream.write(bytes);
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode != 200) {
                throw new FirebaseRemoteConfigServerException(responseCode, httpURLConnection.getResponseMessage());
            }
            String headerField = httpURLConnection.getHeaderField("ETag");
            JSONObject m8085a = m8085a(httpURLConnection);
            httpURLConnection.disconnect();
            try {
                httpURLConnection.getInputStream().close();
            } catch (IOException e2) {
            }
            if (!m8084a(m8085a)) {
                return new C15921g.C15922a(date, 1, null, null);
            }
            C15918f m8083a = m8083a(m8085a, date);
            return new C15921g.C15922a(m8083a.f56511b, 0, m8083a, headerField);
        } catch (IOException | JSONException e3) {
            throw new FirebaseRemoteConfigClientException("The client had an error while calling the backend!", e3);
        }
    }
}
