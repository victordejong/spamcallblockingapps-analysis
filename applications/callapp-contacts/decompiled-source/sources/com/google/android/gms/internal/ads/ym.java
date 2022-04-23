package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ym.class */
final class ym extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final long f28547a;

    /* renamed from: b  reason: collision with root package name */
    private long f28548b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ym(InputStream inputStream, long j) {
        super(inputStream);
        this.f28547a = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long a() {
        return this.f28547a - this.f28548b;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int read = super.read();
        if (read != -1) {
            this.f28548b++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.f28548b += read;
        }
        return read;
    }
}
