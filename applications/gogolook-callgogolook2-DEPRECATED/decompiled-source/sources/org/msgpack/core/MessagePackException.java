package org.msgpack.core;
/* loaded from: classes3-dex2jar.jar:org/msgpack/core/MessagePackException.class */
public class MessagePackException extends RuntimeException {
    public static final IllegalStateException UNREACHABLE = new IllegalStateException("Cannot reach here");

    public MessagePackException() {
    }

    public MessagePackException(String str) {
        super(str);
    }

    public MessagePackException(String str, Throwable th) {
        super(str, th);
    }

    public MessagePackException(Throwable th) {
        super(th);
    }

    public static UnsupportedOperationException UNSUPPORTED(String str) {
        return new UnsupportedOperationException(str);
    }
}
