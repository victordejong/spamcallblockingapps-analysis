package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.InputStream;
/* renamed from: com.google.android.gms.internal.ads.os */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/os.class */
final class C3392os extends FilterInputStream {

    /* renamed from: a */
    private final long f17056a;

    /* renamed from: b */
    private long f17057b;

    public C3392os(InputStream inputStream, long j) {
        super(inputStream);
        this.f17056a = j;
    }

    /* renamed from: a */
    public final long m7355a() {
        return this.f17056a - this.f17057b;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = super.read();
        if (read != -1) {
            this.f17057b++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.f17057b += read;
        }
        return read;
    }
}
