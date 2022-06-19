package com.google.android.gms.internal.firebase_remote_config;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzat.class */
final class zzat extends FilterInputStream {
    private long zzcy = 0;
    private final /* synthetic */ zzaq zzcz;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzat(zzaq zzaqVar, InputStream inputStream) {
        super(inputStream);
        this.zzcz = zzaqVar;
    }

    private final void zzap() {
        long contentLength = this.zzcz.getContentLength();
        if (contentLength == -1) {
            return;
        }
        long j = this.zzcy;
        if (j == 0 || j >= contentLength) {
            return;
        }
        StringBuilder sb = new StringBuilder(102);
        sb.append("Connection closed prematurely: bytesRead = ");
        sb.append(j);
        sb.append(", Content-Length = ");
        sb.append(contentLength);
        throw new IOException(sb.toString());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = this.in.read();
        if (read == -1) {
            zzap();
        } else {
            this.zzcy++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = this.in.read(bArr, i, i2);
        if (read == -1) {
            zzap();
        } else {
            this.zzcy += read;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        long skip = this.in.skip(j);
        this.zzcy += skip;
        return skip;
    }
}
