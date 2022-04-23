package com.amazonaws.services.s3.internal;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/InputSubstream.class */
public final class InputSubstream extends SdkFilterInputStream {

    /* renamed from: b  reason: collision with root package name */
    private final long f6796b;

    /* renamed from: c  reason: collision with root package name */
    private final long f6797c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f6798d;
    private long e = 0;

    /* renamed from: a  reason: collision with root package name */
    private long f6795a = 0;

    public InputSubstream(InputStream inputStream, long j, long j2, boolean z) {
        super(inputStream);
        this.f6797c = j2;
        this.f6796b = j;
        this.f6798d = z;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        long j = this.f6795a;
        long j2 = this.f6796b;
        return (int) Math.min(j < j2 ? this.f6797c : (this.f6797c + j2) - j, super.available());
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f6798d) {
            super.close();
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        synchronized (this) {
            this.e = this.f6795a;
            super.mark(i);
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        byte[] bArr = new byte[1];
        int read = read(bArr, 0, 1);
        return read == -1 ? read : bArr[0];
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        long j;
        long j2;
        while (true) {
            j = this.f6795a;
            j2 = this.f6796b;
            if (j >= j2) {
                break;
            }
            this.f6795a += super.skip(j2 - j);
        }
        long j3 = (this.f6797c + j2) - j;
        if (j3 <= 0) {
            return -1;
        }
        int read = super.read(bArr, i, (int) Math.min(i2, j3));
        this.f6795a += read;
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public final void reset() throws IOException {
        synchronized (this) {
            this.f6795a = this.e;
            super.reset();
        }
    }
}
