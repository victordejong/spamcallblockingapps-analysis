package com.google.android.gms.internal.firebase_remote_config;

import java.io.ByteArrayOutputStream;
import java.text.NumberFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzcb.class */
public final class zzcb extends ByteArrayOutputStream {
    private boolean closed;
    private final Logger logger;
    private int zzgb;
    private final int zzgc;
    private final Level zzgd;

    public zzcb(Logger logger, Level level, int i) {
        this.logger = (Logger) zzdt.checkNotNull(logger);
        this.zzgd = (Level) zzdt.checkNotNull(level);
        if (i >= 0) {
            this.zzgc = i;
            return;
        }
        throw new IllegalArgumentException();
    }

    private static void zza(StringBuilder sb, int i) {
        if (i == 1) {
            sb.append("1 byte");
            return;
        }
        sb.append(NumberFormat.getInstance().format(i));
        sb.append(" bytes");
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            if (!this.closed) {
                if (this.zzgb != 0) {
                    StringBuilder sb = new StringBuilder("Total: ");
                    zza(sb, this.zzgb);
                    if (this.count != 0 && this.count < this.zzgb) {
                        sb.append(" (logging first ");
                        zza(sb, this.count);
                        sb.append(")");
                    }
                    this.logger.logp(Level.CONFIG, "com.google.api.client.util.LoggingByteArrayOutputStream", "close", sb.toString());
                    if (this.count != 0) {
                        this.logger.logp(this.zzgd, "com.google.api.client.util.LoggingByteArrayOutputStream", "close", toString("UTF-8").replaceAll("[\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]", " "));
                    }
                }
                this.closed = true;
            }
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            if (!(!this.closed)) {
                throw new IllegalArgumentException();
            }
            this.zzgb++;
            if (this.count < this.zzgc) {
                super.write(i);
            }
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            if (!(!this.closed)) {
                throw new IllegalArgumentException();
            }
            this.zzgb += i2;
            if (this.count < this.zzgc) {
                int i3 = this.count + i2;
                int i4 = i2;
                if (i3 > this.zzgc) {
                    i4 = i2 + (this.zzgc - i3);
                }
                super.write(bArr, i, i4);
            }
        }
    }
}
