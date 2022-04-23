package p131c.p161d.p170b.p188c.p206s0;

import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.s0.u */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/u.class */
public final class C3001u extends AbstractC2993o {

    /* renamed from: i */
    public int f10808i;

    /* renamed from: j */
    public boolean f10809j;

    /* renamed from: k */
    public byte[] f10810k;

    /* renamed from: l */
    public byte[] f10811l;

    /* renamed from: m */
    public int f10812m;

    /* renamed from: n */
    public int f10813n;

    /* renamed from: o */
    public int f10814o;

    /* renamed from: p */
    public boolean f10815p;

    /* renamed from: q */
    public long f10816q;

    public C3001u() {
        byte[] bArr = C2885h0.f10482f;
        this.f10810k = bArr;
        this.f10811l = bArr;
    }

    /* renamed from: a */
    public final int m28218a(long j) {
        return (int) ((j * this.f10779b.f21972a) / 1000000);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public void mo18691a(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !m28245f()) {
            int i = this.f10812m;
            if (i == 0) {
                m28210f(byteBuffer);
            } else if (i == 1) {
                m28211e(byteBuffer);
            } else if (i == 2) {
                m28209g(byteBuffer);
            } else {
                throw new IllegalStateException();
            }
        }
    }

    /* renamed from: a */
    public final void m28217a(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int min = Math.min(byteBuffer.remaining(), this.f10814o);
        int i2 = this.f10814o - min;
        System.arraycopy(bArr, i - i2, this.f10811l, 0, i2);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.f10811l, i2, min);
    }

    /* renamed from: a */
    public void m28216a(boolean z) {
        this.f10809j = z;
    }

    /* renamed from: a */
    public final void m28215a(byte[] bArr, int i) {
        m28246a(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.f10815p = true;
        }
    }

    /* renamed from: b */
    public final int m28214b(ByteBuffer byteBuffer) {
        for (int limit = byteBuffer.limit() - 1; limit >= byteBuffer.position(); limit -= 2) {
            if (Math.abs((int) byteBuffer.get(limit)) > 4) {
                int i = this.f10808i;
                return ((limit / i) * i) + i;
            }
        }
        return byteBuffer.position();
    }

    @Override // p131c.p161d.p170b.p188c.p206s0.AbstractC2993o
    /* renamed from: b */
    public AudioProcessor.C7122a mo28181b(AudioProcessor.C7122a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f21974c == 2) {
            if (!this.f10809j) {
                aVar = AudioProcessor.C7122a.f21971e;
            }
            return aVar;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // p131c.p161d.p170b.p188c.p206s0.AbstractC2993o, com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: b */
    public boolean mo18690b() {
        return this.f10809j;
    }

    /* renamed from: c */
    public final int m28213c(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position() + 1; position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.get(position)) > 4) {
                int i = this.f10808i;
                return i * (position / i);
            }
        }
        return byteBuffer.limit();
    }

    /* renamed from: d */
    public final void m28212d(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        m28246a(remaining).put(byteBuffer).flip();
        if (remaining > 0) {
            this.f10815p = true;
        }
    }

    /* renamed from: e */
    public final void m28211e(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int c = m28213c(byteBuffer);
        int position = c - byteBuffer.position();
        byte[] bArr = this.f10810k;
        int length = bArr.length;
        int i = this.f10813n;
        int i2 = length - i;
        if (c >= limit || position >= i2) {
            int min = Math.min(position, i2);
            byteBuffer.limit(byteBuffer.position() + min);
            byteBuffer.get(this.f10810k, this.f10813n, min);
            int i3 = this.f10813n + min;
            this.f10813n = i3;
            byte[] bArr2 = this.f10810k;
            if (i3 == bArr2.length) {
                if (this.f10815p) {
                    m28215a(bArr2, this.f10814o);
                    this.f10816q += (this.f10813n - (this.f10814o * 2)) / this.f10808i;
                } else {
                    this.f10816q += (i3 - this.f10814o) / this.f10808i;
                }
                m28217a(byteBuffer, this.f10810k, this.f10813n);
                this.f10813n = 0;
                this.f10812m = 2;
            }
            byteBuffer.limit(limit);
            return;
        }
        m28215a(bArr, i);
        this.f10813n = 0;
        this.f10812m = 0;
    }

    /* renamed from: f */
    public final void m28210f(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.f10810k.length));
        int b = m28214b(byteBuffer);
        if (b == byteBuffer.position()) {
            this.f10812m = 1;
        } else {
            byteBuffer.limit(b);
            m28212d(byteBuffer);
        }
        byteBuffer.limit(limit);
    }

    @Override // p131c.p161d.p170b.p188c.p206s0.AbstractC2993o
    /* renamed from: g */
    public void mo28180g() {
        if (this.f10809j) {
            this.f10808i = this.f10779b.f21975d;
            int a = m28218a(150000L) * this.f10808i;
            if (this.f10810k.length != a) {
                this.f10810k = new byte[a];
            }
            int a2 = m28218a(20000L) * this.f10808i;
            this.f10814o = a2;
            if (this.f10811l.length != a2) {
                this.f10811l = new byte[a2];
            }
        }
        this.f10812m = 0;
        this.f10816q = 0L;
        this.f10813n = 0;
        this.f10815p = false;
    }

    /* renamed from: g */
    public final void m28209g(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int c = m28213c(byteBuffer);
        byteBuffer.limit(c);
        this.f10816q += byteBuffer.remaining() / this.f10808i;
        m28217a(byteBuffer, this.f10811l, this.f10814o);
        if (c < limit) {
            m28215a(this.f10811l, this.f10814o);
            this.f10812m = 0;
            byteBuffer.limit(limit);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p206s0.AbstractC2993o
    /* renamed from: h */
    public void mo28179h() {
        int i = this.f10813n;
        if (i > 0) {
            m28215a(this.f10810k, i);
        }
        if (!this.f10815p) {
            this.f10816q += this.f10814o / this.f10808i;
        }
    }

    @Override // p131c.p161d.p170b.p188c.p206s0.AbstractC2993o
    /* renamed from: i */
    public void mo28178i() {
        this.f10809j = false;
        this.f10814o = 0;
        byte[] bArr = C2885h0.f10482f;
        this.f10810k = bArr;
        this.f10811l = bArr;
    }

    /* renamed from: j */
    public long m28208j() {
        return this.f10816q;
    }
}
