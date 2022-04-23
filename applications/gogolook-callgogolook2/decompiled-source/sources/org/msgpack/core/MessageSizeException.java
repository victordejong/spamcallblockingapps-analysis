package org.msgpack.core;
/* loaded from: classes3-dex2jar.jar:org/msgpack/core/MessageSizeException.class */
public class MessageSizeException extends MessagePackException {
    public final long size;

    public MessageSizeException(long j) {
        this.size = j;
    }

    public MessageSizeException(String str, long j) {
        super(str);
        this.size = j;
    }

    public long getSize() {
        return this.size;
    }
}
