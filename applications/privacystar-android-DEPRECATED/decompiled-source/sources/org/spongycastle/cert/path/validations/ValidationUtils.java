package org.spongycastle.cert.path.validations;

import org.spongycastle.cert.X509CertificateHolder;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/path/validations/ValidationUtils.class */
class ValidationUtils {
    ValidationUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isSelfIssued(X509CertificateHolder x509CertificateHolder) {
        return x509CertificateHolder.getSubject().equals(x509CertificateHolder.getIssuer());
    }
}
