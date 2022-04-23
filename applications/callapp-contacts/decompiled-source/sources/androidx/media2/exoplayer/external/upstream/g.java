package androidx.media2.exoplayer.external.upstream;

import androidx.media2.exoplayer.external.util.a;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/g.class */
public final class g extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final f f4060a;

    /* renamed from: b  reason: collision with root package name */
    private final h f4061b;
    private long f;

    /* renamed from: d  reason: collision with root package name */
    private boolean f4063d = false;
    private boolean e = false;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f4062c = new byte[1];

    public g(f fVar, h hVar) {
        this.f4060a = fVar;
        this.f4061b = hVar;
    }

    public final void a() throws IOException {
        if (!this.f4063d) {
            this.f4060a.a(this.f4061b);
            this.f4063d = true;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (!this.e) {
            this.f4060a.c();
            this.e = true;
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        if (read(this.f4062c) == -1) {
            return -1;
        }
        return this.f4062c[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        a.b(!this.e);
        a();
        int a2 = this.f4060a.a(bArr, i, i2);
        if (a2 == -1) {
            return -1;
        }
        this.f += a2;
        return a2;
    }
}
