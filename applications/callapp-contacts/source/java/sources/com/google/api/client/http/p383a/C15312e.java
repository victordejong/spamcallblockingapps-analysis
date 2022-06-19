package com.google.api.client.http.p383a;

import com.google.api.client.http.AbstractC15346w;
import com.google.api.client.http.AbstractC15349z;
import com.google.common.base.C15391m;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.util.Arrays;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.google.api.client.http.a.e */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/a/e.class */
public final class C15312e extends AbstractC15346w {

    /* renamed from: a */
    private static final String[] f55304a;

    /* renamed from: b */
    private final AbstractC15304a f55305b;

    /* renamed from: c */
    private final SSLSocketFactory f55306c;

    /* renamed from: d */
    private final HostnameVerifier f55307d;

    /* renamed from: e */
    private final boolean f55308e;

    static {
        String[] strArr = {"DELETE", "GET", "HEAD", "OPTIONS", "POST", "PUT", "TRACE"};
        f55304a = strArr;
        Arrays.sort(strArr);
    }

    public C15312e() {
        this((AbstractC15304a) null, (SSLSocketFactory) null, (HostnameVerifier) null, false);
    }

    C15312e(AbstractC15304a abstractC15304a, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, boolean z) {
        this.f55305b = abstractC15304a == null ? System.getProperty("com.google.api.client.should_use_proxy") != null ? new C15305b(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(System.getProperty("https.proxyHost"), Integer.parseInt(System.getProperty("https.proxyPort"))))) : new C15305b() : abstractC15304a;
        this.f55306c = sSLSocketFactory;
        this.f55307d = hostnameVerifier;
        this.f55308e = z;
    }

    C15312e(Proxy proxy, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, boolean z) {
        this(new C15305b(proxy), sSLSocketFactory, hostnameVerifier, z);
    }

    @Override // com.google.api.client.http.AbstractC15346w
    public final /* synthetic */ AbstractC15349z buildRequest(String str, String str2) throws IOException {
        C15391m.m8936a(supportsMethod(str), "HTTP method %s not supported", str);
        HttpURLConnection mo9143a = this.f55305b.mo9143a(new URL(str2));
        mo9143a.setRequestMethod(str);
        if (mo9143a instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) mo9143a;
            HostnameVerifier hostnameVerifier = this.f55307d;
            if (hostnameVerifier != null) {
                httpsURLConnection.setHostnameVerifier(hostnameVerifier);
            }
            SSLSocketFactory sSLSocketFactory = this.f55306c;
            if (sSLSocketFactory != null) {
                httpsURLConnection.setSSLSocketFactory(sSLSocketFactory);
            }
        }
        return new C15306c(mo9143a);
    }

    @Override // com.google.api.client.http.AbstractC15346w
    public final boolean isMtls() {
        return this.f55308e;
    }

    @Override // com.google.api.client.http.AbstractC15346w
    public final boolean supportsMethod(String str) {
        return Arrays.binarySearch(f55304a, str) >= 0;
    }
}
