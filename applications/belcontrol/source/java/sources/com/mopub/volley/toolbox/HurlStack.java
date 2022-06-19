package com.mopub.volley.toolbox;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mopub.volley.Header;
import com.mopub.volley.Request;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/HurlStack.class */
public class HurlStack extends BaseHttpStack {

    /* renamed from: a */
    public final UrlRewriter f5536a;

    /* renamed from: b */
    public final SSLSocketFactory f5537b;

    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/HurlStack$UrlRewriter.class */
    public interface UrlRewriter {
        String rewriteUrl(String str);
    }

    /* renamed from: com.mopub.volley.toolbox.HurlStack$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/HurlStack$a.class */
    public static class C1238a extends FilterInputStream {

        /* renamed from: a */
        public final HttpURLConnection f5538a;

        public C1238a(HttpURLConnection httpURLConnection) {
            super(HurlStack.m3114g(httpURLConnection));
            this.f5538a = httpURLConnection;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            super.close();
            this.f5538a.disconnect();
        }
    }

    public HurlStack() {
        this(null);
    }

    public HurlStack(UrlRewriter urlRewriter) {
        this(urlRewriter, null);
    }

    public HurlStack(UrlRewriter urlRewriter, SSLSocketFactory sSLSocketFactory) {
        this.f5536a = urlRewriter;
        this.f5537b = sSLSocketFactory;
    }

    /* renamed from: b */
    public static void m3119b(HttpURLConnection httpURLConnection, Request<?> request, byte[] bArr) {
        httpURLConnection.setDoOutput(true);
        if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
            httpURLConnection.setRequestProperty("Content-Type", request.getBodyContentType());
        }
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        dataOutputStream.write(bArr);
        dataOutputStream.close();
    }

    /* renamed from: c */
    public static void m3118c(HttpURLConnection httpURLConnection, Request<?> request) {
        byte[] body = request.getBody();
        if (body != null) {
            m3119b(httpURLConnection, request, body);
        }
    }

    /* renamed from: d */
    public static List<Header> m3117d(Map<String, List<String>> map) {
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

    /* renamed from: f */
    public static boolean m3115f(int i, int i2) {
        return (i == 4 || (100 <= i2 && i2 < 200) || i2 == 204 || i2 == 304) ? false : true;
    }

    /* renamed from: g */
    public static InputStream m3114g(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        try {
            inputStream = httpURLConnection.getInputStream();
        } catch (IOException e) {
            inputStream = httpURLConnection.getErrorStream();
        }
        return inputStream;
    }

    /* renamed from: i */
    public static void m3112i(HttpURLConnection httpURLConnection, Request<?> request) {
        String str;
        String str2;
        switch (request.getMethod()) {
            case -1:
                byte[] postBody = request.getPostBody();
                if (postBody == null) {
                    return;
                }
                httpURLConnection.setRequestMethod("POST");
                m3119b(httpURLConnection, request, postBody);
                return;
            case 0:
                str = "GET";
                httpURLConnection.setRequestMethod(str);
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                m3118c(httpURLConnection, request);
                return;
            case 2:
                str2 = "PUT";
                httpURLConnection.setRequestMethod(str2);
                m3118c(httpURLConnection, request);
                return;
            case 3:
                str = "DELETE";
                httpURLConnection.setRequestMethod(str);
                return;
            case 4:
                str = "HEAD";
                httpURLConnection.setRequestMethod(str);
                return;
            case 5:
                str = "OPTIONS";
                httpURLConnection.setRequestMethod(str);
                return;
            case 6:
                str = "TRACE";
                httpURLConnection.setRequestMethod(str);
                return;
            case 7:
                str2 = "PATCH";
                httpURLConnection.setRequestMethod(str2);
                m3118c(httpURLConnection, request);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    /* renamed from: e */
    public HttpURLConnection m3116e(URL url) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        return httpURLConnection;
    }

    @Override // com.mopub.volley.toolbox.BaseHttpStack
    public HttpResponse executeRequest(Request<?> request, Map<String, String> map) {
        String url = request.getUrl();
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        hashMap.putAll(request.getHeaders());
        UrlRewriter urlRewriter = this.f5536a;
        String str = url;
        if (urlRewriter != null) {
            str = urlRewriter.rewriteUrl(url);
            if (str == null) {
                throw new IOException("URL blocked by rewriter: " + url);
            }
        }
        HttpURLConnection m3113h = m3113h(new URL(str), request);
        try {
            for (String str2 : hashMap.keySet()) {
                m3113h.setRequestProperty(str2, (String) hashMap.get(str2));
            }
            m3112i(m3113h, request);
            int responseCode = m3113h.getResponseCode();
            if (responseCode == -1) {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
            if (m3115f(request.getMethod(), responseCode)) {
                return new HttpResponse(responseCode, m3117d(m3113h.getHeaderFields()), m3113h.getContentLength(), new C1238a(m3113h));
            }
            HttpResponse httpResponse = new HttpResponse(responseCode, m3117d(m3113h.getHeaderFields()));
            m3113h.disconnect();
            return httpResponse;
        } catch (Throwable th) {
            if (0 == 0) {
                m3113h.disconnect();
            }
            throw th;
        }
    }

    /* renamed from: h */
    public final HttpURLConnection m3113h(URL url, Request<?> request) {
        SSLSocketFactory sSLSocketFactory;
        HttpURLConnection m3116e = m3116e(url);
        int timeoutMs = request.getTimeoutMs();
        m3116e.setConnectTimeout(timeoutMs);
        m3116e.setReadTimeout(timeoutMs);
        m3116e.setUseCaches(false);
        m3116e.setDoInput(true);
        if ("https".equals(url.getProtocol()) && (sSLSocketFactory = this.f5537b) != null) {
            ((HttpsURLConnection) m3116e).setSSLSocketFactory(sSLSocketFactory);
        }
        return m3116e;
    }
}
