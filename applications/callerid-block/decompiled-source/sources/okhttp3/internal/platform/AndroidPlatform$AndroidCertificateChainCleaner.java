package okhttp3.internal.platform;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.internal.tls.CertificateChainCleaner;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner.class */
final class AndroidPlatform$AndroidCertificateChainCleaner extends CertificateChainCleaner {
    private final Method checkServerTrusted;
    private final Object x509TrustManagerExtensions;

    AndroidPlatform$AndroidCertificateChainCleaner(Object obj, Method method) {
        this.x509TrustManagerExtensions = obj;
        this.checkServerTrusted = method;
    }

    @Override // okhttp3.internal.tls.CertificateChainCleaner
    public List<Certificate> clean(List<Certificate> list, String str) {
        try {
            return (List) this.checkServerTrusted.invoke(this.x509TrustManagerExtensions, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (InvocationTargetException e2) {
            SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e2.getMessage());
            sSLPeerUnverifiedException.initCause(e2);
            throw sSLPeerUnverifiedException;
        }
    }

    public boolean equals(Object obj) {
        return obj instanceof AndroidPlatform$AndroidCertificateChainCleaner;
    }

    public int hashCode() {
        return 0;
    }
}
