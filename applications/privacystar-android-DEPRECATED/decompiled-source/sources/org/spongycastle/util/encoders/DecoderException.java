package org.spongycastle.util.encoders;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/util/encoders/DecoderException.class */
public class DecoderException extends IllegalStateException {
    private Throwable cause;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DecoderException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
