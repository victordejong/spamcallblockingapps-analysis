package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.a;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/k.class */
final class k extends j {

    /* renamed from: d  reason: collision with root package name */
    int[] f20773d;
    private int[] e;

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void a(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) a.b(this.e);
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer a2 = a(((limit - position) / this.f20770b.e) * this.f20771c.e);
        while (position < limit) {
            for (int i : iArr) {
                a2.putShort(byteBuffer.getShort((i * 2) + position));
            }
            position += this.f20770b.e;
        }
        byteBuffer.position(limit);
        a2.flip();
    }

    @Override // com.google.android.exoplayer2.audio.j
    public final AudioProcessor.a b(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int[] iArr = this.f20773d;
        if (iArr == null) {
            return AudioProcessor.a.f20692a;
        }
        if (aVar.f20695d == 2) {
            boolean z = aVar.f20694c != iArr.length;
            int i = 0;
            while (i < iArr.length) {
                int i2 = iArr[i];
                if (i2 < aVar.f20694c) {
                    z |= i2 != i;
                    i++;
                } else {
                    throw new AudioProcessor.UnhandledAudioFormatException(aVar);
                }
            }
            return z ? new AudioProcessor.a(aVar.f20693b, iArr.length, 2) : AudioProcessor.a.f20692a;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.j
    protected final void i() {
        this.e = this.f20773d;
    }

    @Override // com.google.android.exoplayer2.audio.j
    protected final void j() {
        this.e = null;
        this.f20773d = null;
    }
}
