package p193e.p1577m.p1578a.p1596c.p1598c1;

import java.nio.ByteBuffer;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l;
/* renamed from: e.m.a.c.c1.s */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/s.class */
public final class C24229s extends AbstractC24228r {

    /* renamed from: i */
    public int[] f67074i;

    /* renamed from: j */
    public int[] f67075j;

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: d */
    public void mo5401d(ByteBuffer byteBuffer) {
        int[] iArr = this.f67075j;
        Objects.requireNonNull(iArr);
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer m5432k = m5432k(((limit - position) / this.f67067b.f67026d) * this.f67068c.f67026d);
        while (position < limit) {
            for (int i : iArr) {
                m5432k.putShort(byteBuffer.getShort((i * 2) + position));
            }
            position += this.f67067b.f67026d;
        }
        byteBuffer.position(limit);
        m5432k.flip();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24228r
    /* renamed from: g */
    public AbstractC24213l.C24214a mo5400g(AbstractC24213l.C24214a c24214a) throws AbstractC24213l.C24215b {
        int[] iArr = this.f67074i;
        if (iArr == null) {
            return AbstractC24213l.C24214a.f67022e;
        }
        if (c24214a.f67025c != 2) {
            throw new AbstractC24213l.C24215b(c24214a);
        }
        boolean z = c24214a.f67024b != iArr.length;
        int i = 0;
        while (i < iArr.length) {
            int i2 = iArr[i];
            if (i2 >= c24214a.f67024b) {
                throw new AbstractC24213l.C24215b(c24214a);
            }
            z |= i2 != i;
            i++;
        }
        return z ? new AbstractC24213l.C24214a(c24214a.f67023a, iArr.length, 2) : AbstractC24213l.C24214a.f67022e;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24228r
    /* renamed from: h */
    public void mo5399h() {
        this.f67075j = this.f67074i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24228r
    /* renamed from: j */
    public void mo5397j() {
        this.f67075j = null;
        this.f67074i = null;
    }
}
