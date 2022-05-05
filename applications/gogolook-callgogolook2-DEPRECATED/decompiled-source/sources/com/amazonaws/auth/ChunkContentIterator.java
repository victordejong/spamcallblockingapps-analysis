package com.amazonaws.auth;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/ChunkContentIterator.class */
public class ChunkContentIterator {
    public int pos;
    public final byte[] signedChunk;

    public ChunkContentIterator(byte[] bArr) {
        this.signedChunk = bArr;
    }

    public boolean hasNext() {
        return this.pos < this.signedChunk.length;
    }

    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (!hasNext()) {
            return -1;
        }
        int min = Math.min(this.signedChunk.length - this.pos, i2);
        System.arraycopy(this.signedChunk, this.pos, bArr, i, min);
        this.pos += min;
        return min;
    }
}
