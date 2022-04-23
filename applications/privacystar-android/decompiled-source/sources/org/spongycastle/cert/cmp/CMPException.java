package org.spongycastle.cert.cmp;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/cmp/CMPException.class */
public class CMPException extends Exception {
    private Throwable cause;

    public CMPException(String str) {
        super(str);
    }

    public CMPException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
