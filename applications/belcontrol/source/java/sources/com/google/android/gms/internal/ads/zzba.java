package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzba.class */
public final class zzba extends FilterInputStream {
    private final long zzco;
    private long zzcp;

    public zzba(InputStream inputStream, long j) {
        super(inputStream);
        this.zzco = j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = super.read();
        if (read != -1) {
            this.zzcp++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.zzcp += read;
        }
        return read;
    }

    public final long zzp() {
        return this.zzco - this.zzcp;
    }
}
