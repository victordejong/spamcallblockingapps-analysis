package com.freshchat.consumer.sdk.p052e;

import android.content.Context;
import android.os.Build;
import com.freshchat.consumer.sdk.BuildConfig;
import com.freshchat.consumer.sdk.p047b.C1463b;
import com.freshchat.consumer.sdk.p057j.C1608ad;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1699cw;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.e.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/e/c.class */
public class C1530c {

    /* renamed from: eA */
    private int f4146eA = 10000;

    /* renamed from: eB */
    private int f4147eB = 45000;

    /* renamed from: ez */
    private final Context f4148ez;

    /* renamed from: iq */
    private final String f4149iq;

    public C1530c(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f4148ez = applicationContext;
        this.f4149iq = C1699cw.m39989bu(applicationContext);
    }

    /* renamed from: a */
    public static InputStream m40605a(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException e) {
            return httpURLConnection.getErrorStream();
        }
    }

    /* renamed from: a */
    public static String m40608a(C1531d c1531d) {
        String str;
        try {
            str = C1608ad.m40317a(c1531d.getInputStream(), C1463b.f4012da);
        } catch (Exception e) {
            C1723q.m39823a(e);
            str = "";
        }
        return str;
    }

    /* renamed from: ah */
    public static Map<String, String> m40601ah(String str) throws IOException {
        HashMap hashMap = new HashMap();
        if (C1626as.m40233a(str)) {
            hashMap.put("Content-Type", str);
        }
        return hashMap;
    }

    /* renamed from: b */
    private C1531d m40600b(HttpURLConnection httpURLConnection) throws IOException {
        InputStream m40605a = m40605a(httpURLConnection);
        C1531d c1531d = new C1531d();
        c1531d.setInputStream(m40605a);
        c1531d.setStatusCode(httpURLConnection.getResponseCode());
        c1531d.m40595a(httpURLConnection.getHeaderFields());
        return c1531d;
    }

    /* renamed from: a */
    public C1531d m40606a(String str, Map<String, String> map) {
        try {
            HttpURLConnection m40607a = m40607a(str, "GET", map);
            m40607a.setInstanceFollowRedirects(true);
            return m40600b(m40607a);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    public HttpURLConnection m40607a(String str, String str2, Map<String, String> map) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod(str2);
        httpURLConnection.setDoInput(true);
        if (!"GET".equals(str2)) {
            httpURLConnection.setDoOutput(true);
            if (!map.containsKey("Content-Type")) {
                httpURLConnection.setRequestProperty("Content-Type", "application/json");
            }
            httpURLConnection.setUseCaches(false);
        }
        httpURLConnection.setRequestProperty("Accept", "application/json");
        httpURLConnection.setRequestProperty("X-FC-Platform", AnalyticsConstants.ANDROID);
        httpURLConnection.setRequestProperty("X-SDK-Version-Code", String.valueOf(501));
        StringBuilder sb = new StringBuilder();
        sb.append("FC-Android(");
        C22128a.m8666T0(sb, Build.VERSION.RELEASE, ")(", BuildConfig.VERSION_NAME, ")(");
        sb.append(Build.MODEL);
        sb.append(")(");
        sb.append(this.f4148ez.getPackageName());
        sb.append(")(");
        sb.append(this.f4149iq);
        sb.append(")");
        httpURLConnection.setRequestProperty("User-Agent", sb.toString());
        httpURLConnection.setRequestProperty("X-App-Package-Name", this.f4148ez.getPackageName());
        if (C1716k.m39894d(map)) {
            for (String str3 : map.keySet()) {
                String str4 = map.get(str3);
                if (C1626as.m40233a(str4)) {
                    httpURLConnection.setRequestProperty(str3, str4);
                }
            }
        }
        httpURLConnection.setConnectTimeout(m40597da());
        httpURLConnection.setReadTimeout(getReadTimeout());
        httpURLConnection.connect();
        return httpURLConnection;
    }

    /* renamed from: ae */
    public C1531d m40604ae(String str) {
        return m40606a(str, new HashMap());
    }

    /* renamed from: af */
    public C1531d m40603af(String str) {
        try {
            return m40600b(m40596e(str, "PUT"));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: ag */
    public C1531d m40602ag(String str) {
        return m40599c(str, null);
    }

    /* renamed from: c */
    public C1531d m40599c(String str, String str2) {
        try {
            HttpURLConnection m40596e = m40596e(str, "POST");
            OutputStream outputStream = m40596e.getOutputStream();
            if (C1626as.m40233a(str2)) {
                outputStream.write(str2.getBytes(C1463b.f4012da));
            }
            outputStream.flush();
            outputStream.close();
            return m40600b(m40596e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: d */
    public C1531d m40598d(String str, String str2) {
        try {
            HttpURLConnection m40596e = m40596e(str, "PUT");
            OutputStream outputStream = m40596e.getOutputStream();
            outputStream.write(str2.getBytes(C1463b.f4012da));
            outputStream.flush();
            outputStream.close();
            return m40600b(m40596e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: da */
    public int m40597da() {
        return this.f4146eA;
    }

    /* renamed from: e */
    public HttpURLConnection m40596e(String str, String str2) throws IOException {
        return m40607a(str, str2, new HashMap());
    }

    public int getReadTimeout() {
        return this.f4147eB;
    }
}
