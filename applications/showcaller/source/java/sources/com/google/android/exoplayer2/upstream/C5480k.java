package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.util.C5508e;
import java.io.InputStream;
/* renamed from: com.google.android.exoplayer2.upstream.k */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/k.class */
public final class C5480k extends InputStream {

    /* renamed from: d */
    private final AbstractC5478j f17740d;

    /* renamed from: e */
    private final C5481l f17741e;

    /* renamed from: i */
    private long f17745i;

    /* renamed from: g */
    private boolean f17743g = false;

    /* renamed from: h */
    private boolean f17744h = false;

    /* renamed from: f */
    private final byte[] f17742f = new byte[1];

    public C5480k(AbstractC5478j abstractC5478j, C5481l c5481l) {
        this.f17740d = abstractC5478j;
        this.f17741e = c5481l;
    }

    /* renamed from: a */
    private void m19021a() {
        if (!this.f17743g) {
            this.f17740d.mo18949b(this.f17741e);
            this.f17743g = true;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.f17744h) {
            this.f17740d.close();
            this.f17744h = true;
        }
    }

    /* renamed from: e */
    public void m19020e() {
        m19021a();
    }

    @Override // java.io.InputStream
    public int read() {
        int i = -1;
        if (read(this.f17742f) != -1) {
            i = this.f17742f[0] & 255;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        C5508e.m18910f(!this.f17744h);
        m19021a();
        int read = this.f17740d.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        this.f17745i += read;
        return read;
    }
}
