package com.amazonaws.services.p101s3.internal;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.amazonaws.services.s3.internal.InputSubstream */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/InputSubstream.class */
public final class InputSubstream extends SdkFilterInputStream {

    /* renamed from: b */
    private final long f12329b;

    /* renamed from: c */
    private final long f12330c;

    /* renamed from: d */
    private final boolean f12331d;

    /* renamed from: e */
    private long f12332e = 0;

    /* renamed from: a */
    private long f12328a = 0;

    public InputSubstream(InputStream inputStream, long j, long j2, boolean z) {
        super(inputStream);
        this.f12330c = j2;
        this.f12329b = j;
        this.f12331d = z;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        long j = this.f12328a;
        long j2 = this.f12329b;
        return (int) Math.min((long) (j < j2 ? this.f12330c : (this.f12330c + j2) - j), super.available());
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f12331d) {
            super.close();
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        synchronized (this) {
            this.f12332e = this.f12328a;
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
            j = this.f12328a;
            j2 = this.f12329b;
            if (j >= j2) {
                break;
            }
            this.f12328a += super.skip(j2 - j);
        }
        long j3 = (this.f12330c + j2) - j;
        if (j3 <= 0) {
            return -1;
        }
        int read = super.read(bArr, i, (int) Math.min(i2, j3));
        this.f12328a += read;
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public final void reset() throws IOException {
        synchronized (this) {
            this.f12328a = this.f12332e;
            super.reset();
        }
    }
}
