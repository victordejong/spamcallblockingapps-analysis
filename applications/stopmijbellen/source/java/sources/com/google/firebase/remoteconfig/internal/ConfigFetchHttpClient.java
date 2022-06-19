package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/internal/ConfigFetchHttpClient.class */
public class ConfigFetchHttpClient {

    /* renamed from: h */
    public static final Pattern f7000h = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");

    /* renamed from: a */
    public final Context f7001a;

    /* renamed from: b */
    public final String f7002b;

    /* renamed from: c */
    public final String f7003c;

    /* renamed from: d */
    public final String f7004d;

    /* renamed from: e */
    public final String f7005e;

    /* renamed from: f */
    public final long f7006f;

    /* renamed from: g */
    public final long f7007g;

    public ConfigFetchHttpClient(Context context, String str, String str2, String str3, long j, long j2) {
        this.f7001a = context;
        this.f7002b = str;
        this.f7003c = str2;
        Matcher matcher = f7000h.matcher(str);
        this.f7004d = matcher.matches() ? matcher.group(1) : null;
        this.f7005e = str3;
        this.f7006f = j;
        this.f7007g = j2;
    }

    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* renamed from: a */
    public final JSONObject m4459a(String str, String str2, Map<String, String> map) throws FirebaseRemoteConfigClientException {
        HashMap hashMap = new HashMap();
        if (str != null) {
            hashMap.put("appInstanceId", str);
            hashMap.put("appInstanceIdToken", str2);
            hashMap.put("appId", this.f7002b);
            Locale locale = this.f7001a.getResources().getConfiguration().locale;
            hashMap.put("countryCode", locale.getCountry());
            int i = Build.VERSION.SDK_INT;
            hashMap.put("languageCode", locale.toLanguageTag());
            hashMap.put("platformVersion", Integer.toString(i));
            hashMap.put("timeZone", TimeZone.getDefault().getID());
            try {
                PackageInfo packageInfo = this.f7001a.getPackageManager().getPackageInfo(this.f7001a.getPackageName(), 0);
                if (packageInfo != null) {
                    hashMap.put("appVersion", packageInfo.versionName);
                    hashMap.put("appBuild", Long.toString(i >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode));
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
            hashMap.put("packageName", this.f7001a.getPackageName());
            hashMap.put("sdkVersion", "21.0.0");
            hashMap.put("analyticsUserProperties", new JSONObject(map));
            return new JSONObject(hashMap);
        }
        throw new FirebaseRemoteConfigClientException("Fetch failed: Firebase installation id is null.");
    }

    /* renamed from: b */
    public HttpURLConnection m4458b() throws FirebaseRemoteConfigException {
        try {
            return (HttpURLConnection) new URL(String.format("https://firebaseremoteconfig.googleapis.com/v1/projects/%s/namespaces/%s:fetch", this.f7004d, this.f7005e)).openConnection();
        } catch (IOException e) {
            throw new FirebaseRemoteConfigException(e.getMessage());
        }
    }

    /* renamed from: c */
    public final JSONObject m4457c(URLConnection uRLConnection) throws IOException, JSONException {
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

    /* renamed from: d */
    public final void m4456d(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        bufferedOutputStream.write(bArr);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00cc A[LOOP:0: B:11:0x00c2->B:13:0x00cc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x011a A[Catch: all -> 0x022c, JSONException -> 0x0230, IOException | JSONException -> 0x0234, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x022c, blocks: (B:14:0x00f3, B:17:0x011a, B:58:0x021c, B:59:0x022b, B:62:0x0235, B:63:0x0242), top: B:83:0x00c9 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x021c A[Catch: all -> 0x022c, JSONException -> 0x0230, IOException | JSONException -> 0x0234, TRY_ENTER, TryCatch #4 {all -> 0x022c, blocks: (B:14:0x00f3, B:17:0x011a, B:58:0x021c, B:59:0x022b, B:62:0x0235, B:63:0x0242), top: B:83:0x00c9 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x0262 -> B:51:0x01f1). Please submit an issue!!! */
    @androidx.annotation.Keep
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.firebase.remoteconfig.internal.C1853a.C1854a fetch(java.net.HttpURLConnection r8, java.lang.String r9, java.lang.String r10, java.util.Map<java.lang.String, java.lang.String> r11, java.lang.String r12, java.util.Map<java.lang.String, java.lang.String> r13, java.util.Date r14) throws com.google.firebase.remoteconfig.FirebaseRemoteConfigException {
        /*
            Method dump skipped, instructions count: 621
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient.fetch(java.net.HttpURLConnection, java.lang.String, java.lang.String, java.util.Map, java.lang.String, java.util.Map, java.util.Date):com.google.firebase.remoteconfig.internal.a$a");
    }
}
