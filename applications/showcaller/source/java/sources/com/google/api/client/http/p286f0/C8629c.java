package com.google.api.client.http.p286f0;

import com.google.api.client.http.AbstractC8661w;
import com.zhy.http.okhttp.OkHttpUtils;
import java.net.ProxySelector;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.DefaultHttpRequestRetryHandler;
import org.apache.http.impl.conn.ProxySelectorRoutePlanner;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
@Deprecated
/* renamed from: com.google.api.client.http.f0.c */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/f0/c.class */
public final class C8629c extends AbstractC8661w {

    /* renamed from: c */
    private final HttpClient f38325c;

    public C8629c() {
        this(m3202g());
    }

    public C8629c(HttpClient httpClient) {
        this.f38325c = httpClient;
        HttpParams params = httpClient.getParams();
        HttpParams params2 = params == null ? m3202g().getParams() : params;
        HttpProtocolParams.setVersion(params2, HttpVersion.HTTP_1_1);
        params2.setBooleanParameter("http.protocol.handle-redirects", false);
    }

    /* renamed from: g */
    public static DefaultHttpClient m3202g() {
        return m3201h(SSLSocketFactory.getSocketFactory(), m3200i(), ProxySelector.getDefault());
    }

    /* renamed from: h */
    static DefaultHttpClient m3201h(SSLSocketFactory sSLSocketFactory, HttpParams httpParams, ProxySelector proxySelector) {
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        schemeRegistry.register(new Scheme("https", sSLSocketFactory, 443));
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(httpParams, schemeRegistry), httpParams);
        defaultHttpClient.setHttpRequestRetryHandler(new DefaultHttpRequestRetryHandler(0, false));
        if (proxySelector != null) {
            defaultHttpClient.setRoutePlanner(new ProxySelectorRoutePlanner(schemeRegistry, proxySelector));
        }
        return defaultHttpClient;
    }

    /* renamed from: i */
    static HttpParams m3200i() {
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setStaleCheckingEnabled(basicHttpParams, false);
        HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
        ConnManagerParams.setMaxTotalConnections(basicHttpParams, 200);
        ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, new ConnPerRouteBean(20));
        return basicHttpParams;
    }

    @Override // com.google.api.client.http.AbstractC8661w
    /* renamed from: e */
    public boolean mo3050e(String str) {
        return true;
    }

    /* renamed from: f */
    public C8627a mo3053b(String str, String str2) {
        return new C8627a(this.f38325c, str.equals(OkHttpUtils.METHOD.DELETE) ? new HttpDelete(str2) : str.equals("GET") ? new HttpGet(str2) : str.equals(OkHttpUtils.METHOD.HEAD) ? new HttpHead(str2) : str.equals("POST") ? new HttpPost(str2) : str.equals(OkHttpUtils.METHOD.PUT) ? new HttpPut(str2) : str.equals("TRACE") ? new HttpTrace(str2) : str.equals("OPTIONS") ? new HttpOptions(str2) : new C8631e(str, str2));
    }
}
