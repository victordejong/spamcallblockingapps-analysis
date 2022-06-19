package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.util.C1993a;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.audio.r */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/r.class */
final class C1424r extends AbstractC1423q {

    /* renamed from: e */
    int[] f5382e;

    /* renamed from: f */
    private boolean f5383f;

    /* renamed from: g */
    private int[] f5384g;

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final void mo42943a(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) C1993a.m41690a(this.f5384g);
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer a = m42981a(((limit - position) / (this.f5377c * 2)) * iArr.length * 2);
        while (position < limit) {
            for (int i : iArr) {
                a.putShort(byteBuffer.getShort((i * 2) + position));
            }
            position += this.f5377c * 2;
        }
        byteBuffer.position(limit);
        a.flip();
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1423q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final boolean mo42945a() {
        return this.f5383f;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final boolean mo42944a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        boolean z = !Arrays.equals(this.f5382e, this.f5384g);
        int[] iArr = this.f5382e;
        this.f5384g = iArr;
        if (iArr == null) {
            this.f5383f = false;
            return z;
        } else if (i3 != 2) {
            throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
        } else {
            if (!z && !m42980b(i, i2, i3)) {
                return false;
            }
            this.f5383f = i2 != iArr.length;
            int i4 = 0;
            while (i4 < iArr.length) {
                int i5 = iArr[i4];
                if (i5 >= i2) {
                    throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
                }
                this.f5383f = (i5 != i4) | this.f5383f;
                i4++;
            }
            return true;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1423q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: b */
    public final int mo42951b() {
        int[] iArr = this.f5384g;
        return iArr == null ? this.f5377c : iArr.length;
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1423q
    /* renamed from: m */
    protected final void mo42939m() {
        this.f5384g = null;
        this.f5382e = null;
        this.f5383f = false;
    }
}
