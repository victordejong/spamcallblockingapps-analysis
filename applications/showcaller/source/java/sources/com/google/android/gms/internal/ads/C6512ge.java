package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ge */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ge.class */
final class C6512ge {

    /* renamed from: a */
    private final C6665ki f23313a = new C6665ki(8);

    /* renamed from: b */
    private int f23314b;

    /* renamed from: b */
    private final long m14959b(C6734md c6734md) {
        int i = 0;
        c6734md.m13292e(this.f23313a.f25221a, 0, 1, false);
        int i2 = this.f23313a.f25221a[0] & 255;
        if (i2 != 0) {
            int i3 = 128;
            int i4 = 0;
            while ((i2 & i3) == 0) {
                i3 >>= 1;
                i4++;
            }
            int i5 = i2 & (i3 ^ (-1));
            c6734md.m13292e(this.f23313a.f25221a, 1, i4, false);
            while (i < i4) {
                i++;
                i5 = (this.f23313a.f25221a[i] & 255) + (i5 << 8);
            }
            this.f23314b += i4 + 1;
            return i5;
        }
        return Long.MIN_VALUE;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* renamed from: a */
    public final boolean m14960a(C6734md c6734md) {
        long m14959b;
        int i;
        ?? m13288i = c6734md.m13288i();
        int i2 = (m13288i > (-1L) ? 1 : (m13288i == (-1L) ? 0 : -1));
        char c = 1024;
        if (i2 != 0) {
            c = m13288i > 1024 ? (char) 1024 : m13288i;
        }
        int i3 = c;
        c6734md.m13292e(this.f23313a.f25221a, 0, 4, false);
        char m13892p = this.f23313a.m13892p();
        this.f23314b = 4;
        while (m13892p != 440786851) {
            int i4 = this.f23314b + 1;
            this.f23314b = i4;
            if (i4 == i3) {
                return false;
            }
            c6734md.m13292e(this.f23313a.f25221a, 0, 1, false);
            m13892p = ((m13892p << '\b') & (-256)) | (this.f23313a.f25221a[0] & 255);
        }
        long m14959b2 = m14959b(c6734md);
        long j = this.f23314b;
        if (m14959b2 != Long.MIN_VALUE) {
            if (i2 != 0 && j + m14959b2 >= m13288i) {
                return false;
            }
            while (true) {
                int i5 = (this.f23314b > (j + m14959b2) ? 1 : (this.f23314b == (j + m14959b2) ? 0 : -1));
                if (i5 >= 0) {
                    return i5 == 0;
                } else if (m14959b(c6734md) == Long.MIN_VALUE || (m14959b = m14959b(c6734md)) < 0) {
                    return false;
                } else {
                    if (i != 0) {
                        c6734md.m13291f((int) m14959b, false);
                        this.f23314b = (int) (this.f23314b + m14959b);
                    }
                }
            }
        } else {
            return false;
        }
    }
}
