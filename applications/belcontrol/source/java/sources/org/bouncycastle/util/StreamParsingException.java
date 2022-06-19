package org.bouncycastle.util;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/StreamParsingException.class */
public class StreamParsingException extends Exception {

    /* renamed from: _e */
    public Throwable f7681_e;

    public StreamParsingException(String str, Throwable th) {
        super(str);
        this.f7681_e = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f7681_e;
    }
}
