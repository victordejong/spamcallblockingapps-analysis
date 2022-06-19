package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pn2.class */
final class pn2 {

    /* renamed from: a */
    private final sr2 f8141a = new sr2(8);

    /* renamed from: b */
    private int f8142b;

    /* renamed from: b */
    private final long m6186b(xm2 xm2Var) {
        int i = 0;
        xm2Var.m4891e(this.f8141a.f8551a, 0, 1, false);
        int i2 = this.f8141a.f8551a[0] & 255;
        if (i2 != 0) {
            int i3 = 128;
            int i4 = 0;
            while ((i2 & i3) == 0) {
                i3 >>= 1;
                i4++;
            }
            int i5 = i2 & (i3 ^ (-1));
            xm2Var.m4891e(this.f8141a.f8551a, 1, i4, false);
            while (i < i4) {
                i++;
                i5 = (this.f8141a.f8551a[i] & 255) + (i5 << 8);
            }
            this.f8142b += i4 + 1;
            return i5;
        }
        return Long.MIN_VALUE;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* renamed from: a */
    public final boolean m6187a(xm2 xm2Var) {
        ?? m4887i = xm2Var.m4887i();
        char c = 1024;
        if (m4887i != -1) {
            c = m4887i > 1024 ? (char) 1024 : m4887i;
        }
        int i = c;
        xm2Var.m4891e(this.f8141a.f8551a, 0, 4, false);
        char m5601p = this.f8141a.m5601p();
        this.f8142b = 4;
        while (m5601p != 440786851) {
            int i2 = this.f8142b + 1;
            this.f8142b = i2;
            if (i2 == i) {
                return false;
            }
            xm2Var.m4891e(this.f8141a.f8551a, 0, 1, false);
            m5601p = ((m5601p << '\b') & (-256)) | (this.f8141a.f8551a[0] & 255);
        }
        long m6186b = m6186b(xm2Var);
        long j = this.f8142b;
        if (m6186b != Long.MIN_VALUE) {
            if (m4887i != -1 && j + m6186b >= m4887i) {
                return false;
            }
            while (true) {
                long j2 = this.f8142b;
                long j3 = j + m6186b;
                if (j2 >= j3) {
                    return j2 == j3;
                } else if (m6186b(xm2Var) == Long.MIN_VALUE) {
                    return false;
                } else {
                    long m6186b2 = m6186b(xm2Var);
                    if (m6186b2 < 0) {
                        return false;
                    }
                    if (m6186b2 != 0) {
                        xm2Var.m4890f((int) m6186b2, false);
                        this.f8142b = (int) (this.f8142b + m6186b2);
                    }
                }
            }
        } else {
            return false;
        }
    }
}
