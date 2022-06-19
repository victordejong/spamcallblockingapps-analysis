package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import e.m.d.b0.l;
import e.m.d.b0.m;
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
import p193e.p1432d.p1443e.p1444x.AbstractC22212i;
/* loaded from: classes3-dex2jar.jar:com/google/firebase/remoteconfig/internal/ConfigFetchHttpClient.class */
public class ConfigFetchHttpClient {

    /* renamed from: h */
    public static final Pattern f7083h = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");

    /* renamed from: a */
    public final Context f7084a;

    /* renamed from: b */
    public final String f7085b;

    /* renamed from: c */
    public final String f7086c;

    /* renamed from: d */
    public final String f7087d;

    /* renamed from: e */
    public final String f7088e;

    /* renamed from: f */
    public final long f7089f;

    /* renamed from: g */
    public final long f7090g;

    public ConfigFetchHttpClient(Context context, String str, String str2, String str3, long j, long j2) {
        this.f7084a = context;
        this.f7085b = str;
        this.f7086c = str2;
        Matcher matcher = f7083h.matcher(str);
        this.f7087d = matcher.matches() ? matcher.group(1) : null;
        this.f7088e = str3;
        this.f7089f = j;
        this.f7090g = j2;
    }

    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* renamed from: a */
    public final JSONObject m38294a(String str, String str2, Map<String, String> map) throws l {
        HashMap hashMap = new HashMap();
        if (str != null) {
            hashMap.put("appInstanceId", str);
            hashMap.put("appInstanceIdToken", str2);
            hashMap.put("appId", this.f7085b);
            Locale locale = this.f7084a.getResources().getConfiguration().locale;
            hashMap.put("countryCode", locale.getCountry());
            int i = Build.VERSION.SDK_INT;
            hashMap.put("languageCode", locale.toLanguageTag());
            hashMap.put("platformVersion", Integer.toString(i));
            hashMap.put("timeZone", TimeZone.getDefault().getID());
            try {
                PackageInfo packageInfo = this.f7084a.getPackageManager().getPackageInfo(this.f7084a.getPackageName(), 0);
                if (packageInfo != null) {
                    hashMap.put("appVersion", packageInfo.versionName);
                    hashMap.put("appBuild", Long.toString(i >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode));
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
            hashMap.put("packageName", this.f7084a.getPackageName());
            hashMap.put("sdkVersion", "21.0.1");
            hashMap.put("analyticsUserProperties", new JSONObject(map));
            return new JSONObject(hashMap);
        }
        throw new l("Fetch failed: Firebase installation id is null.");
    }

    /* renamed from: b */
    public HttpURLConnection m38293b() throws m {
        try {
            return (HttpURLConnection) new URL(String.format("https://firebaseremoteconfig.googleapis.com/v1/projects/%s/namespaces/%s:fetch", this.f7087d, this.f7088e)).openConnection();
        } catch (IOException e) {
            throw new m(e.getMessage());
        }
    }

    /* renamed from: c */
    public final JSONObject m38292c(URLConnection uRLConnection) throws IOException, JSONException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(uRLConnection.getInputStream(), AbstractC22212i.PROTOCOL_CHARSET));
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
    public final void m38291d(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        bufferedOutputStream.write(bArr);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00cc A[LOOP:0: B:11:0x00c2->B:13:0x00cc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x011a A[Catch: all -> 0x0225, JSONException -> 0x0229, IOException | JSONException -> 0x022d, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0225, blocks: (B:14:0x00f3, B:17:0x011a, B:57:0x0215, B:58:0x0224, B:61:0x022e, B:62:0x023b), top: B:80:0x00c9 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0215 A[Catch: all -> 0x0225, JSONException -> 0x0229, IOException | JSONException -> 0x022d, TRY_ENTER, TryCatch #1 {all -> 0x0225, blocks: (B:14:0x00f3, B:17:0x011a, B:57:0x0215, B:58:0x0224, B:61:0x022e, B:62:0x023b), top: B:80:0x00c9 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:76:0x0262 -> B:50:0x01ea). Please submit an issue!!! */
    @androidx.annotation.Keep
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e.m.d.b0.r.l.a fetch(java.net.HttpURLConnection r8, java.lang.String r9, java.lang.String r10, java.util.Map<java.lang.String, java.lang.String> r11, java.lang.String r12, java.util.Map<java.lang.String, java.lang.String> r13, java.util.Date r14) throws e.m.d.b0.m {
        /*
            Method dump skipped, instructions count: 621
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient.fetch(java.net.HttpURLConnection, java.lang.String, java.lang.String, java.util.Map, java.lang.String, java.util.Map, java.util.Date):e.m.d.b0.r.l$a");
    }
}
