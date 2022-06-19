package com.mopub.volley.toolbox;

import android.support.annotation.VisibleForTesting;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
@VisibleForTesting
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/DiskBasedCache$b.class */
public class DiskBasedCache$b extends FilterInputStream {

    /* renamed from: a */
    public final long f9322a;

    /* renamed from: b */
    public long f9323b;

    public DiskBasedCache$b(InputStream inputStream, long j) {
        super(inputStream);
        this.f9322a = j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read != -1) {
            this.f9323b++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.f9323b += read;
        }
        return read;
    }
}
