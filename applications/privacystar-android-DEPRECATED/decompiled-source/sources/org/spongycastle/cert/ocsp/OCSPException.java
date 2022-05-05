package org.spongycastle.cert.ocsp;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/ocsp/OCSPException.class */
public class OCSPException extends Exception {
    private Throwable cause;

    public OCSPException(String str) {
        super(str);
    }

    public OCSPException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
