package org.bouncycastle.x509;

import java.security.cert.CertificateEncodingException;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/x509/ExtCertificateEncodingException.class */
public class ExtCertificateEncodingException extends CertificateEncodingException {
    public Throwable cause;

    public ExtCertificateEncodingException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
