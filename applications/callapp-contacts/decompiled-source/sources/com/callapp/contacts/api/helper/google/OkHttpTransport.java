package com.callapp.contacts.api.helper.google;

import com.callapp.contacts.util.http.HttpUtils;
import com.google.api.client.http.w;
import com.google.api.client.http.z;
import com.google.common.base.m;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.util.Arrays;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/google/OkHttpTransport.class */
public final class OkHttpTransport extends w {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f14192a;

    /* renamed from: b  reason: collision with root package name */
    private final Proxy f14193b;

    /* renamed from: c  reason: collision with root package name */
    private final SSLSocketFactory f14194c;

    /* renamed from: d  reason: collision with root package name */
    private final HostnameVerifier f14195d;

    static {
        String[] strArr = {"DELETE", "GET", "HEAD", "OPTIONS", "POST", "PUT", "TRACE"};
        f14192a = strArr;
        Arrays.sort(strArr);
    }

    public OkHttpTransport() {
        this(null, null, null);
    }

    OkHttpTransport(Proxy proxy, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier) {
        this.f14193b = proxy;
        this.f14194c = sSLSocketFactory;
        this.f14195d = hostnameVerifier;
    }

    @Override // com.google.api.client.http.w
    public final /* synthetic */ z buildRequest(String str, String str2) throws IOException {
        m.a(supportsMethod(str), "HTTP method %s not supported", str);
        HttpURLConnection a2 = HttpUtils.a(new URL(str2), this.f14193b);
        a2.setRequestMethod(str);
        if (a2 instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) a2;
            HostnameVerifier hostnameVerifier = this.f14195d;
            if (hostnameVerifier != null) {
                httpsURLConnection.setHostnameVerifier(hostnameVerifier);
            }
            SSLSocketFactory sSLSocketFactory = this.f14194c;
            if (sSLSocketFactory != null) {
                httpsURLConnection.setSSLSocketFactory(sSLSocketFactory);
            }
        }
        return new OkHttpRequest(a2);
    }

    @Override // com.google.api.client.http.w
    public final boolean supportsMethod(String str) {
        return Arrays.binarySearch(f14192a, str) >= 0;
    }
}
