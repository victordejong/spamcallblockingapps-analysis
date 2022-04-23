package com.google.android.play.core.assetpacks;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/x.class */
final class x extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f31317a;

    /* renamed from: b  reason: collision with root package name */
    private long f31318b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(InputStream inputStream, long j) {
        this.f31317a = inputStream;
        this.f31318b = j;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        this.f31317a.close();
        this.f31318b = 0L;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        long j = this.f31318b;
        if (j <= 0) {
            return -1;
        }
        this.f31318b = j - 1;
        return this.f31317a.read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.f31318b;
        if (j <= 0) {
            return -1;
        }
        int read = this.f31317a.read(bArr, i, (int) Math.min(i2, j));
        if (read != -1) {
            this.f31318b -= read;
        }
        return read;
    }
}
