package org.spongycastle.operator;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/OperatorStreamException.class */
public class OperatorStreamException extends IOException {
    private Throwable cause;

    public OperatorStreamException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
