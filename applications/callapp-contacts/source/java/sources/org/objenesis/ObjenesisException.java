package org.objenesis;
/* loaded from: classes5-dex2jar.jar:org/objenesis/ObjenesisException.class */
public class ObjenesisException extends RuntimeException {
    public ObjenesisException(String str) {
        super(str);
    }

    public ObjenesisException(String str, Throwable th) {
        super(str, th);
    }

    public ObjenesisException(Throwable th) {
        super(th);
    }
}
