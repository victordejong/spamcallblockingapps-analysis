package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.C11599af;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.audio.u */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/u.class */
final class C10914u extends AbstractC10900j {

    /* renamed from: d */
    int f35287d;

    /* renamed from: e */
    int f35288e;

    /* renamed from: f */
    long f35289f;

    /* renamed from: g */
    private boolean f35290g;

    /* renamed from: h */
    private int f35291h;

    /* renamed from: i */
    private byte[] f35292i = C11599af.f38653f;

    /* renamed from: j */
    private int f35293j;

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public final void mo21964a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i == 0) {
            return;
        }
        int min = Math.min(i, this.f35291h);
        this.f35289f += min / this.f35198b.f35036e;
        this.f35291h -= min;
        byteBuffer.position(position + min);
        if (this.f35291h > 0) {
            return;
        }
        int i2 = i - min;
        int length = (this.f35293j + i2) - this.f35292i.length;
        ByteBuffer a = m22016a(length);
        int m19997a = C11599af.m19997a(length, 0, this.f35293j);
        a.put(this.f35292i, 0, m19997a);
        int m19997a2 = C11599af.m19997a(length - m19997a, 0, i2);
        byteBuffer.limit(byteBuffer.position() + m19997a2);
        a.put(byteBuffer);
        byteBuffer.limit(limit);
        int i3 = i2 - m19997a2;
        int i4 = this.f35293j - m19997a;
        this.f35293j = i4;
        byte[] bArr = this.f35292i;
        System.arraycopy(bArr, m19997a, bArr, 0, i4);
        byteBuffer.get(this.f35292i, this.f35293j, i3);
        this.f35293j += i3;
        a.flip();
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10900j
    /* renamed from: b */
    public final AudioProcessor.C10870a mo21963b(AudioProcessor.C10870a c10870a) throws AudioProcessor.UnhandledAudioFormatException {
        if (c10870a.f35035d == 2) {
            this.f35290g = true;
            AudioProcessor.C10870a c10870a2 = c10870a;
            if (this.f35287d == 0) {
                c10870a2 = this.f35288e != 0 ? c10870a : AudioProcessor.C10870a.f35032a;
            }
            return c10870a2;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(c10870a);
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10900j, com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: c */
    public final ByteBuffer mo21962c() {
        int i;
        if (super.mo21961d() && (i = this.f35293j) > 0) {
            m22016a(i).put(this.f35292i, 0, this.f35293j).flip();
            this.f35293j = 0;
        }
        return super.mo21962c();
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10900j, com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: d */
    public final boolean mo21961d() {
        return super.mo21961d() && this.f35293j == 0;
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10900j
    /* renamed from: h */
    protected final void mo21960h() {
        int i;
        if (this.f35290g) {
            if (this.f35293j > 0) {
                this.f35289f += i / this.f35198b.f35036e;
            }
            this.f35293j = 0;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10900j
    /* renamed from: i */
    protected final void mo21959i() {
        if (this.f35290g) {
            this.f35290g = false;
            this.f35292i = new byte[this.f35288e * this.f35198b.f35036e];
            this.f35291h = this.f35287d * this.f35198b.f35036e;
        }
        this.f35293j = 0;
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10900j
    /* renamed from: j */
    protected final void mo21958j() {
        this.f35292i = C11599af.f38653f;
    }
}
