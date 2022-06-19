package com.google.android.gms.internal.ads;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.google.android.gms.internal.ads.ro */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ro.class */
public final class C3469ro extends AbstractC3158ga {

    /* renamed from: a */
    private final AbstractC3515tg f17311a;

    /* renamed from: b */
    private final SSLSocketFactory f17312b;

    public C3469ro() {
        this(null);
    }

    private C3469ro(AbstractC3515tg abstractC3515tg) {
        this(null, null);
    }

    private C3469ro(AbstractC3515tg abstractC3515tg, SSLSocketFactory sSLSocketFactory) {
        this.f17311a = null;
        this.f17312b = null;
    }

    /* renamed from: a */
    private static List<dnv> m7233a(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                for (String str : entry.getValue()) {
                    arrayList.add(new dnv(entry.getKey(), str));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m7234a(HttpURLConnection httpURLConnection, dts<?> dtsVar) {
        byte[] mo6868a = dtsVar.mo6868a();
        if (mo6868a != null) {
            httpURLConnection.setDoOutput(true);
            if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
                String valueOf = String.valueOf("UTF-8");
                httpURLConnection.setRequestProperty("Content-Type", valueOf.length() != 0 ? "application/x-www-form-urlencoded; charset=".concat(valueOf) : new String("application/x-www-form-urlencoded; charset="));
            }
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(mo6868a);
            dataOutputStream.close();
        }
    }

    /* renamed from: b */
    public static InputStream m7232b(HttpURLConnection httpURLConnection) {
        InputStream errorStream;
        try {
            errorStream = httpURLConnection.getInputStream();
        } catch (IOException e) {
            errorStream = httpURLConnection.getErrorStream();
        }
        return errorStream;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3158ga
    /* renamed from: a */
    public final C3413pm mo7236a(dts<?> dtsVar, Map<String, String> map) {
        String str;
        boolean z;
        Throwable th;
        C3413pm c3413pm;
        String m8596e = dtsVar.m8596e();
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        hashMap.putAll(dtsVar.mo6866b());
        if (this.f17311a != null) {
            String m7134a = this.f17311a.m7134a(m8596e);
            str = m7134a;
            if (m7134a == null) {
                String valueOf = String.valueOf(m8596e);
                throw new IOException(valueOf.length() != 0 ? "URL blocked by rewriter: ".concat(valueOf) : new String("URL blocked by rewriter: "));
            }
        } else {
            str = m8596e;
        }
        URL url = new URL(str);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int m8591j = dtsVar.m8591j();
        httpURLConnection.setConnectTimeout(m8591j);
        httpURLConnection.setReadTimeout(m8591j);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        if ("https".equals(url.getProtocol())) {
        }
        try {
            for (String str2 : hashMap.keySet()) {
                httpURLConnection.setRequestProperty(str2, (String) hashMap.get(str2));
            }
            switch (dtsVar.m8599c()) {
                case -1:
                    break;
                case 0:
                    httpURLConnection.setRequestMethod("GET");
                    break;
                case 1:
                    httpURLConnection.setRequestMethod("POST");
                    m7234a(httpURLConnection, dtsVar);
                    break;
                case 2:
                    httpURLConnection.setRequestMethod("PUT");
                    m7234a(httpURLConnection, dtsVar);
                    break;
                case 3:
                    httpURLConnection.setRequestMethod("DELETE");
                    break;
                case 4:
                    httpURLConnection.setRequestMethod("HEAD");
                    break;
                case 5:
                    httpURLConnection.setRequestMethod("OPTIONS");
                    break;
                case 6:
                    httpURLConnection.setRequestMethod("TRACE");
                    break;
                case 7:
                    httpURLConnection.setRequestMethod("PATCH");
                    m7234a(httpURLConnection, dtsVar);
                    break;
                default:
                    throw new IllegalStateException("Unknown method type.");
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == -1) {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
            if (!((dtsVar.m8599c() == 4 || (100 <= responseCode && responseCode < 200) || responseCode == 204 || responseCode == 304) ? false : true)) {
                c3413pm = new C3413pm(responseCode, m7233a(httpURLConnection.getHeaderFields()));
                httpURLConnection.disconnect();
            } else {
                try {
                    c3413pm = new C3413pm(responseCode, m7233a(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), new C3538uc(httpURLConnection));
                } catch (Throwable th2) {
                    th = th2;
                    z = true;
                    if (!z) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            }
            return c3413pm;
        } catch (Throwable th3) {
            th = th3;
            z = false;
        }
    }
}
