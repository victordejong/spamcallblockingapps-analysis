package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.af;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/u.class */
final class u extends j {

    /* renamed from: d  reason: collision with root package name */
    int f20796d;
    int e;
    long f;
    private boolean g;
    private int h;
    private byte[] i = af.f;
    private int j;

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i != 0) {
            int min = Math.min(i, this.h);
            this.f += min / this.f20770b.e;
            this.h -= min;
            byteBuffer.position(position + min);
            if (this.h <= 0) {
                int i2 = i - min;
                int length = (this.j + i2) - this.i.length;
                ByteBuffer a2 = a(length);
                int a3 = af.a(length, 0, this.j);
                a2.put(this.i, 0, a3);
                int a4 = af.a(length - a3, 0, i2);
                byteBuffer.limit(byteBuffer.position() + a4);
                a2.put(byteBuffer);
                byteBuffer.limit(limit);
                int i3 = i2 - a4;
                int i4 = this.j - a3;
                this.j = i4;
                byte[] bArr = this.i;
                System.arraycopy(bArr, a3, bArr, 0, i4);
                byteBuffer.get(this.i, this.j, i3);
                this.j += i3;
                a2.flip();
            }
        }
    }

    @Override // com.google.android.exoplayer2.audio.j
    public final AudioProcessor.a b(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f20695d == 2) {
            this.g = true;
            AudioProcessor.a aVar2 = aVar;
            if (this.f20796d == 0) {
                aVar2 = this.e != 0 ? aVar : AudioProcessor.a.f20692a;
            }
            return aVar2;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.j, com.google.android.exoplayer2.audio.AudioProcessor
    public final ByteBuffer c() {
        int i;
        if (super.d() && (i = this.j) > 0) {
            a(i).put(this.i, 0, this.j).flip();
            this.j = 0;
        }
        return super.c();
    }

    @Override // com.google.android.exoplayer2.audio.j, com.google.android.exoplayer2.audio.AudioProcessor
    public final boolean d() {
        return super.d() && this.j == 0;
    }

    @Override // com.google.android.exoplayer2.audio.j
    protected final void h() {
        int i;
        if (this.g) {
            if (this.j > 0) {
                this.f += i / this.f20770b.e;
            }
            this.j = 0;
        }
    }

    @Override // com.google.android.exoplayer2.audio.j
    protected final void i() {
        if (this.g) {
            this.g = false;
            this.i = new byte[this.e * this.f20770b.e];
            this.h = this.f20796d * this.f20770b.e;
        }
        this.j = 0;
    }

    @Override // com.google.android.exoplayer2.audio.j
    protected final void j() {
        this.i = af.f;
    }
}
