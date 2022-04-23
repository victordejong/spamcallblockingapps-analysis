package org.spongycastle.cert;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/CertException.class */
public class CertException extends Exception {
    private Throwable cause;

    public CertException(String str) {
        super(str);
    }

    public CertException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
