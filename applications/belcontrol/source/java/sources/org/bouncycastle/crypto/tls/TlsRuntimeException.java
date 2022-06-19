package org.bouncycastle.crypto.tls;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsRuntimeException.class */
public class TlsRuntimeException extends RuntimeException {
    private static final long serialVersionUID = 1928023487348344086L;

    /* renamed from: e */
    public Throwable f7603e;

    public TlsRuntimeException(String str) {
        super(str);
    }

    public TlsRuntimeException(String str, Throwable th) {
        super(str);
        this.f7603e = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f7603e;
    }
}
