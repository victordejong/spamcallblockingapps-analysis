package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.C0515C;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/FlacStreamInfo.class */
public final class FlacStreamInfo {
    public final int bitsPerSample;
    public final int channels;
    public final int maxBlockSize;
    public final int maxFrameSize;
    public final int minBlockSize;
    public final int minFrameSize;
    public final int sampleRate;
    public final long totalSamples;

    public FlacStreamInfo(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j) {
        this.minBlockSize = i;
        this.maxBlockSize = i2;
        this.minFrameSize = i3;
        this.maxFrameSize = i4;
        this.sampleRate = i5;
        this.channels = i6;
        this.bitsPerSample = i7;
        this.totalSamples = j;
    }

    public FlacStreamInfo(byte[] bArr, int i) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        parsableBitArray.setPosition(i * 8);
        this.minBlockSize = parsableBitArray.readBits(16);
        this.maxBlockSize = parsableBitArray.readBits(16);
        this.minFrameSize = parsableBitArray.readBits(24);
        this.maxFrameSize = parsableBitArray.readBits(24);
        this.sampleRate = parsableBitArray.readBits(20);
        this.channels = parsableBitArray.readBits(3) + 1;
        this.bitsPerSample = parsableBitArray.readBits(5) + 1;
        this.totalSamples = ((parsableBitArray.readBits(4) & 15) << 32) | (parsableBitArray.readBits(32) & 4294967295L);
    }

    public int bitRate() {
        return this.bitsPerSample * this.sampleRate;
    }

    public long durationUs() {
        return (this.totalSamples * C0515C.MICROS_PER_SECOND) / this.sampleRate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r1v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    public long getApproxBytesPerFrame() {
        ?? r9;
        ?? r7;
        int i = this.maxFrameSize;
        if (i > 0) {
            r7 = (i + this.minFrameSize) / 2;
            r9 = 1;
        } else {
            int i2 = this.minBlockSize;
            r7 = (((((i2 != this.maxBlockSize || i2 <= 0) ? true : (long) i2) == true ? 1L : 0L) * this.channels) * this.bitsPerSample) / 8;
            r9 = '@';
        }
        return r7 + r9;
    }

    public long getSampleIndex(long j) {
        return Util.constrainValue((j * this.sampleRate) / C0515C.MICROS_PER_SECOND, 0L, this.totalSamples - 1);
    }

    public int maxDecodedFrameSize() {
        return this.maxBlockSize * this.channels * (this.bitsPerSample / 8);
    }
}
