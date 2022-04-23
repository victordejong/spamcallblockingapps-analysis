package com.mopub.volley.toolbox;

import com.android.volley.toolbox.HttpClientStack;
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
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/HurlStack.class */
public class HurlStack extends BaseHttpStack {

    /* renamed from: a */
    public final UrlRewriter f35155a;

    /* renamed from: b */
    public final SSLSocketFactory f35156b;

    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/HurlStack$UrlRewriter.class */
    public interface UrlRewriter {
        String rewriteUrl(String str);
    }

    /* renamed from: com.mopub.volley.toolbox.HurlStack$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/HurlStack$a.class */
    public static class C9005a extends FilterInputStream {

        /* renamed from: a */
        public final HttpURLConnection f35157a;

        public C9005a(HttpURLConnection httpURLConnection) {
            super(HurlStack.m3695b(httpURLConnection));
            this.f35157a = httpURLConnection;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            this.f35157a.disconnect();
        }
    }

    public HurlStack() {
        this(null);
    }

    public HurlStack(UrlRewriter urlRewriter) {
        this(urlRewriter, null);
    }

    public HurlStack(UrlRewriter urlRewriter, SSLSocketFactory sSLSocketFactory) {
        this.f35155a = urlRewriter;
        this.f35156b = sSLSocketFactory;
    }

    /* renamed from: a */
    public static List<Header> m3696a(Map<String, List<String>> map) {
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
    public static void m3700a(HttpURLConnection httpURLConnection, Request<?> request) throws IOException, AuthFailureError {
        byte[] body = request.getBody();
        if (body != null) {
            m3699a(httpURLConnection, request, body);
        }
    }

    /* renamed from: a */
    public static void m3699a(HttpURLConnection httpURLConnection, Request<?> request, byte[] bArr) throws IOException {
        httpURLConnection.setDoOutput(true);
        if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
            httpURLConnection.setRequestProperty("Content-Type", request.getBodyContentType());
        }
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        dataOutputStream.write(bArr);
        dataOutputStream.close();
    }

    /* renamed from: a */
    public static boolean m3702a(int i, int i2) {
        return (i == 4 || (100 <= i2 && i2 < 200) || i2 == 204 || i2 == 304) ? false : true;
    }

    /* renamed from: b */
    public static InputStream m3695b(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        try {
            inputStream = httpURLConnection.getInputStream();
        } catch (IOException e) {
            inputStream = httpURLConnection.getErrorStream();
        }
        return inputStream;
    }

    /* renamed from: b */
    public static void m3694b(HttpURLConnection httpURLConnection, Request<?> request) throws IOException, AuthFailureError {
        switch (request.getMethod()) {
            case -1:
                byte[] postBody = request.getPostBody();
                if (postBody != null) {
                    httpURLConnection.setRequestMethod("POST");
                    m3699a(httpURLConnection, request, postBody);
                    return;
                }
                return;
            case 0:
                httpURLConnection.setRequestMethod("GET");
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                m3700a(httpURLConnection, request);
                return;
            case 2:
                httpURLConnection.setRequestMethod("PUT");
                m3700a(httpURLConnection, request);
                return;
            case 3:
                httpURLConnection.setRequestMethod("DELETE");
                return;
            case 4:
                httpURLConnection.setRequestMethod("HEAD");
                return;
            case 5:
                httpURLConnection.setRequestMethod("OPTIONS");
                return;
            case 6:
                httpURLConnection.setRequestMethod("TRACE");
                return;
            case 7:
                httpURLConnection.setRequestMethod(HttpClientStack.HttpPatch.METHOD_NAME);
                m3700a(httpURLConnection, request);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    /* renamed from: a */
    public HttpURLConnection m3698a(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        return httpURLConnection;
    }

    /* renamed from: a */
    public final HttpURLConnection m3697a(URL url, Request<?> request) throws IOException {
        SSLSocketFactory sSLSocketFactory;
        HttpURLConnection a = m3698a(url);
        int timeoutMs = request.getTimeoutMs();
        a.setConnectTimeout(timeoutMs);
        a.setReadTimeout(timeoutMs);
        a.setUseCaches(false);
        a.setDoInput(true);
        if ("https".equals(url.getProtocol()) && (sSLSocketFactory = this.f35156b) != null) {
            ((HttpsURLConnection) a).setSSLSocketFactory(sSLSocketFactory);
        }
        return a;
    }

    @Override // com.mopub.volley.toolbox.BaseHttpStack
    public HttpResponse executeRequest(Request<?> request, Map<String, String> map) throws IOException, AuthFailureError {
        String url = request.getUrl();
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        hashMap.putAll(request.getHeaders());
        UrlRewriter urlRewriter = this.f35155a;
        String str = url;
        if (urlRewriter != null) {
            str = urlRewriter.rewriteUrl(url);
            if (str == null) {
                throw new IOException("URL blocked by rewriter: " + url);
            }
        }
        HttpURLConnection a = m3697a(new URL(str), request);
        try {
            for (String str2 : hashMap.keySet()) {
                a.setRequestProperty(str2, (String) hashMap.get(str2));
            }
            m3694b(a, request);
            int responseCode = a.getResponseCode();
            if (responseCode == -1) {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            } else if (m3702a(request.getMethod(), responseCode)) {
                return new HttpResponse(responseCode, m3696a(a.getHeaderFields()), a.getContentLength(), new C9005a(a));
            } else {
                HttpResponse httpResponse = new HttpResponse(responseCode, m3696a(a.getHeaderFields()));
                a.disconnect();
                return httpResponse;
            }
        } catch (Throwable th) {
            if (0 == 0) {
                a.disconnect();
            }
            throw th;
        }
    }
}
