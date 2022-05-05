package org.spongycastle.jce.exception;

import java.security.cert.CertificateEncodingException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/exception/ExtCertificateEncodingException.class */
public class ExtCertificateEncodingException extends CertificateEncodingException implements ExtException {
    private Throwable cause;

    public ExtCertificateEncodingException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable, org.spongycastle.jce.exception.ExtException
    public Throwable getCause() {
        return this.cause;
    }
}
