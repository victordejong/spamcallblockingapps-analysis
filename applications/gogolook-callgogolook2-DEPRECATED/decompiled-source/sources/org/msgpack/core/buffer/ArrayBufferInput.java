package org.msgpack.core.buffer;

import java.io.IOException;
import org.msgpack.core.Preconditions;
/* loaded from: classes3-dex2jar.jar:org/msgpack/core/buffer/ArrayBufferInput.class */
public class ArrayBufferInput implements MessageBufferInput {
    public MessageBuffer buffer;
    public boolean isEmpty;

    public ArrayBufferInput(MessageBuffer messageBuffer) {
        this.buffer = messageBuffer;
        if (messageBuffer == null) {
            this.isEmpty = true;
        } else {
            this.isEmpty = false;
        }
    }

    public ArrayBufferInput(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public ArrayBufferInput(byte[] bArr, int i, int i2) {
        this(MessageBuffer.wrap((byte[]) Preconditions.checkNotNull(bArr, "input array is null"), i, i2));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.buffer = null;
        this.isEmpty = true;
    }

    @Override // org.msgpack.core.buffer.MessageBufferInput
    public MessageBuffer next() throws IOException {
        if (this.isEmpty) {
            return null;
        }
        this.isEmpty = true;
        return this.buffer;
    }

    public MessageBuffer reset(MessageBuffer messageBuffer) {
        MessageBuffer messageBuffer2 = this.buffer;
        this.buffer = messageBuffer;
        if (messageBuffer == null) {
            this.isEmpty = true;
        } else {
            this.isEmpty = false;
        }
        return messageBuffer2;
    }

    public void reset(byte[] bArr) {
        reset(MessageBuffer.wrap((byte[]) Preconditions.checkNotNull(bArr, "input array is null")));
    }

    public void reset(byte[] bArr, int i, int i2) {
        reset(MessageBuffer.wrap((byte[]) Preconditions.checkNotNull(bArr, "input array is null"), i, i2));
    }
}
