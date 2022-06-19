package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.InputStream;
/* renamed from: com.google.android.gms.internal.ads.ij */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ij.class */
final class C1784ij extends FilterInputStream {

    /* renamed from: b */
    private final long f6802b;

    /* renamed from: c */
    private long f6803c;

    C1784ij(InputStream inputStream, long j) {
        super(inputStream);
        this.f6802b = j;
    }

    /* renamed from: a */
    final long m7187a() {
        return this.f6802b - this.f6803c;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = super.read();
        if (read != -1) {
            this.f6803c++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.f6803c += read;
        }
        return read;
    }
}
