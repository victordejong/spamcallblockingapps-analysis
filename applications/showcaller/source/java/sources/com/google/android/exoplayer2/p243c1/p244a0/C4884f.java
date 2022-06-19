package com.google.android.exoplayer2.p243c1.p244a0;

import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.a0.f */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/a0/f.class */
final class C4884f {

    /* renamed from: a */
    private final C5536v f14981a = new C5536v(8);

    /* renamed from: b */
    private int f14982b;

    /* renamed from: a */
    private long m21278a(AbstractC4979i abstractC4979i) {
        abstractC4979i.mo21000j(this.f14981a.f17941a, 0, 1);
        int i = this.f14981a.f17941a[0] & 255;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int i2 = 128;
        int i3 = 0;
        while ((i & i2) == 0) {
            i2 >>= 1;
            i3++;
        }
        int i4 = i & (i2 ^ (-1));
        abstractC4979i.mo21000j(this.f14981a.f17941a, 1, i3);
        int i5 = 0;
        int i6 = i4;
        while (true) {
            int i7 = i6;
            if (i5 >= i3) {
                this.f14982b += i3 + 1;
                return i7;
            }
            i5++;
            i6 = (this.f14981a.f17941a[i5] & 255) + (i7 << 8);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* renamed from: b */
    public boolean m21277b(AbstractC4979i abstractC4979i) {
        long m21278a;
        int i;
        ?? length = abstractC4979i.getLength();
        int i2 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        char c = 1024;
        if (i2 != 0) {
            c = length > 1024 ? (char) 1024 : length;
        }
        int i3 = c;
        abstractC4979i.mo21000j(this.f14981a.f17941a, 0, 4);
        char m18691B = this.f14981a.m18691B();
        this.f14982b = 4;
        while (m18691B != 440786851) {
            int i4 = this.f14982b + 1;
            this.f14982b = i4;
            if (i4 == i3) {
                return false;
            }
            abstractC4979i.mo21000j(this.f14981a.f17941a, 0, 1);
            m18691B = ((m18691B << '\b') & (-256)) | (this.f14981a.f17941a[0] & 255);
        }
        long m21278a2 = m21278a(abstractC4979i);
        long j = this.f14982b;
        boolean z = false;
        if (m21278a2 != Long.MIN_VALUE) {
            if (i2 == 0 || j + m21278a2 < length) {
                while (true) {
                    int i5 = this.f14982b;
                    long j2 = i5;
                    long j3 = j + m21278a2;
                    if (j2 >= j3) {
                        z = false;
                        if (i5 == j3) {
                            z = true;
                        }
                    } else if (m21278a(abstractC4979i) == Long.MIN_VALUE || (m21278a = m21278a(abstractC4979i)) < 0 || m21278a > 2147483647L) {
                        return false;
                    } else {
                        if (i != 0) {
                            int i6 = (int) m21278a;
                            abstractC4979i.mo21006d(i6);
                            this.f14982b += i6;
                        }
                    }
                }
            } else {
                z = false;
            }
        }
        return z;
    }
}
