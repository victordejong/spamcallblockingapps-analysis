package com.google.api.client.http.a;

import com.google.api.client.http.w;
import com.google.api.client.http.z;
import com.google.common.base.m;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.util.Arrays;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/a/e.class */
public final class e extends w {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f31782a;

    /* renamed from: b  reason: collision with root package name */
    private final a f31783b;

    /* renamed from: c  reason: collision with root package name */
    private final SSLSocketFactory f31784c;

    /* renamed from: d  reason: collision with root package name */
    private final HostnameVerifier f31785d;
    private final boolean e;

    static {
        String[] strArr = {"DELETE", "GET", "HEAD", "OPTIONS", "POST", "PUT", "TRACE"};
        f31782a = strArr;
        Arrays.sort(strArr);
    }

    public e() {
        this((a) null, (SSLSocketFactory) null, (HostnameVerifier) null, false);
    }

    e(a aVar, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, boolean z) {
        this.f31783b = aVar == null ? System.getProperty("com.google.api.client.should_use_proxy") != null ? new b(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(System.getProperty("https.proxyHost"), Integer.parseInt(System.getProperty("https.proxyPort"))))) : new b() : aVar;
        this.f31784c = sSLSocketFactory;
        this.f31785d = hostnameVerifier;
        this.e = z;
    }

    e(Proxy proxy, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, boolean z) {
        this(new b(proxy), sSLSocketFactory, hostnameVerifier, z);
    }

    @Override // com.google.api.client.http.w
    public final /* synthetic */ z buildRequest(String str, String str2) throws IOException {
        m.a(supportsMethod(str), "HTTP method %s not supported", str);
        HttpURLConnection a2 = this.f31783b.a(new URL(str2));
        a2.setRequestMethod(str);
        if (a2 instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) a2;
            HostnameVerifier hostnameVerifier = this.f31785d;
            if (hostnameVerifier != null) {
                httpsURLConnection.setHostnameVerifier(hostnameVerifier);
            }
            SSLSocketFactory sSLSocketFactory = this.f31784c;
            if (sSLSocketFactory != null) {
                httpsURLConnection.setSSLSocketFactory(sSLSocketFactory);
            }
        }
        return new c(a2);
    }

    @Override // com.google.api.client.http.w
    public final boolean isMtls() {
        return this.e;
    }

    @Override // com.google.api.client.http.w
    public final boolean supportsMethod(String str) {
        return Arrays.binarySearch(f31782a, str) >= 0;
    }
}
