package com.google.android.gms.internal.ads;

import com.mopub.common.Constants;
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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/abi.class */
public final class abi extends AbstractC12832pq {

    /* renamed from: a */
    private final adk f39804a;

    /* renamed from: b */
    private final SSLSocketFactory f39805b;

    public abi() {
        this(null);
    }

    private abi(adk adkVar) {
        this(null, null);
    }

    private abi(adk adkVar, SSLSocketFactory sSLSocketFactory) {
        this.f39804a = null;
        this.f39805b = null;
    }

    /* renamed from: a */
    public static InputStream m18910a(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        try {
            inputStream = httpURLConnection.getInputStream();
        } catch (IOException e) {
            inputStream = httpURLConnection.getErrorStream();
        }
        return inputStream;
    }

    /* renamed from: a */
    private static List<eim> m18908a(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                for (String str : entry.getValue()) {
                    arrayList.add(new eim(entry.getKey(), str));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m18909a(HttpURLConnection httpURLConnection, AbstractC13087z<?> abstractC13087z) throws IOException, zzl {
        byte[] zzg = abstractC13087z.zzg();
        if (zzg != null) {
            httpURLConnection.setDoOutput(true);
            if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
                httpURLConnection.setRequestProperty("Content-Type", "UTF-8".length() != 0 ? "application/x-www-form-urlencoded; charset=".concat("UTF-8") : new String("application/x-www-form-urlencoded; charset="));
            }
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(zzg);
            dataOutputStream.close();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12832pq
    /* renamed from: a */
    public final C13098zk mo14253a(AbstractC13087z<?> abstractC13087z, Map<String, String> map) throws IOException, zzl {
        boolean z;
        Throwable th;
        String url = abstractC13087z.getUrl();
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        hashMap.putAll(abstractC13087z.getHeaders());
        URL url2 = new URL(url);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url2.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int zzi = abstractC13087z.zzi();
        httpURLConnection.setConnectTimeout(zzi);
        httpURLConnection.setReadTimeout(zzi);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        Constants.HTTPS.equals(url2.getProtocol());
        try {
            for (String str : hashMap.keySet()) {
                httpURLConnection.setRequestProperty(str, (String) hashMap.get(str));
            }
            switch (abstractC13087z.getMethod()) {
                case -1:
                    break;
                case 0:
                    httpURLConnection.setRequestMethod("GET");
                    break;
                case 1:
                    httpURLConnection.setRequestMethod("POST");
                    m18909a(httpURLConnection, abstractC13087z);
                    break;
                case 2:
                    httpURLConnection.setRequestMethod("PUT");
                    m18909a(httpURLConnection, abstractC13087z);
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
                    m18909a(httpURLConnection, abstractC13087z);
                    break;
                default:
                    throw new IllegalStateException("Unknown method type.");
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == -1) {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
            if (!((abstractC13087z.getMethod() == 4 || (100 <= responseCode && responseCode < 200) || responseCode == 204 || responseCode == 304) ? false : true)) {
                C13098zk c13098zk = new C13098zk(responseCode, m18908a(httpURLConnection.getHeaderFields()));
                httpURLConnection.disconnect();
                return c13098zk;
            }
            try {
                return new C13098zk(responseCode, m18908a(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), new aej(httpURLConnection));
            } catch (Throwable th2) {
                th = th2;
                z = true;
                if (!z) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            z = false;
        }
    }
}
