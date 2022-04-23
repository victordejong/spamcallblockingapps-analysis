package com.amazonaws.services.s3.internal.crypto;

import com.amazonaws.internal.SdkInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream.class */
public class AdjustedRangeInputStream extends SdkInputStream {

    /* renamed from: a  reason: collision with root package name */
    private InputStream f6835a;

    /* renamed from: b  reason: collision with root package name */
    private long f6836b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6837c = false;

    public AdjustedRangeInputStream(InputStream inputStream, long j, long j2) throws IOException {
        this.f6835a = inputStream;
        int i = j < 16 ? (int) j : ((int) (j % 16)) + 16;
        if (i != 0) {
            while (i > 0) {
                this.f6835a.read();
                i--;
            }
        }
        this.f6836b = (j2 - j) + 1;
    }

    @Override // com.amazonaws.internal.SdkInputStream
    public final InputStream a() {
        return this.f6835a;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        b();
        int available = this.f6835a.available();
        long j = available;
        long j2 = this.f6836b;
        return j < j2 ? available : (int) j2;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f6837c) {
            this.f6837c = true;
            this.f6835a.close();
        }
        b();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        b();
        int read = this.f6836b <= 0 ? -1 : this.f6835a.read();
        if (read != -1) {
            this.f6836b--;
        } else {
            close();
            this.f6836b = 0L;
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        b();
        long j = this.f6836b;
        if (j <= 0) {
            i3 = -1;
        } else {
            int i4 = i2;
            if (i2 > j) {
                i4 = j < 2147483647L ? (int) j : Integer.MAX_VALUE;
            }
            i3 = this.f6835a.read(bArr, i, i4);
        }
        if (i3 != -1) {
            this.f6836b -= i3;
        } else {
            close();
            this.f6836b = 0L;
        }
        return i3;
    }
}
