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

    /* renamed from: a  reason: collision with root package name */
    private final UrlRewriter f34839a;

    /* renamed from: b  reason: collision with root package name */
    private final SSLSocketFactory f34840b;

    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/HurlStack$UrlRewriter.class */
    public interface UrlRewriter {
        String rewriteUrl(String str);
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/HurlStack$a.class */
    static final class a extends FilterInputStream {

        /* renamed from: a  reason: collision with root package name */
        private final HttpURLConnection f34841a;

        a(HttpURLConnection httpURLConnection) {
            super(HurlStack.b(httpURLConnection));
            this.f34841a = httpURLConnection;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            super.close();
            this.f34841a.disconnect();
        }
    }

    public HurlStack() {
        this(null);
    }

    public HurlStack(UrlRewriter urlRewriter) {
        this(urlRewriter, null);
    }

    public HurlStack(UrlRewriter urlRewriter, SSLSocketFactory sSLSocketFactory) {
        this.f34839a = urlRewriter;
        this.f34840b = sSLSocketFactory;
    }

    private static List<Header> a(Map<String, List<String>> map) {
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

    private static void a(HttpURLConnection httpURLConnection, Request<?> request) throws IOException, AuthFailureError {
        byte[] body = request.getBody();
        if (body != null) {
            a(httpURLConnection, request, body);
        }
    }

    private static void a(HttpURLConnection httpURLConnection, Request<?> request, byte[] bArr) throws IOException {
        httpURLConnection.setDoOutput(true);
        if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
            httpURLConnection.setRequestProperty("Content-Type", request.getBodyContentType());
        }
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        dataOutputStream.write(bArr);
        dataOutputStream.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputStream b(HttpURLConnection httpURLConnection) {
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
        Throwable th;
        SSLSocketFactory sSLSocketFactory;
        String url = request.getUrl();
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        hashMap.putAll(request.getHeaders());
        UrlRewriter urlRewriter = this.f34839a;
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
        boolean z = false;
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        if (Constants.HTTPS.equals(url2.getProtocol()) && (sSLSocketFactory = this.f34840b) != null) {
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
                        a(httpURLConnection, request, postBody);
                        break;
                    }
                    break;
                case 0:
                    httpURLConnection.setRequestMethod("GET");
                    break;
                case 1:
                    httpURLConnection.setRequestMethod("POST");
                    a(httpURLConnection, request);
                    break;
                case 2:
                    httpURLConnection.setRequestMethod("PUT");
                    a(httpURLConnection, request);
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
                    a(httpURLConnection, request);
                    break;
                default:
                    throw new IllegalStateException("Unknown method type.");
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode != -1) {
                if (!((request.getMethod() == 4 || (100 <= responseCode && responseCode < 200) || responseCode == 204 || responseCode == 304) ? false : true)) {
                    HttpResponse httpResponse = new HttpResponse(responseCode, a(httpURLConnection.getHeaderFields()));
                    httpURLConnection.disconnect();
                    return httpResponse;
                }
                try {
                    return new HttpResponse(responseCode, a(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), new a(httpURLConnection));
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
