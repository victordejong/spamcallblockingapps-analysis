package p193e.p1485h.p1486a.p1493c.p1505u0;

import java.io.BufferedInputStream;
import java.security.KeyStore;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;
/* renamed from: e.h.a.c.u0.c */
/* loaded from: classes-dex2jar.jar:e/h/a/c/u0/c.class */
public final class C22843c {
    /* renamed from: a */
    public SSLContext m7696a() {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            keyStore.setCertificateEntry("DigiCertGlobalRootCA", (X509Certificate) certificateFactory.generateCertificate(new BufferedInputStream(getClass().getClassLoader().getResourceAsStream("com/clevertap/android/sdk/certificates/DigiCertGlobalRootCA.crt"))));
            keyStore.setCertificateEntry("DigiCertSHA2SecureServerCA", (X509Certificate) certificateFactory.generateCertificate(new BufferedInputStream(getClass().getClassLoader().getResourceAsStream("com/clevertap/android/sdk/certificates/DigiCertSHA2SecureServerCA.crt"))));
            trustManagerFactory.init(keyStore);
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, trustManagerFactory.getTrustManagers(), null);
            return sSLContext;
        } catch (Throwable th) {
            return null;
        }
    }
}
