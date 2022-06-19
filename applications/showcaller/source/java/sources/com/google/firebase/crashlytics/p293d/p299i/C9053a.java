package com.google.firebase.crashlytics.p293d.p299i;

import com.google.firebase.crashlytics.p293d.C8898b;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
/* renamed from: com.google.firebase.crashlytics.d.i.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/i/a.class */
public class C9053a {

    /* renamed from: a */
    private final String f39203a;

    /* renamed from: b */
    private final Map<String, String> f39204b;

    /* renamed from: c */
    private final Map<String, String> f39205c = new HashMap();

    public C9053a(String str, Map<String, String> map) {
        this.f39203a = str;
        this.f39204b = map;
    }

    /* renamed from: a */
    private String m2045a(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
        Map.Entry<String, String> next = it.next();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(next.getKey());
        sb2.append("=");
        sb2.append(next.getValue() != null ? next.getValue() : "");
        sb.append(sb2.toString());
        while (it.hasNext()) {
            Map.Entry<String, String> next2 = it.next();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("&");
            sb3.append(next2.getKey());
            sb3.append("=");
            sb3.append(next2.getValue() != null ? next2.getValue() : "");
            sb.append(sb3.toString());
        }
        return sb.toString();
    }

    /* renamed from: b */
    private String m2044b(String str, Map<String, String> map) {
        String m2045a = m2045a(map);
        if (m2045a.isEmpty()) {
            return str;
        }
        if (!str.contains("?")) {
            return str + "?" + m2045a;
        }
        String str2 = m2045a;
        if (!str.endsWith("&")) {
            str2 = "&" + m2045a;
        }
        return str + str2;
    }

    /* renamed from: e */
    private String m2041e(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        char[] cArr = new char[8192];
        StringBuilder sb = new StringBuilder();
        while (true) {
            int read = bufferedReader.read(cArr);
            if (read != -1) {
                sb.append(cArr, 0, read);
            } else {
                return sb.toString();
            }
        }
    }

    /* renamed from: c */
    public C9055c m2043c() {
        HttpsURLConnection httpsURLConnection;
        Throwable th;
        InputStream inputStream = null;
        String str = null;
        try {
            String m2044b = m2044b(this.f39203a, this.f39204b);
            C8898b.m2397f().m2394i("GET Request URL: " + m2044b);
            httpsURLConnection = (HttpsURLConnection) new URL(m2044b).openConnection();
            try {
                httpsURLConnection.setReadTimeout(10000);
                httpsURLConnection.setConnectTimeout(10000);
                httpsURLConnection.setRequestMethod("GET");
                for (Map.Entry<String, String> entry : this.f39205c.entrySet()) {
                    httpsURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
                }
                httpsURLConnection.connect();
                int responseCode = httpsURLConnection.getResponseCode();
                InputStream inputStream2 = httpsURLConnection.getInputStream();
                if (inputStream2 != null) {
                    try {
                        str = m2041e(inputStream2);
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream = inputStream2;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        throw th;
                    }
                }
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                httpsURLConnection.disconnect();
                return new C9055c(responseCode, str);
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            httpsURLConnection = null;
        }
    }

    /* renamed from: d */
    public C9053a m2042d(String str, String str2) {
        this.f39205c.put(str, str2);
        return this;
    }
}
