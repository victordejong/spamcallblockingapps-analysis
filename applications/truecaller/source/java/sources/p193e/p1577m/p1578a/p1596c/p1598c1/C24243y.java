package p193e.p1577m.p1578a.p1596c.p1598c1;

import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import java.nio.ByteBuffer;
import p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.c1.y */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/y.class */
public final class C24243y extends AbstractC24228r {

    /* renamed from: i */
    public int f67158i;

    /* renamed from: j */
    public boolean f67159j;

    /* renamed from: k */
    public byte[] f67160k;

    /* renamed from: l */
    public byte[] f67161l;

    /* renamed from: m */
    public int f67162m;

    /* renamed from: n */
    public int f67163n;

    /* renamed from: o */
    public int f67164o;

    /* renamed from: p */
    public boolean f67165p;

    /* renamed from: q */
    public long f67166q;

    public C24243y() {
        byte[] bArr = C24773d0.f69432f;
        this.f67160k = bArr;
        this.f67161l = bArr;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24228r, p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: b */
    public boolean mo5402b() {
        return this.f67159j;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: d */
    public void mo5401d(ByteBuffer byteBuffer) {
        int position;
        while (byteBuffer.hasRemaining() && !this.f67072g.hasRemaining()) {
            int i = this.f67162m;
            if (i == 0) {
                int limit = byteBuffer.limit();
                byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.f67160k.length));
                int limit2 = byteBuffer.limit() - 1;
                while (true) {
                    if (limit2 < byteBuffer.position()) {
                        position = byteBuffer.position();
                        break;
                    } else if (Math.abs((int) byteBuffer.get(limit2)) > 4) {
                        int i2 = this.f67158i;
                        position = ((limit2 / i2) * i2) + i2;
                        break;
                    } else {
                        limit2 -= 2;
                    }
                }
                if (position == byteBuffer.position()) {
                    this.f67162m = 1;
                } else {
                    byteBuffer.limit(position);
                    int remaining = byteBuffer.remaining();
                    m5432k(remaining).put(byteBuffer).flip();
                    if (remaining > 0) {
                        this.f67165p = true;
                    }
                }
                byteBuffer.limit(limit);
            } else if (i == 1) {
                int limit3 = byteBuffer.limit();
                int m5396l = m5396l(byteBuffer);
                int position2 = m5396l - byteBuffer.position();
                byte[] bArr = this.f67160k;
                int length = bArr.length;
                int i3 = this.f67163n;
                int i4 = length - i3;
                if (m5396l >= limit3 || position2 >= i4) {
                    int min = Math.min(position2, i4);
                    byteBuffer.limit(byteBuffer.position() + min);
                    byteBuffer.get(this.f67160k, this.f67163n, min);
                    int i5 = this.f67163n + min;
                    this.f67163n = i5;
                    byte[] bArr2 = this.f67160k;
                    if (i5 == bArr2.length) {
                        if (this.f67165p) {
                            m5395m(bArr2, this.f67164o);
                            this.f67166q += (this.f67163n - (this.f67164o * 2)) / this.f67158i;
                        } else {
                            this.f67166q += (i5 - this.f67164o) / this.f67158i;
                        }
                        m5394n(byteBuffer, this.f67160k, this.f67163n);
                        this.f67163n = 0;
                        this.f67162m = 2;
                    }
                    byteBuffer.limit(limit3);
                } else {
                    m5395m(bArr, i3);
                    this.f67163n = 0;
                    this.f67162m = 0;
                }
            } else if (i != 2) {
                throw new IllegalStateException();
            } else {
                int limit4 = byteBuffer.limit();
                int m5396l2 = m5396l(byteBuffer);
                byteBuffer.limit(m5396l2);
                this.f67166q += byteBuffer.remaining() / this.f67158i;
                m5394n(byteBuffer, this.f67161l, this.f67164o);
                if (m5396l2 < limit4) {
                    m5395m(this.f67161l, this.f67164o);
                    this.f67162m = 0;
                    byteBuffer.limit(limit4);
                }
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24228r
    /* renamed from: g */
    public AbstractC24213l.C24214a mo5400g(AbstractC24213l.C24214a c24214a) throws AbstractC24213l.C24215b {
        if (c24214a.f67025c == 2) {
            if (!this.f67159j) {
                c24214a = AbstractC24213l.C24214a.f67022e;
            }
            return c24214a;
        }
        throw new AbstractC24213l.C24215b(c24214a);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24228r
    /* renamed from: h */
    public void mo5399h() {
        if (this.f67159j) {
            AbstractC24213l.C24214a c24214a = this.f67067b;
            int i = c24214a.f67026d;
            this.f67158i = i;
            long j = c24214a.f67023a;
            int i2 = ((int) ((150000 * j) / 1000000)) * i;
            if (this.f67160k.length != i2) {
                this.f67160k = new byte[i2];
            }
            int i3 = ((int) ((j * DefaultRefreshIntervals.ACTIVE_CONV_MIN_FETCH_INTERVAL) / 1000000)) * i;
            this.f67164o = i3;
            if (this.f67161l.length != i3) {
                this.f67161l = new byte[i3];
            }
        }
        this.f67162m = 0;
        this.f67166q = 0L;
        this.f67163n = 0;
        this.f67165p = false;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24228r
    /* renamed from: i */
    public void mo5398i() {
        int i = this.f67163n;
        if (i > 0) {
            m5395m(this.f67160k, i);
        }
        if (!this.f67165p) {
            this.f67166q += this.f67164o / this.f67158i;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24228r
    /* renamed from: j */
    public void mo5397j() {
        this.f67159j = false;
        this.f67164o = 0;
        byte[] bArr = C24773d0.f69432f;
        this.f67160k = bArr;
        this.f67161l = bArr;
    }

    /* renamed from: l */
    public final int m5396l(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position() + 1; position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.get(position)) > 4) {
                int i = this.f67158i;
                return (position / i) * i;
            }
        }
        return byteBuffer.limit();
    }

    /* renamed from: m */
    public final void m5395m(byte[] bArr, int i) {
        m5432k(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.f67165p = true;
        }
    }

    /* renamed from: n */
    public final void m5394n(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int min = Math.min(byteBuffer.remaining(), this.f67164o);
        int i2 = this.f67164o - min;
        System.arraycopy(bArr, i - i2, this.f67161l, 0, i2);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.f67161l, i2, min);
    }
}
