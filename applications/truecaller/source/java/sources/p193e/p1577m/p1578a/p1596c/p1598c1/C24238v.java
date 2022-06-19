package p193e.p1577m.p1578a.p1596c.p1598c1;

import java.nio.ByteBuffer;
import p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.c1.v */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/v.class */
public final class C24238v extends AbstractC24228r {

    /* renamed from: i */
    public static final int f67141i = Float.floatToIntBits(Float.NaN);

    /* renamed from: l */
    public static void m5406l(int i, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i * 4.656612875245797E-10d));
        int i2 = floatToIntBits;
        if (floatToIntBits == f67141i) {
            i2 = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(i2);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: d */
    public void mo5401d(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        int i2 = this.f67067b.f67025c;
        if (i2 == 536870912) {
            ByteBuffer m5432k = m5432k((i / 3) * 4);
            while (true) {
                byteBuffer2 = m5432k;
                if (position >= limit) {
                    break;
                }
                m5406l(((byteBuffer.get(position) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position + 2) & 255) << 24), m5432k);
                position += 3;
            }
        } else if (i2 != 805306368) {
            throw new IllegalStateException();
        } else {
            ByteBuffer m5432k2 = m5432k(i);
            while (true) {
                byteBuffer2 = m5432k2;
                if (position >= limit) {
                    break;
                }
                m5406l((byteBuffer.get(position) & 255) | ((byteBuffer.get(position + 1) & 255) << 8) | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), m5432k2);
                position += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBuffer2.flip();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24228r
    /* renamed from: g */
    public AbstractC24213l.C24214a mo5400g(AbstractC24213l.C24214a c24214a) throws AbstractC24213l.C24215b {
        int i = c24214a.f67025c;
        if (C24773d0.m4604t(i)) {
            return i != 4 ? new AbstractC24213l.C24214a(c24214a.f67023a, c24214a.f67024b, 4) : AbstractC24213l.C24214a.f67022e;
        }
        throw new AbstractC24213l.C24215b(c24214a);
    }
}
