package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uz3.class */
final class uz3 extends FilterInputStream {

    /* renamed from: d */
    private final long f31031d;

    /* renamed from: e */
    private long f31032e;

    public uz3(InputStream inputStream, long j) {
        super(inputStream);
        this.f31031d = j;
    }

    /* renamed from: a */
    public final long m10149a() {
        return this.f31031d - this.f31032e;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = super.read();
        if (read != -1) {
            this.f31032e++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.f31032e += read;
        }
        return read;
    }
}
