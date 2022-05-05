package org.spongycastle.crypto.tls;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsException.class */
public class TlsException extends IOException {
    protected Throwable cause;

    public TlsException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
