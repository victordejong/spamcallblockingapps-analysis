package org.bouncycastle.util.p013io.pem;

import java.io.IOException;
/* renamed from: org.bouncycastle.util.io.pem.PemGenerationException */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/io/pem/PemGenerationException.class */
public class PemGenerationException extends IOException {
    private Throwable cause;

    public PemGenerationException(String str) {
        super(str);
    }

    public PemGenerationException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
