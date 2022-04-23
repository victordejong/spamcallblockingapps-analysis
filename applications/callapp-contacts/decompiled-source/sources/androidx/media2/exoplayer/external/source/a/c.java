package androidx.media2.exoplayer.external.source.a;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.upstream.f;
import androidx.media2.exoplayer.external.upstream.h;
import androidx.media2.exoplayer.external.util.ac;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/a/c.class */
public abstract class c extends b {
    public byte[] i;
    private volatile boolean j;

    public c(f fVar, h hVar, int i, Format format, int i2, Object obj, byte[] bArr) {
        super(fVar, hVar, i, format, i2, obj, -9223372036854775807L, -9223372036854775807L);
        this.i = bArr;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.d
    public final void a() {
        this.j = true;
    }

    protected abstract void a(byte[] bArr, int i) throws IOException;

    @Override // androidx.media2.exoplayer.external.upstream.Loader.d
    public final void b() throws IOException, InterruptedException {
        try {
            this.h.a(this.f3498a);
            int i = 0;
            int i2 = 0;
            while (i != -1 && !this.j) {
                byte[] bArr = this.i;
                if (bArr == null) {
                    this.i = new byte[16384];
                } else if (bArr.length < i2 + 16384) {
                    this.i = Arrays.copyOf(bArr, bArr.length + 16384);
                }
                int a2 = this.h.a(this.i, i2, 16384);
                i = a2;
                if (a2 != -1) {
                    i2 += a2;
                    i = a2;
                }
            }
            if (!this.j) {
                a(this.i, i2);
            }
        } finally {
            ac.a((f) this.h);
        }
    }
}
