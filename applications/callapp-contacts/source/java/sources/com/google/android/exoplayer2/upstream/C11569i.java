package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.util.C11593a;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.google.android.exoplayer2.upstream.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/i.class */
public final class C11569i extends InputStream {

    /* renamed from: a */
    private final AbstractC11567h f38506a;

    /* renamed from: b */
    private final C11570j f38507b;

    /* renamed from: f */
    private long f38511f;

    /* renamed from: d */
    private boolean f38509d = false;

    /* renamed from: e */
    private boolean f38510e = false;

    /* renamed from: c */
    private final byte[] f38508c = new byte[1];

    public C11569i(AbstractC11567h abstractC11567h, C11570j c11570j) {
        this.f38506a = abstractC11567h;
        this.f38507b = c11570j;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (!this.f38510e) {
            this.f38506a.mo20031c();
            this.f38510e = true;
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        if (read(this.f38508c) == -1) {
            return -1;
        }
        return this.f38508c[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        C11593a.m20019b(!this.f38510e);
        if (!this.f38509d) {
            this.f38506a.mo20035a(this.f38507b);
            this.f38509d = true;
        }
        int a = this.f38506a.mo20033a(bArr, i, i2);
        if (a == -1) {
            return -1;
        }
        this.f38511f += a;
        return a;
    }
}
