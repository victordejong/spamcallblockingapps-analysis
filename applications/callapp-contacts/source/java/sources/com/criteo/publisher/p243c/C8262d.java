package com.criteo.publisher.p243c;

import com.criteo.publisher.AbstractC8336h;
import java.util.UUID;
/* renamed from: com.criteo.publisher.c.d */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/c/d.class */
public class C8262d {

    /* renamed from: a */
    private final AbstractC8336h f29814a;

    public C8262d(AbstractC8336h abstractC8336h) {
        this.f29814a = abstractC8336h;
    }

    /* renamed from: a */
    private static byte m25956a(long j, int i) {
        int i2 = (64 - (i + 1)) << 2;
        return (byte) (((j & (15 << i2)) >> i2) & 15);
    }

    /* renamed from: a */
    private static long m25955a(long j, int i, byte b) {
        int i2 = (64 - (i + 1)) << 2;
        return (j & ((15 << i2) ^ (-1))) | (b << i2);
    }

    /* renamed from: a */
    public final String m25957a() {
        long mo25381a = this.f29814a.mo25381a() / 1000;
        UUID randomUUID = UUID.randomUUID();
        long mostSignificantBits = randomUUID.getMostSignificantBits();
        long leastSignificantBits = randomUUID.getLeastSignificantBits();
        long m25955a = m25955a(mostSignificantBits, 12, m25956a(mostSignificantBits, 0));
        return String.format("%016x%016x", Long.valueOf((mo25381a << 32) | (m25955a & 4294967295L)), Long.valueOf(m25955a(leastSignificantBits, 0, m25956a(m25955a, 1))));
    }
}
