package com.amazonaws.services.p017s3.internal;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.amazonaws.services.s3.internal.InputSubstream */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/InputSubstream.class */
public final class InputSubstream extends SdkFilterInputStream {
    public final boolean closeSourceStream;
    public final long requestedLength;
    public final long requestedOffset;
    public long markedPosition = 0;
    public long currentPosition = 0;

    public InputSubstream(InputStream inputStream, long j, long j2, boolean z) {
        super(inputStream);
        this.requestedLength = j2;
        this.requestedOffset = j;
        this.closeSourceStream = z;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        long j = this.currentPosition;
        long j2 = this.requestedOffset;
        return (int) Math.min(j < j2 ? this.requestedLength : (this.requestedLength + j2) - j, super.available());
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closeSourceStream) {
            super.close();
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            this.markedPosition = this.currentPosition;
            super.mark(i);
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = new byte[1];
        int read = read(bArr, 0, 1);
        return read == -1 ? read : bArr[0];
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        long j;
        long j2;
        while (true) {
            j = this.currentPosition;
            j2 = this.requestedOffset;
            if (j >= j2) {
                break;
            }
            this.currentPosition += super.skip(j2 - j);
        }
        long j3 = (this.requestedLength + j2) - j;
        if (j3 <= 0) {
            return -1;
        }
        int read = super.read(bArr, i, (int) Math.min(i2, j3));
        this.currentPosition += read;
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            this.currentPosition = this.markedPosition;
            super.reset();
        }
    }
}
