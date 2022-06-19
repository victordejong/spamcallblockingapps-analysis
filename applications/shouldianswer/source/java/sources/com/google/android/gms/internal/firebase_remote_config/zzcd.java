package com.google.android.gms.internal.firebase_remote_config;

import java.io.FilterOutputStream;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzcd.class */
public final class zzcd extends FilterOutputStream {
    private final zzcb zzge;

    public zzcd(OutputStream outputStream, Logger logger, Level level, int i) {
        super(outputStream);
        this.zzge = new zzcb(logger, level, i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.zzge.close();
        super.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) {
        this.out.write(i);
        this.zzge.write(i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        this.out.write(bArr, i, i2);
        this.zzge.write(bArr, i, i2);
    }

    public final zzcb zzcc() {
        return this.zzge;
    }
}
