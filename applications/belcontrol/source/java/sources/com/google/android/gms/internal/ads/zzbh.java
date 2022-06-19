package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbh.class */
public final class zzbh extends ByteArrayOutputStream {
    private final zzat zzcg;

    public zzbh(zzat zzatVar, int i) {
        this.zzcg = zzatVar;
        ((ByteArrayOutputStream) this).buf = zzatVar.zzf(Math.max(i, 256));
    }

    private final void zzg(int i) {
        int i2 = ((ByteArrayOutputStream) this).count;
        if (i2 + i <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        byte[] zzf = this.zzcg.zzf((i2 + i) << 1);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, zzf, 0, ((ByteArrayOutputStream) this).count);
        this.zzcg.zza(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = zzf;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.zzcg.zza(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public final void finalize() {
        this.zzcg.zza(((ByteArrayOutputStream) this).buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            zzg(1);
            super.write(i);
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            zzg(i2);
            super.write(bArr, i, i2);
        }
    }
}
