package okhttp3.internal.platform;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;
import okhttp3.internal.Util;
import okhttp3.internal.tls.TrustRootIndex;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex.class */
final class AndroidPlatform$AndroidTrustRootIndex implements TrustRootIndex {
    private final Method findByIssuerAndSignatureMethod;
    private final X509TrustManager trustManager;

    AndroidPlatform$AndroidTrustRootIndex(X509TrustManager x509TrustManager, Method method) {
        this.findByIssuerAndSignatureMethod = method;
        this.trustManager = x509TrustManager;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AndroidPlatform$AndroidTrustRootIndex)) {
            return false;
        }
        AndroidPlatform$AndroidTrustRootIndex androidPlatform$AndroidTrustRootIndex = (AndroidPlatform$AndroidTrustRootIndex) obj;
        if (!this.trustManager.equals(androidPlatform$AndroidTrustRootIndex.trustManager) || !this.findByIssuerAndSignatureMethod.equals(androidPlatform$AndroidTrustRootIndex.findByIssuerAndSignatureMethod)) {
            z = false;
        }
        return z;
    }

    @Override // okhttp3.internal.tls.TrustRootIndex
    public X509Certificate findByIssuerAndSignature(X509Certificate x509Certificate) {
        X509Certificate x509Certificate2;
        try {
            TrustAnchor trustAnchor = (TrustAnchor) this.findByIssuerAndSignatureMethod.invoke(this.trustManager, x509Certificate);
            x509Certificate2 = null;
            if (trustAnchor != null) {
                x509Certificate2 = trustAnchor.getTrustedCert();
            }
        } catch (IllegalAccessException e) {
            throw Util.assertionError("unable to get issues and signature", e);
        } catch (InvocationTargetException e2) {
            x509Certificate2 = null;
        }
        return x509Certificate2;
    }

    public int hashCode() {
        return this.trustManager.hashCode() + (this.findByIssuerAndSignatureMethod.hashCode() * 31);
    }
}
