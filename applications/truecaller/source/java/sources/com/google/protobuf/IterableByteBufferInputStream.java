package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/IterableByteBufferInputStream.class */
public class IterableByteBufferInputStream extends InputStream {
    private long currentAddress;
    private byte[] currentArray;
    private int currentArrayOffset;
    private ByteBuffer currentByteBuffer;
    private int currentByteBufferPos;
    private int currentIndex;
    private int dataSize = 0;
    private boolean hasArray;
    private Iterator<ByteBuffer> iterator;

    public IterableByteBufferInputStream(Iterable<ByteBuffer> iterable) {
        this.iterator = iterable.iterator();
        for (ByteBuffer byteBuffer : iterable) {
            this.dataSize++;
        }
        this.currentIndex = -1;
        if (!getNextByteBuffer()) {
            this.currentByteBuffer = Internal.EMPTY_BYTE_BUFFER;
            this.currentIndex = 0;
            this.currentByteBufferPos = 0;
            this.currentAddress = 0L;
        }
    }

    private boolean getNextByteBuffer() {
        this.currentIndex++;
        if (!this.iterator.hasNext()) {
            return false;
        }
        ByteBuffer next = this.iterator.next();
        this.currentByteBuffer = next;
        this.currentByteBufferPos = next.position();
        if (this.currentByteBuffer.hasArray()) {
            this.hasArray = true;
            this.currentArray = this.currentByteBuffer.array();
            this.currentArrayOffset = this.currentByteBuffer.arrayOffset();
            return true;
        }
        this.hasArray = false;
        this.currentAddress = UnsafeUtil.addressOffset(this.currentByteBuffer);
        this.currentArray = null;
        return true;
    }

    private void updateCurrentByteBufferPos(int i) {
        int i2 = this.currentByteBufferPos + i;
        this.currentByteBufferPos = i2;
        if (i2 == this.currentByteBuffer.limit()) {
            getNextByteBuffer();
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.currentIndex == this.dataSize) {
            return -1;
        }
        if (this.hasArray) {
            byte b = this.currentArray[this.currentByteBufferPos + this.currentArrayOffset];
            updateCurrentByteBufferPos(1);
            return b & 255;
        }
        byte b2 = UnsafeUtil.getByte(this.currentByteBufferPos + this.currentAddress);
        updateCurrentByteBufferPos(1);
        return b2 & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.currentIndex == this.dataSize) {
            return -1;
        }
        int limit = this.currentByteBuffer.limit();
        int i3 = this.currentByteBufferPos;
        int i4 = limit - i3;
        int i5 = i2;
        if (i2 > i4) {
            i5 = i4;
        }
        if (this.hasArray) {
            System.arraycopy(this.currentArray, i3 + this.currentArrayOffset, bArr, i, i5);
            updateCurrentByteBufferPos(i5);
        } else {
            int position = this.currentByteBuffer.position();
            this.currentByteBuffer.position(this.currentByteBufferPos);
            this.currentByteBuffer.get(bArr, i, i5);
            this.currentByteBuffer.position(position);
            updateCurrentByteBufferPos(i5);
        }
        return i5;
    }
}
