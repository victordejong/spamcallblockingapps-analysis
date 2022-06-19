package org.bouncycastle.util.test;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.SecureRandom;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/test/FixedSecureRandom.class */
public class FixedSecureRandom extends SecureRandom {
    private byte[] _data;
    private int _index;
    private int _intPad;

    /* JADX WARN: Type inference failed for: r2v1, types: [byte[], byte[][]] */
    public FixedSecureRandom(boolean z, byte[] bArr) {
        this(z, (byte[][]) new byte[]{bArr});
    }

    public FixedSecureRandom(boolean z, byte[][] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i = 0; i != bArr.length; i++) {
            try {
                byteArrayOutputStream.write(bArr[i]);
            } catch (IOException e) {
                throw new IllegalArgumentException("can't save value array.");
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        this._data = byteArray;
        if (z) {
            this._intPad = byteArray.length % 4;
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [byte[], byte[][]] */
    public FixedSecureRandom(byte[] bArr) {
        this(false, (byte[][]) new byte[]{bArr});
    }

    public FixedSecureRandom(byte[][] bArr) {
        this(false, bArr);
    }

    private int nextValue() {
        byte[] bArr = this._data;
        int i = this._index;
        this._index = i + 1;
        return bArr[i] & 255;
    }

    public boolean isExhausted() {
        return this._index == this._data.length;
    }

    @Override // java.security.SecureRandom, java.util.Random
    public void nextBytes(byte[] bArr) {
        System.arraycopy(this._data, this._index, bArr, 0, bArr.length);
        this._index += bArr.length;
    }

    @Override // java.util.Random
    public int nextInt() {
        int nextValue = (nextValue() << 24) | 0 | (nextValue() << 16);
        int i = this._intPad;
        if (i == 2) {
            this._intPad = i - 1;
        } else {
            nextValue |= nextValue() << 8;
        }
        int i2 = this._intPad;
        if (i2 == 1) {
            this._intPad = i2 - 1;
        } else {
            nextValue |= nextValue();
        }
        return nextValue;
    }

    @Override // java.util.Random
    public long nextLong() {
        return (nextValue() << 56) | 0 | (nextValue() << 48) | (nextValue() << 40) | (nextValue() << 32) | (nextValue() << 24) | (nextValue() << 16) | (nextValue() << 8) | nextValue();
    }
}
