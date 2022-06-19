package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.he */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/he.class */
final class C6549he {

    /* renamed from: a */
    private static final long[] f23868a = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: b */
    private final byte[] f23869b = new byte[8];

    /* renamed from: c */
    private int f23870c;

    /* renamed from: d */
    private int f23871d;

    /* renamed from: c */
    public static int m14698c(int i) {
        int i2;
        int i3 = 0;
        while (true) {
            if (i3 >= 8) {
                i2 = -1;
                break;
            }
            i2 = i3 + 1;
            i3 = i2;
            if ((f23868a[i3] & i) != 0) {
                break;
            }
        }
        return i2;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* renamed from: d */
    public static long m14697d(byte[] bArr, int i, boolean z) {
        ?? r0 = bArr[0] & 255;
        char c = r0;
        if (z) {
            c = r0 & (f23868a[i - 1] ^ (-1));
        }
        for (int i2 = 1; i2 < i; i2++) {
            c = (c << '\b') | (bArr[i2] & 255);
        }
        return c;
    }

    /* renamed from: a */
    public final void m14700a() {
        this.f23870c = 0;
        this.f23871d = 0;
    }

    /* renamed from: b */
    public final int m14699b() {
        return this.f23871d;
    }

    /* renamed from: e */
    public final long m14696e(C6734md c6734md, boolean z, boolean z2, int i) {
        if (this.f23870c == 0) {
            if (!c6734md.m13295b(this.f23869b, 0, 1, z)) {
                return -1L;
            }
            int m14698c = m14698c(this.f23869b[0] & 255);
            this.f23871d = m14698c;
            if (m14698c == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f23870c = 1;
        }
        int i2 = this.f23871d;
        if (i2 > i) {
            this.f23870c = 0;
            return -2L;
        }
        if (i2 != 1) {
            c6734md.m13295b(this.f23869b, 1, i2 - 1, false);
        }
        this.f23870c = 0;
        return m14697d(this.f23869b, this.f23871d, z2);
    }
}
