package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyo.class */
final class dyo {

    /* renamed from: b */
    private static final long[] f48105b = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a */
    int f48106a;

    /* renamed from: c */
    private final byte[] f48107c = new byte[8];

    /* renamed from: d */
    private int f48108d;

    /* renamed from: a */
    public static int m15459a(int i) {
        int i2;
        int i3 = 0;
        while (true) {
            long[] jArr = f48105b;
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

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* renamed from: a */
    public static long m15457a(byte[] bArr, int i, boolean z) {
        ?? r0 = bArr[0] & 255;
        char c = r0;
        if (z) {
            c = r0 & (f48105b[i - 1] ^ (-1));
        }
        for (int i2 = 1; i2 < i; i2++) {
            c = (c << '\b') | (bArr[i2] & 255);
        }
        return c;
    }

    /* renamed from: a */
    public final long m15458a(dxt dxtVar, boolean z, boolean z2, int i) throws IOException, InterruptedException {
        if (this.f48108d == 0) {
            if (!dxtVar.mo15496a(this.f48107c, 0, 1, z)) {
                return -1L;
            }
            int m15459a = m15459a(this.f48107c[0] & 255);
            this.f48106a = m15459a;
            if (m15459a == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f48108d = 1;
        }
        int i2 = this.f48106a;
        if (i2 > i) {
            this.f48108d = 0;
            return -2L;
        }
        if (i2 != 1) {
            dxtVar.mo15493b(this.f48107c, 1, i2 - 1);
        }
        this.f48108d = 0;
        return m15457a(this.f48107c, this.f48106a, z2);
    }

    /* renamed from: a */
    public final void m15460a() {
        this.f48108d = 0;
        this.f48106a = 0;
    }
}
