package com.google.protobuf;

import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/AllocatedBuffer.class */
public abstract class AllocatedBuffer {
    public static AllocatedBuffer wrap(ByteBuffer byteBuffer) {
        Internal.checkNotNull(byteBuffer, "buffer");
        return new 1(byteBuffer);
    }

    public static AllocatedBuffer wrap(byte[] bArr) {
        return wrapNoCheck(bArr, 0, bArr.length);
    }

    public static AllocatedBuffer wrap(byte[] bArr, int i, int i2) {
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException(String.format("bytes.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        return wrapNoCheck(bArr, i, i2);
    }

    private static AllocatedBuffer wrapNoCheck(byte[] bArr, int i, int i2) {
        return new 2(bArr, i, i2);
    }

    public abstract byte[] array();

    public abstract int arrayOffset();

    public abstract boolean hasArray();

    public abstract boolean hasNioBuffer();

    public abstract int limit();

    public abstract ByteBuffer nioBuffer();

    public abstract int position();

    public abstract AllocatedBuffer position(int i);

    public abstract int remaining();
}
