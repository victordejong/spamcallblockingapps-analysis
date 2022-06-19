package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dob.class */
final class dob {

    /* renamed from: a */
    private static final long[] f15013a = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: b */
    private final byte[] f15014b = new byte[8];

    /* renamed from: c */
    private int f15015c;

    /* renamed from: d */
    private int f15016d;

    /* renamed from: a */
    public static int m9013a(int i) {
        int i2;
        int i3 = 0;
        while (true) {
            if (i3 >= f15013a.length) {
                i2 = -1;
                break;
            } else if ((f15013a[i3] & i) != 0) {
                i2 = i3 + 1;
                break;
            } else {
                i3++;
            }
        }
        return i2;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* renamed from: a */
    public static long m9011a(byte[] bArr, int i, boolean z) {
        ?? r0 = bArr[0] & 255;
        char c = r0;
        if (z) {
            c = r0 & (f15013a[i - 1] ^ (-1));
        }
        for (int i2 = 1; i2 < i; i2++) {
            c = (bArr[i2] & 255) | (c << '\b');
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: a */
    public final long m9012a(dng dngVar, boolean z, boolean z2, int i) {
        char m9011a;
        if (this.f15015c == 0) {
            if (!dngVar.mo9061a(this.f15014b, 0, 1, z)) {
                m9011a = 65535;
                return m9011a;
            }
            this.f15016d = m9013a(this.f15014b[0] & 255);
            if (this.f15016d == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f15015c = 1;
        }
        if (this.f15016d > i) {
            this.f15015c = 0;
            m9011a = 65534;
        } else {
            if (this.f15016d != 1) {
                dngVar.mo9058b(this.f15014b, 1, this.f15016d - 1);
            }
            this.f15015c = 0;
            m9011a = m9011a(this.f15014b, this.f15016d, z2);
        }
        return m9011a;
    }

    /* renamed from: a */
    public final void m9014a() {
        this.f15015c = 0;
        this.f15016d = 0;
    }

    /* renamed from: b */
    public final int m9010b() {
        return this.f15016d;
    }
}
