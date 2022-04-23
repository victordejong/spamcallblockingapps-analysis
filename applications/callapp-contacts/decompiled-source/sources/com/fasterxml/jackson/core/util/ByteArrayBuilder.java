package com.fasterxml.jackson.core.util;

import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/util/ByteArrayBuilder.class */
public final class ByteArrayBuilder extends OutputStream {
    public static final byte[] NO_BYTES = new byte[0];
    private final BufferRecycler _bufferRecycler;
    private byte[] _currBlock;
    private int _currBlockPtr;
    private final LinkedList<byte[]> _pastBlocks;
    private int _pastLen;

    public ByteArrayBuilder() {
        this((BufferRecycler) null);
    }

    public ByteArrayBuilder(int i) {
        this(null, i);
    }

    public ByteArrayBuilder(BufferRecycler bufferRecycler) {
        this(bufferRecycler, 500);
    }

    public ByteArrayBuilder(BufferRecycler bufferRecycler, int i) {
        this._pastBlocks = new LinkedList<>();
        this._bufferRecycler = bufferRecycler;
        this._currBlock = bufferRecycler == null ? new byte[i > 131072 ? 131072 : i] : bufferRecycler.allocByteBuffer(2);
    }

    private ByteArrayBuilder(BufferRecycler bufferRecycler, byte[] bArr, int i) {
        this._pastBlocks = new LinkedList<>();
        this._bufferRecycler = null;
        this._currBlock = bArr;
        this._currBlockPtr = i;
    }

    private void _allocMore() {
        int length = this._pastLen + this._currBlock.length;
        if (length >= 0) {
            this._pastLen = length;
            int max = Math.max(length >> 1, 1000);
            int i = max;
            if (max > 131072) {
                i = 131072;
            }
            this._pastBlocks.add(this._currBlock);
            this._currBlock = new byte[i];
            this._currBlockPtr = 0;
            return;
        }
        throw new IllegalStateException("Maximum Java array size (2GB) exceeded by `ByteArrayBuilder`");
    }

    public static ByteArrayBuilder fromInitial(byte[] bArr, int i) {
        return new ByteArrayBuilder(null, bArr, i);
    }

    public final void append(int i) {
        if (this._currBlockPtr >= this._currBlock.length) {
            _allocMore();
        }
        byte[] bArr = this._currBlock;
        int i2 = this._currBlockPtr;
        this._currBlockPtr = i2 + 1;
        bArr[i2] = (byte) i;
    }

    public final void appendThreeBytes(int i) {
        int i2 = this._currBlockPtr;
        byte[] bArr = this._currBlock;
        if (i2 + 2 < bArr.length) {
            int i3 = i2 + 1;
            this._currBlockPtr = i3;
            bArr[i2] = (byte) (i >> 16);
            int i4 = i3 + 1;
            this._currBlockPtr = i4;
            bArr[i3] = (byte) (i >> 8);
            this._currBlockPtr = i4 + 1;
            bArr[i4] = (byte) i;
            return;
        }
        append(i >> 16);
        append(i >> 8);
        append(i);
    }

    public final void appendTwoBytes(int i) {
        int i2 = this._currBlockPtr;
        byte[] bArr = this._currBlock;
        if (i2 + 1 < bArr.length) {
            int i3 = i2 + 1;
            this._currBlockPtr = i3;
            bArr[i2] = (byte) (i >> 8);
            this._currBlockPtr = i3 + 1;
            bArr[i3] = (byte) i;
            return;
        }
        append(i >> 8);
        append(i);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    public final byte[] completeAndCoalesce(int i) {
        this._currBlockPtr = i;
        return toByteArray();
    }

    public final byte[] finishCurrentSegment() {
        _allocMore();
        return this._currBlock;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
    }

    public final byte[] getCurrentSegment() {
        return this._currBlock;
    }

    public final int getCurrentSegmentLength() {
        return this._currBlockPtr;
    }

    public final void release() {
        byte[] bArr;
        reset();
        BufferRecycler bufferRecycler = this._bufferRecycler;
        if (bufferRecycler != null && (bArr = this._currBlock) != null) {
            bufferRecycler.releaseByteBuffer(2, bArr);
            this._currBlock = null;
        }
    }

    public final void reset() {
        this._pastLen = 0;
        this._currBlockPtr = 0;
        if (!this._pastBlocks.isEmpty()) {
            this._pastBlocks.clear();
        }
    }

    public final void setCurrentSegmentLength(int i) {
        this._currBlockPtr = i;
    }

    public final byte[] toByteArray() {
        int i = this._pastLen + this._currBlockPtr;
        if (i == 0) {
            return NO_BYTES;
        }
        byte[] bArr = new byte[i];
        Iterator<byte[]> it2 = this._pastBlocks.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            byte[] next = it2.next();
            int length = next.length;
            System.arraycopy(next, 0, bArr, i2, length);
            i2 += length;
        }
        System.arraycopy(this._currBlock, 0, bArr, i2, this._currBlockPtr);
        int i3 = i2 + this._currBlockPtr;
        if (i3 == i) {
            if (!this._pastBlocks.isEmpty()) {
                reset();
            }
            return bArr;
        }
        throw new RuntimeException("Internal error: total len assumed to be " + i + ", copied " + i3 + " bytes");
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        append(i);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int i3 = i;
        while (true) {
            int min = Math.min(this._currBlock.length - this._currBlockPtr, i2);
            i3 = i3;
            int i4 = i2;
            if (min > 0) {
                System.arraycopy(bArr, i3, this._currBlock, this._currBlockPtr, min);
                i3 += min;
                this._currBlockPtr += min;
                i4 = i2 - min;
            }
            if (i4 > 0) {
                _allocMore();
                i2 = i4;
            } else {
                return;
            }
        }
    }
}
