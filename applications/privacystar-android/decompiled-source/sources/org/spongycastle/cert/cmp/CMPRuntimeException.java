package org.spongycastle.cert.cmp;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/cmp/CMPRuntimeException.class */
public class CMPRuntimeException extends RuntimeException {
    private Throwable cause;

    public CMPRuntimeException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
