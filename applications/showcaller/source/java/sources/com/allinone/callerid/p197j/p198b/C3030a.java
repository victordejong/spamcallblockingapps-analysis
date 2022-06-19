package com.allinone.callerid.p197j.p198b;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;
/* renamed from: com.allinone.callerid.j.b.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/j/b/a.class */
public class C3030a implements X509TrustManager {
    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        return new X509Certificate[0];
    }
}
