package com.mopub.volley.toolbox;

import com.mopub.common.Constants;
import com.mopub.volley.AuthFailureError;
import com.mopub.volley.Header;
import com.mopub.volley.Request;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/HurlStack.class */
public class HurlStack extends BaseHttpStack {

    /* renamed from: a */
    private final UrlRewriter f60425a;

    /* renamed from: b */
    private final SSLSocketFactory f60426b;

    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/HurlStack$UrlRewriter.class */
    public interface UrlRewriter {
        String rewriteUrl(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.volley.toolbox.HurlStack$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/HurlStack$a.class */
    public static final class C17018a extends FilterInputStream {

        /* renamed from: a */
        private final HttpURLConnection f60427a;

        C17018a(HttpURLConnection httpURLConnection) {
            super(HurlStack.m5995b(httpURLConnection));
            this.f60427a = httpURLConnection;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            super.close();
            this.f60427a.disconnect();
        }
    }

    public HurlStack() {
        this(null);
    }

    public HurlStack(UrlRewriter urlRewriter) {
        this(urlRewriter, null);
    }

    public HurlStack(UrlRewriter urlRewriter, SSLSocketFactory sSLSocketFactory) {
        this.f60425a = urlRewriter;
        this.f60426b = sSLSocketFactory;
    }

    /* renamed from: a */
    private static List<Header> m5996a(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                for (String str : entry.getValue()) {
                    arrayList.add(new Header(entry.getKey(), str));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m5998a(HttpURLConnection httpURLConnection, Request<?> request) throws IOException, AuthFailureError {
        byte[] body = request.getBody();
        if (body != null) {
            m5997a(httpURLConnection, request, body);
        }
    }

    /* renamed from: a */
    private static void m5997a(HttpURLConnection httpURLConnection, Request<?> request, byte[] bArr) throws IOException {
        httpURLConnection.setDoOutput(true);
        if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
            httpURLConnection.setRequestProperty("Content-Type", request.getBodyContentType());
        }
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        dataOutputStream.write(bArr);
        dataOutputStream.close();
    }

    /* renamed from: b */
    public static InputStream m5995b(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        try {
            inputStream = httpURLConnection.getInputStream();
        } catch (IOException e) {
            inputStream = httpURLConnection.getErrorStream();
        }
        return inputStream;
    }

    @Override // com.mopub.volley.toolbox.BaseHttpStack
    public HttpResponse executeRequest(Request<?> request, Map<String, String> map) throws IOException, AuthFailureError {
        boolean z;
        Throwable th;
        SSLSocketFactory sSLSocketFactory;
        String url = request.getUrl();
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        hashMap.putAll(request.getHeaders());
        UrlRewriter urlRewriter = this.f60425a;
        String str = url;
        if (urlRewriter != null) {
            str = urlRewriter.rewriteUrl(url);
            if (str == null) {
                throw new IOException("URL blocked by rewriter: ".concat(String.valueOf(url)));
            }
        }
        URL url2 = new URL(str);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url2.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int timeoutMs = request.getTimeoutMs();
        httpURLConnection.setConnectTimeout(timeoutMs);
        httpURLConnection.setReadTimeout(timeoutMs);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        if (Constants.HTTPS.equals(url2.getProtocol()) && (sSLSocketFactory = this.f60426b) != null) {
            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
        }
        try {
            for (String str2 : hashMap.keySet()) {
                httpURLConnection.setRequestProperty(str2, (String) hashMap.get(str2));
            }
            switch (request.getMethod()) {
                case -1:
                    byte[] postBody = request.getPostBody();
                    if (postBody != null) {
                        httpURLConnection.setRequestMethod("POST");
                        m5997a(httpURLConnection, request, postBody);
                        break;
                    }
                    break;
                case 0:
                    httpURLConnection.setRequestMethod("GET");
                    break;
                case 1:
                    httpURLConnection.setRequestMethod("POST");
                    m5998a(httpURLConnection, request);
                    break;
                case 2:
                    httpURLConnection.setRequestMethod("PUT");
                    m5998a(httpURLConnection, request);
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
                    m5998a(httpURLConnection, request);
                    break;
                default:
                    throw new IllegalStateException("Unknown method type.");
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == -1) {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
            if (!((request.getMethod() == 4 || (100 <= responseCode && responseCode < 200) || responseCode == 204 || responseCode == 304) ? false : true)) {
                HttpResponse httpResponse = new HttpResponse(responseCode, m5996a(httpURLConnection.getHeaderFields()));
                httpURLConnection.disconnect();
                return httpResponse;
            }
            try {
                return new HttpResponse(responseCode, m5996a(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), new C17018a(httpURLConnection));
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
