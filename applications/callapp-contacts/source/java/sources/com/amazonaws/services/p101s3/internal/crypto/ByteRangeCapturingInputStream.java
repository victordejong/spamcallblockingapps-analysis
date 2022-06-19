package com.amazonaws.services.p101s3.internal.crypto;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.amazonaws.services.s3.internal.crypto.ByteRangeCapturingInputStream */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream.class */
public class ByteRangeCapturingInputStream extends SdkFilterInputStream {

    /* renamed from: a */
    final byte[] f12381a;

    /* renamed from: b */
    private final long f12382b;

    /* renamed from: c */
    private final long f12383c;

    /* renamed from: d */
    private long f12384d;

    /* renamed from: e */
    private int f12385e = 0;

    /* renamed from: f */
    private long f12386f;

    /* renamed from: g */
    private int f12387g;

    public ByteRangeCapturingInputStream(InputStream inputStream, long j, long j2) {
        super(inputStream);
        if (j < j2) {
            this.f12382b = j;
            this.f12383c = j2;
            this.f12381a = new byte[(int) (j2 - j)];
            return;
        }
        throw new IllegalArgumentException("Invalid byte range specified: the starting position must be less than the ending position");
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            super.mark(i);
            if (markSupported()) {
                this.f12386f = this.f12384d;
                this.f12387g = this.f12385e;
            }
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read == -1) {
            return -1;
        }
        long j = this.f12384d;
        if (j >= this.f12382b && j <= this.f12383c) {
            byte[] bArr = this.f12381a;
            int i = this.f12385e;
            this.f12385e = i + 1;
            bArr[i] = (byte) read;
        }
        this.f12384d = j + 1;
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        long j = this.f12384d;
        long j2 = read;
        if (j + j2 >= this.f12382b && j <= this.f12383c) {
            for (int i3 = 0; i3 < read; i3++) {
                long j3 = this.f12384d;
                long j4 = i3;
                if (j3 + j4 >= this.f12382b && j3 + j4 < this.f12383c) {
                    byte[] bArr2 = this.f12381a;
                    int i4 = this.f12385e;
                    this.f12385e = i4 + 1;
                    bArr2[i4] = bArr[i + i3];
                }
            }
        }
        this.f12384d += j2;
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            super.reset();
            if (markSupported()) {
                this.f12384d = this.f12386f;
                this.f12385e = this.f12387g;
            }
        }
    }
}
