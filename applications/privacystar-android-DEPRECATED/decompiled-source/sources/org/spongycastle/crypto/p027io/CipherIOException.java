package org.spongycastle.crypto.p027io;

import java.io.IOException;
/* renamed from: org.spongycastle.crypto.io.CipherIOException */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/io/CipherIOException.class */
public class CipherIOException extends IOException {
    private static final long serialVersionUID = 1;
    private final Throwable cause;

    public CipherIOException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
