package org.spongycastle.cert.crmf;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/crmf/CRMFException.class */
public class CRMFException extends Exception {
    private Throwable cause;

    public CRMFException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
