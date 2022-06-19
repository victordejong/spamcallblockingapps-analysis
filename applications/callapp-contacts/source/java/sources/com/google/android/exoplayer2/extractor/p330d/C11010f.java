package com.google.android.exoplayer2.extractor.p330d;

import com.google.android.exoplayer2.extractor.AbstractC11121i;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.d.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d/f.class */
final class C11010f {

    /* renamed from: b */
    private static final long[] f35731b = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a */
    int f35732a;

    /* renamed from: c */
    private final byte[] f35733c = new byte[8];

    /* renamed from: d */
    private int f35734d;

    /* renamed from: a */
    public static int m21711a(int i) {
        int i2;
        int i3 = 0;
        while (true) {
            long[] jArr = f35731b;
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
    public static long m21709a(byte[] bArr, int i, boolean z) {
        ?? r0 = bArr[0] & 255;
        char c = r0;
        if (z) {
            c = r0 & (f35731b[i - 1] ^ (-1));
        }
        for (int i2 = 1; i2 < i; i2++) {
            c = (c << '\b') | (bArr[i2] & 255);
        }
        return c;
    }

    /* renamed from: a */
    public final long m21710a(AbstractC11121i abstractC11121i, boolean z, boolean z2, int i) throws IOException {
        if (this.f35734d == 0) {
            if (!abstractC11121i.mo21403a(this.f35733c, 0, 1, z)) {
                return -1L;
            }
            int m21711a = m21711a(this.f35733c[0] & 255);
            this.f35732a = m21711a;
            if (m21711a == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f35734d = 1;
        }
        int i2 = this.f35732a;
        if (i2 > i) {
            this.f35734d = 0;
            return -2L;
        }
        if (i2 != 1) {
            abstractC11121i.mo21400b(this.f35733c, 1, i2 - 1);
        }
        this.f35734d = 0;
        return m21709a(this.f35733c, this.f35732a, z2);
    }

    /* renamed from: a */
    public final void m21712a() {
        this.f35734d = 0;
        this.f35732a = 0;
    }
}
