package p193e.p1512i.p1516b.p1530s1;

import java.util.UUID;
import p193e.p1512i.p1516b.AbstractC22939e2;
/* renamed from: e.i.b.s1.d */
/* loaded from: classes-dex2jar.jar:e/i/b/s1/d.class */
public class C23071d {

    /* renamed from: a */
    public final AbstractC22939e2 f63886a;

    public C23071d(AbstractC22939e2 abstractC22939e2) {
        this.f63886a = abstractC22939e2;
    }

    /* renamed from: a */
    public final byte m7572a(long j, int i) {
        int i2 = (64 - (i + 1)) << 2;
        return (byte) (((j & (15 << i2)) >> i2) & 15);
    }

    /* renamed from: b */
    public final long m7571b(long j, int i, byte b) {
        int i2 = (64 - (i + 1)) << 2;
        return (j & ((15 << i2) ^ (-1))) | (b << i2);
    }

    /* renamed from: c */
    public String m7570c() {
        long mo7355a = this.f63886a.mo7355a() / 1000;
        UUID randomUUID = UUID.randomUUID();
        long mostSignificantBits = randomUUID.getMostSignificantBits();
        long leastSignificantBits = randomUUID.getLeastSignificantBits();
        long m7571b = m7571b(mostSignificantBits, 12, m7572a(mostSignificantBits, 0));
        return String.format("%016x%016x", Long.valueOf((mo7355a << 32) | (m7571b & 4294967295L)), Long.valueOf(m7571b(leastSignificantBits, 0, m7572a(m7571b, 1))));
    }
}
