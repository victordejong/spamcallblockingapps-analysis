package org.spongycastle.eac;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/eac/EACException.class */
public class EACException extends Exception {
    private Throwable cause;

    public EACException(String str) {
        super(str);
    }

    public EACException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
