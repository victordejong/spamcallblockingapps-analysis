package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.C5515h0;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.audio.y */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/y.class */
final class C4848y extends AbstractC4837p {

    /* renamed from: i */
    private int f14745i;

    /* renamed from: j */
    private int f14746j;

    /* renamed from: k */
    private boolean f14747k;

    /* renamed from: l */
    private int f14748l;

    /* renamed from: m */
    private byte[] f14749m = C5515h0.f17881f;

    /* renamed from: n */
    private int f14750n;

    /* renamed from: o */
    private long f14751o;

    @Override // com.google.android.exoplayer2.audio.AbstractC4837p, com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: b */
    public ByteBuffer mo21449b() {
        int i;
        if (super.mo21448c() && (i = this.f14750n) > 0) {
            m21518m(i).put(this.f14749m, 0, this.f14750n).flip();
            this.f14750n = 0;
        }
        return super.mo21449b();
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4837p, com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: c */
    public boolean mo21448c() {
        return super.mo21448c() && this.f14750n == 0;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: d */
    public void mo21447d(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i == 0) {
            return;
        }
        int min = Math.min(i, this.f14748l);
        this.f14751o += min / this.f14670b.f14513e;
        this.f14748l -= min;
        byteBuffer.position(position + min);
        if (this.f14748l > 0) {
            return;
        }
        int i2 = i - min;
        int length = (this.f14750n + i2) - this.f14749m.length;
        ByteBuffer m21518m = m21518m(length);
        int m18819n = C5515h0.m18819n(length, 0, this.f14750n);
        m21518m.put(this.f14749m, 0, m18819n);
        int m18819n2 = C5515h0.m18819n(length - m18819n, 0, i2);
        byteBuffer.limit(byteBuffer.position() + m18819n2);
        m21518m.put(byteBuffer);
        byteBuffer.limit(limit);
        int i3 = i2 - m18819n2;
        int i4 = this.f14750n - m18819n;
        this.f14750n = i4;
        byte[] bArr = this.f14749m;
        System.arraycopy(bArr, m18819n, bArr, 0, i4);
        byteBuffer.get(this.f14749m, this.f14750n, i3);
        this.f14750n += i3;
        m21518m.flip();
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4837p
    /* renamed from: i */
    public AudioProcessor.C4804a mo21446i(AudioProcessor.C4804a c4804a) {
        if (c4804a.f14512d == 2) {
            this.f14747k = true;
            AudioProcessor.C4804a c4804a2 = c4804a;
            if (this.f14745i == 0) {
                c4804a2 = this.f14746j != 0 ? c4804a : AudioProcessor.C4804a.f14509a;
            }
            return c4804a2;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(c4804a);
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4837p
    /* renamed from: j */
    protected void mo21445j() {
        if (this.f14747k) {
            this.f14747k = false;
            int i = this.f14746j;
            int i2 = this.f14670b.f14513e;
            this.f14749m = new byte[i * i2];
            this.f14748l = this.f14745i * i2;
        } else {
            this.f14748l = 0;
        }
        this.f14750n = 0;
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4837p
    /* renamed from: k */
    protected void mo21444k() {
        int i;
        if (this.f14747k) {
            if (this.f14750n > 0) {
                this.f14751o += i / this.f14670b.f14513e;
            }
            this.f14750n = 0;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4837p
    /* renamed from: l */
    protected void mo21443l() {
        this.f14749m = C5515h0.f17881f;
    }

    /* renamed from: n */
    public long m21442n() {
        return this.f14751o;
    }

    /* renamed from: o */
    public void m21441o() {
        this.f14751o = 0L;
    }

    /* renamed from: p */
    public void m21440p(int i, int i2) {
        this.f14745i = i;
        this.f14746j = i2;
    }
}
