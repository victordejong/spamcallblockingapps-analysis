package org.bson;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:org/bson/ByteBufNIO.class */
public class ByteBufNIO implements ByteBuf {
    private ByteBuffer buf;
    private final AtomicInteger referenceCount = new AtomicInteger(1);

    public ByteBufNIO(ByteBuffer byteBuffer) {
        this.buf = byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    }

    @Override // org.bson.ByteBuf
    public byte[] array() {
        return this.buf.array();
    }

    @Override // org.bson.ByteBuf
    public ByteBuffer asNIO() {
        return this.buf;
    }

    @Override // org.bson.ByteBuf
    public ByteBuf asReadOnly() {
        return new ByteBufNIO(this.buf.asReadOnlyBuffer());
    }

    @Override // org.bson.ByteBuf
    public int capacity() {
        return this.buf.capacity();
    }

    @Override // org.bson.ByteBuf
    public ByteBuf clear() {
        this.buf.clear();
        return this;
    }

    @Override // org.bson.ByteBuf
    public ByteBuf duplicate() {
        return new ByteBufNIO(this.buf.duplicate());
    }

    @Override // org.bson.ByteBuf
    public ByteBuf flip() {
        this.buf.flip();
        return this;
    }

    @Override // org.bson.ByteBuf
    public byte get() {
        return this.buf.get();
    }

    @Override // org.bson.ByteBuf
    public byte get(int i) {
        return this.buf.get(i);
    }

    @Override // org.bson.ByteBuf
    public ByteBuf get(int i, byte[] bArr) {
        return get(i, bArr, 0, bArr.length);
    }

    @Override // org.bson.ByteBuf
    public ByteBuf get(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[i2 + i4] = this.buf.get(i + i4);
        }
        return this;
    }

    @Override // org.bson.ByteBuf
    public ByteBuf get(byte[] bArr) {
        this.buf.get(bArr);
        return this;
    }

    @Override // org.bson.ByteBuf
    public ByteBuf get(byte[] bArr, int i, int i2) {
        this.buf.get(bArr, i, i2);
        return this;
    }

    @Override // org.bson.ByteBuf
    public double getDouble() {
        return this.buf.getDouble();
    }

    @Override // org.bson.ByteBuf
    public double getDouble(int i) {
        return this.buf.getDouble(i);
    }

    @Override // org.bson.ByteBuf
    public int getInt() {
        return this.buf.getInt();
    }

    @Override // org.bson.ByteBuf
    public int getInt(int i) {
        return this.buf.getInt(i);
    }

    @Override // org.bson.ByteBuf
    public long getLong() {
        return this.buf.getLong();
    }

    @Override // org.bson.ByteBuf
    public long getLong(int i) {
        return this.buf.getLong(i);
    }

    @Override // org.bson.ByteBuf
    public int getReferenceCount() {
        return this.referenceCount.get();
    }

    @Override // org.bson.ByteBuf
    public boolean hasRemaining() {
        return this.buf.hasRemaining();
    }

    @Override // org.bson.ByteBuf
    public int limit() {
        return this.buf.limit();
    }

    @Override // org.bson.ByteBuf
    public ByteBuf limit(int i) {
        this.buf.limit(i);
        return this;
    }

    @Override // org.bson.ByteBuf
    public ByteBuf order(ByteOrder byteOrder) {
        this.buf.order(byteOrder);
        return this;
    }

    @Override // org.bson.ByteBuf
    public int position() {
        return this.buf.position();
    }

    @Override // org.bson.ByteBuf
    public ByteBuf position(int i) {
        this.buf.position(i);
        return this;
    }

    @Override // org.bson.ByteBuf
    public ByteBuf put(byte b) {
        this.buf.put(b);
        return this;
    }

    @Override // org.bson.ByteBuf
    public ByteBuf put(int i, byte b) {
        this.buf.put(i, b);
        return this;
    }

    @Override // org.bson.ByteBuf
    public ByteBuf put(byte[] bArr, int i, int i2) {
        this.buf.put(bArr, i, i2);
        return this;
    }

    @Override // org.bson.ByteBuf
    public void release() {
        if (this.referenceCount.decrementAndGet() < 0) {
            this.referenceCount.incrementAndGet();
            throw new IllegalStateException("Attempted to decrement the reference count below 0");
        } else if (this.referenceCount.get() != 0) {
        } else {
            this.buf = null;
        }
    }

    @Override // org.bson.ByteBuf
    public int remaining() {
        return this.buf.remaining();
    }

    @Override // org.bson.ByteBuf
    public ByteBufNIO retain() {
        if (this.referenceCount.incrementAndGet() != 1) {
            return this;
        }
        this.referenceCount.decrementAndGet();
        throw new IllegalStateException("Attempted to increment the reference count when it is already 0");
    }
}
