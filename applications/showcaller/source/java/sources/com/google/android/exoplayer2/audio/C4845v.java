package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.C5515h0;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.audio.v */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/v.class */
public final class C4845v extends AbstractC4837p {

    /* renamed from: i */
    private int f14699i;

    /* renamed from: j */
    private boolean f14700j;

    /* renamed from: k */
    private byte[] f14701k;

    /* renamed from: l */
    private byte[] f14702l;

    /* renamed from: m */
    private int f14703m;

    /* renamed from: n */
    private int f14704n;

    /* renamed from: o */
    private int f14705o;

    /* renamed from: p */
    private boolean f14706p;

    /* renamed from: q */
    private long f14707q;

    public C4845v() {
        byte[] bArr = C5515h0.f17881f;
        this.f14701k = bArr;
        this.f14702l = bArr;
    }

    /* renamed from: n */
    private int m21489n(long j) {
        return (int) ((j * this.f14670b.f14510b) / 1000000);
    }

    /* renamed from: o */
    private int m21488o(ByteBuffer byteBuffer) {
        for (int limit = byteBuffer.limit() - 1; limit >= byteBuffer.position(); limit -= 2) {
            if (Math.abs((int) byteBuffer.get(limit)) > 4) {
                int i = this.f14699i;
                return ((limit / i) * i) + i;
            }
        }
        return byteBuffer.position();
    }

    /* renamed from: p */
    private int m21487p(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position() + 1; position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.get(position)) > 4) {
                int i = this.f14699i;
                return i * (position / i);
            }
        }
        return byteBuffer.limit();
    }

    /* renamed from: r */
    private void m21485r(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        m21518m(remaining).put(byteBuffer).flip();
        if (remaining > 0) {
            this.f14706p = true;
        }
    }

    /* renamed from: s */
    private void m21484s(byte[] bArr, int i) {
        m21518m(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.f14706p = true;
        }
    }

    /* renamed from: t */
    private void m21483t(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int m21487p = m21487p(byteBuffer);
        int position = m21487p - byteBuffer.position();
        byte[] bArr = this.f14701k;
        int length = bArr.length;
        int i = this.f14704n;
        int i2 = length - i;
        if (m21487p < limit && position < i2) {
            m21484s(bArr, i);
            this.f14704n = 0;
            this.f14703m = 0;
            return;
        }
        int min = Math.min(position, i2);
        byteBuffer.limit(byteBuffer.position() + min);
        byteBuffer.get(this.f14701k, this.f14704n, min);
        int i3 = this.f14704n + min;
        this.f14704n = i3;
        byte[] bArr2 = this.f14701k;
        if (i3 == bArr2.length) {
            if (this.f14706p) {
                m21484s(bArr2, this.f14705o);
                this.f14707q += (this.f14704n - (this.f14705o * 2)) / this.f14699i;
            } else {
                this.f14707q += (i3 - this.f14705o) / this.f14699i;
            }
            m21479x(byteBuffer, this.f14701k, this.f14704n);
            this.f14704n = 0;
            this.f14703m = 2;
        }
        byteBuffer.limit(limit);
    }

    /* renamed from: u */
    private void m21482u(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.f14701k.length));
        int m21488o = m21488o(byteBuffer);
        if (m21488o == byteBuffer.position()) {
            this.f14703m = 1;
        } else {
            byteBuffer.limit(m21488o);
            m21485r(byteBuffer);
        }
        byteBuffer.limit(limit);
    }

    /* renamed from: v */
    private void m21481v(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int m21487p = m21487p(byteBuffer);
        byteBuffer.limit(m21487p);
        this.f14707q += byteBuffer.remaining() / this.f14699i;
        m21479x(byteBuffer, this.f14702l, this.f14705o);
        if (m21487p < limit) {
            m21484s(this.f14702l, this.f14705o);
            this.f14703m = 0;
            byteBuffer.limit(limit);
        }
    }

    /* renamed from: x */
    private void m21479x(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int min = Math.min(byteBuffer.remaining(), this.f14705o);
        int i2 = this.f14705o - min;
        System.arraycopy(bArr, i - i2, this.f14702l, 0, i2);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.f14702l, i2, min);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: d */
    public void mo21447d(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !m21519h()) {
            int i = this.f14703m;
            if (i == 0) {
                m21482u(byteBuffer);
            } else if (i == 1) {
                m21483t(byteBuffer);
            } else if (i != 2) {
                throw new IllegalStateException();
            } else {
                m21481v(byteBuffer);
            }
        }
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4837p, com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: g */
    public boolean mo21453g() {
        return this.f14700j;
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4837p
    /* renamed from: i */
    public AudioProcessor.C4804a mo21446i(AudioProcessor.C4804a c4804a) {
        if (c4804a.f14512d == 2) {
            if (!this.f14700j) {
                c4804a = AudioProcessor.C4804a.f14509a;
            }
            return c4804a;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(c4804a);
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4837p
    /* renamed from: j */
    protected void mo21445j() {
        if (this.f14700j) {
            this.f14699i = this.f14670b.f14513e;
            int m21489n = m21489n(150000L) * this.f14699i;
            if (this.f14701k.length != m21489n) {
                this.f14701k = new byte[m21489n];
            }
            int m21489n2 = m21489n(20000L) * this.f14699i;
            this.f14705o = m21489n2;
            if (this.f14702l.length != m21489n2) {
                this.f14702l = new byte[m21489n2];
            }
        }
        this.f14703m = 0;
        this.f14707q = 0L;
        this.f14704n = 0;
        this.f14706p = false;
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4837p
    /* renamed from: k */
    protected void mo21444k() {
        int i = this.f14704n;
        if (i > 0) {
            m21484s(this.f14701k, i);
        }
        if (!this.f14706p) {
            this.f14707q += this.f14705o / this.f14699i;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4837p
    /* renamed from: l */
    protected void mo21443l() {
        this.f14700j = false;
        this.f14705o = 0;
        byte[] bArr = C5515h0.f17881f;
        this.f14701k = bArr;
        this.f14702l = bArr;
    }

    /* renamed from: q */
    public long m21486q() {
        return this.f14707q;
    }

    /* renamed from: w */
    public void m21480w(boolean z) {
        this.f14700j = z;
    }
}
