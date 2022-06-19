package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.google.android.gms.internal.ads.ym */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ym.class */
final class C13073ym extends FilterInputStream {

    /* renamed from: a */
    private final long f50083a;

    /* renamed from: b */
    private long f50084b;

    public C13073ym(InputStream inputStream, long j) {
        super(inputStream);
        this.f50083a = j;
    }

    /* renamed from: a */
    public final long m13958a() {
        return this.f50083a - this.f50084b;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int read = super.read();
        if (read != -1) {
            this.f50084b++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.f50084b += read;
        }
        return read;
    }
}
