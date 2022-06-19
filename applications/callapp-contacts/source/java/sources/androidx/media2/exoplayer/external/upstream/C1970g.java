package androidx.media2.exoplayer.external.upstream;

import androidx.media2.exoplayer.external.util.C1993a;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: androidx.media2.exoplayer.external.upstream.g */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/g.class */
public final class C1970g extends InputStream {

    /* renamed from: a */
    private final AbstractC1968f f7946a;

    /* renamed from: b */
    private final C1971h f7947b;

    /* renamed from: f */
    private long f7951f;

    /* renamed from: d */
    private boolean f7949d = false;

    /* renamed from: e */
    private boolean f7950e = false;

    /* renamed from: c */
    private final byte[] f7948c = new byte[1];

    public C1970g(AbstractC1968f abstractC1968f, C1971h c1971h) {
        this.f7946a = abstractC1968f;
        this.f7947b = c1971h;
    }

    /* renamed from: a */
    public final void m41739a() throws IOException {
        if (!this.f7949d) {
            this.f7946a.mo41199a(this.f7947b);
            this.f7949d = true;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (!this.f7950e) {
            this.f7946a.mo41196c();
            this.f7950e = true;
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        if (read(this.f7948c) == -1) {
            return -1;
        }
        return this.f7948c[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        C1993a.m41686b(!this.f7950e);
        m41739a();
        int mo41197a = this.f7946a.mo41197a(bArr, i, i2);
        if (mo41197a == -1) {
            return -1;
        }
        this.f7951f += mo41197a;
        return mo41197a;
    }
}
