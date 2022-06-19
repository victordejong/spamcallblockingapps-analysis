package p193e.p1577m.p1578a.p1596c.p1598c1;

import java.nio.ByteBuffer;
import p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.c1.b0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/b0.class */
public final class C24200b0 extends AbstractC24228r {

    /* renamed from: i */
    public int f66984i;

    /* renamed from: j */
    public int f66985j;

    /* renamed from: k */
    public boolean f66986k;

    /* renamed from: l */
    public int f66987l;

    /* renamed from: m */
    public byte[] f66988m = C24773d0.f69432f;

    /* renamed from: n */
    public int f66989n;

    /* renamed from: o */
    public long f66990o;

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24228r, p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: c */
    public boolean mo5435c() {
        return super.mo5435c() && this.f66989n == 0;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: d */
    public void mo5401d(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i == 0) {
            return;
        }
        int min = Math.min(i, this.f66987l);
        this.f66990o += min / this.f67067b.f67026d;
        this.f66987l -= min;
        byteBuffer.position(position + min);
        if (this.f66987l > 0) {
            return;
        }
        int i2 = i - min;
        int length = (this.f66989n + i2) - this.f66988m.length;
        ByteBuffer m5432k = m5432k(length);
        int m4618f = C24773d0.m4618f(length, 0, this.f66989n);
        m5432k.put(this.f66988m, 0, m4618f);
        int m4618f2 = C24773d0.m4618f(length - m4618f, 0, i2);
        byteBuffer.limit(byteBuffer.position() + m4618f2);
        m5432k.put(byteBuffer);
        byteBuffer.limit(limit);
        int i3 = i2 - m4618f2;
        int i4 = this.f66989n - m4618f;
        this.f66989n = i4;
        byte[] bArr = this.f66988m;
        System.arraycopy(bArr, m4618f, bArr, 0, i4);
        byteBuffer.get(this.f66988m, this.f66989n, i3);
        this.f66989n += i3;
        m5432k.flip();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24228r, p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: f */
    public ByteBuffer mo5433f() {
        int i;
        if (super.mo5435c() && (i = this.f66989n) > 0) {
            m5432k(i).put(this.f66988m, 0, this.f66989n).flip();
            this.f66989n = 0;
        }
        return super.mo5433f();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24228r
    /* renamed from: g */
    public AbstractC24213l.C24214a mo5400g(AbstractC24213l.C24214a c24214a) throws AbstractC24213l.C24215b {
        if (c24214a.f67025c == 2) {
            this.f66986k = true;
            AbstractC24213l.C24214a c24214a2 = c24214a;
            if (this.f66984i == 0) {
                c24214a2 = this.f66985j != 0 ? c24214a : AbstractC24213l.C24214a.f67022e;
            }
            return c24214a2;
        }
        throw new AbstractC24213l.C24215b(c24214a);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24228r
    /* renamed from: h */
    public void mo5399h() {
        if (this.f66986k) {
            this.f66986k = false;
            int i = this.f66985j;
            int i2 = this.f67067b.f67026d;
            this.f66988m = new byte[i * i2];
            this.f66987l = this.f66984i * i2;
        } else {
            this.f66987l = 0;
        }
        this.f66989n = 0;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24228r
    /* renamed from: i */
    public void mo5398i() {
        int i;
        if (this.f66986k) {
            if (this.f66989n > 0) {
                this.f66990o += i / this.f67067b.f67026d;
            }
            this.f66989n = 0;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24228r
    /* renamed from: j */
    public void mo5397j() {
        this.f66988m = C24773d0.f69432f;
    }
}
