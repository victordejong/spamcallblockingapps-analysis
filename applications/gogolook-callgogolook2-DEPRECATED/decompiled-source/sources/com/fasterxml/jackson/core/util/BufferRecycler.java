package com.fasterxml.jackson.core.util;

import androidx.media2.exoplayer.external.audio.Sonic;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/util/BufferRecycler.class */
public class BufferRecycler {
    public static final int[] BYTE_BUFFER_LENGTHS = {8000, 8000, 2000, 2000};
    public static final int[] CHAR_BUFFER_LENGTHS = {Sonic.AMDF_FREQUENCY, Sonic.AMDF_FREQUENCY, 200, 200};
    public final byte[][] _byteBuffers;
    public final char[][] _charBuffers;

    public BufferRecycler() {
        this(4, 4);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r1v3, types: [char[], char[][]] */
    public BufferRecycler(int i, int i2) {
        this._byteBuffers = new byte[i];
        this._charBuffers = new char[i2];
    }

    public final byte[] allocByteBuffer(int i) {
        return allocByteBuffer(i, 0);
    }

    public byte[] allocByteBuffer(int i, int i2) {
        int byteBufferLength = byteBufferLength(i);
        int i3 = i2;
        if (i2 < byteBufferLength) {
            i3 = byteBufferLength;
        }
        byte[][] bArr = this._byteBuffers;
        byte[] bArr2 = bArr[i];
        if (bArr2 == null || bArr2.length < i3) {
            bArr2 = balloc(i3);
        } else {
            bArr[i] = null;
        }
        return bArr2;
    }

    public final char[] allocCharBuffer(int i) {
        return allocCharBuffer(i, 0);
    }

    public char[] allocCharBuffer(int i, int i2) {
        int charBufferLength = charBufferLength(i);
        int i3 = i2;
        if (i2 < charBufferLength) {
            i3 = charBufferLength;
        }
        char[][] cArr = this._charBuffers;
        char[] cArr2 = cArr[i];
        if (cArr2 == null || cArr2.length < i3) {
            cArr2 = calloc(i3);
        } else {
            cArr[i] = null;
        }
        return cArr2;
    }

    public byte[] balloc(int i) {
        return new byte[i];
    }

    public int byteBufferLength(int i) {
        return BYTE_BUFFER_LENGTHS[i];
    }

    public char[] calloc(int i) {
        return new char[i];
    }

    public int charBufferLength(int i) {
        return CHAR_BUFFER_LENGTHS[i];
    }

    public final void releaseByteBuffer(int i, byte[] bArr) {
        this._byteBuffers[i] = bArr;
    }

    public void releaseCharBuffer(int i, char[] cArr) {
        this._charBuffers[i] = cArr;
    }
}
