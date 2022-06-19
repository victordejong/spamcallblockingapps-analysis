package com.amazonaws.services.p101s3.internal.crypto;

import com.amazonaws.internal.SdkInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.amazonaws.services.s3.internal.crypto.AdjustedRangeInputStream */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream.class */
public class AdjustedRangeInputStream extends SdkInputStream {

    /* renamed from: a */
    private InputStream f12378a;

    /* renamed from: b */
    private long f12379b;

    /* renamed from: c */
    private boolean f12380c = false;

    public AdjustedRangeInputStream(InputStream inputStream, long j, long j2) throws IOException {
        this.f12378a = inputStream;
        int i = j < 16 ? (int) j : ((int) (j % 16)) + 16;
        if (i != 0) {
            while (i > 0) {
                this.f12378a.read();
                i--;
            }
        }
        this.f12379b = (j2 - j) + 1;
    }

    @Override // com.amazonaws.internal.SdkInputStream
    /* renamed from: a */
    public final InputStream mo38389a() {
        return this.f12378a;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        m38604b();
        int available = this.f12378a.available();
        long j = available;
        long j2 = this.f12379b;
        return j < j2 ? available : (int) j2;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f12380c) {
            this.f12380c = true;
            this.f12378a.close();
        }
        m38604b();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        m38604b();
        int read = this.f12379b <= 0 ? -1 : this.f12378a.read();
        if (read != -1) {
            this.f12379b--;
        } else {
            close();
            this.f12379b = 0L;
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        m38604b();
        long j = this.f12379b;
        if (j <= 0) {
            i3 = -1;
        } else {
            int i4 = i2;
            if (i2 > j) {
                i4 = j < 2147483647L ? (int) j : Integer.MAX_VALUE;
            }
            i3 = this.f12378a.read(bArr, i, i4);
        }
        if (i3 != -1) {
            this.f12379b -= i3;
        } else {
            close();
            this.f12379b = 0L;
        }
        return i3;
    }
}
