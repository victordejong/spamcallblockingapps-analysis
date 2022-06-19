package com.google.android.play.core.assetpacks;

import java.io.InputStream;
/* renamed from: com.google.android.play.core.assetpacks.w */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/w.class */
final class C8449w extends InputStream {

    /* renamed from: d */
    private final InputStream f37965d;

    /* renamed from: e */
    private long f37966e;

    public C8449w(InputStream inputStream, long j) {
        this.f37965d = inputStream;
        this.f37966e = j;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        super.close();
        this.f37965d.close();
        this.f37966e = 0L;
    }

    @Override // java.io.InputStream
    public final int read() {
        long j = this.f37966e;
        if (j <= 0) {
            return -1;
        }
        this.f37966e = j - 1;
        return this.f37965d.read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        long j = this.f37966e;
        if (j <= 0) {
            return -1;
        }
        int read = this.f37965d.read(bArr, i, (int) Math.min(i2, j));
        if (read != -1) {
            this.f37966e -= read;
        }
        return read;
    }
}
