package p012b.p076s.p078b.p079a.p083p0;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
import java.nio.ByteBuffer;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* renamed from: b.s.b.a.p0.w */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/w.class */
public final class C1301w extends AbstractC1293q {

    /* renamed from: h */
    public int f5172h;

    /* renamed from: i */
    public boolean f5173i;

    /* renamed from: j */
    public byte[] f5174j;

    /* renamed from: k */
    public byte[] f5175k;

    /* renamed from: l */
    public int f5176l;

    /* renamed from: m */
    public int f5177m;

    /* renamed from: n */
    public int f5178n;

    /* renamed from: o */
    public boolean f5179o;

    /* renamed from: p */
    public long f5180p;

    public C1301w() {
        byte[] bArr = C1167d0.f4693f;
        this.f5174j = bArr;
        this.f5175k = bArr;
    }

    /* renamed from: a */
    public final int m33797a(long j) {
        return (int) ((j * this.f5140b) / 1000000);
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public void mo33753a(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !m33845i()) {
            int i = this.f5176l;
            if (i == 0) {
                m33789f(byteBuffer);
            } else if (i == 1) {
                m33790e(byteBuffer);
            } else if (i == 2) {
                m33788g(byteBuffer);
            } else {
                throw new IllegalStateException();
            }
        }
    }

    /* renamed from: a */
    public final void m33796a(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int min = Math.min(byteBuffer.remaining(), this.f5178n);
        int i2 = this.f5178n - min;
        System.arraycopy(bArr, i - i2, this.f5175k, 0, i2);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.f5175k, i2, min);
    }

    /* renamed from: a */
    public void m33795a(boolean z) {
        this.f5173i = z;
        flush();
    }

    /* renamed from: a */
    public final void m33794a(byte[] bArr, int i) {
        m33847a(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.f5179o = true;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public boolean mo33754a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        if (i3 == 2) {
            this.f5172h = i2 * 2;
            return m33846b(i, i2, i3);
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    /* renamed from: b */
    public final int m33793b(ByteBuffer byteBuffer) {
        for (int limit = byteBuffer.limit() - 1; limit >= byteBuffer.position(); limit -= 2) {
            if (Math.abs((int) byteBuffer.get(limit)) > 4) {
                int i = this.f5172h;
                return ((limit / i) * i) + i;
            }
        }
        return byteBuffer.position();
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1293q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: b */
    public boolean mo33752b() {
        return super.mo33752b() && this.f5173i;
    }

    /* renamed from: c */
    public final int m33792c(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position() + 1; position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.get(position)) > 4) {
                int i = this.f5172h;
                return i * (position / i);
            }
        }
        return byteBuffer.limit();
    }

    /* renamed from: d */
    public final void m33791d(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        m33847a(remaining).put(byteBuffer).flip();
        if (remaining > 0) {
            this.f5179o = true;
        }
    }

    /* renamed from: e */
    public final void m33790e(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int c = m33792c(byteBuffer);
        int position = c - byteBuffer.position();
        byte[] bArr = this.f5174j;
        int length = bArr.length;
        int i = this.f5177m;
        int i2 = length - i;
        if (c >= limit || position >= i2) {
            int min = Math.min(position, i2);
            byteBuffer.limit(byteBuffer.position() + min);
            byteBuffer.get(this.f5174j, this.f5177m, min);
            int i3 = this.f5177m + min;
            this.f5177m = i3;
            byte[] bArr2 = this.f5174j;
            if (i3 == bArr2.length) {
                if (this.f5179o) {
                    m33794a(bArr2, this.f5178n);
                    this.f5180p += (this.f5177m - (this.f5178n * 2)) / this.f5172h;
                } else {
                    this.f5180p += (i3 - this.f5178n) / this.f5172h;
                }
                m33796a(byteBuffer, this.f5174j, this.f5177m);
                this.f5177m = 0;
                this.f5176l = 2;
            }
            byteBuffer.limit(limit);
            return;
        }
        m33794a(bArr, i);
        this.f5177m = 0;
        this.f5176l = 0;
    }

    /* renamed from: f */
    public final void m33789f(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.f5174j.length));
        int b = m33793b(byteBuffer);
        if (b == byteBuffer.position()) {
            this.f5176l = 1;
        } else {
            byteBuffer.limit(b);
            m33791d(byteBuffer);
        }
        byteBuffer.limit(limit);
    }

    /* renamed from: g */
    public final void m33788g(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int c = m33792c(byteBuffer);
        byteBuffer.limit(c);
        this.f5180p += byteBuffer.remaining() / this.f5172h;
        m33796a(byteBuffer, this.f5175k, this.f5178n);
        if (c < limit) {
            m33794a(this.f5175k, this.f5178n);
            this.f5176l = 0;
            byteBuffer.limit(limit);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1293q
    /* renamed from: j */
    public void mo33749j() {
        if (mo33752b()) {
            int a = m33797a(150000L) * this.f5172h;
            if (this.f5174j.length != a) {
                this.f5174j = new byte[a];
            }
            int a2 = m33797a(20000L) * this.f5172h;
            this.f5178n = a2;
            if (this.f5175k.length != a2) {
                this.f5175k = new byte[a2];
            }
        }
        this.f5176l = 0;
        this.f5180p = 0L;
        this.f5177m = 0;
        this.f5179o = false;
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1293q
    /* renamed from: k */
    public void mo33787k() {
        int i = this.f5177m;
        if (i > 0) {
            m33794a(this.f5174j, i);
        }
        if (!this.f5179o) {
            this.f5180p += this.f5178n / this.f5172h;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1293q
    /* renamed from: l */
    public void mo33748l() {
        this.f5173i = false;
        this.f5178n = 0;
        byte[] bArr = C1167d0.f4693f;
        this.f5174j = bArr;
        this.f5175k = bArr;
    }

    /* renamed from: m */
    public long m33786m() {
        return this.f5180p;
    }
}
