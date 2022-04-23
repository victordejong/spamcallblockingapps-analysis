package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.util.a;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/r.class */
final class r extends q {
    int[] e;
    private boolean f;
    private int[] g;

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final void a(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) a.a(this.g);
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer a2 = a(((limit - position) / (this.f2917c * 2)) * iArr.length * 2);
        while (position < limit) {
            for (int i : iArr) {
                a2.putShort(byteBuffer.getShort((i * 2) + position));
            }
            position += this.f2917c * 2;
        }
        byteBuffer.position(limit);
        a2.flip();
    }

    @Override // androidx.media2.exoplayer.external.audio.q, androidx.media2.exoplayer.external.audio.AudioProcessor
    public final boolean a() {
        return this.f;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final boolean a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        boolean z = !Arrays.equals(this.e, this.g);
        int[] iArr = this.e;
        this.g = iArr;
        if (iArr == null) {
            this.f = false;
            return z;
        } else if (i3 != 2) {
            throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
        } else if (!z && !b(i, i2, i3)) {
            return false;
        } else {
            this.f = i2 != iArr.length;
            int i4 = 0;
            while (i4 < iArr.length) {
                int i5 = iArr[i4];
                if (i5 < i2) {
                    this.f = (i5 != i4) | this.f;
                    i4++;
                } else {
                    throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
                }
            }
            return true;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.q, androidx.media2.exoplayer.external.audio.AudioProcessor
    public final int b() {
        int[] iArr = this.g;
        return iArr == null ? this.f2917c : iArr.length;
    }

    @Override // androidx.media2.exoplayer.external.audio.q
    protected final void m() {
        this.g = null;
        this.e = null;
        this.f = false;
    }
}
