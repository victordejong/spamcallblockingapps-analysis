package com.criteo.publisher.c;

import com.criteo.publisher.h;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/c/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final h f17208a;

    public d(h hVar) {
        this.f17208a = hVar;
    }

    private static byte a(long j, int i) {
        int i2 = (64 - (i + 1)) << 2;
        return (byte) (((j & (15 << i2)) >> i2) & 15);
    }

    private static long a(long j, int i, byte b2) {
        int i2 = (64 - (i + 1)) << 2;
        return (j & ((15 << i2) ^ (-1))) | (b2 << i2);
    }

    public final String a() {
        long a2 = this.f17208a.a() / 1000;
        UUID randomUUID = UUID.randomUUID();
        long mostSignificantBits = randomUUID.getMostSignificantBits();
        long leastSignificantBits = randomUUID.getLeastSignificantBits();
        long a3 = a(mostSignificantBits, 12, a(mostSignificantBits, 0));
        return String.format("%016x%016x", Long.valueOf((a2 << 32) | (a3 & 4294967295L)), Long.valueOf(a(leastSignificantBits, 0, a(a3, 1))));
    }
}
