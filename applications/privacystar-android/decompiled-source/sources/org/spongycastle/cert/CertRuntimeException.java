package org.spongycastle.cert;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/CertRuntimeException.class */
public class CertRuntimeException extends RuntimeException {
    private Throwable cause;

    public CertRuntimeException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
