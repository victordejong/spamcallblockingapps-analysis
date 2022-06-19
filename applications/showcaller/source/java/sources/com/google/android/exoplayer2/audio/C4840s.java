package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.audio.s */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/s.class */
final class C4840s extends AbstractC4837p {

    /* renamed from: i */
    private static final int f14682i = Float.floatToIntBits(Float.NaN);

    /* renamed from: n */
    private static void m21509n(int i, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i * 4.656612875245797E-10d));
        int i2 = floatToIntBits;
        if (floatToIntBits == f14682i) {
            i2 = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(i2);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: d */
    public void mo21447d(ByteBuffer byteBuffer) {
        C5508e.m18910f(C5515h0.m18852T(this.f14670b.f14512d));
        boolean z = this.f14670b.f14512d == 805306368;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (!z) {
            i = (i / 3) * 4;
        }
        ByteBuffer m21518m = m21518m(i);
        if (z) {
            while (position < limit) {
                m21509n((byteBuffer.get(position) & 255) | ((byteBuffer.get(position + 1) & 255) << 8) | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), m21518m);
                position += 4;
            }
        } else {
            for (int i2 = position; i2 < limit; i2 += 3) {
                m21509n(((byteBuffer.get(i2) & 255) << 8) | ((byteBuffer.get(i2 + 1) & 255) << 16) | ((byteBuffer.get(i2 + 2) & 255) << 24), m21518m);
            }
        }
        byteBuffer.position(byteBuffer.limit());
        m21518m.flip();
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4837p
    /* renamed from: i */
    public AudioProcessor.C4804a mo21446i(AudioProcessor.C4804a c4804a) {
        if (C5515h0.m18852T(c4804a.f14512d)) {
            return C5515h0.m18852T(c4804a.f14512d) ? new AudioProcessor.C4804a(c4804a.f14510b, c4804a.f14511c, 4) : AudioProcessor.C4804a.f14509a;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(c4804a);
    }
}
