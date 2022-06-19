package com.google.api.client.http.p287g0;

import com.google.api.client.http.AbstractC8661w;
import com.google.api.client.util.C8731w;
import com.zhy.http.okhttp.OkHttpUtils;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.util.Arrays;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.google.api.client.http.g0.e */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/g0/e.class */
public final class C8641e extends AbstractC8661w {

    /* renamed from: c */
    private static final String[] f38345c;

    /* renamed from: d */
    private final AbstractC8633a f38346d;

    /* renamed from: e */
    private final SSLSocketFactory f38347e;

    /* renamed from: f */
    private final HostnameVerifier f38348f;

    static {
        String[] strArr = {OkHttpUtils.METHOD.DELETE, "GET", OkHttpUtils.METHOD.HEAD, "OPTIONS", "POST", OkHttpUtils.METHOD.PUT, "TRACE"};
        f38345c = strArr;
        Arrays.sort(strArr);
    }

    public C8641e() {
        this(null, null, null);
    }

    C8641e(AbstractC8633a abstractC8633a, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier) {
        this.f38346d = m3178h(abstractC8633a);
        this.f38347e = sSLSocketFactory;
        this.f38348f = hostnameVerifier;
    }

    /* renamed from: g */
    private static Proxy m3179g() {
        return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(System.getProperty("https.proxyHost"), Integer.parseInt(System.getProperty("https.proxyPort"))));
    }

    /* renamed from: h */
    private AbstractC8633a m3178h(AbstractC8633a abstractC8633a) {
        C8634b c8634b = abstractC8633a;
        if (abstractC8633a == null) {
            if (System.getProperty("com.google.api.client.should_use_proxy") != null) {
                return new C8634b(m3179g());
            }
            c8634b = new C8634b();
        }
        return c8634b;
    }

    @Override // com.google.api.client.http.AbstractC8661w
    /* renamed from: e */
    public boolean mo3050e(String str) {
        return Arrays.binarySearch(f38345c, str) >= 0;
    }

    /* renamed from: f */
    public C8635c mo3053b(String str, String str2) {
        C8731w.m2837c(mo3050e(str), "HTTP method %s not supported", str);
        HttpURLConnection mo3198a = this.f38346d.mo3198a(new URL(str2));
        mo3198a.setRequestMethod(str);
        if (mo3198a instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) mo3198a;
            HostnameVerifier hostnameVerifier = this.f38348f;
            if (hostnameVerifier != null) {
                httpsURLConnection.setHostnameVerifier(hostnameVerifier);
            }
            SSLSocketFactory sSLSocketFactory = this.f38347e;
            if (sSLSocketFactory != null) {
                httpsURLConnection.setSSLSocketFactory(sSLSocketFactory);
            }
        }
        return new C8635c(mo3198a);
    }
}
