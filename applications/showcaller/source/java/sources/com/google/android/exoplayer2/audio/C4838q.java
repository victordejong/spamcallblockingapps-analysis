package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.C5508e;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.audio.q */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/q.class */
final class C4838q extends AbstractC4837p {

    /* renamed from: i */
    private int[] f14677i;

    /* renamed from: j */
    private int[] f14678j;

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: d */
    public void mo21447d(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) C5508e.m18911e(this.f14678j);
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer m21518m = m21518m(((limit - position) / this.f14670b.f14513e) * this.f14671c.f14513e);
        while (position < limit) {
            for (int i : iArr) {
                m21518m.putShort(byteBuffer.getShort((i * 2) + position));
            }
            position += this.f14670b.f14513e;
        }
        byteBuffer.position(limit);
        m21518m.flip();
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4837p
    /* renamed from: i */
    public AudioProcessor.C4804a mo21446i(AudioProcessor.C4804a c4804a) {
        int[] iArr = this.f14677i;
        if (iArr == null) {
            return AudioProcessor.C4804a.f14509a;
        }
        if (c4804a.f14512d != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(c4804a);
        }
        boolean z = c4804a.f14511c != iArr.length;
        int i = 0;
        while (i < iArr.length) {
            int i2 = iArr[i];
            if (i2 >= c4804a.f14511c) {
                throw new AudioProcessor.UnhandledAudioFormatException(c4804a);
            }
            z |= i2 != i;
            i++;
        }
        return z ? new AudioProcessor.C4804a(c4804a.f14510b, iArr.length, 2) : AudioProcessor.C4804a.f14509a;
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4837p
    /* renamed from: j */
    protected void mo21445j() {
        this.f14678j = this.f14677i;
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4837p
    /* renamed from: l */
    protected void mo21443l() {
        this.f14678j = null;
        this.f14677i = null;
    }

    /* renamed from: n */
    public void m21517n(int[] iArr) {
        this.f14677i = iArr;
    }
}
