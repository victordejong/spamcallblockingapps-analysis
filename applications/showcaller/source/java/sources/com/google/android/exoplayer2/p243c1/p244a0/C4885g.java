package com.google.android.exoplayer2.p243c1.p244a0;

import com.google.android.exoplayer2.p243c1.AbstractC4979i;
/* renamed from: com.google.android.exoplayer2.c1.a0.g */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/a0/g.class */
final class C4885g {

    /* renamed from: a */
    private static final long[] f14983a = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: b */
    private final byte[] f14984b = new byte[8];

    /* renamed from: c */
    private int f14985c;

    /* renamed from: d */
    private int f14986d;

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* renamed from: a */
    public static long m21276a(byte[] bArr, int i, boolean z) {
        ?? r0 = bArr[0] & 255;
        char c = r0;
        if (z) {
            c = r0 & (f14983a[i - 1] ^ (-1));
        }
        for (int i2 = 1; i2 < i; i2++) {
            c = (c << '\b') | (bArr[i2] & 255);
        }
        return c;
    }

    /* renamed from: c */
    public static int m21274c(int i) {
        int i2;
        int i3 = 0;
        while (true) {
            long[] jArr = f14983a;
            if (i3 >= jArr.length) {
                i2 = -1;
                break;
            } else if ((jArr[i3] & i) != 0) {
                i2 = i3 + 1;
                break;
            } else {
                i3++;
            }
        }
        return i2;
    }

    /* renamed from: b */
    public int m21275b() {
        return this.f14986d;
    }

    /* renamed from: d */
    public long m21273d(AbstractC4979i abstractC4979i, boolean z, boolean z2, int i) {
        if (this.f14985c == 0) {
            if (!abstractC4979i.mo21009a(this.f14984b, 0, 1, z)) {
                return -1L;
            }
            int m21274c = m21274c(this.f14984b[0] & 255);
            this.f14986d = m21274c;
            if (m21274c == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f14985c = 1;
        }
        int i2 = this.f14986d;
        if (i2 > i) {
            this.f14985c = 0;
            return -2L;
        }
        if (i2 != 1) {
            abstractC4979i.readFully(this.f14984b, 1, i2 - 1);
        }
        this.f14985c = 0;
        return m21276a(this.f14984b, this.f14986d, z2);
    }

    /* renamed from: e */
    public void m21272e() {
        this.f14985c = 0;
        this.f14986d = 0;
    }
}
