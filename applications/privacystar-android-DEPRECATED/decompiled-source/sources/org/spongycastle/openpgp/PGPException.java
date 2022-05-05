package org.spongycastle.openpgp;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPException.class */
public class PGPException extends Exception {
    Exception underlying;

    public PGPException(String str) {
        super(str);
    }

    public PGPException(String str, Exception exc) {
        super(str);
        this.underlying = exc;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.underlying;
    }

    public Exception getUnderlyingException() {
        return this.underlying;
    }
}
