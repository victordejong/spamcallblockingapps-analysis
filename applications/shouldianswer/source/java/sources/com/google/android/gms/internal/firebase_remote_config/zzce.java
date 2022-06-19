package com.google.android.gms.internal.firebase_remote_config;

import java.io.FilterInputStream;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzce.class */
public final class zzce extends FilterInputStream {
    private final zzcb zzge;

    public zzce(InputStream inputStream, Logger logger, Level level, int i) {
        super(inputStream);
        this.zzge = new zzcb(logger, level, i);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.zzge.close();
        super.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = super.read();
        this.zzge.write(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = super.read(bArr, i, i2);
        if (read > 0) {
            this.zzge.write(bArr, i, read);
        }
        return read;
    }
}
