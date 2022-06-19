package com.google.firebase.perf.network;

import com.google.android.gms.internal.firebase-perf.zzam;
import com.google.android.gms.internal.firebase-perf.zzaz;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/network/zzb.class */
public final class zzb extends InputStream {
    private final zzaz zzfv;
    private final zzam zzgb;
    private final InputStream zzgc;
    private long zzge;
    private long zzgd = -1;
    private long zzgf = -1;

    public zzb(InputStream inputStream, zzam zzamVar, zzaz zzazVar) {
        this.zzfv = zzazVar;
        this.zzgc = inputStream;
        this.zzgb = zzamVar;
        this.zzge = this.zzgb.zzx();
    }

    @Override // java.io.InputStream
    public final int available() {
        try {
            return this.zzgc.available();
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        long zzby = this.zzfv.zzby();
        if (this.zzgf == -1) {
            this.zzgf = zzby;
        }
        try {
            this.zzgc.close();
            if (this.zzgd != -1) {
                this.zzgb.zzi(this.zzgd);
            }
            if (this.zzge != -1) {
                this.zzgb.zzg(this.zzge);
            }
            this.zzgb.zzh(this.zzgf);
            this.zzgb.zzz();
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.zzgc.mark(i);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.zzgc.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() {
        try {
            int read = this.zzgc.read();
            long zzby = this.zzfv.zzby();
            if (this.zzge == -1) {
                this.zzge = zzby;
            }
            if (read == -1 && this.zzgf == -1) {
                this.zzgf = zzby;
                this.zzgb.zzh(this.zzgf);
                this.zzgb.zzz();
            } else {
                this.zzgd++;
                this.zzgb.zzi(this.zzgd);
            }
            return read;
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        try {
            int read = this.zzgc.read(bArr);
            long zzby = this.zzfv.zzby();
            if (this.zzge == -1) {
                this.zzge = zzby;
            }
            if (read == -1 && this.zzgf == -1) {
                this.zzgf = zzby;
                this.zzgb.zzh(this.zzgf);
                this.zzgb.zzz();
            } else {
                this.zzgd += read;
                this.zzgb.zzi(this.zzgd);
            }
            return read;
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        try {
            int read = this.zzgc.read(bArr, i, i2);
            long zzby = this.zzfv.zzby();
            if (this.zzge == -1) {
                this.zzge = zzby;
            }
            if (read == -1 && this.zzgf == -1) {
                this.zzgf = zzby;
                this.zzgb.zzh(this.zzgf);
                this.zzgb.zzz();
            } else {
                this.zzgd += read;
                this.zzgb.zzi(this.zzgd);
            }
            return read;
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final void reset() {
        try {
            this.zzgc.reset();
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        try {
            long skip = this.zzgc.skip(j);
            long zzby = this.zzfv.zzby();
            if (this.zzge == -1) {
                this.zzge = zzby;
            }
            if (skip == -1 && this.zzgf == -1) {
                this.zzgf = zzby;
                this.zzgb.zzh(this.zzgf);
            } else {
                this.zzgd += skip;
                this.zzgb.zzi(this.zzgd);
            }
            return skip;
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }
}
