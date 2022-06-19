package com.google.android.play.core.assetpacks;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.google.android.play.core.assetpacks.x */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/x.class */
final class C14997x extends InputStream {

    /* renamed from: a */
    private final InputStream f54718a;

    /* renamed from: b */
    private long f54719b;

    public C14997x(InputStream inputStream, long j) {
        this.f54718a = inputStream;
        this.f54719b = j;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        this.f54718a.close();
        this.f54719b = 0L;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        long j = this.f54719b;
        if (j <= 0) {
            return -1;
        }
        this.f54719b = j - 1;
        return this.f54718a.read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.f54719b;
        if (j <= 0) {
            return -1;
        }
        int read = this.f54718a.read(bArr, i, (int) Math.min(i2, j));
        if (read != -1) {
            this.f54719b -= read;
        }
        return read;
    }
}
