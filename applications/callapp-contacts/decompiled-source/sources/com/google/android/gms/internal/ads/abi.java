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
public final class abi extends pq {

    /* renamed from: a  reason: collision with root package name */
    private final adk f23050a;

    /* renamed from: b  reason: collision with root package name */
    private final SSLSocketFactory f23051b;

    public abi() {
        this(null);
    }

    private abi(adk adkVar) {
        this(null, null);
    }

    private abi(adk adkVar, SSLSocketFactory sSLSocketFactory) {
        this.f23050a = null;
        this.f23051b = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static InputStream a(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        try {
            inputStream = httpURLConnection.getInputStream();
        } catch (IOException e) {
            inputStream = httpURLConnection.getErrorStream();
        }
        return inputStream;
    }

    private static List<eim> a(Map<String, List<String>> map) {
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

    private static void a(HttpURLConnection httpURLConnection, z<?> zVar) throws IOException, zzl {
        byte[] zzg = zVar.zzg();
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

    @Override // com.google.android.gms.internal.ads.pq
    public final zk a(z<?> zVar, Map<String, String> map) throws IOException, zzl {
        Throwable th;
        String url = zVar.getUrl();
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        hashMap.putAll(zVar.getHeaders());
        URL url2 = new URL(url);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url2.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int zzi = zVar.zzi();
        httpURLConnection.setConnectTimeout(zzi);
        httpURLConnection.setReadTimeout(zzi);
        boolean z = false;
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        Constants.HTTPS.equals(url2.getProtocol());
        try {
            for (String str : hashMap.keySet()) {
                httpURLConnection.setRequestProperty(str, (String) hashMap.get(str));
            }
            switch (zVar.getMethod()) {
                case -1:
                    break;
                case 0:
                    httpURLConnection.setRequestMethod("GET");
                    break;
                case 1:
                    httpURLConnection.setRequestMethod("POST");
                    a(httpURLConnection, zVar);
                    break;
                case 2:
                    httpURLConnection.setRequestMethod("PUT");
                    a(httpURLConnection, zVar);
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
                    a(httpURLConnection, zVar);
                    break;
                default:
                    throw new IllegalStateException("Unknown method type.");
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode != -1) {
                if (!((zVar.getMethod() == 4 || (100 <= responseCode && responseCode < 200) || responseCode == 204 || responseCode == 304) ? false : true)) {
                    zk zkVar = new zk(responseCode, a(httpURLConnection.getHeaderFields()));
                    httpURLConnection.disconnect();
                    return zkVar;
                }
                try {
                    return new zk(responseCode, a(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), new aej(httpURLConnection));
                } catch (Throwable th2) {
                    th = th2;
                    z = true;
                    if (!z) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } else {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
