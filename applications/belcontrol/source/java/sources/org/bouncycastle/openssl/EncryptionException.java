package org.bouncycastle.openssl;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/EncryptionException.class */
public class EncryptionException extends IOException {
    private Throwable cause;

    public EncryptionException(String str) {
        super(str);
    }

    public EncryptionException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
