package com.amazonaws.services.s3.internal.crypto;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream.class */
public class ByteRangeCapturingInputStream extends SdkFilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    final byte[] f6838a;

    /* renamed from: b  reason: collision with root package name */
    private final long f6839b;

    /* renamed from: c  reason: collision with root package name */
    private final long f6840c;

    /* renamed from: d  reason: collision with root package name */
    private long f6841d;
    private int e = 0;
    private long f;
    private int g;

    public ByteRangeCapturingInputStream(InputStream inputStream, long j, long j2) {
        super(inputStream);
        if (j < j2) {
            this.f6839b = j;
            this.f6840c = j2;
            this.f6838a = new byte[(int) (j2 - j)];
            return;
        }
        throw new IllegalArgumentException("Invalid byte range specified: the starting position must be less than the ending position");
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            super.mark(i);
            if (markSupported()) {
                this.f = this.f6841d;
                this.g = this.e;
            }
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read == -1) {
            return -1;
        }
        long j = this.f6841d;
        if (j >= this.f6839b && j <= this.f6840c) {
            byte[] bArr = this.f6838a;
            int i = this.e;
            this.e = i + 1;
            bArr[i] = (byte) read;
        }
        this.f6841d = j + 1;
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        long j = this.f6841d;
        long j2 = read;
        if (j + j2 >= this.f6839b && j <= this.f6840c) {
            for (int i3 = 0; i3 < read; i3++) {
                long j3 = this.f6841d;
                long j4 = i3;
                if (j3 + j4 >= this.f6839b && j3 + j4 < this.f6840c) {
                    byte[] bArr2 = this.f6838a;
                    int i4 = this.e;
                    this.e = i4 + 1;
                    bArr2[i4] = bArr[i + i3];
                }
            }
        }
        this.f6841d += j2;
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            super.reset();
            if (markSupported()) {
                this.f6841d = this.f;
                this.e = this.g;
            }
        }
    }
}
