package org.msgpack.core.buffer;

import java.nio.ByteBuffer;
import org.msgpack.core.Preconditions;
/* loaded from: classes3-dex2jar.jar:org/msgpack/core/buffer/MessageBufferU.class */
public class MessageBufferU extends MessageBuffer {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public final ByteBuffer wrap;

    public MessageBufferU(Object obj, long j, int i, ByteBuffer byteBuffer) {
        super(obj, j, i);
        this.wrap = byteBuffer;
    }

    public MessageBufferU(byte[] bArr, int i, int i2) {
        super(bArr, i, i2);
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.position(i);
        wrap.limit(i + i2);
        this.wrap = wrap.slice();
    }

    private void resetBufferPosition() {
        this.wrap.position(0);
        this.wrap.limit(this.size);
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public void copyTo(int i, MessageBuffer messageBuffer, int i2, int i3) {
        try {
            this.wrap.position(i);
            messageBuffer.putByteBuffer(i2, this.wrap, i3);
        } finally {
            resetBufferPosition();
        }
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public boolean getBoolean(int i) {
        return this.wrap.get(i) != 0;
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public byte getByte(int i) {
        return this.wrap.get(i);
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public void getBytes(int i, int i2, ByteBuffer byteBuffer) {
        try {
            this.wrap.position(i);
            this.wrap.limit(i + i2);
            byteBuffer.put(this.wrap);
        } finally {
            resetBufferPosition();
        }
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public void getBytes(int i, byte[] bArr, int i2, int i3) {
        try {
            this.wrap.position(i);
            this.wrap.get(bArr, i2, i3);
        } finally {
            resetBufferPosition();
        }
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public double getDouble(int i) {
        return this.wrap.getDouble(i);
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public float getFloat(int i) {
        return this.wrap.getFloat(i);
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public int getInt(int i) {
        return this.wrap.getInt(i);
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public long getLong(int i) {
        return this.wrap.getLong(i);
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public short getShort(int i) {
        return this.wrap.getShort(i);
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public void putBoolean(int i, boolean z) {
        this.wrap.put(i, z ? (byte) 1 : (byte) 0);
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public void putByte(int i, byte b) {
        this.wrap.put(i, b);
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public void putByteBuffer(int i, ByteBuffer byteBuffer, int i2) {
        if (byteBuffer.hasArray()) {
            putBytes(i, byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), i2);
            byteBuffer.position(byteBuffer.position() + i2);
            return;
        }
        int limit = byteBuffer.limit();
        try {
            byteBuffer.limit(byteBuffer.position() + i2);
            this.wrap.position(i);
            this.wrap.put(byteBuffer);
        } finally {
            byteBuffer.limit(limit);
        }
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public void putBytes(int i, byte[] bArr, int i2, int i3) {
        try {
            this.wrap.position(i);
            this.wrap.put(bArr, i2, i3);
        } finally {
            resetBufferPosition();
        }
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public void putDouble(int i, double d) {
        this.wrap.putDouble(i, d);
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public void putFloat(int i, float f) {
        this.wrap.putFloat(i, f);
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public void putInt(int i, int i2) {
        this.wrap.putInt(i, i2);
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public void putLong(int i, long j) {
        this.wrap.putLong(i, j);
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public void putShort(int i, short s) {
        this.wrap.putShort(i, s);
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public MessageBufferU slice(int i, int i2) {
        if (i == 0 && i2 == size()) {
            return this;
        }
        int i3 = i + i2;
        Preconditions.checkArgument(i3 <= size());
        try {
            this.wrap.position(i);
            this.wrap.limit(i3);
            return new MessageBufferU(this.base, i + this.address, i2, this.wrap.slice());
        } finally {
            resetBufferPosition();
        }
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public ByteBuffer sliceAsByteBuffer() {
        return sliceAsByteBuffer(0, this.size);
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public ByteBuffer sliceAsByteBuffer(int i, int i2) {
        try {
            this.wrap.position(i);
            this.wrap.limit(i + i2);
            return this.wrap.slice();
        } finally {
            resetBufferPosition();
        }
    }

    @Override // org.msgpack.core.buffer.MessageBuffer
    public byte[] toByteArray() {
        byte[] bArr = new byte[size()];
        getBytes(0, bArr, 0, bArr.length);
        return bArr;
    }
}
