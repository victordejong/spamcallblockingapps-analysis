package com.google.android.gms.internal.firebase_messaging;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzl.class */
final class zzl extends FilterInputStream {
    private long zzb = -1;
    private long zza = 1048577;

    public zzl(InputStream inputStream, long j) {
        super(inputStream);
        zzg.zza(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        return (int) Math.min(this.in.available(), this.zza);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        synchronized (this) {
            this.in.mark(i);
            this.zzb = this.zza;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        if (this.zza == 0) {
            return -1;
        }
        int read = this.in.read();
        if (read != -1) {
            this.zza--;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        long j = this.zza;
        if (j == 0) {
            return -1;
        }
        int read = this.in.read(bArr, i, (int) Math.min(i2, j));
        if (read != -1) {
            this.zza -= read;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() {
        synchronized (this) {
            if (!this.in.markSupported()) {
                throw new IOException("Mark not supported");
            }
            if (this.zzb == -1) {
                throw new IOException("Mark not set");
            }
            this.in.reset();
            this.zza = this.zzb;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        long skip = this.in.skip(Math.min(j, this.zza));
        this.zza -= skip;
        return skip;
    }
}
