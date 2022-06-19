package com.google.android.gms.internal.ads;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.webkit.ProxyConfig;
import com.android.volley.toolbox.HttpClientStack;
import com.pubmatic.sdk.common.POBCommonConstants;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbd.class */
public final class zzbd extends zzar {
    private final zzbf zzcv;
    private final SSLSocketFactory zzcw;

    public zzbd() {
        this(null);
    }

    private zzbd(zzbf zzbfVar) {
        this(null, null);
    }

    private zzbd(zzbf zzbfVar, SSLSocketFactory sSLSocketFactory) {
        this.zzcv = null;
        this.zzcw = null;
    }

    public static InputStream zza(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        try {
            inputStream = httpURLConnection.getInputStream();
        } catch (IOException e) {
            inputStream = httpURLConnection.getErrorStream();
        }
        return inputStream;
    }

    private static List<zzv> zza(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                for (String str : entry.getValue()) {
                    arrayList.add(new zzv(entry.getKey(), str));
                }
            }
        }
        return arrayList;
    }

    private static void zza(HttpURLConnection httpURLConnection, zzab<?> zzabVar) throws IOException, zzl {
        byte[] zzg = zzabVar.zzg();
        if (zzg != null) {
            httpURLConnection.setDoOutput(true);
            if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
                httpURLConnection.setRequestProperty("Content-Type", POBCommonConstants.URL_ENCODING.length() != 0 ? "application/x-www-form-urlencoded; charset=".concat(POBCommonConstants.URL_ENCODING) : new String("application/x-www-form-urlencoded; charset="));
            }
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(zzg);
            dataOutputStream.close();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzar
    public final zzbb zza(zzab<?> zzabVar, Map<String, String> map) throws IOException, zzl {
        boolean z;
        Throwable th;
        String url = zzabVar.getUrl();
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        hashMap.putAll(zzabVar.getHeaders());
        URL url2 = new URL(url);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url2.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int zzi = zzabVar.zzi();
        httpURLConnection.setConnectTimeout(zzi);
        httpURLConnection.setReadTimeout(zzi);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        ProxyConfig.MATCH_HTTPS.equals(url2.getProtocol());
        try {
            for (String str : hashMap.keySet()) {
                httpURLConnection.setRequestProperty(str, (String) hashMap.get(str));
            }
            switch (zzabVar.getMethod()) {
                case -1:
                    break;
                case 0:
                    httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                    break;
                case 1:
                    httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
                    zza(httpURLConnection, zzabVar);
                    break;
                case 2:
                    httpURLConnection.setRequestMethod("PUT");
                    zza(httpURLConnection, zzabVar);
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
                    httpURLConnection.setRequestMethod(HttpClientStack.HttpPatch.METHOD_NAME);
                    zza(httpURLConnection, zzabVar);
                    break;
                default:
                    throw new IllegalStateException("Unknown method type.");
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == -1) {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
            if (!((zzabVar.getMethod() == 4 || (100 <= responseCode && responseCode < 200) || responseCode == 204 || responseCode == 304) ? false : true)) {
                zzbb zzbbVar = new zzbb(responseCode, zza(httpURLConnection.getHeaderFields()));
                httpURLConnection.disconnect();
                return zzbbVar;
            }
            try {
                return new zzbb(responseCode, zza(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), new zzbg(httpURLConnection));
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
