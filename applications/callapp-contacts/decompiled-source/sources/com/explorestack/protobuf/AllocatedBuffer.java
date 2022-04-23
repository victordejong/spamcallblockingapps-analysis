package com.explorestack.protobuf;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/AllocatedBuffer.class */
abstract class AllocatedBuffer {
    AllocatedBuffer() {
    }

    public static AllocatedBuffer wrap(final ByteBuffer byteBuffer) {
        Internal.checkNotNull(byteBuffer, "buffer");
        return new AllocatedBuffer() { // from class: com.explorestack.protobuf.AllocatedBuffer.1
            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final byte[] array() {
                return byteBuffer.array();
            }

            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final int arrayOffset() {
                return byteBuffer.arrayOffset();
            }

            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final boolean hasArray() {
                return byteBuffer.hasArray();
            }

            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final boolean hasNioBuffer() {
                return true;
            }

            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final int limit() {
                return byteBuffer.limit();
            }

            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final ByteBuffer nioBuffer() {
                return byteBuffer;
            }

            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final int position() {
                return byteBuffer.position();
            }

            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final AllocatedBuffer position(int i) {
                byteBuffer.position(i);
                return this;
            }

            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final int remaining() {
                return byteBuffer.remaining();
            }
        };
    }

    public static AllocatedBuffer wrap(byte[] bArr) {
        return wrapNoCheck(bArr, 0, bArr.length);
    }

    public static AllocatedBuffer wrap(byte[] bArr, int i, int i2) {
        if (i >= 0 && i2 >= 0 && i + i2 <= bArr.length) {
            return wrapNoCheck(bArr, i, i2);
        }
        throw new IndexOutOfBoundsException(String.format("bytes.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    private static AllocatedBuffer wrapNoCheck(final byte[] bArr, final int i, final int i2) {
        return new AllocatedBuffer() { // from class: com.explorestack.protobuf.AllocatedBuffer.2
            private int position;

            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final byte[] array() {
                return bArr;
            }

            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final int arrayOffset() {
                return i;
            }

            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final boolean hasArray() {
                return true;
            }

            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final boolean hasNioBuffer() {
                return false;
            }

            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final int limit() {
                return i2;
            }

            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final ByteBuffer nioBuffer() {
                throw new UnsupportedOperationException();
            }

            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final int position() {
                return this.position;
            }

            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final AllocatedBuffer position(int i3) {
                if (i3 < 0 || i3 > i2) {
                    throw new IllegalArgumentException("Invalid position: ".concat(String.valueOf(i3)));
                }
                this.position = i3;
                return this;
            }

            @Override // com.explorestack.protobuf.AllocatedBuffer
            public final int remaining() {
                return i2 - this.position;
            }
        };
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
