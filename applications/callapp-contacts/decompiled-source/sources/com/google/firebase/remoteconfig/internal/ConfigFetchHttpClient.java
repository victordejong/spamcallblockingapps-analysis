package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import androidx.core.content.a.a;
import com.google.android.gms.common.util.k;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import com.google.firebase.remoteconfig.internal.f;
import com.google.firebase.remoteconfig.internal.g;
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
    private static final Pattern h = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");

    /* renamed from: a  reason: collision with root package name */
    private final Context f32594a;

    /* renamed from: b  reason: collision with root package name */
    private final String f32595b;

    /* renamed from: c  reason: collision with root package name */
    private final String f32596c;

    /* renamed from: d  reason: collision with root package name */
    private final String f32597d;
    private final String e;
    private final long f;
    private final long g;

    public ConfigFetchHttpClient(Context context, String str, String str2, String str3, long j, long j2) {
        this.f32594a = context;
        this.f32595b = str;
        this.f32596c = str2;
        Matcher matcher = h.matcher(str);
        this.f32597d = matcher.matches() ? matcher.group(1) : null;
        this.e = str3;
        this.f = j;
        this.g = j2;
    }

    private static f a(JSONObject jSONObject, Date date) throws FirebaseRemoteConfigClientException {
        JSONObject jSONObject2;
        JSONArray jSONArray;
        try {
            f.a a2 = f.a();
            a2.f32615b = date;
            JSONObject jSONObject3 = null;
            try {
                jSONObject2 = jSONObject.getJSONObject("entries");
            } catch (JSONException e) {
                jSONObject2 = null;
            }
            if (jSONObject2 != null) {
                a2.a(jSONObject2);
            }
            try {
                jSONArray = jSONObject.getJSONArray("experimentDescriptions");
            } catch (JSONException e2) {
                jSONArray = null;
            }
            if (jSONArray != null) {
                a2.a(jSONArray);
            }
            try {
                jSONObject3 = jSONObject.getJSONObject("personalizationMetadata");
            } catch (JSONException e3) {
            }
            if (jSONObject3 != null) {
                a2.b(jSONObject3);
            }
            return a2.a();
        } catch (JSONException e4) {
            throw new FirebaseRemoteConfigClientException("Fetch failed: fetch response could not be parsed.", e4);
        }
    }

    private JSONObject a(String str, String str2, Map<String, String> map) throws FirebaseRemoteConfigClientException {
        HashMap hashMap = new HashMap();
        if (str != null) {
            hashMap.put("appInstanceId", str);
            hashMap.put("appInstanceIdToken", str2);
            hashMap.put("appId", this.f32595b);
            Locale locale = this.f32594a.getResources().getConfiguration().locale;
            hashMap.put("countryCode", locale.getCountry());
            hashMap.put("languageCode", Build.VERSION.SDK_INT >= 21 ? locale.toLanguageTag() : locale.toString());
            hashMap.put("platformVersion", Integer.toString(Build.VERSION.SDK_INT));
            hashMap.put("timeZone", TimeZone.getDefault().getID());
            try {
                PackageInfo packageInfo = this.f32594a.getPackageManager().getPackageInfo(this.f32594a.getPackageName(), 0);
                if (packageInfo != null) {
                    hashMap.put("appVersion", packageInfo.versionName);
                    hashMap.put("appBuild", Long.toString(a.a(packageInfo)));
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
            hashMap.put("packageName", this.f32594a.getPackageName());
            hashMap.put("sdkVersion", "20.0.4");
            hashMap.put("analyticsUserProperties", new JSONObject(map));
            return new JSONObject(hashMap);
        }
        throw new FirebaseRemoteConfigClientException("Fetch failed: Firebase installation id is null.");
    }

    private static JSONObject a(URLConnection uRLConnection) throws IOException, JSONException {
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

    private static boolean a(JSONObject jSONObject) {
        try {
            return !jSONObject.get(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY).equals("NO_CHANGE");
        } catch (JSONException e) {
            return true;
        }
    }

    private String b() {
        try {
            Context context = this.f32594a;
            byte[] a2 = com.google.android.gms.common.util.a.a(context, context.getPackageName());
            if (a2 != null) {
                return k.a(a2);
            }
            Log.e("FirebaseRemoteConfig", "Could not get fingerprint hash for package: " + this.f32594a.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("FirebaseRemoteConfig", "No such package: " + this.f32594a.getPackageName(), e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final HttpURLConnection a() throws FirebaseRemoteConfigException {
        try {
            return (HttpURLConnection) new URL(String.format("https://firebaseremoteconfig.googleapis.com/v1/projects/%s/namespaces/%s:fetch", this.f32597d, this.e)).openConnection();
        } catch (IOException e) {
            throw new FirebaseRemoteConfigException(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g.a fetch(HttpURLConnection httpURLConnection, String str, String str2, Map<String, String> map, String str3, Map<String, String> map2, Date date) throws FirebaseRemoteConfigException {
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setConnectTimeout((int) TimeUnit.SECONDS.toMillis(this.f));
        httpURLConnection.setReadTimeout((int) TimeUnit.SECONDS.toMillis(this.g));
        httpURLConnection.setRequestProperty("If-None-Match", str3);
        httpURLConnection.setRequestProperty("X-Goog-Api-Key", this.f32596c);
        httpURLConnection.setRequestProperty("X-Android-Package", this.f32594a.getPackageName());
        httpURLConnection.setRequestProperty("X-Android-Cert", b());
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
            byte[] bytes = a(str, str2, map).toString().getBytes("utf-8");
            httpURLConnection.setFixedLengthStreamingMode(bytes.length);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
            bufferedOutputStream.write(bytes);
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                String headerField = httpURLConnection.getHeaderField("ETag");
                JSONObject a2 = a(httpURLConnection);
                httpURLConnection.disconnect();
                try {
                    httpURLConnection.getInputStream().close();
                } catch (IOException e2) {
                }
                if (!a(a2)) {
                    return new g.a(date, 1, null, null);
                }
                f a3 = a(a2, date);
                return new g.a(a3.f32611b, 0, a3, headerField);
            }
            throw new FirebaseRemoteConfigServerException(responseCode, httpURLConnection.getResponseMessage());
        } catch (IOException | JSONException e3) {
            throw new FirebaseRemoteConfigClientException("The client had an error while calling the backend!", e3);
        }
    }
}
