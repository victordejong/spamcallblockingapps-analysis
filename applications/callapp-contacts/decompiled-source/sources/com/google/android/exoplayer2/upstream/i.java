package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.util.a;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/i.class */
public final class i extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final h f22200a;

    /* renamed from: b  reason: collision with root package name */
    private final j f22201b;
    private long f;

    /* renamed from: d  reason: collision with root package name */
    private boolean f22203d = false;
    private boolean e = false;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f22202c = new byte[1];

    public i(h hVar, j jVar) {
        this.f22200a = hVar;
        this.f22201b = jVar;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (!this.e) {
            this.f22200a.c();
            this.e = true;
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        if (read(this.f22202c) == -1) {
            return -1;
        }
        return this.f22202c[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        a.b(!this.e);
        if (!this.f22203d) {
            this.f22200a.a(this.f22201b);
            this.f22203d = true;
        }
        int a2 = this.f22200a.a(bArr, i, i2);
        if (a2 == -1) {
            return -1;
        }
        this.f += a2;
        return a2;
    }
}
