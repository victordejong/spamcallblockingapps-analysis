package com.callapp.contacts.api.helper.google;

import com.callapp.contacts.util.http.HttpUtils;
import com.google.api.client.http.AbstractC15346w;
import com.google.api.client.http.AbstractC15349z;
import com.google.common.base.C15391m;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.util.Arrays;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/google/OkHttpTransport.class */
public final class OkHttpTransport extends AbstractC15346w {

    /* renamed from: a */
    private static final String[] f24854a;

    /* renamed from: b */
    private final Proxy f24855b;

    /* renamed from: c */
    private final SSLSocketFactory f24856c;

    /* renamed from: d */
    private final HostnameVerifier f24857d;

    static {
        String[] strArr = {"DELETE", "GET", "HEAD", "OPTIONS", "POST", "PUT", "TRACE"};
        f24854a = strArr;
        Arrays.sort(strArr);
    }

    public OkHttpTransport() {
        this(null, null, null);
    }

    OkHttpTransport(Proxy proxy, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier) {
        this.f24855b = proxy;
        this.f24856c = sSLSocketFactory;
        this.f24857d = hostnameVerifier;
    }

    @Override // com.google.api.client.http.AbstractC15346w
    public final /* synthetic */ AbstractC15349z buildRequest(String str, String str2) throws IOException {
        C15391m.m8936a(supportsMethod(str), "HTTP method %s not supported", str);
        HttpURLConnection m26976a = HttpUtils.m26976a(new URL(str2), this.f24855b);
        m26976a.setRequestMethod(str);
        if (m26976a instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) m26976a;
            HostnameVerifier hostnameVerifier = this.f24857d;
            if (hostnameVerifier != null) {
                httpsURLConnection.setHostnameVerifier(hostnameVerifier);
            }
            SSLSocketFactory sSLSocketFactory = this.f24856c;
            if (sSLSocketFactory != null) {
                httpsURLConnection.setSSLSocketFactory(sSLSocketFactory);
            }
        }
        return new OkHttpRequest(m26976a);
    }

    @Override // com.google.api.client.http.AbstractC15346w
    public final boolean supportsMethod(String str) {
        return Arrays.binarySearch(f24854a, str) >= 0;
    }
}
