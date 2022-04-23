package com.callerid.block.p053i.p054a;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;
/* renamed from: com.callerid.block.i.a.a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/i/a/a.class */
public class C1070a implements X509TrustManager {
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
