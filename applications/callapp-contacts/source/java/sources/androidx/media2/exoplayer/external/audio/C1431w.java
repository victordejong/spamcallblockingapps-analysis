package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.nio.ByteBuffer;
/* renamed from: androidx.media2.exoplayer.external.audio.w */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/w.class */
public final class C1431w extends AbstractC1423q {

    /* renamed from: e */
    boolean f5408e;

    /* renamed from: f */
    long f5409f;

    /* renamed from: g */
    private int f5410g;

    /* renamed from: h */
    private byte[] f5411h = C1996ac.f8067f;

    /* renamed from: i */
    private byte[] f5412i = C1996ac.f8067f;

    /* renamed from: j */
    private int f5413j;

    /* renamed from: k */
    private int f5414k;

    /* renamed from: l */
    private int f5415l;

    /* renamed from: m */
    private boolean f5416m;

    /* renamed from: a */
    private int m42963a(long j) {
        return (int) ((j * this.f5376b) / 1000000);
    }

    /* renamed from: a */
    private void m42962a(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int min = Math.min(byteBuffer.remaining(), this.f5415l);
        int i2 = this.f5415l - min;
        System.arraycopy(bArr, i - i2, this.f5412i, 0, i2);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.f5412i, i2, min);
    }

    /* renamed from: a */
    private void m42961a(byte[] bArr, int i) {
        m42981a(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.f5416m = true;
        }
    }

    /* renamed from: b */
    private int m42960b(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position() + 1; position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.get(position)) > 4) {
                int i = this.f5410g;
                return i * (position / i);
            }
        }
        return byteBuffer.limit();
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final void mo42943a(ByteBuffer byteBuffer) {
        int position;
        while (byteBuffer.hasRemaining() && !m42979j()) {
            int i = this.f5413j;
            if (i == 0) {
                int limit = byteBuffer.limit();
                byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.f5411h.length));
                int limit2 = byteBuffer.limit() - 1;
                while (true) {
                    if (limit2 < byteBuffer.position()) {
                        position = byteBuffer.position();
                        break;
                    } else if (Math.abs((int) byteBuffer.get(limit2)) > 4) {
                        int i2 = this.f5410g;
                        position = ((limit2 / i2) * i2) + i2;
                        break;
                    } else {
                        limit2 -= 2;
                    }
                }
                if (position == byteBuffer.position()) {
                    this.f5413j = 1;
                } else {
                    byteBuffer.limit(position);
                    int remaining = byteBuffer.remaining();
                    m42981a(remaining).put(byteBuffer).flip();
                    if (remaining > 0) {
                        this.f5416m = true;
                    }
                }
                byteBuffer.limit(limit);
            } else if (i == 1) {
                int limit3 = byteBuffer.limit();
                int m42960b = m42960b(byteBuffer);
                int position2 = m42960b - byteBuffer.position();
                byte[] bArr = this.f5411h;
                int length = bArr.length;
                int i3 = this.f5414k;
                int i4 = length - i3;
                if (m42960b >= limit3 || position2 >= i4) {
                    int min = Math.min(position2, i4);
                    byteBuffer.limit(byteBuffer.position() + min);
                    byteBuffer.get(this.f5411h, this.f5414k, min);
                    int i5 = this.f5414k + min;
                    this.f5414k = i5;
                    byte[] bArr2 = this.f5411h;
                    if (i5 == bArr2.length) {
                        if (this.f5416m) {
                            m42961a(bArr2, this.f5415l);
                            this.f5409f += (this.f5414k - (this.f5415l * 2)) / this.f5410g;
                        } else {
                            this.f5409f += (i5 - this.f5415l) / this.f5410g;
                        }
                        m42962a(byteBuffer, this.f5411h, this.f5414k);
                        this.f5414k = 0;
                        this.f5413j = 2;
                    }
                    byteBuffer.limit(limit3);
                } else {
                    m42961a(bArr, i3);
                    this.f5414k = 0;
                    this.f5413j = 0;
                }
            } else if (i != 2) {
                throw new IllegalStateException();
            } else {
                int limit4 = byteBuffer.limit();
                int m42960b2 = m42960b(byteBuffer);
                byteBuffer.limit(m42960b2);
                this.f5409f += byteBuffer.remaining() / this.f5410g;
                m42962a(byteBuffer, this.f5412i, this.f5415l);
                if (m42960b2 < limit4) {
                    m42961a(this.f5412i, this.f5415l);
                    this.f5413j = 0;
                    byteBuffer.limit(limit4);
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1423q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final boolean mo42945a() {
        return super.mo42945a() && this.f5408e;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final boolean mo42944a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        if (i3 == 2) {
            this.f5410g = i2 * 2;
            return m42980b(i, i2, i3);
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1423q
    /* renamed from: k */
    protected final void mo42959k() {
        int i = this.f5414k;
        if (i > 0) {
            m42961a(this.f5411h, i);
        }
        if (!this.f5416m) {
            this.f5409f += this.f5415l / this.f5410g;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1423q
    /* renamed from: l */
    protected final void mo42940l() {
        if (mo42945a()) {
            int m42963a = m42963a(150000L) * this.f5410g;
            if (this.f5411h.length != m42963a) {
                this.f5411h = new byte[m42963a];
            }
            int m42963a2 = m42963a(20000L) * this.f5410g;
            this.f5415l = m42963a2;
            if (this.f5412i.length != m42963a2) {
                this.f5412i = new byte[m42963a2];
            }
        }
        this.f5413j = 0;
        this.f5409f = 0L;
        this.f5414k = 0;
        this.f5416m = false;
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1423q
    /* renamed from: m */
    protected final void mo42939m() {
        this.f5408e = false;
        this.f5415l = 0;
        this.f5411h = C1996ac.f8067f;
        this.f5412i = C1996ac.f8067f;
    }
}
