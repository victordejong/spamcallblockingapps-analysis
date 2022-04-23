package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.util.ac;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/z.class */
final class z extends q {
    int e;
    int f;
    long g;
    private boolean h;
    private int i;
    private boolean j;
    private int k;
    private byte[] l = ac.f;
    private int m;

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final void a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i != 0) {
            this.j = true;
            int min = Math.min(i, this.k);
            this.g += min / this.i;
            this.k -= min;
            byteBuffer.position(position + min);
            if (this.k <= 0) {
                int i2 = i - min;
                int length = (this.m + i2) - this.l.length;
                ByteBuffer a2 = a(length);
                int a3 = ac.a(length, 0, this.m);
                a2.put(this.l, 0, a3);
                int a4 = ac.a(length - a3, 0, i2);
                byteBuffer.limit(byteBuffer.position() + a4);
                a2.put(byteBuffer);
                byteBuffer.limit(limit);
                int i3 = i2 - a4;
                int i4 = this.m - a3;
                this.m = i4;
                byte[] bArr = this.l;
                System.arraycopy(bArr, a3, bArr, 0, i4);
                byteBuffer.get(this.l, this.m, i3);
                this.m += i3;
                a2.flip();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.q, androidx.media2.exoplayer.external.audio.AudioProcessor
    public final boolean a() {
        return this.h;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final boolean a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        int i4;
        if (i3 == 2) {
            if (this.m > 0) {
                this.g += i4 / this.i;
            }
            int b2 = ac.b(2, i2);
            this.i = b2;
            int i5 = this.f;
            this.l = new byte[i5 * b2];
            this.m = 0;
            int i6 = this.e;
            this.k = b2 * i6;
            boolean z = this.h;
            this.h = (i6 == 0 && i5 == 0) ? false : true;
            this.j = false;
            b(i, i2, i3);
            return z != this.h;
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    @Override // androidx.media2.exoplayer.external.audio.q, androidx.media2.exoplayer.external.audio.AudioProcessor
    public final ByteBuffer f() {
        int i;
        if (super.g() && (i = this.m) > 0) {
            a(i).put(this.l, 0, this.m).flip();
            this.m = 0;
        }
        return super.f();
    }

    @Override // androidx.media2.exoplayer.external.audio.q, androidx.media2.exoplayer.external.audio.AudioProcessor
    public final boolean g() {
        return super.g() && this.m == 0;
    }

    @Override // androidx.media2.exoplayer.external.audio.q
    protected final void l() {
        if (this.j) {
            this.k = 0;
        }
        this.m = 0;
    }

    @Override // androidx.media2.exoplayer.external.audio.q
    protected final void m() {
        this.l = ac.f;
    }
}
