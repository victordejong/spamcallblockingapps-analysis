package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.audio.r */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/r.class */
public final class C10911r extends AbstractC10900j {

    /* renamed from: d */
    boolean f35238d;

    /* renamed from: e */
    long f35239e;

    /* renamed from: f */
    private final long f35240f;

    /* renamed from: g */
    private final long f35241g;

    /* renamed from: h */
    private final short f35242h;

    /* renamed from: i */
    private int f35243i;

    /* renamed from: j */
    private byte[] f35244j;

    /* renamed from: k */
    private byte[] f35245k;

    /* renamed from: l */
    private int f35246l;

    /* renamed from: m */
    private int f35247m;

    /* renamed from: n */
    private int f35248n;

    /* renamed from: o */
    private boolean f35249o;

    public C10911r() {
        this(150000L, 20000L, (short) 1024);
    }

    public C10911r(long j, long j2, short s) {
        C11593a.m20022a(j2 <= j);
        this.f35240f = j;
        this.f35241g = j2;
        this.f35242h = s;
        this.f35244j = C11599af.f38653f;
        this.f35245k = C11599af.f38653f;
    }

    /* renamed from: a */
    private int m21980a(long j) {
        return (int) ((j * this.f35198b.f35033b) / 1000000);
    }

    /* renamed from: a */
    private void m21979a(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int min = Math.min(byteBuffer.remaining(), this.f35248n);
        int i2 = this.f35248n - min;
        System.arraycopy(bArr, i - i2, this.f35245k, 0, i2);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.f35245k, i2, min);
    }

    /* renamed from: a */
    private void m21978a(byte[] bArr, int i) {
        m22016a(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.f35249o = true;
        }
    }

    /* renamed from: b */
    private int m21977b(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position(); position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.getShort(position)) > this.f35242h) {
                int i = this.f35243i;
                return i * (position / i);
            }
        }
        return byteBuffer.limit();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public final void mo21964a(ByteBuffer byteBuffer) {
        int position;
        while (byteBuffer.hasRemaining() && !m22015g()) {
            int i = this.f35246l;
            if (i == 0) {
                int limit = byteBuffer.limit();
                byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.f35244j.length));
                int limit2 = byteBuffer.limit() - 2;
                while (true) {
                    if (limit2 < byteBuffer.position()) {
                        position = byteBuffer.position();
                        break;
                    } else if (Math.abs((int) byteBuffer.getShort(limit2)) > this.f35242h) {
                        int i2 = this.f35243i;
                        position = ((limit2 / i2) * i2) + i2;
                        break;
                    } else {
                        limit2 -= 2;
                    }
                }
                if (position == byteBuffer.position()) {
                    this.f35246l = 1;
                } else {
                    byteBuffer.limit(position);
                    int remaining = byteBuffer.remaining();
                    m22016a(remaining).put(byteBuffer).flip();
                    if (remaining > 0) {
                        this.f35249o = true;
                    }
                }
                byteBuffer.limit(limit);
            } else if (i == 1) {
                int limit3 = byteBuffer.limit();
                int m21977b = m21977b(byteBuffer);
                int position2 = m21977b - byteBuffer.position();
                byte[] bArr = this.f35244j;
                int length = bArr.length;
                int i3 = this.f35247m;
                int i4 = length - i3;
                if (m21977b >= limit3 || position2 >= i4) {
                    int min = Math.min(position2, i4);
                    byteBuffer.limit(byteBuffer.position() + min);
                    byteBuffer.get(this.f35244j, this.f35247m, min);
                    int i5 = this.f35247m + min;
                    this.f35247m = i5;
                    byte[] bArr2 = this.f35244j;
                    if (i5 == bArr2.length) {
                        if (this.f35249o) {
                            m21978a(bArr2, this.f35248n);
                            this.f35239e += (this.f35247m - (this.f35248n * 2)) / this.f35243i;
                        } else {
                            this.f35239e += (i5 - this.f35248n) / this.f35243i;
                        }
                        m21979a(byteBuffer, this.f35244j, this.f35247m);
                        this.f35247m = 0;
                        this.f35246l = 2;
                    }
                    byteBuffer.limit(limit3);
                } else {
                    m21978a(bArr, i3);
                    this.f35247m = 0;
                    this.f35246l = 0;
                }
            } else if (i != 2) {
                throw new IllegalStateException();
            } else {
                int limit4 = byteBuffer.limit();
                int m21977b2 = m21977b(byteBuffer);
                byteBuffer.limit(m21977b2);
                this.f35239e += byteBuffer.remaining() / this.f35243i;
                m21979a(byteBuffer, this.f35245k, this.f35248n);
                if (m21977b2 < limit4) {
                    m21978a(this.f35245k, this.f35248n);
                    this.f35246l = 0;
                    byteBuffer.limit(limit4);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10900j, com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public final boolean mo21969a() {
        return this.f35238d;
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10900j
    /* renamed from: b */
    public final AudioProcessor.C10870a mo21963b(AudioProcessor.C10870a c10870a) throws AudioProcessor.UnhandledAudioFormatException {
        if (c10870a.f35035d == 2) {
            return this.f35238d ? c10870a : AudioProcessor.C10870a.f35032a;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(c10870a);
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10900j
    /* renamed from: h */
    protected final void mo21960h() {
        int i = this.f35247m;
        if (i > 0) {
            m21978a(this.f35244j, i);
        }
        if (!this.f35249o) {
            this.f35239e += this.f35248n / this.f35243i;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10900j
    /* renamed from: i */
    protected final void mo21959i() {
        if (this.f35238d) {
            this.f35243i = this.f35198b.f35036e;
            int m21980a = m21980a(this.f35240f) * this.f35243i;
            if (this.f35244j.length != m21980a) {
                this.f35244j = new byte[m21980a];
            }
            int m21980a2 = m21980a(this.f35241g) * this.f35243i;
            this.f35248n = m21980a2;
            if (this.f35245k.length != m21980a2) {
                this.f35245k = new byte[m21980a2];
            }
        }
        this.f35246l = 0;
        this.f35239e = 0L;
        this.f35247m = 0;
        this.f35249o = false;
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10900j
    /* renamed from: j */
    protected final void mo21958j() {
        this.f35238d = false;
        this.f35248n = 0;
        this.f35244j = C11599af.f38653f;
        this.f35245k = C11599af.f38653f;
    }
}
