package org.bouncycastle.ocsp;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/ocsp/OCSPException.class */
public class OCSPException extends Exception {

    /* renamed from: e */
    public Exception f7678e;

    public OCSPException(String str) {
        super(str);
    }

    public OCSPException(String str, Exception exc) {
        super(str);
        this.f7678e = exc;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f7678e;
    }

    public Exception getUnderlyingException() {
        return this.f7678e;
    }
}
