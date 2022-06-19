package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.C11593a;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.audio.k */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/k.class */
final class C10901k extends AbstractC10900j {

    /* renamed from: d */
    int[] f35205d;

    /* renamed from: e */
    private int[] f35206e;

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public final void mo21964a(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) C11593a.m20020b(this.f35206e);
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer a = m22016a(((limit - position) / this.f35198b.f35036e) * this.f35199c.f35036e);
        while (position < limit) {
            for (int i : iArr) {
                a.putShort(byteBuffer.getShort((i * 2) + position));
            }
            position += this.f35198b.f35036e;
        }
        byteBuffer.position(limit);
        a.flip();
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10900j
    /* renamed from: b */
    public final AudioProcessor.C10870a mo21963b(AudioProcessor.C10870a c10870a) throws AudioProcessor.UnhandledAudioFormatException {
        int[] iArr = this.f35205d;
        if (iArr == null) {
            return AudioProcessor.C10870a.f35032a;
        }
        if (c10870a.f35035d != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(c10870a);
        }
        boolean z = c10870a.f35034c != iArr.length;
        int i = 0;
        while (i < iArr.length) {
            int i2 = iArr[i];
            if (i2 >= c10870a.f35034c) {
                throw new AudioProcessor.UnhandledAudioFormatException(c10870a);
            }
            z |= i2 != i;
            i++;
        }
        return z ? new AudioProcessor.C10870a(c10870a.f35033b, iArr.length, 2) : AudioProcessor.C10870a.f35032a;
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10900j
    /* renamed from: i */
    protected final void mo21959i() {
        this.f35206e = this.f35205d;
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10900j
    /* renamed from: j */
    protected final void mo21958j() {
        this.f35206e = null;
        this.f35205d = null;
    }
}
